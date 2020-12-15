-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 11:25 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `email_uprunning`
--

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `text_id` int(11) NOT NULL,
  `editor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wty` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`text_id`, `editor`, `wty`) VALUES
(32, '', '&lt;p&gt;&lt;b&gt;Personal summary&lt;/b&gt;&lt;br&gt;Outside sales representative with 1 year and half of experience is seeking a challenge managerial position in which I may use my keen problem solving abilities and adaptive approach to a challenging outside sales position in which I may use my extensive product knowledge and consultative approach to administering new and foster and selling to build to increase sales existing relationships.&lt;br&gt;&lt;b&gt;Work experience&lt;/b&gt;&lt;br&gt;&lt;b&gt;Experience sales different company which gathering a large size, including:&lt;/b&gt;&lt;br&gt;â€¢ business development&lt;br&gt;â€¢ calling&lt;br&gt;â€¢ content management system&lt;br&gt;â€¢ purchasing&lt;br&gt;â€¢ inventory control&lt;br&gt;â€¢ Product launches&lt;br&gt;â€¢ inventory management&lt;br&gt;â€¢ Trade shows&lt;br&gt;â€¢ account receivable&lt;br&gt;&lt;b&gt;Sales manager&lt;/b&gt;&lt;br&gt;&lt;b&gt;ACPER , June 2018-Present&lt;/b&gt;&lt;br&gt;â€¢ procured , managed and maintained all regional customers in the retail segment&lt;br&gt;â€¢ responsible for maintaining company marketing material for area dealers, including sample displays and literature&lt;br&gt;â€¢ consulted with trade sales person to develop contractor segment&lt;br&gt;â€¢ exceeded sales plan with 90 days through understanding and acting&lt;br&gt;â€¢ Handled all lead follow up involving high margin potential and trade professionals.&lt;br&gt;â€¢ Proactive identifying opportunities to reinforce the stores brand through retail and field activities&lt;br&gt;â€¢ promoting high quality retailing standards at every opportunity&lt;br&gt;â€¢ marketing, promoting and selling brands&lt;br&gt;â€¢ maintaining and developing a computerized customer and prospect database&lt;br&gt;â€¢ to management promptly&lt;br&gt;&lt;/p&gt;'),
(33, '&lt;p&gt;&lt;strong&gt;Personal summary&lt;/strong&gt;&lt;br /&gt;\r\nOutside sales representative with 1 year and half of experience is seeking a challenge managerial position in which I may use my keen problem solving abilities and adaptive approach to a challenging outside sales position in which I may use my extensive product knowledge and consultative approach to administering new and foster and selling to build to increase sales existing relationships.&lt;br /&gt;\r\n&lt;strong&gt;Work experience&lt;/strong&gt;&lt;br /&gt;\r\n&lt;strong&gt;Experience sales different company which gathering a large size, including:&lt;/strong&gt;&lt;br /&gt;\r\n&amp;bull; business development&lt;br /&gt;\r\n&amp;bull; calling&lt;br /&gt;\r\n&amp;bull; content management system&lt;br /&gt;\r\n&amp;bull; purchasing&lt;br /&gt;\r\n&amp;bull; inventory control&lt;br /&gt;\r\n&amp;bull; Product launches&lt;br /&gt;\r\n&amp;bull; inventory management&lt;br /&gt;\r\n&amp;bull; Trade shows&lt;br /&gt;\r\n&amp;bull; account receivable&lt;br /&gt;\r\n&lt;strong&gt;Sales manager&lt;br /&gt;\r\nACPER , June 2018-Present&lt;/strong&gt;&lt;br /&gt;\r\n&amp;bull; procured , managed and maintained all regional customers in the retail segment&lt;br /&gt;\r\n&amp;bull; responsible for maintaining company marketing material for area dealers, including sample displays and literature&lt;br /&gt;\r\n&amp;bull; consulted with trade sales person to develop contractor segment&lt;br /&gt;\r\n&amp;bull; exceeded sales plan with 90 days through understanding and acting&lt;br /&gt;\r\n&amp;bull; Handled all lead follow up involving high margin potential and trade professionals.&lt;br /&gt;\r\n&amp;bull; Proactive identifying opportunities to reinforce the stores brand through retail and field activities&lt;br /&gt;\r\n&amp;bull; promoting high quality retailing standards at every opportunity&lt;br /&gt;\r\n&amp;bull; marketing, promoting and selling brands&lt;br /&gt;\r\n&amp;bull; maintaining and developing a computerized customer and prospect database&lt;br /&gt;\r\n&amp;bull; to management promptly&lt;/p&gt;', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`text_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
