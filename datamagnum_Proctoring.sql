-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2024 at 07:25 PM
-- Server version: 8.0.35-0ubuntu0.23.04.1
-- PHP Version: 8.1.12-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizappstructure`
--

-- --------------------------------------------------------

--
-- Table structure for table `allquestions`
--

CREATE TABLE `allquestions` (
  `id` int NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `qid` varchar(100) NOT NULL,
  `q` longtext NOT NULL,
  `a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `c` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `d` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ans` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `marks` int DEFAULT NULL,
  `uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `allquestions`
--

INSERT INTO `allquestions` (`id`, `test_id`, `qid`, `q`, `a`, `b`, `c`, `d`, `ans`, `marks`, `uid`) VALUES
(10, 'stereotyped-seriema', '1', 'gandhi ji ka pura nam kya tha btaiye ?', '', '', '', '', '', 5, 36),
(13, 'stereotyped-seriema', '2', 'What were the key events in Mahatma Gandhi\'s early life that shaped his future as a leader?', '', '', '', '', '', 5, 36),
(15, 'elegant-chicken', '1', 'hkdsfhkkkkkkkkk', 'h', 'h', 'h', 'h', 'a', 2, 36),
(16, 'sassy-harrier', '1', 'quesiton num 01', '', '', '', '', 'ss', 5, 36),
(17, 'sassy-harrier', '2', 'question number 2', 'q', 'q', 'q', 'q', 'q', 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `longqa`
--

CREATE TABLE `longqa` (
  `longqa_qid` bigint NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `qid` varchar(25) NOT NULL,
  `q` longtext NOT NULL,
  `marks` int DEFAULT NULL,
  `uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `longqa`
--

INSERT INTO `longqa` (`longqa_qid`, `test_id`, `qid`, `q`, `marks`, `uid`) VALUES
(1, 'tunneling-scorpion', '1', 'What is the difference between list and tuples in Python?', 1, 2),
(2, 'tunneling-scorpion', '2', 'What are the key features of Python?', 2, 2),
(3, 'tunneling-scorpion', '3', 'What type of language is python?', 3, 2),
(4, 'tunneling-scorpion', '4', 'How is Python an interpreted language?', 2, 2),
(5, 'tunneling-scorpion', '5', 'What is pep 8?', 1, 2),
(6, 'tunneling-scorpion', '6', 'How is memory managed in Python?', 1, 2),
(7, 'tunneling-scorpion', '7', 'What is name space in Python?', 3, 2),
(8, 'tunneling-scorpion', '8', 'What is PYTHON PATH?', 1, 2),
(9, 'tunneling-scorpion', '9', 'What are python modules?', 3, 2),
(10, 'tunneling-scorpion', '10', 'What are local variables and global variables in Python?', 2, 2),
(11, 'copper-uakari', '1', 'What is the difference list and tuples in Python?', 1, 13),
(12, 'copper-uakari', '2', 'What are the key features of Python?', 2, 13),
(13, 'copper-uakari', '3', 'What type of language is python?', 3, 13),
(14, 'copper-uakari', '4', 'How is Python an interpreted language?', 2, 13),
(15, 'copper-uakari', '5', 'What is pep 8?', 1, 13),
(16, 'copper-uakari', '6', 'How is memory managed in Python?', 1, 13),
(17, 'copper-uakari', '7', 'What is name space in Python?', 3, 13),
(18, 'copper-uakari', '8', 'What is PYTHON PATH?', 1, 13),
(20, 'copper-uakari', '10', 'What are local variables and global variables in Python?', 2, 13),
(21, 'dainty-gibbon', '1', 'What is the difference between list and tuples in Python?', 1, 13),
(22, 'dainty-gibbon', '2', 'What are the key features of Python?', 2, 13),
(23, 'dainty-gibbon', '3', 'What type of language is python?', 3, 13),
(24, 'dainty-gibbon', '4', 'How is Python an interpreted language?', 2, 13),
(25, 'dainty-gibbon', '5', 'What is pep 8?', 1, 13),
(26, 'dainty-gibbon', '6', 'How is memory managed in Python?', 1, 13),
(27, 'dainty-gibbon', '7', 'What is name space in Python?', 3, 13),
(28, 'dainty-gibbon', '8', 'What is PYTHON PATH?', 1, 13),
(29, 'dainty-gibbon', '9', 'What are python modules?', 3, 13),
(30, 'dainty-gibbon', '10', 'What are local variables and global variables in Python?', 2, 13),
(31, 'slick-muskox', '1', 'What is the difference between list and tuples in Python?', 1, 13),
(32, 'slick-muskox', '2', 'What are the key features of Python?', 2, 13),
(33, 'slick-muskox', '3', 'What type of language is python?', 3, 13),
(34, 'slick-muskox', '4', 'How is Python an interpreted language?', 2, 13),
(35, 'slick-muskox', '5', 'What is pep 8?', 1, 13),
(36, 'slick-muskox', '6', 'How is memory managed in Python?', 1, 13),
(37, 'slick-muskox', '7', 'What is name space in Python?', 3, 13),
(38, 'slick-muskox', '8', 'What is PYTHON PATH?', 1, 13),
(39, 'slick-muskox', '9', 'What are python modules?', 3, 13),
(40, 'slick-muskox', '10', 'What are local variables and global variables in Python?', 2, 13),
(41, 'sparkling-mammoth', '1', 'What is the difference between list and tuples in Python?', 1, 13),
(42, 'sparkling-mammoth', '2', 'What are the key features of Python?', 2, 13),
(43, 'sparkling-mammoth', '3', 'What type of language is python?', 3, 13),
(44, 'sparkling-mammoth', '4', 'How is Python an interpreted language?', 2, 13),
(45, 'sparkling-mammoth', '5', 'What is pep 8?', 1, 13),
(46, 'sparkling-mammoth', '6', 'How is memory managed in Python?', 1, 13),
(47, 'sparkling-mammoth', '7', 'What is name space in Python?', 3, 13),
(48, 'sparkling-mammoth', '8', 'What is PYTHON PATH?', 1, 13),
(49, 'sparkling-mammoth', '9', 'What are python modules?', 3, 13),
(50, 'sparkling-mammoth', '10', 'What are local variables and global variables in Python?', 2, 13),
(51, 'almond-avocet', '1', 'What is the difference between list and tuples in Python?', 1, 24),
(52, 'almond-avocet', '2', 'What are the key features of Python?', 2, 24),
(53, 'almond-avocet', '3', 'What type of language is python?', 3, 24),
(54, 'almond-avocet', '4', 'How is Python an interpreted language?', 2, 24),
(55, 'almond-avocet', '5', 'What is pep 8?', 1, 24),
(56, 'almond-avocet', '6', 'How is memory managed in Python?', 1, 24),
(57, 'almond-avocet', '7', 'What is name space in Python?', 3, 24),
(58, 'almond-avocet', '8', 'What is PYTHON PATH?', 1, 24),
(59, 'almond-avocet', '9', 'What are python modules?', 3, 24),
(60, 'almond-avocet', '10', 'What are local variables and global variables in Python?', 2, 24),
(61, 'tough-porcupine', '1', 'What is the difference between list and tuples in Python?', 1, 42),
(62, 'tough-porcupine', '2', 'What are the key features of Python?', 2, 42),
(63, 'tough-porcupine', '3', 'What type of language is python?', 3, 42),
(64, 'tough-porcupine', '4', 'How is Python an interpreted language?', 2, 42),
(65, 'tough-porcupine', '5', 'What is pep 8?', 1, 42),
(66, 'tough-porcupine', '6', 'How is memory managed in Python?', 1, 42),
(67, 'tough-porcupine', '7', 'What is name space in Python?', 3, 42),
(68, 'tough-porcupine', '8', 'What is PYTHON PATH?', 1, 42),
(69, 'tough-porcupine', '9', 'What are python modules?', 3, 42),
(70, 'tough-porcupine', '10', 'What are local variables and global variables in Python?', 2, 42),
(71, 'peculiar-chimpanzee', '1', 'What is the difference between list and tuples in Python?', 1, 36),
(72, 'peculiar-chimpanzee', '2', 'What are the key features of Python?', 2, 36),
(73, 'peculiar-chimpanzee', '3', 'What type of language is python?', 3, 36),
(74, 'peculiar-chimpanzee', '4', 'How is Python an interpreted language?', 2, 36),
(75, 'peculiar-chimpanzee', '5', 'What is pep 8?', 1, 36),
(76, 'peculiar-chimpanzee', '6', 'How is memory managed in Python?', 1, 36),
(77, 'peculiar-chimpanzee', '7', 'What is name space in Python?', 3, 36),
(78, 'peculiar-chimpanzee', '8', 'What is PYTHON PATH?', 1, 36),
(79, 'peculiar-chimpanzee', '9', 'What are python modules?', 3, 36),
(80, 'peculiar-chimpanzee', '10', 'What are local variables and global variables in Python?', 2, 36),
(81, 'bold-kingfisher', '1', 'What is the difference between list and tuples in Python?', 1, 36),
(82, 'bold-kingfisher', '2', 'What are the key features of Python?', 2, 36),
(83, 'bold-kingfisher', '3', 'What type of language is python?', 3, 36),
(84, 'bold-kingfisher', '4', 'How is Python an interpreted language?', 2, 36),
(85, 'bold-kingfisher', '5', 'What is pep 8?', 1, 36),
(86, 'bold-kingfisher', '6', 'How is memory managed in Python?', 1, 36),
(87, 'bold-kingfisher', '7', 'What is name space in Python?', 3, 36),
(88, 'bold-kingfisher', '8', 'What is PYTHON PATH?', 1, 36),
(89, 'bold-kingfisher', '9', 'What are python modules?', 3, 36),
(90, 'bold-kingfisher', '10', 'What are local variables and global variables in Python?', 2, 36),
(91, 'neat-gerbil', '1', 'What is the difference between list and tuples in ython?', 1, 36),
(92, 'neat-gerbil', '2', 'What are the key features of Python?', 2, 36),
(93, 'neat-gerbil', '3', 'What type of language is python?', 3, 36),
(94, 'neat-gerbil', '4', 'How is Python an interpreted language?', 2, 36),
(95, 'neat-gerbil', '5', 'What is pep 8?', 1, 36),
(96, 'neat-gerbil', '6', 'How is memory managed in Python?', 1, 36),
(97, 'neat-gerbil', '7', 'What is name space in Python?', 3, 36),
(98, 'neat-gerbil', '8', 'What is PYTHON PATH?', 1, 36),
(99, 'neat-gerbil', '9', 'What are python modules?', 3, 36);

-- --------------------------------------------------------

--
-- Table structure for table `longtest`
--

CREATE TABLE `longtest` (
  `longtest_qid` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `qid` int NOT NULL,
  `ans` longtext NOT NULL,
  `marks` int DEFAULT NULL,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `longtest`
--

INSERT INTO `longtest` (`longtest_qid`, `email`, `test_id`, `qid`, `ans`, `marks`, `uid`) VALUES
(1, 'vedant@mail.com', 'copper-uakari', 1, 'jhjh', 0, 16),
(2, 'vedant@mail.com', 'copper-uakari', 2, 'hjhj', 1, 16),
(3, 'vedant@mail.com', 'copper-uakari', 3, 'hj', 1, 16),
(4, 'vedant@mail.com', 'copper-uakari', 4, 'hjhj', 1, 16),
(5, 'vedant@mail.com', 'copper-uakari', 5, 'hjh', 1, 16),
(6, 'vedant@mail.com', 'copper-uakari', 6, 'jhj', 1, 16),
(7, 'vedant@mail.com', 'copper-uakari', 7, 'hjhjh', 3, 16),
(8, 'vedant@mail.com', 'copper-uakari', 8, 'jh', 1, 16),
(9, 'vedant@mail.com', 'copper-uakari', 9, 'hjh', NULL, 16),
(10, 'vedant@mail.com', 'copper-uakari', 10, 'jhjh', NULL, 16),
(11, 'shubham@yopmail.com', 'copper-uakari', 1, 'hihi', 1, 17),
(12, 'shubham@yopmail.com', 'copper-uakari', 2, 'hihi', 2, 17),
(13, 'shubham@yopmail.com', 'copper-uakari', 3, 'hii', 2, 17),
(14, 'shubham@yopmail.com', 'copper-uakari', 4, 'hihi', 2, 17),
(15, 'shubham@yopmail.com', 'copper-uakari', 5, 'xyz', 1, 17),
(16, 'shubham@yopmail.com', 'copper-uakari', 6, 'xyz', 1, 17),
(17, 'shubham@yopmail.com', 'copper-uakari', 7, 'hihi', 3, 17),
(18, 'shubham@yopmail.com', 'copper-uakari', 8, 'hihi', 1, 17),
(19, 'shubham@yopmail.com', 'copper-uakari', 9, 'xyz', 2, 17),
(20, 'shubham@yopmail.com', 'copper-uakari', 10, 'hhihi', 1, 17),
(21, 'shubham@yopmail.com', 'dainty-gibbon', 1, 'dddd', NULL, 17),
(22, 'shubham@yopmail.com', 'dainty-gibbon', 2, 'sds', NULL, 17),
(23, 'shubham@yopmail.com', 'dainty-gibbon', 3, 'sddd', NULL, 17),
(24, 'shubham@yopmail.com', 'dainty-gibbon', 4, 'sd', NULL, 17),
(25, 'shubham@yopmail.com', 'dainty-gibbon', 5, 'sdsd', NULL, 17),
(26, 'shubham@yopmail.com', 'dainty-gibbon', 6, 'sds', NULL, 17),
(27, 'shubham@yopmail.com', 'dainty-gibbon', 7, 'ddddddddd', NULL, 17),
(28, 'shubham@yopmail.com', 'dainty-gibbon', 8, 'sds', NULL, 17),
(29, 'shubham@yopmail.com', 'dainty-gibbon', 9, 'dddddddddd', NULL, 17),
(30, 'shubham@yopmail.com', 'dainty-gibbon', 10, 'sd', NULL, 17),
(31, 'milton@mail.com', 'slick-muskox', 1, 'jijij', NULL, 23),
(32, 'milton@mail.com', 'slick-muskox', 2, 'ijij', NULL, 23),
(33, 'milton@mail.com', 'slick-muskox', 3, 'jijij', NULL, 23),
(34, 'milton@mail.com', 'slick-muskox', 4, 'jij', NULL, 23),
(35, 'milton@mail.com', 'slick-muskox', 5, 'ijijij', NULL, 23),
(36, 'milton@mail.com', 'slick-muskox', 6, 'jij', NULL, 23),
(37, 'milton@mail.com', 'slick-muskox', 7, 'jijij', NULL, 23),
(38, 'milton@mail.com', 'slick-muskox', 8, 'ijij', NULL, 23),
(39, 'milton@mail.com', 'slick-muskox', 9, 'jijij', NULL, 23),
(40, 'milton@mail.com', 'slick-muskox', 10, 'jiji', NULL, 23);

-- --------------------------------------------------------

--
-- Table structure for table `practicalqa`
--

CREATE TABLE `practicalqa` (
  `pracqa_qid` bigint NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `qid` varchar(25) NOT NULL,
  `q` longtext NOT NULL,
  `compiler` tinyint NOT NULL,
  `marks` int NOT NULL,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practicalqa`
--

INSERT INTO `practicalqa` (`pracqa_qid`, `test_id`, `qid`, `q`, `compiler`, `marks`, `uid`) VALUES
(2, 'sociable-inchworm', '1', '1', 29, 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `practicaltest`
--

CREATE TABLE `practicaltest` (
  `pid` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `qid` varchar(25) NOT NULL,
  `code` longtext,
  `input` longtext,
  `executed` varchar(125) DEFAULT NULL,
  `marks` int NOT NULL,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proctoring_log`
--

CREATE TABLE `proctoring_log` (
  `pid` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `voice_db` int DEFAULT '0',
  `img_log` longtext NOT NULL,
  `user_movements_updown` tinyint NOT NULL,
  `user_movements_lr` tinyint NOT NULL,
  `user_movements_eyes` tinyint NOT NULL,
  `phone_detection` tinyint NOT NULL,
  `person_status` tinyint NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questions_uid` bigint NOT NULL,
  `test_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `q` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `d` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` int NOT NULL,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questions_uid`, `test_id`, `qid`, `q`, `a`, `b`, `c`, `d`, `ans`, `marks`, `uid`) VALUES
(1, 'gorgeous-pronghorn', '1', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'solitary', 2, 13),
(2, 'wild-limpet', '1', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(3, 'wild-limpet', '2', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(4, 'wild-limpet', '3', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(5, 'wild-limpet', '4', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(6, 'wild-limpet', '5', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(7, 'wild-limpet', '6', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(8, 'hysterical-dog', '1', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(9, 'hysterical-dog', '2', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(10, 'hysterical-dog', '3', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(11, 'hysterical-dog', '4', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(12, 'hysterical-dog', '5', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13),
(13, 'hysterical-dog', '6', 'Based on the detail of the house’s location how can it best be described?', 'majestic', 'imposing', 'solitary', 'unique', 'c', 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` bigint NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studenttestinfo`
--

CREATE TABLE `studenttestinfo` (
  `stiid` bigint NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_left` time NOT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studenttestinfo`
--

INSERT INTO `studenttestinfo` (`stiid`, `email`, `test_id`, `time_left`, `completed`, `uid`) VALUES
(1, 'bsb@yopmail.com', 'tunneling-scorpion', '00:45:38', 0, 1),
(2, 'bsb@yopmail.com', 'tunneling-scorpion', '00:45:38', 0, 1),
(3, 'karitkk@mail.com', 'copper-uakari', '00:00:01', 1, 15),
(4, 'vedant@mail.com', 'copper-uakari', '00:00:18', 1, 16),
(5, 'shubham@yopmail.com', 'copper-uakari', '00:08:24', 1, 17),
(6, 'shubham@yopmail.com', 'dainty-gibbon', '00:18:34', 1, 17),
(7, 'milton@mail.com', 'slick-muskox', '00:19:42', 1, 23),
(8, 'milton@mail.com', 'hysterical-dog', '00:19:39', 0, 23),
(9, 'milton@mail.com', 'sparkling-mammoth', '00:28:52', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `description`, `created_at`, `updated_at`) VALUES
(7, 'computer', 'computer science', '2024-05-20 09:13:35', '2024-06-04 11:14:35'),
(8, 'Hindi', 'Hindi is considered a Sanskritised register of the Hindustani language', '2024-05-20 09:13:35', '2024-05-20 09:13:35'),
(12, 'sanskrit', 'Hindi is considered a Sanskritised register of the Hindustani language', '2024-06-05 13:40:18', '2024-06-05 13:40:18'),
(13, 'English', 'xyz', '2024-06-05 16:04:20', '2024-06-05 16:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tid` bigint NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_type` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '2000-01-01 07:00:50',
  `duration` int NOT NULL,
  `show_ans` int NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `neg_marks` int NOT NULL,
  `calc` tinyint NOT NULL,
  `proctoring_type` tinyint NOT NULL DEFAULT '0',
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tid`, `email`, `test_id`, `test_type`, `start`, `end`, `duration`, `show_ans`, `password`, `subject`, `topic`, `neg_marks`, `calc`, `proctoring_type`, `uid`) VALUES
(1, 'hari@yopmail.com', 'mega-jackdaw', 'practical', '2024-04-17 05:00:00', '2024-04-30 05:17:00', 3600, 0, 'TEST001', 'Testing', 'Testing', 0, 0, 1, 2),
(2, 'hari@yopmail.com', 'tunneling-scorpion', 'subjective', '2024-04-17 05:00:00', '2024-04-30 05:17:00', 3600, 0, 'TEST11', 'Testing', 'Testing', 0, 0, 1, 2),
(3, 'proctor@yopmail.com', 'copper-uakari', 'subjective', '2024-06-04 11:05:05', '2024-06-12 11:33:00', 600, 1, '1234', 'maths', 'algebra', 0, 0, 1, 13),
(4, 'proctor@yopmail.com', 'copper-ua', 'subjective', '2024-06-02 11:33:00', '2024-06-12 11:33:00', 600, 0, '1234', 'maths', 'algebra', 0, 0, 1, 13),
(5, 'proctor@yopmail.com', 'copper-uakari', 'objective', '2024-06-05 13:51:00', '2024-06-03 08:33:00', 2400, 1, '1234', 'English', 'A briht', 1, 0, 0, 13),
(6, 'proctor@yopmail.com', 'copper-uakari', 'subjective', '2024-06-05 13:51:00', '2024-06-03 08:33:00', 1200, 1, '1234', 'computer', 'pheripheral', 0, 0, 0, 13),
(7, 'proctor@yopmail.com', 'dainty-gibbon', 'subjective', '2024-06-04 06:15:00', '2024-06-06 06:15:00', 1200, 0, '1234', 'computer', 'pheripheral', 0, 0, 1, 13),
(8, 'proctor@yopmail.com', 'slick-muskox', 'subjective', '2024-06-04 13:50:00', '2024-06-04 11:20:00', 1200, 0, '1234', 'English', 'topic1', 0, 0, 1, 13),
(9, 'proctor@yopmail.com', 'hysterical-dog', 'objective', '2024-06-04 11:20:00', '2024-06-06 11:20:00', 1200, 1, '1234', 'Hindi', 'topic1', 1, 0, 1, 13),
(10, 'proctor@yopmail.com', 'sparkling-mammoth', 'subjective', '2024-06-03 11:20:00', '2024-06-06 11:20:00', 1800, 0, '1234', 'Hindi', 'topic2', 0, 0, 1, 13),
(11, 'exam@mail.com', 'almond-avocet', 'subjective', '2024-06-05 14:19:00', '2024-06-06 14:19:00', 2400, 0, '1234', 'computer', 'pheripheral', 0, 0, 1, 24),
(12, 'simar@mail.com', 'tough-porcupine', 'subjective', '2024-06-13 14:54:00', '2024-06-15 14:54:00', 3600, 0, '1234', 'Computer', 'pheripheral', 0, 0, 0, 42),
(13, 'create@mail.com', 'peculiar-chimpanzee', 'subjective', '2024-06-14 12:18:00', '2024-06-15 12:18:00', 1200, 0, '1234', 'English', 'pheripheral', 0, 0, 0, 36),
(14, 'create@mail.com', 'bold-kingfisher', 'subjective', '2024-06-14 14:12:00', '2024-06-15 14:12:00', 1200, 0, '1234', 'sas', 'sasa', 0, 0, 0, 36),
(19, 'create@mail.com', 'neat-gerbil', 'subjective', '2024-06-17 06:28:28', '2024-06-20 01:58:00', 3600, 0, '1234', 'hindi', 'non hindi', 0, 0, 0, 36),
(20, 'create@mail.com', 'stereotyped-seriema', 'full', '2024-06-17 06:21:38', '2024-06-26 16:30:00', 1200, 0, '1234', 'History', 'hmare neta', 0, 0, 0, 36),
(21, 'create@mail.com', 'elegant-chicken', 'full', '2024-06-17 17:41:00', '2024-06-28 17:41:00', 5400, 0, '1234', 'final destination', 'finally', 0, 0, 1, 36),
(22, 'create@mail.com', 'sassy-harrier', 'full', '2024-06-18 06:30:00', '2024-06-29 06:30:00', 780, 0, '1234', 'malyalam', 'malelu', 0, 0, 0, 36);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `subject_id` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `subject_id`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Algebra', 7, 'Testing 3', '2024-05-20 09:33:32', '2024-06-05 13:42:06'),
(6, 'anthropology', 7, 'Social science is one of the.', '2024-05-20 09:36:47', '2024-05-20 09:37:09'),
(7, 'A letter to god', 8, 'first chapter a letter to god', '2024-06-04 10:00:22', '2024-06-05 13:42:10'),
(8, 'pheripheral', 8, 'basic hardware information of pc', '2024-06-04 11:15:04', '2024-06-05 13:42:14'),
(9, 'No no nono', 12, 'Social science', '2024-06-04 12:50:18', '2024-06-05 13:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` tinyint NOT NULL,
  `examcredits` int NOT NULL DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `register_time`, `user_type`, `user_image`, `user_login`, `examcredits`) VALUES
(1, 'Bsb', 'bsb@yopmail.com', '$2b$12$u/HdYwJgfHm.IuTKFBJFIO9z/x1splFNYcqc50C6ZZ0Qal.P7AE9W', '2024-04-16 12:55:58', 'student', '1', 0, 7),
(2, 'JSB', 'jsb@yopmail.com', '$2b$12$PrLr9JIZPV5fqwV8lOwrNuXNmRJR9V3V23sJwhlCc0oabsf5fhAdO', '2024-05-25 04:45:37', 'student', '1', 0, 7),
(3, 'Mom', 'mom@yopmail.com', '$2b$12$EeuRRBd.6n/v1C6jfvlQnumIHmgi2xdQPO.8rg/eVH97/rXCbCM5W', '2024-05-25 04:50:18', 'student', '1', 0, 7),
(4, 'Pd', 'pd@yopmail.com', '$2b$12$0vbFeHy0kFbzJunbJvVq7OSMww4wJKo.EgirxA4KTzbHxpJLBPJka', '2024-05-26 01:23:27', 'proctor', '1', 0, 7),
(11, 'test', 'test@yopmail.com', '$2b$12$.IzQwLScsVZtKUyX65Y8bObZKThJzA/h5xuB04mLw0PDpI5FqCONm', '2024-06-03 11:35:02', 'student', '1', 0, 7),
(13, 'proctor', 'proctor@yopmail.com', '$2b$12$XAeTYIhTXYRDRTP3Zdjbte9jvV/B20MqYOBG4tWBp/by9ePQIIgi2', '2024-06-03 11:45:46', 'proctor', '1', 0, 0),
(14, 'tapswi', 'tapaswi@mail.com', '$2b$12$7flBAbZ8nMIX9.56368Cv.YSFb6O94O5wa6/AyJSnDBHcDKnjOS4G', '2024-06-03 11:52:17', 'student', '1', 0, 7),
(15, 'jon', 'karitkk@mail.com', '$2b$12$wthR5UWj5r22GEykUjxxle2CNqwMVohuGnf511E5fgJhD23.HTUjC', '2024-06-04 07:14:25', 'student', '1', 0, 7),
(16, 'vedu', 'vedant@mail.com', '$2b$12$j.NdxjExAXrdTU/Wv.41feY.opaibemRJbzm8ZnMmQuX1btiDc0XC', '2024-06-04 08:11:53', 'student', '1', 0, 7),
(17, 'shubham', 'shubham@yopmail.com', '$2b$12$UVNgXn9xSsSU1G09XGuhEevscc8KYLLA/vEoQxQULo7StAhKtGNUG', '2024-06-04 08:44:55', 'student', '1', 0, 7),
(21, 'pan', 'pan@mail.com', '$2b$12$w44EFUCjeH0chqRUjg8yyuPM6ZikkJVYm4//QtL5rmMuAUuxFl6nu', '2024-06-05 05:17:26', 'student', '1', 0, 7),
(23, 'mili', 'milton@mail.com', '$2b$12$p9laHuA8W5NsqPe9naYJN.yCoskbRWE9V2bu0GgVWIcZ3z96RuLMO', '2024-06-05 13:54:19', 'student', '1', 0, 7),
(24, 'exam', 'exam@mail.com', '$2b$12$az9vXcaRwdtJgTJuAoJWpOE/SQ93Fc.CLKLFHCXBZxV4cGKWmADDq', '2024-06-05 15:43:29', 'proctor', '1', 0, 6),
(25, 'divyant', 'divyant@mail.com', '$2b$12$XUGr6rWRgWH5xMgoTB5vw.HgdrVf51M26QgkBUTpAFrP1L8mu4y7S', '2024-06-06 10:51:28', 'proctor', '1', 0, 7),
(26, 'devu', 'devu@yopmail.com', '$2b$12$XnviJ4FT.srleDU88g77sergpY6kHNAcnKCX3ZQIw1BRfZ6bJKTpi', '2024-06-06 12:54:29', 'proctor', '1', 0, 7),
(27, 'deva', 'devi@yopmail.com', '$2b$12$hadeXgd9W.n4buRK7P/bl.n8BUVqNwknx7ND/sPnERHxTmbozQR7.', '2024-06-06 12:59:28', 'student', '1', 0, 7),
(28, 'djfd', 'hihi@mail.com', '$2b$12$LbxQrkaMXEKNr3/7xJg81uyMw2uyu/9j2ljppGeayfkZk6TGPCcpe', '2024-06-09 09:49:22', 'proctor', '1', 0, 7),
(29, 'upload image', 'ek@mail.com', '$2b$12$X7lEQHNLrynw1y9bCTXVlePU1sb7rVyzz2XX1O6xheezUICC/t0cS', '2024-06-09 10:01:23', 'proctor', '', 0, 7),
(30, 'yes', 'yes@mail.com', '$2b$12$TI8OTrG25QxUbu.pgR3wvubqJG7P7NG5OYmjNV/n1woK5GNMZeNia', '2024-06-09 10:04:59', 'proctor', '', 0, 7),
(32, 'fghj', 'hihihsdjf@mail.com', '$2b$12$jaixx0xlWHuFaBQVNRw1Keph5EEKW6E8fw5sW2qmCJyrq3CDTHkVW', '2024-06-09 10:07:06', 'proctor', '', 0, 7),
(33, 'jjj', 'j@mail.com', '$2b$12$FgIvBEDTG/xqtxMq5Wbtl.oJi.b9cBqMe7bwndv95ADG25JJv.Yty', '2024-06-09 10:10:27', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/proctorImage/33.jpg', 0, 7),
(34, 'Kartik gaur upadhayay', 'kartikgaur13@gmail.com', '$2b$12$zRtpCE/gw7bDA2PbCcaLUOSJMIxHHeVx4RnaCNdaPnOtkasbbM9Ny', '2024-06-09 10:17:06', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/webBanner/34.jpg', 0, 7),
(35, 'ji', 'vikram@yopmail.com', '$2b$12$oyf6qz7lN8iFNaDTsyexNeILHB0CrDaZa/3bB.D0NCDyoU82ugGVy', '2024-06-09 13:39:22', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/webBanner/proctor/35.jpg', 0, 7),
(36, 'create', 'create@mail.com', '$2b$12$0283OwHkXZZhQgYLNRxzC.OEgIBUVM1foATmh.uJwaBXOVQp2HluC', '2024-06-09 14:12:54', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/webBanner/proctor/36.png', 0, -3),
(37, 'example', 'example@yopmail.com', '$2b$12$PL5NT2G1Dlof4e5z7x1bDuU5be2DzIrqBy9szPvr.oj5KHg/R66tu', '2024-06-13 10:16:57', 'proctor', 'https://datamagnum-proctor.s3.us-east-1.amazonaws.com/webBanner/proctor/37.png', 0, 7),
(38, 'exampleName', 'exampleStudent@yopmail.com', '$2b$12$2XuA9FuHXTX/bK7PZ7vzFOLTeFhEYptEnFzm6rJuN5UVuP5m8gtli', '2024-06-13 10:20:39', 'student', 'https://datamagnum-proctor.s3.us-east-1.amazonaws.com//users/38.png', 0, 7),
(39, 'verify', 'verify@yopmail.com', '$2b$12$aIbtuQVLrNXPc1yhMqGVyOvw690MxhDyGZFn3GuW3hNt0S8rTWsvO', '2024-06-13 10:22:34', 'student', 'https://datamagnum-proctor.s3.us-east-1.amazonaws.com/users/39.png', 0, 7),
(40, 'johnnn', 'kartik@yop.com', '$2b$12$La4Kuu3D8RVX4nu7Xj8kf.abfRYyCEFH9eNqhMb0UqlGiII6M5hhC', '2024-06-13 14:50:32', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/users/40.png', 0, 7),
(41, 'gaurav', 'gaurav@yopmail.com', '$2b$12$vY7KLeYnB6pVSIKvGHVJgeQtKaNCDg8GdnP6EIb9qeefZJb6xkkVK', '2024-06-13 14:53:08', 'proctor', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com//webBanner/proctor/41.png', 0, 7),
(42, 'simar', 'simar@mail.com', '$2b$12$ZILweCe/GRc4CDUyy0ICI.rwxt1gBHfQcuDmIoMdz2Mkn85XS63ga', '2024-06-13 14:54:36', 'student', 'https://blinkexam-sandbox-proctor.s3.ap-south-1.amazonaws.com/webBanner/proctor/42.png', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `window_estimation_log`
--

CREATE TABLE `window_estimation_log` (
  `wid` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  `test_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `window_event` tinyint NOT NULL,
  `transaction_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `window_estimation_log`
--

INSERT INTO `window_estimation_log` (`wid`, `email`, `test_id`, `name`, `window_event`, `transaction_log`, `uid`) VALUES
(1, 'bsb@yopmail.com', 'tunneling-scorpion', 'Bsb', 1, '2024-04-17 05:52:21', 1),
(2, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:13:22', 16),
(3, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:13:58', 16),
(4, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:14:05', 16),
(5, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:14:34', 16),
(6, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:14:46', 16),
(7, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:15:39', 16),
(8, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:15:50', 16),
(9, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:16:05', 16),
(10, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:16:24', 16),
(11, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:18:49', 16),
(12, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:19:00', 16),
(13, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:19:27', 16),
(14, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:19:45', 16),
(15, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:19:54', 16),
(16, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:21:42', 16),
(17, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:21:47', 16),
(18, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:22:35', 16),
(19, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:23:00', 16),
(20, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:23:57', 16),
(21, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:24:15', 16),
(22, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:24:22', 16),
(23, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:28:23', 16),
(24, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:29:04', 16),
(25, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:29:07', 16),
(26, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:29:13', 16),
(27, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:30:26', 16),
(28, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:30:31', 16),
(29, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:34:12', 16),
(30, 'vedant@mail.com', 'copper-uakari', 'vedu', 1, '2024-06-04 08:38:12', 16),
(31, 'shubham@yopmail.com', 'copper-uakari', 'shubham', 1, '2024-06-04 08:53:11', 17),
(32, 'shubham@yopmail.com', 'copper-uakari', 'shubham', 1, '2024-06-04 08:54:20', 17),
(33, 'shubham@yopmail.com', 'copper-uakari', 'shubham', 1, '2024-06-04 09:00:14', 17),
(34, 'shubham@yopmail.com', 'copper-uakari', 'shubham', 1, '2024-06-04 09:00:34', 17),
(35, 'shubham@yopmail.com', 'copper-uakari', 'shubham', 1, '2024-06-04 09:00:43', 17),
(36, 'shubham@yopmail.com', 'dainty-gibbon', 'shubham', 1, '2024-06-05 09:43:05', 17),
(37, 'shubham@yopmail.com', 'dainty-gibbon', 'shubham', 1, '2024-06-05 09:43:11', 17),
(38, 'shubham@yopmail.com', 'dainty-gibbon', 'shubham', 1, '2024-06-05 09:43:58', 17),
(39, 'milton@mail.com', 'slick-muskox', 'mili', 1, '2024-06-05 13:57:56', 23),
(40, 'milton@mail.com', 'sparkling-mammoth', 'mili', 1, '2024-06-05 14:20:36', 23),
(41, 'milton@mail.com', 'sparkling-mammoth', 'mili', 1, '2024-06-05 14:21:03', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allquestions`
--
ALTER TABLE `allquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `longqa`
--
ALTER TABLE `longqa`
  ADD PRIMARY KEY (`longqa_qid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `longtest`
--
ALTER TABLE `longtest`
  ADD PRIMARY KEY (`longtest_qid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `practicalqa`
--
ALTER TABLE `practicalqa`
  ADD PRIMARY KEY (`pracqa_qid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `practicaltest`
--
ALTER TABLE `practicaltest`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `proctoring_log`
--
ALTER TABLE `proctoring_log`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `proctor_email_index` (`email`),
  ADD KEY `proctor_email_test_id_index` (`email`,`test_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questions_uid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `studenttestinfo`
--
ALTER TABLE `studenttestinfo`
  ADD PRIMARY KEY (`stiid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `window_estimation_log`
--
ALTER TABLE `window_estimation_log`
  ADD PRIMARY KEY (`wid`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allquestions`
--
ALTER TABLE `allquestions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `longqa`
--
ALTER TABLE `longqa`
  MODIFY `longqa_qid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `longtest`
--
ALTER TABLE `longtest`
  MODIFY `longtest_qid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `practicalqa`
--
ALTER TABLE `practicalqa`
  MODIFY `pracqa_qid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `practicaltest`
--
ALTER TABLE `practicaltest`
  MODIFY `pid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proctoring_log`
--
ALTER TABLE `proctoring_log`
  MODIFY `pid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questions_uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studenttestinfo`
--
ALTER TABLE `studenttestinfo`
  MODIFY `stiid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `tid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `window_estimation_log`
--
ALTER TABLE `window_estimation_log`
  MODIFY `wid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `longqa`
--
ALTER TABLE `longqa`
  ADD CONSTRAINT `longqa_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `longtest`
--
ALTER TABLE `longtest`
  ADD CONSTRAINT `longtest_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `practicalqa`
--
ALTER TABLE `practicalqa`
  ADD CONSTRAINT `practicalqa_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `practicaltest`
--
ALTER TABLE `practicaltest`
  ADD CONSTRAINT `practicaltest_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `practicaltest_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `proctoring_log`
--
ALTER TABLE `proctoring_log`
  ADD CONSTRAINT `proctoring_log_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `studenttestinfo`
--
ALTER TABLE `studenttestinfo`
  ADD CONSTRAINT `studenttestinfo_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `window_estimation_log`
--
ALTER TABLE `window_estimation_log`
  ADD CONSTRAINT `window_estimation_log_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
