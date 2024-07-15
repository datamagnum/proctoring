import re
import nltk
import numpy as np
from nltk.corpus import wordnet as wn

class ObjectiveTest:

    def __init__(self, filepath, noOfQues):
        self.summary = filepath
        self.noOfQues = noOfQues

    def get_trivial_sentences(self):
        sentences = nltk.sent_tokenize(self.summary)
        trivial_sentences = []
        for sent in sentences:
            trivial = self.identify_trivial_sentences(sent)
            if trivial:
                trivial_sentences.append(trivial)
        return trivial_sentences

    def identify_trivial_sentences(self, sentence):
        tags = nltk.pos_tag(nltk.word_tokenize(sentence))  # Tokenize the sentence before pos tagging
        if tags[0][1] == "RB" or len(nltk.word_tokenize(sentence)) < 4:
            return None
        
        noun_phrases = []
        grammer = r"""
            CHUNK: {<NN>+<IN|DT>*<NN>+}
                {<NN>+<IN|DT>*<NNP>+}
                {<NNP>+<NNS>*}
            """
        chunker = nltk.RegexpParser(grammer)
        tokens = nltk.word_tokenize(sentence)
        pos_tokens = nltk.tag.pos_tag(tokens)
        tree = chunker.parse(pos_tokens)

        for subtree in tree.subtrees():
            if subtree.label() == "CHUNK":
                temp = ""
                for sub in subtree:
                    temp += sub[0]
                    temp += " "
                temp = temp.strip()
                noun_phrases.append(temp)
        
        replace_nouns = []
        for word, _ in tags:
            for phrase in noun_phrases:
                if phrase[0] == '\'':
                    break
                if word in phrase:
                    replace_nouns.extend(phrase.split()[-2:])
                    break
            if not replace_nouns:
                replace_nouns.append(word)
            break
        
        if not replace_nouns:
            return None
        
        val = min(len(i) for i in replace_nouns)
        
        trivial = {
            "Answer": " ".join(replace_nouns),
            "Key": val
        }

        if len(replace_nouns) == 1:
            trivial["Similar"] = self.answer_options(replace_nouns[0])
        else:
            trivial["Similar"] = []
        
        replace_phrase = " ".join(replace_nouns)
        blanks_phrase = ("__________" * len(replace_nouns)).strip()
        expression = re.compile(re.escape(replace_phrase), re.IGNORECASE)
        sentence = expression.sub(blanks_phrase, str(sentence), count=1)
        trivial["Question"] = sentence
        return trivial

    @staticmethod
    def answer_options(word):
        synsets = wn.synsets(word, pos="n")

        if not synsets:
            return []
        
        hypernyms = synsets[0].hypernyms()
        if not hypernyms:
            return []

        similar_words = []
        for hyponym in hypernyms[0].hyponyms():
            similar_word = hyponym.lemmas()[0].name().replace("_", " ")
            if similar_word != word:
                similar_words.append(similar_word)
            if len(similar_words) == 8:
                break
        return similar_words

    def generate_test(self):
        trivial_pair = self.get_trivial_sentences()
        question_answer = [que_ans_dict for que_ans_dict in trivial_pair if que_ans_dict["Key"] > int(self.noOfQues)]
        question_answer = question_answer[:int(self.noOfQues)]  # Limit to noOfQues
        question = []
        answer = []
        for que_ans_dict in question_answer:
            question.append(que_ans_dict["Question"])
            answer.append(que_ans_dict["Answer"])
        return question, answer