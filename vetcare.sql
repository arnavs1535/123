-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 10:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vetcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `created_date`) VALUES
(2, 'Doctor', 'admin@gmail.com', 'test', '99790675343', 'test', '2021-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(30, 'user@gmail.com', '5 Feb', 'Cow', '5', '120', '2', 'Fever', 'Fever, Doesnt take food properly', 'On Progress', 'sdfa', 'sdfa', 'fdsaf', '2021-02-05'),
(31, 'user@gmail.com', '16 Feb', 'Cow', '4', '200', '5', 'Fever', 'Vomitting, Fever and not eating food', '', '', '', '', '2021-02-16'),
(32, 'user@gmail.com', '16 Feb', 'African horse sickness', '5', '500', '2', 'African horse sickness (AHS) is a highly fatal, non-contagious, infectious disease, of horses, mules', 'African horse sickness (AHS) is a highly fatal, non-contagious, infectious disease, of horses, mules', '', '', '', '', '2021-02-16'),
(33, 'user@gmail.com', '16 Feb', 'Avian influenza', '5', '500', '2', 'Influenza (flu) viruses (AIV). AIV replicates frequentlly among birds in a form of low pathogenicity', 'Influenza (flu) viruses (AIV). AIV replicates frequentlly among birds in a form of low pathogenicity', '', '', '', '', '2021-02-16'),
(34, 'user@gmail.com', '16 Feb', 'Dog', '3', '100', '2', 'Bluetongue', 'Bluetongue (BT) is a disease in ruminants caused by an Orbivirus that is transmitted by midges. Ther', '', '', '', '', '2021-02-16'),
(35, 'user@gmail.com', '16 Feb', 'Goat', '2', '100', '3', 'Crimean-Congo hemorrhagic fever', 'Crimean-Congo hemorrhagic fever (CCHF) is caused by infection with a tick-borne virus, aNairovirus i', '', '', '', '', '2021-02-16'),
(36, 'user@gmail.com', '16 Feb', 'Cow', '5', '120', '3', 'Foot and mouth disease', 'Foot and mouth disease (FMD) is a contagious viral disease that can spread very rapidly of cloven-ho', '', '', '', '', '2021-02-16'),
(37, 'user@gmail.com', '16 Feb', 'Cock', '1', '50', '2', 'Newcastle disease', 'Newcastle disease (ND) is a contagious and viral disease affecting many species of birds. ND is caus', 'test', 'test', 'test', 'Completed', '2021-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_list`
--

CREATE TABLE IF NOT EXISTS `doctor_list` (
`doctor_id` int(25) NOT NULL,
  `name` varchar(25) COLLATE utf8_bin NOT NULL,
  `category` varchar(25) COLLATE utf8_bin NOT NULL,
  `hospital` varchar(25) COLLATE utf8_bin NOT NULL,
  `location` varchar(25) COLLATE utf8_bin NOT NULL,
  `doctor_fee` varchar(25) COLLATE utf8_bin NOT NULL,
  `account` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `doctor_list`
--

INSERT INTO `doctor_list` (`doctor_id`, `name`, `category`, `hospital`, `location`, `doctor_fee`, `account`, `email`) VALUES
(3, 'test', 'test', 'test', 'test', '123', '1234567890', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`feedback_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`) VALUES
(2, 'user@gmail.com', 'test', 'test', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `created_date`) VALUES
(2, 'Panneer Selvam R', 'user@gmail.com', 'test', '09790675343', '2021-01-19'),
(3, 'user', 'test@gmail.com', 'test', '123312321', '2021-01-30'),
(4, 'fow', 'fow@gmail.com', 'test', '6868768768766', '2021-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `mydata`
--

CREATE TABLE IF NOT EXISTS `mydata` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `filename` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mydata`
--

INSERT INTO `mydata` (`user_id`, `name`, `filename`, `password`, `mobile`, `created_date`) VALUES
(2, 'Panneer Selvam R', 'user@gmail.com', 'test', '09790675343', '2021-01-19'),
(3, 'user', 'test@gmail.com', 'test', '123312321', '2021-01-30'),
(4, 'fow', 'fow@gmail.com', 'test', '6868768768766', '2021-02-03'),
(5, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(100) NOT NULL,
  `topic` varchar(100) COLLATE utf8_bin NOT NULL,
  `content` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `topic`, `content`) VALUES
(3, 'Agriculture Today', 'Agriculture Today is contents rich and information driven magazine with its unique style of presentation. The magazine provides comprehensive information on the market and industry, economic and policy issues, scientific advances, new agri-input products, new technologies and latest news and analysis on the developments in agriculture. Agriculture Today is widely circulated among the policy makers, government officials, industry, research & academic institutions, embassies, extension agencies, financial and rural institutions, farmers, agriculture experts and other stake-holders in agriculture sector. Over the last 15 years the magazine has addressed national issues and also highlighted the problems, policies, trends in agriculture, agribusiness and rural development. It has gained a readership base of over 60,000 and has entered its fifteenth year of publication.'),
(4, 'Every Day Is Baisakhi For Farmers, Says PM Narendra Modi In Swipe At Notes Ban Critics', 'The Prime Minister''s assertion is significant as just two days ago, the International Monetary Fund or IMF had cut India''s growth projection for the current year to 6.6 per cent from an earlier 7.6 per cent because of demonetisation.  "Agriculture makes a major contribution to the fundamentals of our country''s economy. Economic prowess of villages imparts momentum to the nation''s economic progress," said PM Modi.  The Congress insists a bumper crop is because of favourable weather conditions and the numbers don''t reveal the plight of the farmers.'),
(5, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`payment_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(37, 'user@gmail.com', '', '', '', '132456789', 'Panneer', 'IOB', '100', '', '', '', '', '0000-00-00'),
(38, 'user@gmail.com', '37', '', '', '1234123412341234', 'test', 'test123', '123', '', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `remedy`
--

CREATE TABLE IF NOT EXISTS `remedy` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `remedy`
--

INSERT INTO `remedy` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(33, 'admin@gmail.com', 'Fever', 'Apple Cider Vinegar', 'Garlic', 'Add one-half cup of vinegar to lukewarm bath water. Soak in this water for five to 10 minutes. In about 20 minutes you will notice improvement. Repeat again when the body temperature is high.', 'Do not use very cold water as it may cause the internal body temperature to increase.', 'Nil', '', '', 'Home', '', '', '0000-00-00'),
(48, 'admin@gmail.com', 'test', 'test', 'test', 'test', 'test', 'etst', '', '', 'Home', '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `doctor_list`
--
ALTER TABLE `doctor_list`
 ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mydata`
--
ALTER TABLE `mydata`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `remedy`
--
ALTER TABLE `remedy`
 ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `doctor_list`
--
ALTER TABLE `doctor_list`
MODIFY `doctor_id` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedback_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mydata`
--
ALTER TABLE `mydata`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `remedy`
--
ALTER TABLE `remedy`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
