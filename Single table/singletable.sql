-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 20, 2017 at 06:59 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursera_introduction_to_structured_query_language_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE Ages ( 
  name VARCHAR(128), 
  age INTEGER
)
--
-- Dumping data for table `ages`
--

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Khaya', 21);
INSERT INTO Ages (name, age) VALUES ('Ruqaiya', 31);
INSERT INTO Ages (name, age) VALUES ('Gavin', 28);
INSERT INTO Ages (name, age) VALUES ('Samiha', 27);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
