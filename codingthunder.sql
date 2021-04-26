-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 05:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(25) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `email`, `msg`, `date`) VALUES
(1, 'first post', '123456789', 'firstpost@gmail.com', 'first post', '2021-04-17 15:46:13'),
(2, 'Devanshi Agrawal', '8319826743', 'devanshiagrawal000@gmail.com', 'gnhgjn', '2021-04-17 15:46:23'),
(3, 'mera naam', '1212121212', 'keshavagarwal2602@gmail.com', 'fgg', '2021-04-17 15:46:31'),
(4, 'Devanshi Agrawal ', '6565656565', 'devanshiagrawal6521@gmail.com', 'heyy babyy', '2021-04-17 16:02:45'),
(5, 'Devanshi Agrawal ', '5212121121', 'devanshiagrawal000@gmail.com', 'heyy', '2021-04-17 16:13:55'),
(6, 'mera naam', '1212121212', 'devanshiagrawal000@gmail.com', 'heyyyyy', '2021-04-17 17:06:01'),
(7, 'Devanshi Agrawal', '8319826743', 'akif122333ahmed@gmail.com', 'bachdee', '2021-04-19 16:38:34'),
(8, 'Devanshi Agrawal ', '6565656565', 'akif122333ahmed@gmail.com', 'love uhh', '2021-04-20 16:59:56'),
(9, 'Devanshi Agrawal ', '6565656565', 'akif122333ahmed@gmail.com', 'love uhh', '2021-04-20 17:04:15'),
(10, 'Devanshi Agrawal', '6565656565', 'test@gmail.com', 'heyyy\r\n', '2021-04-22 00:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(25) NOT NULL,
  `tagline` text NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `tagline`, `title`, `slug`, `img_file`, `content`, `date`) VALUES
(1, 'share market is the aggregation of buyers', 'Lets learn about stock market', 'first-post', 'post-bg.jpg', 'Stock (also capital stock) is all of the shares into which ownership of a corporation is divided.[1] In American English, the shares are collectively known as \"stock\".[1] A single share of the stock represents fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the stockholder to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt),[2] or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. ', '2021-04-24 00:42:36'),
(2, 'Coolest post ever', 'Second post', 'second-post', 'post2-bg.jpg', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.', '2021-04-24 00:03:11'),
(3, 'a situation or quantity that can vary or be varied.', 'Variables', 'third-post', 'post3-bg.jpg', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard.', '2021-04-19 18:34:13'),
(4, 'A small software module for customizing a web browser.', 'Browser extension', 'fourth-post', 'post4-bg.jpg', 'A browser extension is a small software module for customizing a web browser. Browsers typically allow a variety of extensions, including user interface modifications, ad blocking, and cookie management.\r\n\r\nBrowser plug-ins are a separate type of module. The main difference is that extensions are usually just source code, but plug-ins are always executables (i.e. object code). As of 2021, plug-ins have been deprecated by most browsers, while extensions are widely used. The most popular browser, Google Chrome,has over 100,000 extensions available but no longer supports plug-ins.', '2021-04-19 19:05:02'),
(5, 'Tests can accept arguments, too.', 'Tests', 'fifth-post', 'post5-bg.jpg', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses.', '2021-04-19 19:10:20'),
(6, 'A single trailing newline', 'Whitespace Control', 'sixth-post', 'post6-bg.jpg', 'In the default configuration:\r\n\r\na single trailing newline is stripped if present\r\n\r\nother whitespace (spaces, tabs, newlines etc.) is returned unchanged\r\n\r\nIf an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)', '2021-04-19 19:13:08'),
(8, 'I love you mendak', 'Hello baby', 'love-mendak', 'love.img', 'I am sundar ', '2021-04-23 00:13:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
