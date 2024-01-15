-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 09:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atcdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_profile`
--

CREATE TABLE `account_profile` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(15) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `major` varchar(50) NOT NULL,
  `UEY` int(11) NOT NULL,
  `interests` varchar(150) NOT NULL,
  `futur_course` varchar(150) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_profile`
--

INSERT INTO `account_profile` (`id`, `full_name`, `avatar`, `money`, `major`, `UEY`, `interests`, `futur_course`, `User_id`) VALUES
(11, 'students', 'avatar/anime3.png', 500, 'English', 2020, 'Languages', 'English', 23),
(12, 'student2', 'avatar/anime3_MzlV9j2.png', 481, 'Civil Engineering', 2018, 'Data analysis', 'Numerical Analysis', 24);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add user course', 9, 'add_usercourse'),
(34, 'Can change user course', 9, 'change_usercourse'),
(35, 'Can delete user course', 9, 'delete_usercourse'),
(36, 'Can view user course', 9, 'view_usercourse'),
(37, 'Can add video', 10, 'add_video'),
(38, 'Can change video', 10, 'change_video'),
(39, 'Can delete video', 10, 'delete_video'),
(40, 'Can view video', 10, 'view_video'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment'),
(45, 'Can add teacher', 12, 'add_teacher'),
(46, 'Can change teacher', 12, 'change_teacher'),
(47, 'Can delete teacher', 12, 'delete_teacher'),
(48, 'Can view teacher', 12, 'view_teacher'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile'),
(53, 'Can add teacher course', 14, 'add_teachercourse'),
(54, 'Can change teacher course', 14, 'change_teachercourse'),
(55, 'Can delete teacher course', 14, 'delete_teachercourse'),
(56, 'Can view teacher course', 14, 'view_teachercourse');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$dRBQXVNbVEMlN2w1Gyw4jO$MlZHRLMt7ZbMKK+5gruba+pv1fp6Y2cPxaRfwUmVitY=', '2022-06-25 19:03:13.387983', 1, 'khdev', '', '', 'hamza.alkhatib.se@gmail.com', 1, 1, '2022-06-05 12:34:47.000000'),
(19, 'pbkdf2_sha256$320000$k7htnHuySe3eGhE6i7UaSa$yqtcNvEhDURmdUlSH1Rja8nY3LCs2orrr9/HGzOq3xw=', NULL, 0, 'omar', 'Omar', 'Abu Elwan', 'omar@teacher.com', 0, 1, '2022-06-21 03:24:04.000000'),
(20, 'pbkdf2_sha256$320000$eaTG1cxl3h5FaVOLFl1BZ4$6vdyz/GP4WC2HCUsVd50P5cM0V+WSxf0HfD42odxIY0=', '2022-06-25 19:01:48.608358', 0, 'hamza', 'hamza', 'alkhtib', 'hamza@teacher.com', 0, 1, '2022-06-21 03:25:18.000000'),
(21, 'pbkdf2_sha256$320000$tP1Ne0b2KpB2x2vAwwxfEr$kgJQ59oWIqyz30xgcsKqa4O2GQwVrXSZVArr3fTTGgc=', '2022-06-23 17:15:13.043942', 0, 'saif', 'Saif', 'Nusair', 'saif@teacher.com', 0, 1, '2022-06-21 03:26:23.000000'),
(22, 'pbkdf2_sha256$320000$uapxfIMfcIT2epSp42dHoG$8A7AFhzfxXVexDDk7uyQJYhyJom3y8i6xkqvbjP9qxc=', NULL, 0, 'ahmad', 'Ahmad', 'Obeidat', 'ahmad@teacher.com', 0, 1, '2022-06-21 03:27:16.000000'),
(23, 'pbkdf2_sha256$320000$0oKdCnwElKZtRn9uhC96ws$UVnM6hH0Kn+m6HigmUwzx+9J9Sp8KXke/LKtfr3CF18=', '2022-06-21 13:41:41.239626', 0, 'students', '', '', 'students@gmail.com', 0, 1, '2022-06-21 09:26:53.342477'),
(24, 'pbkdf2_sha256$320000$Igg1Kw7oBSbkg6rq1HJc3t$E6cR9Z1TzD2ZTBfjfLorqXH4cjPURQ8x1CjjZozQFpE=', '2022-06-25 19:04:10.798893', 0, 'student2', '', '', 'student2@student.com', 0, 1, '2022-06-21 10:58:19.501152'),
(25, 'pbkdf2_sha256$320000$M32eiIGyeSXQAWgZsdwNxy$VqkvuKRe1p4hob3rkYki6xPzq9NIFQKAoMY9YAg9sk0=', '2022-06-21 14:01:52.982113', 0, 'student3', '', '', 'student3@student.com', 0, 1, '2022-06-21 13:38:19.682105');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(28, 1, 1),
(21, 19, 2),
(22, 20, 2),
(23, 21, 2),
(24, 22, 2),
(25, 23, 3),
(26, 24, 3),
(27, 25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_payment`
--

CREATE TABLE `core_payment` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_course_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`id`, `title`, `slug`, `ordering`) VALUES
(1, 'Programming', 'Programming', 1),
(2, 'Law', 'Law', 2),
(3, 'Engineering', 'Engineering', 3),
(4, 'Languages', 'Languages', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_course`
--

CREATE TABLE `course_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `length` int(11) NOT NULL,
  `coupon` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_course`
--

INSERT INTO `course_course` (`id`, `name`, `slug`, `description`, `price`, `discount`, `active`, `thumbnail`, `date`, `length`, `coupon`, `tags`, `category_id`, `teacher_id`) VALUES
(28, 'English', 'English', 'Learn English grammar through lectures and listening and speaking practice, so you can confidently speak English.', 35, 20, 1, 'thumbnail/english.jpg', '2022-06-21 09:26:01.434553', 6, 'Englishc25894136', '#Languages', 4, 12),
(29, 'Java', 'Java', 'Learn Java In This Course And Become a Computer Programmer. Obtain valuable Core Java Skills', 25, 15, 1, 'thumbnail/java3.jpg', '2022-06-21 09:40:15.107775', 6, 'Javac258741369', '#program', 1, 11),
(30, 'Photoshop', 'Photoshop', 'You\'ll learn advanced Photoshop techniques like Photoshop retouching & Graphic Design tutorials.', 30, 35, 1, 'thumbnail/photoshop-actions-2.webp', '2022-06-21 09:54:16.109373', 6, 'Photoshopc258741369', '#program', 1, 11),
(31, 'C++', 'C++', 'Take your knowledge of C++ to the next level!', 25, 19, 1, 'thumbnail/c.png', '2022-06-21 09:58:39.291781', 6, 'cc258741369', '#program', 1, 11),
(32, 'Artificial intelligence', 'Artificial intelligence', 'Combine the power of Data Science, Machine Learning and Deep Learning to create powerful AI for Real-World applications!', 30, 15, 1, 'thumbnail/AI_ch45int.jpg', '2022-06-21 10:03:18.793665', 6, 'Artificialintelligencec258741369', '#program', 1, 11),
(33, 'Spanish', 'Spanish', 'Learn Spanish with the complete, non-stop SPEAKING method, in a matter of weeks, not years.', 35, 20, 1, 'thumbnail/spanish.jpg', '2022-06-21 10:12:21.312465', 6, 'Spanishc258741369', '#Languages', 4, 12),
(34, 'Python', 'Python', 'Learn Python like a Professional Start from the basics and go all the way to creating your own applications and games', 25, 15, 1, 'thumbnail/python.jpg', '2022-06-21 10:22:18.130860', 6, 'Pythonc852147369', '#program', 1, 11),
(35, 'Numerical Analysis', 'NumericalAnalysis', 'Gaussian Elimination, Eigenvalues, Numerical Integration, Interpolation, Differential Equations and Operations Research', 20, 10, 1, 'thumbnail/num.jpeg', '2022-06-21 10:30:15.894211', 6, 'NumericalAnalysisc258147369', '#Engineering', 3, 10),
(36, 'Construction Management', 'ConstructionManagement', 'This course is ideal for developing your understanding and skills in professionally managing all construction projects Management', 25, 14, 1, 'thumbnail/ConstructionManagement2.jpg', '2022-06-21 10:36:02.548036', 6, 'ConstructionManagementc258147369', '#Engineering', 3, 10),
(37, 'Introduction to Engineering Mechanics', 'ITEM', 'This course serves as a springboard into Engineering Solid Mechanics for new students or as a refresher for students already familiar with some of the concepts and are looking for somewhere to brush u', 28, 16, 1, 'thumbnail/Introduction.jpg', '2022-06-21 10:42:11.277175', 6, 'ITEMc258147369', '#Engineering', 3, 10),
(38, 'Introduction to Arabic Common Law', 'ACL', 'Introduction to the Common Law Vol 1 Turkish pronunciation support', 30, 18, 1, 'thumbnail/Law.jpg', '2022-06-21 10:47:33.435919', 6, 'ACLc258147369', '#Law', 2, 13),
(39, 'Social Work: Practice, Policy and Research', 'SocialWork', 'Social Work Week 2022 | Social Work and Me', 26, 10, 1, 'thumbnail/1LAW.jpg', '2022-06-21 10:56:11.169085', 6, 'SocialWorkc258147369', '#Law', 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `course_teachercourse`
--

CREATE TABLE `course_teachercourse` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_teachercourse`
--

INSERT INTO `course_teachercourse` (`id`, `date`, `course_id`, `teacher_id`) VALUES
(9, '2022-06-21 09:31:04.404880', 28, 12),
(10, '2022-06-21 10:01:07.232632', 29, 11),
(11, '2022-06-21 10:01:12.624103', 31, 11),
(12, '2022-06-21 10:01:23.420963', 30, 11),
(13, '2022-06-21 10:08:19.594435', 32, 11),
(16, '2022-06-21 16:44:08.270581', 35, 10),
(17, '2022-06-21 16:44:14.058767', 36, 10),
(18, '2022-06-21 16:44:24.240791', 37, 10),
(19, '2022-06-21 16:44:37.082952', 39, 13),
(20, '2022-06-21 16:44:42.088341', 38, 13),
(21, '2022-06-21 16:44:55.785042', 33, 12),
(22, '2022-06-21 16:45:21.167622', 34, 11);

-- --------------------------------------------------------

--
-- Table structure for table `course_usercourse`
--

CREATE TABLE `course_usercourse` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_usercourse`
--

INSERT INTO `course_usercourse` (`id`, `date`, `course_id`, `user_id`) VALUES
(183, '2022-06-21 12:11:10.606366', 31, 23),
(184, '2022-06-21 14:08:57.407931', 30, 24);

-- --------------------------------------------------------

--
-- Table structure for table `course_video`
--

CREATE TABLE `course_video` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `video_id` varchar(100) NOT NULL,
  `is_preview` tinyint(1) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_video`
--

INSERT INTO `course_video` (`id`, `title`, `serial_number`, `video_id`, `is_preview`, `course_id`) VALUES
(8, 'English Grammar Course | Introduction to Nouns #1', 1, '8IogxPUrW7k', 1, 28),
(9, 'English Grammar Course | Singular and Plural Nouns #2', 2, 'F8M6MxypjEo', 1, 28),
(10, 'English Grammar Course | Irregular Plural Nouns #3', 3, 'ehCrFcFxfVo', 1, 28),
(11, 'English Grammar Course | Compound Nouns #4', 4, 'IaUmrzUPU1k', 1, 28),
(12, 'English Grammar Course Countable and Uncountable Nouns #5', 5, 'rS5rfMJvwK4', 1, 28),
(13, 'ADJECTIVES #1 | Basic English Grammar Course', 6, 'S3ChAWSu4L4', 1, 28),
(14, 'Why take this Java Course?', 1, 'VHbSopMyc4M', 1, 29),
(15, 'Programs and Programming Languages', 2, '-C88r0niLQQ', 1, 29),
(16, 'Introduction to Java Programming', 3, 'mG4NLNZ37y4', 1, 29),
(17, 'Anatomy of Java Program', 4, 'vsxYucdzimA', 1, 29),
(18, 'Displaying Messages in Java', 5, 'ifirpBZLeCk', 1, 29),
(19, 'Displaying Numbers in Java', 6, 'UFMqdnUh4nI', 1, 29),
(20, 'How to Create an Awesome Letter Portrait - Photoshop Tutorial', 1, 'Photoshop', 1, 30),
(21, 'Photoshop: How to Create a Glass Shatter Effect - Tutorial', 2, 'O4DMvPhFclI', 1, 30),
(22, 'Photoshop Tutorial - Neon Text Effect', 3, 'jJxqSgDOqdk', 1, 30),
(23, 'Animated GIF Smoke Effect: Photoshop Tutorial', 4, 'ryS5HFOB8sA', 1, 30),
(24, 'Animal Double Color Exposure Effect - Photoshop Tutorial', 5, '1WI7XK0lgbU', 1, 30),
(25, 'How to Create Realistic Cracked Skin using Photoshop', 6, '5Y3aIHxxkok', 1, 30),
(26, 'Welcome to C++', 1, '18c3MTX0PK0', 1, 31),
(27, 'How to Setup C++ on Windows', 2, '1OsGXuNA5cc', 1, 31),
(28, 'How to Setup C++ on Mac', 3, 'SfGuIVzE_Os', 1, 31),
(29, 'How to Setup C++ on Linux', 4, 'H4s55GgAg0I', 1, 31),
(30, 'How C++ Works', 5, 'zB9RI8_wExo', 1, 31),
(31, 'How the C++ Compiler Works', 6, 'V9zuox47zr0', 1, 31),
(32, '1. Introduction to the AI & ML - مدخلك الى الذكاء الاصطناعي', 1, '2oLnX1PfMNo', 1, 32),
(33, '2. AI & ML Basics & Requirements | متطلبات ومبادئ برمجيات الذكاء الاصطناعي', 2, 'Vs70kXBzkmE', 1, 32),
(34, '3. Fields of AI & ML | مجالات إستخدام الذكاء الإصطناعي', 3, 'LJcj-31ThTk', 1, 32),
(35, '4. Use of AI to build Bots | إستخدام الذكاء الاصطناعي في البوتات', 4, 'lLZwyBVd4xQ', 1, 32),
(36, '5. AI-Powered Speech Recognition | التعرف على الأصوات', 5, 'vnyJy4r22T0', 1, 32),
(37, '6. Getting Started With Dialogflow | خطوتك الأولى لبناء بوت ذكاء اصطناعي', 6, 'iD3amMKTQPk', 1, 32),
(38, 'How To Say Letters In Spanish * Spanish Lesson 1*', 1, 'kJQjXAVEWt0', 1, 33),
(39, 'Learning Personal Pronouns in Spanish | * Spanish Lesson 2*', 2, 'FRV9fvWjMHA', 1, 33),
(40, 'Learn How to Spell in Spanish | *Lesson 3*', 3, 'lbDxhlPSMxs', 1, 33),
(41, 'Days and Months in Spanish | The Language Tutor *Lesson 4*', 4, 'wwZgwnTIb58', 1, 33),
(42, 'Spanish History About the Days of the Week | The Language Tutor *Lesson 4.5*', 5, 'Xdvd9h8mgJQ', 1, 33),
(43, 'Count to Any Number in Spanish!! *Spanish Lesson 5*', 6, 'qIyhRvk7qlk', 1, 33),
(44, 'Python Tutorial for Beginners 1: Install and Setup for Mac and Windows', 1, 'YYXdXT2l-Gg', 1, 34),
(45, 'Python Tutorial for Beginners 2: Strings - Working with Textual Data', 2, 'k9TUPpGqYTo', 1, 34),
(46, 'Python Tutorial for Beginners 3: Integers and Floats - Working with Numeric Data', 3, 'khKv-8q7YmY', 1, 34),
(47, 'Python Tutorial for Beginners 4: Lists, Tuples, and Sets', 4, 'W8KRzm-HUcc', 1, 34),
(48, 'Python Tutorial for Beginners 5: Dictionaries - Working with Key-Value Pairs', 5, 'daefaLgNkw0', 1, 34),
(49, 'Python Tutorial for Beginners 6: Conditionals and Booleans - If, Else, and Elif Statements', 6, 'DZwmZ8Usvnk', 1, 34),
(50, 'Promotional Video | Numerical Methods for Engineers', 1, 'qFJGMBDfFMY', 1, 35),
(51, 'Binary Numbers | Lecture 1 | Numerical Methods for Engineers', 2, '2zd-TgHJgVU', 1, 35),
(52, 'Double Precision | Lecture 2 | Numerical Methods for Engineers', 3, '3RTbnzHtf7Q', 1, 35),
(53, 'MATLAB as a Calculator | Lecture 3 | Numerical Methods for Engineers', 4, 'Z2b5sAq-inQ', 1, 35),
(54, 'Scripts and Functions in MATLAB | Lecture 4 | Numerical Methods for Engineers', 5, 'LY0IsQvEqhE', 1, 35),
(55, 'Vectors in MATLAB | Lecture 5 | Numerical Methods for Engineers', 6, '1sFzTZ0mpi0', 1, 35),
(56, 'Quantity Surveying , Cost Estimation l حصرالكميات و حساب التكاليف', 1, '4bKUl_c8kvs', 1, 36),
(57, 'Project Planning l Scheduling l تخطيط و جدولة المشاريع', 2, 'UC94E2FZCT0', 1, 36),
(58, 'Examples on Project scheduling l Critical Path Method (CPM) - طريقة المسار الحرج و رسم الشبكة', 3, 'NMIgUxUNJYE', 1, 36),
(59, 'Time Crashing l ضغط زمن المشروع', 4, '1z6b7Pd7bOg', 1, 36),
(60, 'Time Crashing Part 2 l ضغط زمن المشروع', 5, 'q0QMCmPJULE', 1, 36),
(61, 'Resource Management l ادارة موارد المشروع', 6, 'Kc1cb87gJF4', 1, 36),
(62, 'Lec01- Introduction to Dynamics (Theory) and Prerequisite Content Review', 1, 'dTYKDnHHrMY', 1, 37),
(63, 'Lec02 - Particle Kinematics (Theory) for Rectilinear Motion', 2, '2ny20kZwCGU', 1, 37),
(64, 'Lec03 - Particle Kinematics (Examples) for Rectilinear Motion', 3, '0UxGkM5yfN0', 1, 37),
(65, 'Lec04 - Particle Kinematics (Theory & Examples) for Curvilinear Motion using Cartesian Coordinates', 4, 'Y77c6WnkU5Q', 1, 37),
(66, 'Lec05 - Particle Kinematics (Theory) for Curvilinear Motion using Natural (N/T) Coordinates', 5, '55Y-wlfNb8A', 1, 37),
(67, 'Lec06 - Particle Kinematics (Examples) for Curvilinear Motion using Natural (N/T) Coordinates', 6, 'UOlfyynwU1A', 1, 37),
(68, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 1 Turkish vocabulary pronunciation', 1, 'g7ZHZkpPd1s', 1, 38),
(69, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 2 Turkish vocabulary pronunciation', 2, 'G-27seklOok', 1, 38),
(70, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 3 Turkish vocabulary pronunciation', 3, 't52Bv7MKgNc', 1, 38),
(71, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 4 Turkish vocabulary pronunciation', 4, 'R9BKM2xSL9w', 1, 38),
(72, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 5 Turkish vocabulary pronunciation', 5, 'cWslhqVjJc4', 1, 38),
(73, 'Introduction to the Common Law, Turkish, Vol 1, Chapter 6 Turkish vocabulary pronunciation', 6, 'XozQcatvL7c', 1, 38),
(74, 'Co-production: it\'s everybody\'s business | Social Work Week 2022', 1, 'DFiOGW-EWjI', 1, 39),
(75, 'Social work in England – the past year', 2, 'qTGd0MymZnM', 1, 39),
(76, 'Specialist social work in mental health, mental capacity and the NHS | Social Work Week 2022', 3, 'ErOThjT6zeU', 1, 39),
(77, 'Monotone social work? Connecting practice, policy and creativity | Social Work Week 2022', 4, '_mCKUJUEsOI', 1, 39),
(78, 'Exploring \'professional curiosity\' to support social care practice | Social Work Week 2022', 5, 'TWC5iJrULYM', 1, 39),
(79, 'Human rights based practice in social work | Social Work Week 2022', 6, 'pztmiN14hBM', 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-05 13:05:08.521593', '1', 'Admin', 1, '[{\"added\": {}}]', 3, 1),
(2, '2022-06-05 13:05:11.851872', '2', 'Teacher', 1, '[{\"added\": {}}]', 3, 1),
(3, '2022-06-05 13:05:16.474882', '3', 'Student', 1, '[{\"added\": {}}]', 3, 1),
(4, '2022-06-05 13:28:14.859242', '3', 'teacher', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(5, '2022-06-05 13:40:00.494920', '1', 'Teacher', 1, '[{\"added\": {}}]', 12, 1),
(6, '2022-06-05 13:40:29.440898', '1', 'Programming', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-06-05 13:41:15.847974', '1', 'Django', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-06-06 13:48:37.923476', '4', 'teacher1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(9, '2022-06-06 14:06:55.482722', '2', 'Teacher1', 1, '[{\"added\": {}}]', 12, 1),
(10, '2022-06-06 15:47:22.686154', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(11, '2022-06-06 16:32:14.448119', '2', 'c++', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-06-08 17:09:41.871249', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(13, '2022-06-08 17:09:53.220238', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(14, '2022-06-08 17:10:00.038347', '2', 'c++', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(15, '2022-06-08 17:20:24.588900', '3', 'Java', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-06-08 17:22:28.096802', '4', 'c#', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-06-08 17:29:07.357274', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(18, '2022-06-08 17:30:19.501295', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(19, '2022-06-08 17:36:44.777475', '4', 'c#', 3, '', 8, 1),
(20, '2022-06-08 17:36:44.782285', '3', 'Java', 3, '', 8, 1),
(21, '2022-06-08 17:36:44.784457', '2', 'c++', 3, '', 8, 1),
(22, '2022-06-08 17:36:44.786594', '1', 'Django', 3, '', 8, 1),
(23, '2022-06-08 17:37:50.340580', '5', 'Django', 1, '[{\"added\": {}}]', 8, 1),
(24, '2022-06-08 17:53:16.049475', '5', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(25, '2022-06-08 17:57:45.718487', '5', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(26, '2022-06-08 18:01:27.129111', '5', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(27, '2022-06-08 18:03:18.809861', '6', 'c++', 1, '[{\"added\": {}}]', 8, 1),
(28, '2022-06-08 18:20:47.810633', '6', 'c++', 3, '', 8, 1),
(29, '2022-06-08 18:20:47.818609', '5', 'Django', 3, '', 8, 1),
(30, '2022-06-08 18:21:49.305426', '7', 'Django', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"1\"}}]', 8, 1),
(31, '2022-06-08 18:23:09.186749', '7', 'Django', 3, '', 8, 1),
(32, '2022-06-08 18:26:55.080954', '8', 'Django', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"1\"}}]', 8, 1),
(33, '2022-06-08 18:30:46.497651', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(34, '2022-06-08 18:39:56.421278', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(35, '2022-06-08 19:17:34.448469', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(36, '2022-06-08 19:19:49.792598', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(37, '2022-06-08 19:20:35.111076', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(38, '2022-06-08 19:22:26.666329', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(39, '2022-06-08 19:28:48.296869', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(40, '2022-06-08 22:10:49.631703', '10', 'Java', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(41, '2022-06-08 22:35:38.818133', '11', 'html', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(42, '2022-06-09 12:49:46.328466', '23', 'c++7', 2, '[]', 8, 1),
(43, '2022-06-09 12:51:31.176721', '8', 'Django', 2, '[{\"changed\": {\"name\": \"video\", \"object\": \"1\", \"fields\": [\"Video id\"]}}]', 8, 1),
(44, '2022-06-09 13:47:23.770604', '25', 'html5', 2, '[{\"changed\": {\"name\": \"video\", \"object\": \"2\", \"fields\": [\"Is preview\"]}}]', 8, 1),
(45, '2022-06-09 13:47:28.255635', '25', 'html5', 2, '[{\"changed\": {\"name\": \"video\", \"object\": \"2\", \"fields\": [\"Is preview\"]}}]', 8, 1),
(46, '2022-06-09 14:48:50.362167', '1', 'student - Django', 1, '[{\"added\": {}}]', 9, 1),
(47, '2022-06-10 14:17:35.240804', '1', 'Profile object (1)', 1, '[{\"added\": {}}]', 13, 1),
(48, '2022-06-12 14:38:42.685968', '6', 'Payment object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment id\", \"Status\"]}}]', 11, 1),
(49, '2022-06-12 14:38:55.206390', '2', 'student5 - c++8', 3, '', 9, 1),
(50, '2022-06-12 21:31:36.645297', '1', 'Hamza', 3, '', 13, 1),
(51, '2022-06-12 21:34:12.602974', '4', 'student5 - Django', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 9, 1),
(52, '2022-06-12 21:34:37.003644', '8', 'Django', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(53, '2022-06-14 15:13:45.640940', '3', 'Student', 3, '', 13, 1),
(54, '2022-06-14 15:13:49.200109', '2', 'Student', 3, '', 13, 1),
(55, '2022-06-14 15:13:56.870973', '4', '', 3, '', 13, 1),
(56, '2022-06-14 15:20:59.850319', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(57, '2022-06-14 15:22:35.768103', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(58, '2022-06-14 15:23:27.914017', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(59, '2022-06-14 15:27:46.329718', '159', 'student5 - html5', 3, '', 9, 1),
(60, '2022-06-14 15:27:46.332710', '158', 'student5 - html5', 3, '', 9, 1),
(61, '2022-06-14 15:27:46.335387', '157', 'student5 - html5', 3, '', 9, 1),
(62, '2022-06-14 15:27:46.337703', '156', 'student5 - html5', 3, '', 9, 1),
(63, '2022-06-14 15:27:46.339129', '155', 'student5 - html5', 3, '', 9, 1),
(64, '2022-06-14 15:27:46.341749', '154', 'student5 - c++7', 3, '', 9, 1),
(65, '2022-06-14 15:27:46.343811', '153', 'student5 - html5', 3, '', 9, 1),
(66, '2022-06-14 15:27:46.345893', '152', 'student5 - html5', 3, '', 9, 1),
(67, '2022-06-14 15:27:46.347976', '151', 'student5 - html5', 3, '', 9, 1),
(68, '2022-06-14 15:27:46.353185', '150', 'student5 - html5', 3, '', 9, 1),
(69, '2022-06-14 15:27:46.355195', '149', 'student5 - html5', 3, '', 9, 1),
(70, '2022-06-14 15:27:46.358002', '148', 'student5 - html5', 3, '', 9, 1),
(71, '2022-06-14 15:27:46.360123', '147', 'student5 - html5', 3, '', 9, 1),
(72, '2022-06-14 15:27:46.362230', '146', 'student5 - html5', 3, '', 9, 1),
(73, '2022-06-14 15:27:46.364132', '145', 'student5 - html5', 3, '', 9, 1),
(74, '2022-06-14 15:27:46.368067', '144', 'student5 - html5', 3, '', 9, 1),
(75, '2022-06-14 15:27:46.370286', '143', 'student5 - html5', 3, '', 9, 1),
(76, '2022-06-14 15:27:46.372503', '142', 'student5 - html5', 3, '', 9, 1),
(77, '2022-06-14 15:27:46.374697', '141', 'student5 - html5', 3, '', 9, 1),
(78, '2022-06-14 15:27:46.376685', '140', 'student5 - html5', 3, '', 9, 1),
(79, '2022-06-14 15:27:46.379091', '139', 'student5 - html5', 3, '', 9, 1),
(80, '2022-06-14 15:27:46.381108', '138', 'student5 - html5', 3, '', 9, 1),
(81, '2022-06-14 15:27:46.382802', '137', 'student5 - html5', 3, '', 9, 1),
(82, '2022-06-14 15:27:46.385555', '136', 'student5 - html5', 3, '', 9, 1),
(83, '2022-06-14 15:27:46.388418', '135', 'student5 - html5', 3, '', 9, 1),
(84, '2022-06-14 15:27:46.390427', '134', 'student5 - html5', 3, '', 9, 1),
(85, '2022-06-14 15:27:46.392350', '133', 'student5 - html5', 3, '', 9, 1),
(86, '2022-06-14 15:27:46.394301', '132', 'student5 - html5', 3, '', 9, 1),
(87, '2022-06-14 15:27:46.396572', '131', 'student5 - html5', 3, '', 9, 1),
(88, '2022-06-14 15:27:46.398822', '130', 'student5 - html5', 3, '', 9, 1),
(89, '2022-06-14 15:27:46.400819', '129', 'student5 - html5', 3, '', 9, 1),
(90, '2022-06-14 15:27:46.403822', '128', 'student5 - html5', 3, '', 9, 1),
(91, '2022-06-14 15:27:46.405921', '127', 'student5 - html5', 3, '', 9, 1),
(92, '2022-06-14 15:27:46.407956', '126', 'student5 - html5', 3, '', 9, 1),
(93, '2022-06-14 15:27:46.410054', '125', 'student5 - html5', 3, '', 9, 1),
(94, '2022-06-14 15:27:46.412173', '124', 'student5 - html5', 3, '', 9, 1),
(95, '2022-06-14 15:27:46.413827', '123', 'student5 - html5', 3, '', 9, 1),
(96, '2022-06-14 15:27:46.415129', '122', 'student5 - html5', 3, '', 9, 1),
(97, '2022-06-14 15:27:46.416820', '121', 'student5 - html5', 3, '', 9, 1),
(98, '2022-06-14 15:27:46.418814', '120', 'student5 - html5', 3, '', 9, 1),
(99, '2022-06-14 15:27:46.421119', '119', 'student5 - html5', 3, '', 9, 1),
(100, '2022-06-14 15:27:46.423077', '118', 'student5 - html5', 3, '', 9, 1),
(101, '2022-06-14 15:27:46.424579', '117', 'student5 - html5', 3, '', 9, 1),
(102, '2022-06-14 15:27:46.425855', '116', 'student5 - html5', 3, '', 9, 1),
(103, '2022-06-14 15:27:46.426763', '115', 'student5 - html5', 3, '', 9, 1),
(104, '2022-06-14 15:27:46.427772', '114', 'student5 - html5', 3, '', 9, 1),
(105, '2022-06-14 15:27:46.429787', '113', 'student5 - html5', 3, '', 9, 1),
(106, '2022-06-14 15:27:46.430985', '112', 'student5 - html5', 3, '', 9, 1),
(107, '2022-06-14 15:27:46.432354', '111', 'student5 - html5', 3, '', 9, 1),
(108, '2022-06-14 15:27:46.433989', '110', 'student5 - html5', 3, '', 9, 1),
(109, '2022-06-14 15:27:46.435984', '109', 'student5 - html5', 3, '', 9, 1),
(110, '2022-06-14 15:27:46.437815', '108', 'student5 - html5', 3, '', 9, 1),
(111, '2022-06-14 15:27:46.440265', '107', 'student5 - html5', 3, '', 9, 1),
(112, '2022-06-14 15:27:46.441798', '106', 'student5 - html5', 3, '', 9, 1),
(113, '2022-06-14 15:27:46.443129', '105', 'student5 - html5', 3, '', 9, 1),
(114, '2022-06-14 15:27:46.443996', '104', 'student5 - html5', 3, '', 9, 1),
(115, '2022-06-14 15:27:46.445788', '103', 'student5 - html5', 3, '', 9, 1),
(116, '2022-06-14 15:27:46.447129', '102', 'student5 - html5', 3, '', 9, 1),
(117, '2022-06-14 15:27:46.448472', '101', 'student5 - html5', 3, '', 9, 1),
(118, '2022-06-14 15:27:46.449476', '100', 'student5 - html5', 3, '', 9, 1),
(119, '2022-06-14 15:27:46.452468', '99', 'student5 - html5', 3, '', 9, 1),
(120, '2022-06-14 15:27:46.454464', '98', 'student5 - html5', 3, '', 9, 1),
(121, '2022-06-14 15:27:46.456915', '97', 'student5 - html5', 3, '', 9, 1),
(122, '2022-06-14 15:27:46.458460', '96', 'student5 - html5', 3, '', 9, 1),
(123, '2022-06-14 15:27:46.459920', '95', 'student5 - html5', 3, '', 9, 1),
(124, '2022-06-14 15:27:46.461129', '94', 'student5 - html5', 3, '', 9, 1),
(125, '2022-06-14 15:27:46.462490', '93', 'student5 - html5', 3, '', 9, 1),
(126, '2022-06-14 15:27:46.463788', '92', 'student5 - html5', 3, '', 9, 1),
(127, '2022-06-14 15:27:46.465884', '91', 'student5 - html5', 3, '', 9, 1),
(128, '2022-06-14 15:27:46.468477', '90', 'student5 - html5', 3, '', 9, 1),
(129, '2022-06-14 15:27:46.470479', '89', 'student5 - html5', 3, '', 9, 1),
(130, '2022-06-14 15:27:46.471966', '88', 'student5 - html5', 3, '', 9, 1),
(131, '2022-06-14 15:27:46.473000', '87', 'student5 - html5', 3, '', 9, 1),
(132, '2022-06-14 15:27:46.474721', '86', 'student5 - html5', 3, '', 9, 1),
(133, '2022-06-14 15:27:46.476132', '85', 'student5 - html5', 3, '', 9, 1),
(134, '2022-06-14 15:27:46.477552', '84', 'student5 - html5', 3, '', 9, 1),
(135, '2022-06-14 15:27:46.478795', '83', 'student5 - html5', 3, '', 9, 1),
(136, '2022-06-14 15:27:46.479813', '82', 'student5 - html5', 3, '', 9, 1),
(137, '2022-06-14 15:27:46.481123', '81', 'student5 - html5', 3, '', 9, 1),
(138, '2022-06-14 15:27:46.482122', '80', 'student5 - html5', 3, '', 9, 1),
(139, '2022-06-14 15:27:46.484118', '79', 'student5 - html5', 3, '', 9, 1),
(140, '2022-06-14 15:27:46.486656', '78', 'student5 - html5', 3, '', 9, 1),
(141, '2022-06-14 15:27:46.488373', '77', 'student5 - html5', 3, '', 9, 1),
(142, '2022-06-14 15:27:46.490918', '76', 'student5 - html5', 3, '', 9, 1),
(143, '2022-06-14 15:27:46.492332', '75', 'student5 - html5', 3, '', 9, 1),
(144, '2022-06-14 15:27:46.494123', '74', 'student5 - html5', 3, '', 9, 1),
(145, '2022-06-14 15:27:46.495154', '73', 'student5 - html5', 3, '', 9, 1),
(146, '2022-06-14 15:27:46.496765', '72', 'student5 - html5', 3, '', 9, 1),
(147, '2022-06-14 15:27:46.497949', '71', 'student5 - html5', 3, '', 9, 1),
(148, '2022-06-14 15:27:46.499129', '70', 'student5 - html5', 3, '', 9, 1),
(149, '2022-06-14 15:27:46.500770', '69', 'student5 - html5', 3, '', 9, 1),
(150, '2022-06-14 15:27:46.502766', '68', 'student5 - html5', 3, '', 9, 1),
(151, '2022-06-14 15:27:46.504760', '67', 'student5 - html5', 3, '', 9, 1),
(152, '2022-06-14 15:27:46.506894', '66', 'student5 - html5', 3, '', 9, 1),
(153, '2022-06-14 15:27:46.508365', '65', 'student5 - html5', 3, '', 9, 1),
(154, '2022-06-14 15:27:46.509437', '64', 'student5 - html5', 3, '', 9, 1),
(155, '2022-06-14 15:27:46.510436', '63', 'student5 - html5', 3, '', 9, 1),
(156, '2022-06-14 15:27:46.512628', '62', 'student5 - html5', 3, '', 9, 1),
(157, '2022-06-14 15:27:46.514029', '61', 'student5 - html5', 3, '', 9, 1),
(158, '2022-06-14 15:27:46.515129', '60', 'student5 - html5', 3, '', 9, 1),
(159, '2022-06-14 15:28:03.621215', '59', 'student5 - html5', 3, '', 9, 1),
(160, '2022-06-14 15:28:03.629618', '58', 'student5 - html5', 3, '', 9, 1),
(161, '2022-06-14 15:28:03.632038', '57', 'student5 - html5', 3, '', 9, 1),
(162, '2022-06-14 15:28:03.634095', '56', 'student5 - html5', 3, '', 9, 1),
(163, '2022-06-14 15:28:03.636092', '55', 'student5 - html5', 3, '', 9, 1),
(164, '2022-06-14 15:28:03.637839', '54', 'student5 - html5', 3, '', 9, 1),
(165, '2022-06-14 15:28:03.639713', '53', 'student5 - c++7', 3, '', 9, 1),
(166, '2022-06-14 15:28:03.641572', '52', 'student5 - c++7', 3, '', 9, 1),
(167, '2022-06-14 15:28:03.643433', '51', 'student5 - c++7', 3, '', 9, 1),
(168, '2022-06-14 15:28:03.645450', '50', 'student5 - c++7', 3, '', 9, 1),
(169, '2022-06-14 15:28:03.647303', '49', 'student5 - c++7', 3, '', 9, 1),
(170, '2022-06-14 15:28:03.649228', '48', 'student5 - c++7', 3, '', 9, 1),
(171, '2022-06-14 15:28:03.651265', '47', 'student5 - c++7', 3, '', 9, 1),
(172, '2022-06-14 15:28:03.653649', '46', 'student5 - c++7', 3, '', 9, 1),
(173, '2022-06-14 15:28:03.655419', '45', 'student5 - c++7', 3, '', 9, 1),
(174, '2022-06-14 15:28:03.657315', '44', 'student5 - c++7', 3, '', 9, 1),
(175, '2022-06-14 15:28:03.659196', '43', 'student5 - c++7', 3, '', 9, 1),
(176, '2022-06-14 15:28:03.661133', '42', 'student5 - c++7', 3, '', 9, 1),
(177, '2022-06-14 15:28:03.662738', '41', 'student5 - c++7', 3, '', 9, 1),
(178, '2022-06-14 15:28:03.663744', '40', 'student5 - c++7', 3, '', 9, 1),
(179, '2022-06-14 15:28:03.670110', '39', 'student5 - c++7', 3, '', 9, 1),
(180, '2022-06-14 15:28:03.674345', '38', 'student5 - c++7', 3, '', 9, 1),
(181, '2022-06-14 15:28:03.676208', '37', 'student5 - c++7', 3, '', 9, 1),
(182, '2022-06-14 15:28:03.678532', '36', 'student5 - c++7', 3, '', 9, 1),
(183, '2022-06-14 15:28:03.680086', '35', 'student5 - c++7', 3, '', 9, 1),
(184, '2022-06-14 15:28:03.681298', '34', 'student5 - c++7', 3, '', 9, 1),
(185, '2022-06-14 15:28:03.683392', '33', 'student5 - c++7', 3, '', 9, 1),
(186, '2022-06-14 15:28:03.684862', '32', 'student5 - c++7', 3, '', 9, 1),
(187, '2022-06-14 15:28:03.686465', '31', 'student5 - c++7', 3, '', 9, 1),
(188, '2022-06-14 15:28:03.687879', '30', 'student5 - c++7', 3, '', 9, 1),
(189, '2022-06-14 15:28:03.689360', '29', 'student5 - c++7', 3, '', 9, 1),
(190, '2022-06-14 15:28:03.691004', '28', 'student5 - c++7', 3, '', 9, 1),
(191, '2022-06-14 15:28:03.692528', '27', 'student5 - c++7', 3, '', 9, 1),
(192, '2022-06-14 15:28:03.694014', '26', 'student5 - c++7', 3, '', 9, 1),
(193, '2022-06-14 15:28:03.695468', '25', 'student5 - c++7', 3, '', 9, 1),
(194, '2022-06-14 15:28:03.697050', '24', 'student5 - c++7', 3, '', 9, 1),
(195, '2022-06-14 15:28:03.698734', '23', 'student5 - c++7', 3, '', 9, 1),
(196, '2022-06-14 15:28:03.700360', '22', 'student5 - c++7', 3, '', 9, 1),
(197, '2022-06-14 15:28:03.701543', '21', 'student5 - c++7', 3, '', 9, 1),
(198, '2022-06-14 15:28:03.703614', '20', 'student5 - c++7', 3, '', 9, 1),
(199, '2022-06-14 15:28:03.705187', '19', 'student5 - c++7', 3, '', 9, 1),
(200, '2022-06-14 15:28:03.706683', '18', 'student5 - c++7', 3, '', 9, 1),
(201, '2022-06-14 15:28:03.708254', '17', 'student5 - c++7', 3, '', 9, 1),
(202, '2022-06-14 15:28:03.710119', '16', 'student5 - c++7', 3, '', 9, 1),
(203, '2022-06-14 15:28:03.711892', '15', 'student5 - c++7', 3, '', 9, 1),
(204, '2022-06-14 15:28:03.713473', '14', 'student5 - c++7', 3, '', 9, 1),
(205, '2022-06-14 15:28:03.715027', '13', 'student5 - js9', 3, '', 9, 1),
(206, '2022-06-14 15:28:03.716583', '12', 'student5 - Java', 3, '', 9, 1),
(207, '2022-06-14 15:28:03.717757', '11', 'student5 - css2', 3, '', 9, 1),
(208, '2022-06-14 15:28:03.719761', '10', 'student5 - Java3', 3, '', 9, 1),
(209, '2022-06-14 15:28:03.721689', '9', 'student5 - c++3', 3, '', 9, 1),
(210, '2022-06-14 15:28:03.723721', '8', 'student5 - html2', 3, '', 9, 1),
(211, '2022-06-14 15:28:03.725824', '7', 'student5 - html7', 3, '', 9, 1),
(212, '2022-06-14 15:28:03.727375', '6', 'student5 - c++2', 3, '', 9, 1),
(213, '2022-06-14 15:28:03.728913', '5', 'student5 - js2', 3, '', 9, 1),
(214, '2022-06-14 15:28:03.730088', '4', 'student5 - Django', 3, '', 9, 1),
(215, '2022-06-14 15:28:03.731744', '3', 'student - c++8', 3, '', 9, 1),
(216, '2022-06-14 15:28:03.732931', '1', 'student - Django', 3, '', 9, 1),
(217, '2022-06-14 15:32:23.563460', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(218, '2022-06-14 15:33:47.013262', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(219, '2022-06-14 15:33:52.203849', '165', 'student5 - js9', 3, '', 9, 1),
(220, '2022-06-14 15:33:52.211673', '164', 'student5 - c++2', 3, '', 9, 1),
(221, '2022-06-14 15:33:52.214784', '163', 'student5 - js2', 3, '', 9, 1),
(222, '2022-06-14 15:33:52.217839', '162', 'student5 - js', 3, '', 9, 1),
(223, '2022-06-14 15:33:52.220149', '161', 'student5 - css', 3, '', 9, 1),
(224, '2022-06-14 15:33:52.221948', '160', 'student5 - html', 3, '', 9, 1),
(225, '2022-06-14 15:39:04.131386', '5', 'hamza alkhtib', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(226, '2022-06-16 12:19:38.592644', '7', 'Student', 3, '', 13, 1),
(227, '2022-06-16 14:27:04.661184', '2', 'Law', 1, '[{\"added\": {}}]', 7, 1),
(228, '2022-06-16 14:27:18.984355', '3', 'Engineering', 1, '[{\"added\": {}}]', 7, 1),
(229, '2022-06-16 14:28:04.862376', '4', 'Languages', 1, '[{\"added\": {}}]', 7, 1),
(230, '2022-06-16 15:27:03.017285', '26', 'html7', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 8, 1),
(231, '2022-06-16 15:27:07.419001', '17', 'js9', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 8, 1),
(232, '2022-06-16 15:27:12.253565', '11', 'html', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 8, 1),
(233, '2022-06-19 23:27:49.565093', '12', 'teacher3', 3, '', 4, 1),
(234, '2022-06-19 23:27:49.574676', '13', 'teacher4', 3, '', 4, 1),
(235, '2022-06-19 23:27:49.577765', '14', 'teacher5', 3, '', 4, 1),
(236, '2022-06-19 23:27:49.580935', '15', 'teacher6', 3, '', 4, 1),
(237, '2022-06-19 23:27:49.584118', '16', 'teacher7', 3, '', 4, 1),
(238, '2022-06-21 03:23:01.223307', '27', 'c++8', 3, '', 8, 1),
(239, '2022-06-21 03:23:01.232942', '26', 'html7', 3, '', 8, 1),
(240, '2022-06-21 03:23:01.235800', '25', 'html5', 3, '', 8, 1),
(241, '2022-06-21 03:23:01.239064', '24', 'Java4', 3, '', 8, 1),
(242, '2022-06-21 03:23:01.241593', '23', 'c++7', 3, '', 8, 1),
(243, '2022-06-21 03:23:01.243912', '22', 'Java3', 3, '', 8, 1),
(244, '2022-06-21 03:23:01.247509', '21', 'c++3', 3, '', 8, 1),
(245, '2022-06-21 03:23:01.250379', '20', 'c++2', 3, '', 8, 1),
(246, '2022-06-21 03:23:01.253259', '19', 'html2', 3, '', 8, 1),
(247, '2022-06-21 03:23:01.255924', '18', 'css2', 3, '', 8, 1),
(248, '2022-06-21 03:23:01.258817', '17', 'js9', 3, '', 8, 1),
(249, '2022-06-21 03:23:01.261116', '15', 'js2', 3, '', 8, 1),
(250, '2022-06-21 03:23:01.263193', '13', 'js', 3, '', 8, 1),
(251, '2022-06-21 03:23:01.266256', '12', 'css', 3, '', 8, 1),
(252, '2022-06-21 03:23:01.269023', '11', 'html', 3, '', 8, 1),
(253, '2022-06-21 03:23:01.271944', '10', 'Java', 3, '', 8, 1),
(254, '2022-06-21 03:23:01.274638', '9', 'c++', 3, '', 8, 1),
(255, '2022-06-21 03:23:01.278344', '8', 'Django', 3, '', 8, 1),
(256, '2022-06-21 03:23:15.220045', '10', 'hamza', 3, '', 4, 1),
(257, '2022-06-21 03:23:15.229055', '11', 'hamza1', 3, '', 4, 1),
(258, '2022-06-21 03:23:15.231700', '9', 'omar', 3, '', 4, 1),
(259, '2022-06-21 03:23:15.234175', '17', 'omarT3', 3, '', 4, 1),
(260, '2022-06-21 03:23:15.236236', '2', 'student', 3, '', 4, 1),
(261, '2022-06-21 03:23:15.238334', '5', 'student2', 3, '', 4, 1),
(262, '2022-06-21 03:23:15.240512', '6', 'student3', 3, '', 4, 1),
(263, '2022-06-21 03:23:15.242686', '7', 'student4', 3, '', 4, 1),
(264, '2022-06-21 03:23:15.244680', '8', 'student5', 3, '', 4, 1),
(265, '2022-06-21 03:23:15.249552', '18', 'student8', 3, '', 4, 1),
(266, '2022-06-21 03:23:15.252365', '3', 'teacher', 3, '', 4, 1),
(267, '2022-06-21 03:23:15.254476', '4', 'teacher1', 3, '', 4, 1),
(268, '2022-06-21 03:24:04.484352', '19', 'omar', 1, '[{\"added\": {}}]', 4, 1),
(269, '2022-06-21 03:24:59.403332', '19', 'omar', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1),
(270, '2022-06-21 03:25:19.129682', '20', 'hamza', 1, '[{\"added\": {}}]', 4, 1),
(271, '2022-06-21 03:25:42.737942', '20', 'hamza.alkhatib.se@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1),
(272, '2022-06-21 03:25:58.724405', '20', 'hamza', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(273, '2022-06-21 03:26:23.281761', '21', 'saif', 1, '[{\"added\": {}}]', 4, 1),
(274, '2022-06-21 03:26:57.691931', '21', 'saif', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1),
(275, '2022-06-21 03:27:16.974989', '22', 'ahmad', 1, '[{\"added\": {}}]', 4, 1),
(276, '2022-06-21 03:27:51.143226', '22', 'ahmad', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1),
(277, '2022-06-21 03:38:00.180677', '10', 'omar', 1, '[{\"added\": {}}]', 12, 1),
(278, '2022-06-21 03:38:20.757320', '11', 'Hamza', 1, '[{\"added\": {}}]', 12, 1),
(279, '2022-06-21 03:39:35.191628', '12', 'Saif Nusair', 1, '[{\"added\": {}}]', 12, 1),
(280, '2022-06-21 03:39:46.805454', '11', 'Hamza Alkhatib', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(281, '2022-06-21 03:39:57.389787', '10', 'Omar Abu Elwan', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(282, '2022-06-21 03:42:23.155668', '13', 'Ahmad Obeidat', 1, '[{\"added\": {}}]', 12, 1),
(283, '2022-06-21 09:26:01.449515', '28', 'English', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"English Grammar Course | Introduction to Nouns #1\"}}, {\"added\": {\"name\": \"video\", \"object\": \"English Grammar Course | Singular and Plural Nouns #2\"}}, {\"added\": {\"name\": \"video\", \"object\": \"English Grammar Course | Irregular Plural Nouns #3\"}}, {\"added\": {\"name\": \"video\", \"object\": \"English Grammar Course | Compound Nouns #4\"}}, {\"added\": {\"name\": \"video\", \"object\": \"English Grammar Course Countable and Uncountable Nouns #5\"}}, {\"added\": {\"name\": \"video\", \"object\": \"ADJECTIVES #1 | Basic English Grammar Course\"}}]', 8, 1),
(284, '2022-06-21 09:29:55.143291', '28', 'English', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(285, '2022-06-21 09:31:04.412080', '9', 'TeacherCourse object (9)', 1, '[{\"added\": {}}]', 14, 1),
(286, '2022-06-21 09:40:15.125844', '29', 'Java', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Why take this Java Course?\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Programs and Programming Languages\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to Java Programming\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Anatomy of Java Program\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Displaying Messages in Java\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Displaying Numbers in Java\"}}]', 8, 1),
(287, '2022-06-21 09:42:59.166325', '29', 'Java', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(288, '2022-06-21 09:48:26.335081', '29', 'Java', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(289, '2022-06-21 09:54:16.120343', '30', 'Photoshop', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"How to Create an Awesome Letter Portrait - Photoshop Tutorial\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Photoshop: How to Create a Glass Shatter Effect - Tutorial\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Photoshop Tutorial - Neon Text Effect\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Animated GIF Smoke Effect: Photoshop Tutorial\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Animal Double Color Exposure Effect - Photoshop Tutorial\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How to Create Realistic Cracked Skin using Photoshop\"}}]', 8, 1),
(290, '2022-06-21 09:58:39.293740', '31', 'C++', 1, '[{\"added\": {}}]', 8, 1),
(291, '2022-06-21 10:00:54.683422', '31', 'C++', 2, '[{\"added\": {\"name\": \"video\", \"object\": \"Welcome to C++\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How to Setup C++ on Windows\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How to Setup C++ on Mac\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How to Setup C++ on Linux\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How C++ Works\"}}, {\"added\": {\"name\": \"video\", \"object\": \"How the C++ Compiler Works\"}}]', 8, 1),
(292, '2022-06-21 10:01:07.239123', '10', 'Java', 1, '[{\"added\": {}}]', 14, 1),
(293, '2022-06-21 10:01:12.631028', '11', 'C++', 1, '[{\"added\": {}}]', 14, 1),
(294, '2022-06-21 10:01:23.427910', '12', 'Photoshop', 1, '[{\"added\": {}}]', 14, 1),
(295, '2022-06-21 10:03:18.794662', '32', 'Artificial intelligence', 1, '[{\"added\": {}}]', 8, 1),
(296, '2022-06-21 10:04:40.791976', '32', 'Artificial intelligence', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(297, '2022-06-21 10:07:56.606450', '32', 'Artificial intelligence', 2, '[{\"added\": {\"name\": \"video\", \"object\": \"1. Introduction to the AI & ML - \\u0645\\u062f\\u062e\\u0644\\u0643 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a\"}}, {\"added\": {\"name\": \"video\", \"object\": \"2. AI & ML Basics & Requirements | \\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0648\\u0645\\u0628\\u0627\\u062f\\u0626 \\u0628\\u0631\\u0645\\u062c\\u064a\\u0627\\u062a \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a\"}}, {\"added\": {\"name\": \"video\", \"object\": \"3. Fields of AI & ML | \\u0645\\u062c\\u0627\\u0644\\u0627\\u062a \\u0625\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0625\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a\"}}, {\"added\": {\"name\": \"video\", \"object\": \"4. Use of AI to build Bots | \\u0625\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a \\u0641\\u064a \\u0627\\u0644\\u0628\\u0648\\u062a\\u0627\\u062a\"}}, {\"added\": {\"name\": \"video\", \"object\": \"5. AI-Powered Speech Recognition | \\u0627\\u0644\\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0635\\u0648\\u0627\\u062a\"}}, {\"added\": {\"name\": \"video\", \"object\": \"6. Getting Started With Dialogflow | \\u062e\\u0637\\u0648\\u062a\\u0643 \\u0627\\u0644\\u0623\\u0648\\u0644\\u0649 \\u0644\\u0628\\u0646\\u0627\\u0621 \\u0628\\u0648\\u062a \\u0630\\u0643\\u0627\\u0621 \\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a\"}}]', 8, 1),
(298, '2022-06-21 10:08:19.600329', '13', 'Artificial intelligence', 1, '[{\"added\": {}}]', 14, 1),
(299, '2022-06-21 10:12:21.313464', '33', 'Spanish', 1, '[{\"added\": {}}]', 8, 1),
(300, '2022-06-21 10:16:29.393632', '33', 'Spanish', 2, '[{\"added\": {\"name\": \"video\", \"object\": \"How To Say Letters In Spanish * Spanish Lesson 1*\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Learning Personal Pronouns in Spanish | * Spanish Lesson 2*\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Learn How to Spell in Spanish | *Lesson 3*\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Days and Months in Spanish | The Language Tutor *Lesson 4*\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Spanish History About the Days of the Week | The Language Tutor *Lesson 4.5*\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Count to Any Number in Spanish!! *Spanish Lesson 5*\"}}]', 8, 1),
(301, '2022-06-21 10:22:18.133852', '34', 'Python', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 1: Install and Setup for Mac and Windows\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 2: Strings - Working with Textual Data\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 3: Integers and Floats - Working with Numeric Data\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 4: Lists, Tuples, and Sets\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 5: Dictionaries - Working with Key-Value Pairs\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Python Tutorial for Beginners 6: Conditionals and Booleans - If, Else, and Elif Statements\"}}]', 8, 1),
(302, '2022-06-21 10:30:15.900196', '35', 'Numerical Analysis', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Promotional Video | Numerical Methods for Engineers\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Binary Numbers | Lecture 1 | Numerical Methods for Engineers\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Double Precision | Lecture 2 | Numerical Methods for Engineers\"}}, {\"added\": {\"name\": \"video\", \"object\": \"MATLAB as a Calculator | Lecture 3 | Numerical Methods for Engineers\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Scripts and Functions in MATLAB | Lecture 4 | Numerical Methods for Engineers\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Vectors in MATLAB | Lecture 5 | Numerical Methods for Engineers\"}}]', 8, 1),
(303, '2022-06-21 10:36:02.552026', '36', 'Construction Management', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Quantity Surveying , Cost Estimation l \\u062d\\u0635\\u0631\\u0627\\u0644\\u0643\\u0645\\u064a\\u0627\\u062a \\u0648 \\u062d\\u0633\\u0627\\u0628 \\u0627\\u0644\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Project Planning l Scheduling l \\u062a\\u062e\\u0637\\u064a\\u0637 \\u0648 \\u062c\\u062f\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Examples on Project scheduling l Critical Path Method (CPM) - \\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062d\\u0631\\u062c \\u0648 \\u0631\\u0633\\u0645 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Time Crashing l \\u0636\\u063a\\u0637 \\u0632\\u0645\\u0646 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Time Crashing Part 2 l \\u0636\\u063a\\u0637 \\u0632\\u0645\\u0646 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Resource Management l \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639\"}}]', 8, 1),
(304, '2022-06-21 10:42:11.284154', '37', 'Introduction to Engineering Mechanics', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec01- Introduction to Dynamics (Theory) and Prerequisite Content Review\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec02 - Particle Kinematics (Theory) for Rectilinear Motion\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec03 - Particle Kinematics (Examples) for Rectilinear Motion\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec04 - Particle Kinematics (Theory & Examples) for Curvilinear Motion using Cartesian Coordinates\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec05 - Particle Kinematics (Theory) for Curvilinear Motion using Natural (N/T) Coordinates\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Lec06 - Particle Kinematics (Examples) for Curvilinear Motion using Natural (N/T) Coordinates\"}}]', 8, 1),
(305, '2022-06-21 10:47:33.446875', '38', 'Introduction to Arabic Common Law', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 1 Turkish vocabulary pronunciation\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 2 Turkish vocabulary pronunciation\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 3 Turkish vocabulary pronunciation\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 4 Turkish vocabulary pronunciation\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 5 Turkish vocabulary pronunciation\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Introduction to the Common Law, Turkish, Vol 1, Chapter 6 Turkish vocabulary pronunciation\"}}]', 8, 1),
(306, '2022-06-21 10:56:11.172059', '39', 'Social Work: Practice, Policy and Research', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"Co-production: it\'s everybody\'s business | Social Work Week 2022\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Social work in England \\u2013 the past year\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Specialist social work in mental health, mental capacity and the NHS | Social Work Week 2022\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Monotone social work? Connecting practice, policy and creativity | Social Work Week 2022\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Exploring \'professional curiosity\' to support social care practice | Social Work Week 2022\"}}, {\"added\": {\"name\": \"video\", \"object\": \"Human rights based practice in social work | Social Work Week 2022\"}}]', 8, 1),
(307, '2022-06-21 11:18:19.221701', '10', 'Omar Abu Elwan', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 12, 1),
(308, '2022-06-21 11:22:50.743675', '11', 'student', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(309, '2022-06-21 11:22:58.444441', '177', 'student - Spanish', 3, '', 9, 1),
(310, '2022-06-21 11:22:58.454119', '176', 'student - Artificial intelligence', 3, '', 9, 1),
(311, '2022-06-21 11:22:58.457410', '175', 'student - Java', 3, '', 9, 1),
(312, '2022-06-21 11:28:38.595345', '11', 'student', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(313, '2022-06-21 11:28:45.128597', '179', 'student - C++', 3, '', 9, 1),
(314, '2022-06-21 11:28:45.131637', '178', 'student - Artificial intelligence', 3, '', 9, 1),
(315, '2022-06-21 11:32:55.315151', '11', 'student', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(316, '2022-06-21 11:33:05.876359', '180', 'student - Photoshop', 3, '', 9, 1),
(317, '2022-06-21 11:35:16.103454', '11', 'student', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(318, '2022-06-21 11:36:12.651798', '11', 'student', 2, '[{\"changed\": {\"fields\": [\"Money\"]}}]', 13, 1),
(319, '2022-06-21 11:36:28.886204', '182', 'student - Python', 3, '', 9, 1),
(320, '2022-06-21 11:36:28.895178', '181', 'student - Artificial intelligence', 3, '', 9, 1),
(321, '2022-06-21 16:42:17.765239', '40', 'test', 3, '', 8, 1),
(322, '2022-06-21 16:43:20.819582', '15', 'English', 1, '[{\"added\": {}}]', 14, 1),
(323, '2022-06-21 16:43:29.919372', '15', 'English', 3, '', 14, 1),
(324, '2022-06-21 16:44:08.277595', '16', 'Numerical Analysis', 1, '[{\"added\": {}}]', 14, 1),
(325, '2022-06-21 16:44:14.065469', '17', 'Construction Management', 1, '[{\"added\": {}}]', 14, 1),
(326, '2022-06-21 16:44:24.247574', '18', 'Introduction to Engineering Mechanics', 1, '[{\"added\": {}}]', 14, 1),
(327, '2022-06-21 16:44:37.090188', '19', 'Social Work: Practice, Policy and Research', 1, '[{\"added\": {}}]', 14, 1),
(328, '2022-06-21 16:44:42.095325', '20', 'Introduction to Arabic Common Law', 1, '[{\"added\": {}}]', 14, 1),
(329, '2022-06-21 16:44:55.791867', '21', 'Spanish', 1, '[{\"added\": {}}]', 14, 1),
(330, '2022-06-21 16:45:21.174064', '22', 'Python', 1, '[{\"added\": {}}]', 14, 1),
(331, '2022-06-23 13:11:18.323694', '51', 'test31', 3, '', 8, 1),
(332, '2022-06-23 13:11:18.327256', '50', 'test31', 3, '', 8, 1),
(333, '2022-06-23 13:11:18.329753', '49', 'test31', 3, '', 8, 1),
(334, '2022-06-23 13:11:18.331962', '47', 'test31', 3, '', 8, 1),
(335, '2022-06-23 13:11:18.333957', '46', 'test30', 3, '', 8, 1),
(336, '2022-06-23 13:11:18.336135', '45', 'test22', 3, '', 8, 1),
(337, '2022-06-23 13:11:18.338975', '44', 'test22', 3, '', 8, 1),
(338, '2022-06-23 13:11:18.340608', '43', 'test', 3, '', 8, 1),
(339, '2022-06-23 13:11:18.342606', '41', 'test', 3, '', 8, 1),
(340, '2022-06-23 17:17:22.816868', '1', 'khdev', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(341, '2022-06-25 19:03:33.228822', '86', '7', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'account', 'profile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'core', 'payment'),
(7, 'course', 'category'),
(8, 'course', 'course'),
(14, 'course', 'teachercourse'),
(9, 'course', 'usercourse'),
(10, 'course', 'video'),
(6, 'sessions', 'session'),
(12, 'teacher', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-04 19:37:53.269382'),
(2, 'auth', '0001_initial', '2022-06-04 19:37:53.873156'),
(3, 'admin', '0001_initial', '2022-06-04 19:37:54.002083'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-04 19:37:54.012057'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-04 19:37:54.020086'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-04 19:37:54.081012'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-04 19:37:54.134465'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-04 19:37:54.150096'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-04 19:37:54.157733'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-04 19:37:54.207262'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-04 19:37:54.212252'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-04 19:37:54.228079'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-04 19:37:54.249187'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-04 19:37:54.280129'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-04 19:37:54.311081'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-04 19:37:54.324972'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-04 19:37:54.353500'),
(18, 'sessions', '0001_initial', '2022-06-04 19:37:54.432125'),
(19, 'account', '0001_initial', '2022-06-04 20:59:03.789658'),
(20, 'teacher', '0001_initial', '2022-06-04 20:59:03.869769'),
(21, 'course', '0001_initial', '2022-06-04 20:59:04.402607'),
(22, 'core', '0001_initial', '2022-06-04 20:59:04.748799'),
(23, 'account', '0002_alter_profile_avatar', '2022-06-08 17:09:04.162693'),
(24, 'course', '0002_alter_course_thumbnail', '2022-06-08 17:09:04.172665'),
(25, 'course', '0003_alter_course_thumbnail', '2022-06-08 17:28:39.619786'),
(26, 'course', '0004_alter_course_thumbnail', '2022-06-08 17:29:49.623430'),
(27, 'course', '0005_alter_course_thumbnail', '2022-06-08 17:35:16.527020'),
(28, 'course', '0006_alter_course_thumbnail', '2022-06-08 17:52:51.160189'),
(29, 'course', '0007_alter_course_thumbnail', '2022-06-08 17:57:26.474661'),
(30, 'course', '0008_alter_course_thumbnail', '2022-06-08 18:01:08.605783'),
(31, 'course', '0009_alter_course_thumbnail', '2022-06-08 18:25:58.616400'),
(32, 'course', '0010_alter_course_thumbnail', '2022-06-08 18:30:30.327993'),
(33, 'course', '0011_alter_course_thumbnail', '2022-06-08 18:39:33.940688'),
(34, 'course', '0012_alter_course_thumbnail', '2022-06-08 19:16:36.731956'),
(35, 'course', '0013_alter_course_thumbnail', '2022-06-08 19:17:16.302194'),
(36, 'course', '0014_alter_course_thumbnail', '2022-06-08 19:19:40.060544'),
(37, 'course', '0015_alter_course_thumbnail', '2022-06-08 19:20:24.275201'),
(38, 'course', '0016_alter_course_thumbnail', '2022-06-08 19:21:44.121385'),
(39, 'course', '0017_alter_course_thumbnail', '2022-06-08 22:34:44.837468'),
(40, 'course', '0018_teachercourse', '2022-06-08 23:38:35.800277'),
(41, 'course', '0019_rename_teahcer_teachercourse_teacher', '2022-06-08 23:53:30.946481'),
(42, 'account', '0003_alter_profile_avatar', '2022-06-11 13:15:28.851783'),
(43, 'account', '0004_remove_profile_phone_number', '2022-06-11 15:06:59.409200'),
(44, 'account', '0005_alter_profile_uey_alter_profile_full_name_and_more', '2022-06-14 15:06:26.356242'),
(45, 'account', '0006_alter_profile_uey_alter_profile_full_name_and_more', '2022-06-14 15:07:02.972080'),
(46, 'account', '0007_alter_profile_uey', '2022-06-14 15:15:49.006570'),
(47, 'account', '0008_alter_profile_money', '2022-06-14 15:18:11.102166'),
(48, 'teacher', '0002_teacher_avatar_teacher_money', '2022-06-19 23:48:47.837700');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1c4vckcp31ojfnaucre19b6u2w6wnchw', 'e30:1nxqHB:pGXiHsa53jtXS5H4unfCFp7LBa33vz67gQ8eRHE00bk', '2022-06-19 13:26:41.673967'),
('2tryz16bo3mfyfc5wxcdxfyq8vypnqqy', 'e30:1nxqHY:rHKwz0vjYMuXzpeoafXXCj4aj_T82HaomPYt0Qpjz0U', '2022-06-19 13:27:04.403721'),
('2wbh94r9tawcp9bm6eei4llht1ow0fih', 'e30:1nxw2X:NFEd44f7Y_NyfFmuF5Po0rFmx8DB9tVSkwH8Av0lbMI', '2022-06-19 19:35:57.517439'),
('3n63bcuj27cxk5q1kvl1karp3w2wsibp', 'e30:1nxw5E:rJk4x9IVbJfBKhox8tTwOHwck2HjSwjRPLw2atuXxxc', '2022-06-19 19:38:44.638489'),
('6l8iu8ywi0sd9yaha86y7qtzawceg3hn', 'e30:1nyCzr:B6M6VUHvxbaMsYwXPMRpT1dan2JlKDIBod4VyJGFrTQ', '2022-06-20 13:42:19.749693'),
('9tf4q25qgl3pvjwqlb5ut6jsg0o0g742', 'e30:1nxw5I:AfeZWkvMMXvjou74grQTcZF3BHiCUEylMMlEVt5aX80', '2022-06-19 19:38:48.295681'),
('a65g6ed86c432wkl7sgx43fu3kxha8v5', 'e30:1nyCzj:aaXqsnPNi2SmB8tgGiOv3Uc-59cPmmqASs5DjUQMpKE', '2022-06-20 13:42:11.705502'),
('b57q1hlnvck25ycfcmi3mjtf3rvvvwf4', 'e30:1nyD0t:rUAjrTiUUMp8IdgREUO3ciG0MIuPGx9ie5ME87y7v7w', '2022-06-20 13:43:23.851823'),
('ci4m5064w720tt11tgwd99vgkqoh9wte', 'e30:1o34HG:kozgQDtRPbOwAsM7wJNO9oAa9m1gzydZQzy5heqiix0', '2022-07-03 23:24:22.827263'),
('dnaetcbyelhz00txqsegngqrwuhl9950', 'e30:1nxqIO:vwt8CvXrR0xPnM8D26KAfHJ_KC1_dvfWnzPFYruc9HE', '2022-06-19 13:27:56.370856'),
('j8ph1r4wy3eh94op15dc8fnw8dc3ivpd', 'e30:1nyA7t:AIvq488G4FMqwKl4QpWV-jD4SBP5HZeQrhm1kZY8AJo', '2022-06-20 10:38:25.011274'),
('k5o3hrbcazkk6eb915azjglddcv6j5s5', 'e30:1nxqJh:gZNwK0aKxkiIDWGzwRhFOXjRz-FZrLTMP9p6F2J53aE', '2022-06-19 13:29:17.206793'),
('kckliet03f4cbtyae2lufe7tid0vr54n', 'e30:1nyA7p:Ds6uhylFm4zDmDdefsKZAvVhNaxLQgQEPgNRSltu-uU', '2022-06-20 10:38:21.160660'),
('lchj2f718s3ei7vbc9g791jnjd38nmtk', 'e30:1nxqIy:IHfV0oI6e8CBrf0q9ZL0jAhn4_ekpOkbwuxNCeB5Geg', '2022-06-19 13:28:32.391860'),
('ngk7q54tfufoad7xy03e5g4ezo5zcit9', 'e30:1nyCzK:xgfBbukNl5f1V9GlVYOTACMGkFspT5c1XBugEGX5leU', '2022-06-20 13:41:46.485707'),
('v3jfejg6d0t4jafs8goud1j8exk8mjrh', 'e30:1nyCzm:hdxa3qU-nmKRh-Uwfm6WZEtAbvZP5xPfCIoVWAv8EGM', '2022-06-20 13:42:14.955050'),
('xphzy86h8jh44u4gql3whpxc6ixouwr5', 'e30:1ny9tS:55DnTqzeKY5LfWA3EYc93lJb4eKzO_ZElX-Sd6lq1gg', '2022-06-20 10:23:30.336915'),
('yj1o5mge6fxn9qpzr4ywt2vm184e2g6k', 'e30:1nyD6F:uVqQGDaQIb0u1zI8i3EHX2Jp22V1yWbDWr66yetkFjI', '2022-06-20 13:48:55.173591');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_teacher`
--

CREATE TABLE `teacher_teacher` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_teacher`
--

INSERT INTO `teacher_teacher` (`id`, `name`, `created_at`, `created_by_id`, `avatar`, `money`) VALUES
(10, 'Omar Abu Elwan', '2022-06-21 03:38:00.178682', 19, 'avatar/photo1655810197.jpeg', 0),
(11, 'Hamza Alkhatib', '2022-06-21 03:38:20.755324', 20, 'avatar/photo1655782628.jpeg', 0),
(12, 'Saif Nusair', '2022-06-21 03:39:35.190654', 21, 'avatar/photo1655782763.jpeg', 0),
(13, 'Ahmad Obeidat', '2022-06-21 03:42:23.153695', 22, 'avatar/photo1655782931.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_profile_User_id_ea3e1b52_fk_auth_user_id` (`User_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_payment_course_id_7ea2a29f_fk_course_course_id` (`course_id`),
  ADD KEY `core_payment_user_id_274e164a_fk_auth_user_id` (`user_id`),
  ADD KEY `core_payment_user_course_id_dfeca1e8_fk_course_usercourse_id` (`user_course_id`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_category_slug_5bd6dbe7` (`slug`);

--
-- Indexes for table `course_course`
--
ALTER TABLE `course_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `course_course_category_id_0b2127b9_fk_course_category_id` (`category_id`),
  ADD KEY `course_course_teacher_id_f04a37b5_fk_teacher_teacher_id` (`teacher_id`);

--
-- Indexes for table `course_teachercourse`
--
ALTER TABLE `course_teachercourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_teachercourse_course_id_607ec4d8_fk_course_course_id` (`course_id`),
  ADD KEY `course_teachercourse_teacher_id_36dd2f95_fk_teacher_teacher_id` (`teacher_id`);

--
-- Indexes for table `course_usercourse`
--
ALTER TABLE `course_usercourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_usercourse_course_id_01b67019_fk_course_course_id` (`course_id`),
  ADD KEY `course_usercourse_user_id_33343d3c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `course_video`
--
ALTER TABLE `course_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_video_course_id_856386c1_fk_course_course_id` (`course_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `teacher_teacher`
--
ALTER TABLE `teacher_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_by_id` (`created_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_profile`
--
ALTER TABLE `account_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_payment`
--
ALTER TABLE `core_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_course`
--
ALTER TABLE `course_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `course_teachercourse`
--
ALTER TABLE `course_teachercourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `course_usercourse`
--
ALTER TABLE `course_usercourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `course_video`
--
ALTER TABLE `course_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `teacher_teacher`
--
ALTER TABLE `teacher_teacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD CONSTRAINT `account_profile_User_id_ea3e1b52_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD CONSTRAINT `core_payment_course_id_7ea2a29f_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  ADD CONSTRAINT `core_payment_user_course_id_dfeca1e8_fk_course_usercourse_id` FOREIGN KEY (`user_course_id`) REFERENCES `course_usercourse` (`id`),
  ADD CONSTRAINT `core_payment_user_id_274e164a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `course_course`
--
ALTER TABLE `course_course`
  ADD CONSTRAINT `course_course_category_id_0b2127b9_fk_course_category_id` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`),
  ADD CONSTRAINT `course_course_teacher_id_f04a37b5_fk_teacher_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_teacher` (`id`);

--
-- Constraints for table `course_teachercourse`
--
ALTER TABLE `course_teachercourse`
  ADD CONSTRAINT `course_teachercourse_course_id_607ec4d8_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  ADD CONSTRAINT `course_teachercourse_teacher_id_36dd2f95_fk_teacher_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_teacher` (`id`);

--
-- Constraints for table `course_usercourse`
--
ALTER TABLE `course_usercourse`
  ADD CONSTRAINT `course_usercourse_course_id_01b67019_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  ADD CONSTRAINT `course_usercourse_user_id_33343d3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `course_video`
--
ALTER TABLE `course_video`
  ADD CONSTRAINT `course_video_course_id_856386c1_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `teacher_teacher`
--
ALTER TABLE `teacher_teacher`
  ADD CONSTRAINT `teacher_teacher_created_by_id_770a20dc_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
