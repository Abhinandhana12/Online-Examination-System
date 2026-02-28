-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2026 at 05:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is the capital of India?', 'Mumbai', 'Delhi', 'Kolkata', 'Chennai', 'Delhi'),
(2, 'Which language is used for web development?', 'Python', 'C++', 'PHP', 'Java', 'PHP'),
(3, '2 + 2 = ?', '3', '4', '5', '6', '4'),
(4, 'What is Java?', 'Programming Language', 'Database', 'Operating System', 'Browser', 'Programming Language'),
(5, 'What is JSP?', 'Java Server Page', 'Java Script Page', 'Java Servlets Page', 'None', 'Java Server Page'),
(6, 'What is Java?', 'Programming Language', 'Database', 'Operating System', 'Web Browser', 'Programming Language'),
(7, 'Which one is a DBMS?', 'MySQL', 'HTML', 'CSS', 'Java', 'MySQL'),
(8, 'What does JSP stand for?', 'Java Server Pages', 'Java Script Program', 'Java Servlet Page', 'Java System Program', 'Java Server Pages'),
(9, 'Which method is used to handle POST requests in servlets?', 'doPut()', 'doDelete()', 'doPost()', 'doGet()', 'doPost()'),
(10, 'Which of the following is NOT a Java primitive type?', 'int', 'float', 'string', 'boolean', 'string'),
(11, 'Which protocol does HTTP use?', 'TCP', 'UDP', 'IPX', 'FTP', 'TCP'),
(12, 'Tomcat is a ____', 'Database', 'Web Server', 'Browser', 'Compiler', 'Web Server'),
(13, 'Which SQL keyword is used to retrieve data?', 'GET', 'TAKE', 'SELECT', 'FETCH', 'SELECT'),
(14, 'Which of these is an OOP concept?', 'Recursion', 'Inheritance', 'Looping', 'Branching', 'Inheritance'),
(15, 'SQL stands for:', 'Structured Question Language', 'Simple Query Language', 'Structured Query Language', 'System Query Language', 'Structured Query Language'),
(16, 'Which tag is used to make text bold in HTML?', '<i>', '<bold>', '<strong>', '<br>', '<strong>'),
(17, 'Which JDBC driver is most commonly used?', 'JDBC-ODBC Bridge', 'Native API', 'Network Protocol', 'Thin Driver', 'Thin Driver'),
(18, 'Which method is used to start a thread in Java?', 'begin()', 'run()', 'start()', 'init()', 'start()'),
(19, 'Which of the following is NOT an SQL command?', 'INSERT', 'UPDATE', 'REMOVE', 'DELETE', 'REMOVE'),
(20, 'Which HTML tag is used to create a form?', '<form>', '<table>', '<body>', '<div>', '<form>'),
(21, 'Which HTTP status code means “Page Not Found”?', '200', '404', '500', '403', '404'),
(22, 'Which function is used to print output in Java?', 'console.write()', 'System.out.print()', 'printf()', 'cout<<', 'System.out.print()'),
(23, 'What does SQL INSERT do?', 'Remove data', 'Modify data', 'Add new data', 'Sort data', 'Add new data'),
(24, 'Which is a Java IDE?', 'Chrome', 'VS Code', 'NetBeans', 'Photoshop', 'NetBeans'),
(25, 'Which collection does not allow duplicates?', 'ArrayList', 'LinkedList', 'Vector', 'HashSet', 'HashSet');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `taken_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `score`, `taken_at`) VALUES
(1, 3, 3, '2025-09-24 12:42:53'),
(2, 3, 0, '2025-09-24 12:42:56'),
(3, 3, 0, '2025-09-24 12:42:58'),
(4, 3, 0, '2025-09-24 12:43:03'),
(5, 3, 0, '2025-09-24 12:43:04'),
(6, 3, 0, '2025-09-24 12:43:05'),
(7, 3, 0, '2025-09-24 12:43:06'),
(8, 3, 0, '2025-09-24 12:43:07'),
(9, 3, 0, '2025-09-24 12:43:10'),
(10, 3, 3, '2025-09-24 12:43:19'),
(11, 3, 0, '2025-09-24 12:46:22'),
(12, 3, 2, '2025-09-24 12:47:47'),
(13, 3, 3, '2025-09-24 12:49:42'),
(14, 3, 2, '2025-09-24 17:22:18'),
(15, 3, 1, '2025-10-21 12:02:00'),
(16, 3, 2, '2025-10-21 12:03:17'),
(17, 3, 0, '2025-10-21 12:13:11'),
(18, 3, 2, '2025-11-25 17:08:43'),
(19, 3, 0, '2025-11-26 04:23:45'),
(20, 3, 1, '2025-11-26 04:25:05'),
(21, 3, 8, '2025-11-26 06:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','admin') DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(2, 'admin', 'admin123', 'admin'),
(3, 'student', 'student123', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
