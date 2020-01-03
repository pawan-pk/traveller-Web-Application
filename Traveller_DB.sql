-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 08:42 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `traveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `aid` int(5) NOT NULL AUTO_INCREMENT,
  `qno` int(5) NOT NULL,
  `answer` varchar(400) NOT NULL,
  `answerby` varchar(120) NOT NULL,
  `ansdt` varchar(40) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `answer`
--


-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `edt` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`name`, `mobile`, `email`, `edt`) VALUES
('Pawan', '8853594678', 'pawankumarkushwaha71@gmail.com', '03-08-2018'),
('Abhishek', '7652032071', 'chaurasiaabhishek98@gmail.com', '02-08-2018');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(100) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `utype` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `passwd`, `utype`) VALUES
('singhaditya8425@gmail.com', '876', 'user'),
('ankitky76@gmail.com', '876', 'user'),
('Admin@gmail.com', '98765', 'admin'),
('pawankumarkushwaha71@gmail.com', '876', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notice` varchar(200) NOT NULL,
  `ndt` varchar(20) NOT NULL,
  `zone` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notice`, `ndt`, `zone`) VALUES
('Traveller festival offer 20% off on one week travel.', '02-08-2018', 'Both (General Zone and User Zone)'),
('Travel more and get more offer.', '01-08-2018', 'User Zone'),
('Traveller festival.', '01-08-2018', 'Both (General Zone and User Zone)'),
('Kal buses are cancled.', '02-08-2018', 'General Zone'),
('Welcome Travellers.', '02-08-2018', 'Both (General Zone and User Zone)'),
('Easy to travel by train please choose in raining session.', '02-08-2018', 'Both (General Zone and User Zone)'),
('Honeymoon vocation spacial offer 20% off extra.', '02-08-2018', 'Both (General Zone and User Zone)'),
('Spacial party offer by traveller.com', '02-08-2018', 'Both (General Zone and User Zone)');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(400) NOT NULL,
  `quesby` varchar(120) NOT NULL,
  `qdt` varchar(40) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `question`
--


-- --------------------------------------------------------

--
-- Table structure for table `registration1`
--

CREATE TABLE IF NOT EXISTS `registration1` (
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `profile` varchar(120) NOT NULL,
  `rdt` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration1`
--

INSERT INTO `registration1` (`name`, `fname`, `dob`, `gender`, `mobile`, `email`, `city`, `address`, `passwd`, `pin`, `profile`, `rdt`) VALUES
('Ankit Yadav', 'Mr. Amar Nath Yadav', '1997-10-10', 'Male', '9621692858', 'ankitky76@gmail.com', 'Lucknow', 'Lucknow', '876543', '231313', 'ankitky76@gmail.comak.jpg', '7/31/18 8:23 PM'),
('Aditya Singh', 'Mr. Chhote Lal Singh', '1999-10-08', 'Male', '9452589887', 'singhaditya8425@gmail.com', 'Lucknow', 'Lucknow', '876', '227107', 'singhaditya8425@gmail.comb5.jpg', '8/1/18 10:54 AM'),
('Pawan Kumar Kushwaha', 'Mr. Tej Pratap Kushwaha', '2001-10-18', 'Male', '8853594678', 'pawankumarkushwaha71@gmail.com', 'Kushinagar', 'Vill-Dhodharahi, Bharpatiya Post-Lakshmiganj Dist-Kushinagar', '876', '274306', 'pawankumarkushwaha71@gmail.comPawan Kumar Kushwaha 3.jpg', '8/2/18 6:54 PM');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `ftitle` varchar(50) NOT NULL,
  `feedbackby` varchar(120) NOT NULL,
  `fmsg` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`ftitle`, `feedbackby`, `fmsg`) VALUES
('Pawan Kumar kushwaha', 'pawankumarkushwaha71@gmail.com', 'help me');

-- --------------------------------------------------------

--
-- Table structure for table `vans`
--

CREATE TABLE IF NOT EXISTS `vans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vantype` varchar(10) NOT NULL,
  `details` varchar(200) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `adt` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vans`
--

INSERT INTO `vans` (`id`, `vantype`, `details`, `offer`, `adt`) VALUES
(3, '"+van+"', '"+Details+"', '"+Offer+"', '"+dt+"');
