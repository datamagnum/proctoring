## PROPOSED SYSTEM
# A) Authentication with Image Verification
1) Basic Login, Register, Forgot Password, Change Password, etc
2) System allows only one login per user, so that user can’t do any unfair means.
3) System will verify image of user at every time of login and also in exam using face recognition technology.


# B) Proctor 
1) Using AI , Proctor can generate questions & answers, the 2 types of questions & answer can be generated: objective & subjective.
2) Proctor can create exam, view exam history, share details of exam with students, view questions, update, delete questions, but update & delete questions will not work at the time of exam & after the exam.
3) Proctor can insert marks of subjective & practical exam & also publish the results, view results.
4) Proctor can view Live Monitoring of Exam & also can view proctoring logs of the students.
5) Proctor can report problems, recharge exam wallet, view FAQ, contact us.

# C) Students
1) Give/Take Exam
2) Check Exam History
3) Check Results
4) Report Problems

# D) Exam 
1) Types of Exam Supported:
    - Objective
    - Subjective
    - Practical 
2) If webpage is refresh then the timer will not be refreshed
3) Support for Negative Marking.
4) Support for randomize questions.
5) Support for Calculator for Mathematical type of Exam
6) Support for 20 types of Compilers/Interpreter for  programming practical type of Exam.
7) For Objective type of Exam:
     - Single page per question
     - Bookmark question 
      - Question Grid with previous & next button
      - At the time of exam submission all questions statistics will be showed to user for confirmation. 


# E) Proctoring 
1) Making logs of window events whenever user changes tab or opens a new tab.
2) Making logs of audio frequency at every 5 seconds of the students.
3) Detection of Mobile phone.
4) Detection of  More than 1 person in the exam.
5) Gaze Estimation: Estimating the position of student body & eyes movements.
6) Taking Students images logs at every 5 seconds.
7) CUT, COPY, PASTE, Taking Screenshots Function is disabled.
8) VM detection & Detection of Screen-Sharing applications. [Support Desktop App Only]


follow these Steps to run the 

# Clone the repository

# Set up a virtual environment
python3 -m venv venv
source venv/bin/activate

# Download these Zip file and extract them and place in your directory
https://thepioneerfuture-my.sharepoint.com/:u:/p/bhuwan_b/EbmTOSQct2NCkHejQ_hpxmEBXvqIrfk-iCzhNKDbnu9EbQ?e=bDXJtr

https://thepioneerfuture-my.sharepoint.com/:u:/p/bhuwan_b/EUwGpu4DAzFCok-RMf_UA7gBrMq2W-bMrsgkygC0OF5sfw?e=t5Bqvi


# Install dependencies
pip install -r requirements.txt

# Set environment variables
export FLASK_APP=app.py
export FLASK_ENV=development

# Initialize the database (necessary)
flask db upgrade

# Run the Flask application
flask run

