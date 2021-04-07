-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2021 at 02:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `witeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `fulln` varchar(120) NOT NULL,
  `emal` varchar(70) NOT NULL,
  `fon` varchar(15) NOT NULL,
  `hpazz` varchar(32) NOT NULL,
  `rolez` varchar(100) NOT NULL,
  `regby` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '1',
  `hlame` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `fulln`, `emal`, `fon`, `hpazz`, `rolez`, `regby`, `status`, `hlame`) VALUES
(1, 'Omotayo Iyiola', 'clintonty@yahoo.ca', '08056231467', 'a4d40f64829269a6d212eaf2bf1081e3', 'Superadmin', 'bisola_oak@yahoo.com', '1', '37b257cd6382b0ef10bb03214f0da411'),
(14, 'chidinma  okaigwe', 'okaigwe@gmail.com', '08027542850', '86ea2d4b2efc06df359c4ba2e951d0fd', 'Staff', 'bisola_oak@yahoo.com', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `apr2021l`
--

CREATE TABLE `apr2021l` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apr2021l`
--

INSERT INTO `apr2021l` (`id`, `fulln`, `msave`, `email`, `loaname`) VALUES
(1, 'Ofodile Lauretta', 431, 'chem@gmail.com', 'Wardrobe loan'),
(2, 'Ofodile Lauretta', 6700, 'chem@gmail.com', 'Special loan');

-- --------------------------------------------------------

--
-- Table structure for table `basik`
--

CREATE TABLE `basik` (
  `id` int(11) NOT NULL,
  `cname` varchar(120) NOT NULL,
  `cmal` varchar(70) NOT NULL,
  `cfon` varchar(15) NOT NULL,
  `addy` varchar(100) NOT NULL,
  `elig` int(2) NOT NULL,
  `colet` int(2) NOT NULL,
  `maxloan` int(2) NOT NULL,
  `gara` int(2) NOT NULL,
  `lpay` int(10) NOT NULL,
  `logoz` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basik`
--

INSERT INTO `basik` (`id`, `cname`, `cmal`, `cfon`, `addy`, `elig`, `colet`, `maxloan`, `gara`, `lpay`, `logoz`) VALUES
(1, 'Your Cooperative Name', 'bisola_oak@yahoo.com', '08098675432', '34,bode thomas surulere-Lagos.', 6, 2, 70, 3, 1200, 'suit2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feb2021l`
--

CREATE TABLE `feb2021l` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feb2021l`
--

INSERT INTO `feb2021l` (`id`, `fulln`, `msave`, `email`, `loaname`) VALUES
(1, 'Ofodile Lauretta', 431, 'chem@gmail.com', 'Wardrobe loan'),
(2, 'Ofodile Lauretta', 6700, 'chem@gmail.com', 'Special loan');

-- --------------------------------------------------------

--
-- Table structure for table `feb2021s`
--

CREATE TABLE `feb2021s` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feb2021s`
--

INSERT INTO `feb2021s` (`id`, `fulln`, `msave`, `email`) VALUES
(1, 'Barry3 Muyi3', 23000, 'muyi@yahoo.com'),
(2, 'Ofodile Henrietta', 5500, 'chem@gmail.com'),
(3, 'Jumbo Uche', 15000, 'bola@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feb2022l`
--

CREATE TABLE `feb2022l` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formpay`
--

CREATE TABLE `formpay` (
  `id` int(11) NOT NULL,
  `mymal` varchar(70) NOT NULL,
  `amtt` int(11) NOT NULL,
  `dreg` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formpay`
--

INSERT INTO `formpay` (`id`, `mymal`, `amtt`, `dreg`) VALUES
(1, 'chem@gmail.com', 1200, 'Feb 22, 2021'),
(3, 'chem@gmail.com', 1200, 'Feb 23, 2021'),
(4, 'chem@gmail.com', 1200, 'Feb 24, 2021 02:42 am');

-- --------------------------------------------------------

--
-- Table structure for table `jan2021l`
--

CREATE TABLE `jan2021l` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jan2021l`
--

INSERT INTO `jan2021l` (`id`, `fulln`, `msave`, `email`, `loaname`) VALUES
(1, 'Ofodile Lauretta', 431, 'chem@gmail.com', 'Wardrobe loan'),
(2, 'Ofodile Lauretta', 5500, 'chem@gmail.com', 'Special loan');

-- --------------------------------------------------------

--
-- Table structure for table `jan2021s`
--

CREATE TABLE `jan2021s` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jan2021s`
--

INSERT INTO `jan2021s` (`id`, `fulln`, `msave`, `email`) VALUES
(1, 'Barry3 Muyi3', 2000, 'muyi@yahoo.com'),
(2, 'Ofodile Henrietta', 1500, 'chem@gmail.com'),
(3, 'Jumbo Uche', 1500, 'bola@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loanrec`
--

CREATE TABLE `loanrec` (
  `id` int(11) NOT NULL,
  `lonid` int(11) NOT NULL,
  `benefmail` varchar(80) NOT NULL,
  `benefull` varchar(120) NOT NULL,
  `loaname` varchar(60) NOT NULL,
  `amuntt` int(80) NOT NULL,
  `periodd` int(11) NOT NULL,
  `interestt` int(11) NOT NULL,
  `totalpayment` int(11) NOT NULL,
  `monthpay` decimal(8,2) NOT NULL,
  `dateapply` varchar(80) NOT NULL,
  `payslip` varchar(200) NOT NULL,
  `guaranto1` varchar(70) NOT NULL,
  `guaranto1app` varchar(30) DEFAULT NULL,
  `guaranto2` varchar(70) NOT NULL,
  `guaranto2app` varchar(30) DEFAULT NULL,
  `guaranto3` varchar(70) NOT NULL,
  `guaranto3app` varchar(30) DEFAULT NULL,
  `approvdate` varchar(30) DEFAULT NULL,
  `aktivate` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loanrec`
--

INSERT INTO `loanrec` (`id`, `lonid`, `benefmail`, `benefull`, `loaname`, `amuntt`, `periodd`, `interestt`, `totalpayment`, `monthpay`, `dateapply`, `payslip`, `guaranto1`, `guaranto1app`, `guaranto2`, `guaranto2app`, `guaranto3`, `guaranto3app`, `approvdate`, `aktivate`) VALUES
(1, 12, 'chem@gmail.com', 'Ofodile Lauretta', 'Wardrobe loan', 9000, 24, 15, 10350, '431.25', 'Feb 23, 2021 01:06 am', '1614038810test2.jpg.jpeg', 'muyi@yahoo.com', 'Feb 23, 2021 03:10 am', 'bola@gmail.com', 'Feb 23, 2021 03:14 am', 'obilara@yahoo.com', 'Feb 23, 2021 03:06 am', 'Feb 23, 2021 04:33 am', 1),
(2, 10, 'chem@gmail.com', 'Ofodile Lauretta', 'Special loan', 60000, 12, 10, 66000, '6700.00', 'Feb 23, 2021 01:17 pm', '1614082645acct.png', 'muyi@yahoo.com', NULL, 'bola@gmail.com', 'Feb 23, 2021 03:10 am', 'obilara@yahoo.com', 'Feb 23, 2021 01:22 pm', 'Feb 23, 2021 03:10 am', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loantbl`
--

CREATE TABLE `loantbl` (
  `id` int(11) NOT NULL,
  `loaname` varchar(80) NOT NULL,
  `perod` int(10) NOT NULL,
  `intresty` int(10) NOT NULL,
  `obta` varchar(3) NOT NULL,
  `dele` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loantbl`
--

INSERT INTO `loantbl` (`id`, `loaname`, `perod`, `intresty`, `obta`, `dele`) VALUES
(1, 'Basic loan', 6, 5, 'No', 0),
(2, 'Basic loan', 12, 10, 'No', 0),
(3, 'Basic loan', 12, 15, 'No', 1),
(4, 'Basic loan', 24, 20, 'No', 0),
(5, 'Commodity loan2', 61, 100, 'No', 0),
(6, 'Home Ownership loan', 36, 20, 'No', 0),
(7, 'Home Ownership loan', 60, 30, 'No', 0),
(9, 'School fees loan', 3, 5, 'Yes', 0),
(10, 'Special loan', 12, 10, 'No', 0),
(12, 'Wardrobe loan', 24, 15, 'Yes', 0),
(13, 'Basic loan plus', 3, 8, 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logz`
--

CREATE TABLE `logz` (
  `id` int(11) NOT NULL,
  `mymal` varchar(85) NOT NULL,
  `typee` varchar(60) NOT NULL,
  `dreg` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logz`
--

INSERT INTO `logz` (`id`, `mymal`, `typee`, `dreg`) VALUES
(1, 'hajiasokunle@gmail.com', 'logged_in', 'Nov 21, 2020 04:07 pm'),
(2, 'hajiasokunle@gmail.com', 'logged_in', 'Nov 21, 2020 04:07 pm'),
(3, 'sokunlekafilat2005@gmail.com', 'logged_in', 'Nov 21, 2020 05:17 pm'),
(4, 'sokunlekafilat2005@gmail.com', 'logged_in', 'Nov 25, 2020 07:49 pm'),
(5, 'clintonty@yahoo.ca', 'logged_in', 'Feb 21, 2021 02:02 pm'),
(6, 'clintonty@yahoo.ca', 'logged_in', 'Feb 21, 2021 09:59 pm'),
(7, 'clintonty@yahoo.ca', 'logged_in', 'Feb 21, 2021 11:17 pm'),
(8, 'clintonty@yahoo.ca', 'logged_in', 'Feb 22, 2021 01:37 pm'),
(9, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:47 pm'),
(10, 'muyi@yahoo.com', 'logged_in', 'Feb 22, 2021 05:48 pm'),
(11, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:52 pm'),
(12, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:56 pm'),
(13, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:57 pm'),
(14, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:57 pm'),
(15, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:58 pm'),
(16, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 05:59 pm'),
(17, 'chem@gmail.com', 'logged_in', 'Feb 22, 2021 08:40 pm'),
(18, 'clintonty@yahoo.ca', 'logged_in', 'Feb 22, 2021 10:40 pm'),
(19, 'chem@gmail.com', 'logged_in', 'Feb 23, 2021 02:08 am'),
(20, 'obilara@yahoo.com', 'logged_in', 'Feb 23, 2021 02:17 am'),
(21, 'chem@gmail.com', 'logged_in', 'Feb 23, 2021 03:08 am'),
(22, 'muyi@yahoo.com', 'logged_in', 'Feb 23, 2021 03:09 am'),
(23, 'obilara@yahoo.com', 'logged_in', 'Feb 23, 2021 03:10 am'),
(24, 'bola@gmail.com', 'logged_in', 'Feb 23, 2021 03:13 am'),
(25, 'clintonty@yahoo.ca', 'logged_in', 'Feb 23, 2021 03:31 am'),
(26, 'clintonty@yahoo.ca', 'logged_in', 'Feb 23, 2021 03:36 am'),
(27, 'clintonty@yahoo.ca', 'logged_in', 'Feb 23, 2021 04:33 am'),
(28, 'clintonty@yahoo.ca', 'logged_in', 'Feb 23, 2021 01:00 pm'),
(29, 'obilara@yahoo.com', 'logged_in', 'Feb 23, 2021 01:21 pm'),
(30, 'chem@gmail.com', 'logged_in', 'Feb 23, 2021 01:22 pm'),
(31, 'clintonty@yahoo.ca', 'logged_in', 'Feb 23, 2021 07:58 pm');

-- --------------------------------------------------------

--
-- Table structure for table `lonrec`
--

CREATE TABLE `lonrec` (
  `id` int(11) NOT NULL,
  `monthyr` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lonrec`
--

INSERT INTO `lonrec` (`id`, `monthyr`) VALUES
(3, 'jan2021l'),
(4, 'feb2022l'),
(5, 'feb2021l'),
(6, 'apr2021l');

-- --------------------------------------------------------

--
-- Table structure for table `mar2021s`
--

CREATE TABLE `mar2021s` (
  `id` int(11) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `msave` int(80) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mar2021s`
--

INSERT INTO `mar2021s` (`id`, `fulln`, `msave`, `email`) VALUES
(1, 'Barry Muyi', 2000, 'muyi@yahoo.com'),
(2, 'Ofodile Henrietta', 1500, 'chem@gmail.com'),
(3, 'Jumbo Uche', 1500, 'bola@gmail.com'),
(4, 'Obisesan Omolara', 6500, 'obilara@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `memberz`
--

CREATE TABLE `memberz` (
  `id` int(11) NOT NULL,
  `staffid` varchar(20) DEFAULT NULL,
  `sname` varchar(50) NOT NULL,
  `onames` varchar(70) NOT NULL,
  `djoin` varchar(30) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `fon` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `hpazz` varchar(32) NOT NULL,
  `hemail` varchar(32) NOT NULL,
  `dept` varchar(70) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `datereg` varchar(100) NOT NULL,
  `level` int(20) DEFAULT NULL,
  `balance` int(255) NOT NULL,
  `msave` int(100) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT 0,
  `titl` varchar(35) DEFAULT NULL,
  `pix` varchar(120) NOT NULL DEFAULT 'def.png',
  `activ` int(1) NOT NULL DEFAULT 1,
  `msg` int(1) NOT NULL DEFAULT 0,
  `admsg` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberz`
--

INSERT INTO `memberz` (`id`, `staffid`, `sname`, `onames`, `djoin`, `dob`, `fon`, `email`, `hpazz`, `hemail`, `dept`, `rank`, `datereg`, `level`, `balance`, `msave`, `dele`, `titl`, `pix`, `activ`, `msg`, `admsg`) VALUES
(2, 'AD/R/S.2212', 'Barry', 'Muyi', '2022-01-09', '2022-02-22', '08058096613', 'muyi@yahoo.com', '87e25944099a7715a8350f1bf1851107', 'e7604dc3eeb0429281895a2f8d649218', 'CITM3', 'Programmer3', 'Feb 22, 2021 12:55 am', 23, 1200000, 2000, 0, 'Engr', '1613959546ofo.png', 1, 0, 0),
(3, 'AD/R/S.2112', 'Ofodile', 'Henrietta', '2020-04-24', '1969-01-04', '07041412323', 'chem@gmail.com', '87e25944099a7715a8350f1bf1851107', '38eec24c9f5235f59ff8da3811161717', 'Central Lab', 'Chief Lecturer', 'Feb 22, 2021 01:23 am', 9, 950000, 1500, 0, 'Dr.', '1613959546ofo.png', 0, 0, 0),
(4, 'AD/R/S.0099', 'Jumbo', 'Uche', '2019-04-18', '1956-02-09', '07056563434', 'bola@gmail.com', '87e25944099a7715a8350f1bf1851107', '3fd666896c76f606b6c7163141542b34', 'Works', 'Principal Engineer', 'Feb 22, 2021 01:26 am', 12, 350000, 1500, 0, 'Mrs', 'def.png', 1, 0, 0),
(5, 'AD/R/S.2129', 'Obisesan', 'Omolara', '2018-08-19', '1984-01-21', '08045457878', 'obilara@yahoo.com', '87e25944099a7715a8350f1bf1851107', '5dd758d26560fac6a5faa3d69ff75b6c', 'Bursary', 'Senior Clerk', 'Feb 23, 2021 12:31 am', 8, 1200000, 6500, 0, 'Mrs.', 'def.png', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payset`
--

CREATE TABLE `payset` (
  `id` int(11) NOT NULL,
  `plame` varchar(100) NOT NULL,
  `amtt` int(10) NOT NULL,
  `storey` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payset`
--

INSERT INTO `payset` (`id`, `plame`, `amtt`, `storey`, `dele`) VALUES
(1, 'Loan form', 1500, 'Amount paid to obtain a loan form', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savrec`
--

CREATE TABLE `savrec` (
  `id` int(11) NOT NULL,
  `monthyr` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savrec`
--

INSERT INTO `savrec` (`id`, `monthyr`) VALUES
(1, 'feb2021s'),
(2, 'jan2021s'),
(3, 'mar2021s');

-- --------------------------------------------------------

--
-- Table structure for table `supot`
--

CREATE TABLE `supot` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `natu` int(1) NOT NULL DEFAULT 1,
  `flame` varchar(100) NOT NULL,
  `fmsg` text NOT NULL,
  `fdate` varchar(55) NOT NULL,
  `tid` int(11) NOT NULL,
  `tlame` varchar(100) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supot`
--

INSERT INTO `supot` (`id`, `fid`, `natu`, `flame`, `fmsg`, `fdate`, `tid`, `tlame`, `dele`) VALUES
(1, 3, 1, 'Dr. Ofodile Henrietta', 'Hello Admin, I have issues creating some stuffs, my account was overbilled. My loan deduction should be 4,500 but 5,000 was deducted. I need a refund or carry forward', 'Feb 24, 2021 01:15 am', 0, 'Admin', 0),
(2, 3, 1, 'Dr. Ofodile Henrietta', 'I am yet to have a reply.', 'Feb 24, 2021 01:19 am', 0, 'Admin', 0),
(3, 3, 1, 'Dr. Ofodile Henrietta', 'Im tired of typing men', 'Feb 24, 2021 01:22 am', 0, 'Admin', 0),
(4, 3, 1, 'Dr. Ofodile Henrietta', 'frfrf', 'Feb 24, 2021 01:23 am', 0, 'Admin', 0),
(5, 3, 1, 'Dr. Ofodile Henrietta', 'I will keep sending until you reply', 'Feb 24, 2021 01:27 am', 0, 'Admin', 0),
(6, 3, 1, 'Dr. Ofodile Henrietta', '1614126838evote11.jpeg', 'Feb 24, 2021 01:33 am', 0, 'Admin', 1),
(7, 3, 2, 'Dr. Ofodile Henrietta', '1614126941xbox.jpeg', 'Feb 24, 2021 01:35 am', 0, 'Admin', 0),
(9, 0, 1, 'Admin', 'Hi Ofodile Henrietta, I am very sorry for your experience and will tender an apology later. Thanks.', 'Feb 24, 2021 02:18 am', 3, 'Ofodile Henrietta', 0),
(10, 0, 1, 'Admin', 'Are you still interested?', 'Feb 24, 2021 02:24 am', 3, 'Ofodile Henrietta', 0),
(11, 0, 1, 'Admin', 'Very much interested', 'Feb 24, 2021 02:24 am', 3, 'Ofodile Henrietta', 0),
(12, 3, 1, 'Dr. Ofodile Henrietta', 'Very much interested', 'Feb 24, 2021 02:26 am', 0, 'Admin', 0),
(13, 0, 2, 'Admin', '1614130176a3.png', 'Feb 24, 2021 02:29 am', 3, 'Admin', 0),
(14, 0, 2, 'Admin', '1614130206deadline.jpg', 'Feb 24, 2021 02:30 am', 3, 'Admin', 0),
(15, 0, 2, 'Admin', '1614130452coop.png', 'Feb 24, 2021 02:34 am', 3, 'Admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apr2021l`
--
ALTER TABLE `apr2021l`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basik`
--
ALTER TABLE `basik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feb2021l`
--
ALTER TABLE `feb2021l`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feb2021s`
--
ALTER TABLE `feb2021s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feb2022l`
--
ALTER TABLE `feb2022l`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formpay`
--
ALTER TABLE `formpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jan2021l`
--
ALTER TABLE `jan2021l`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jan2021s`
--
ALTER TABLE `jan2021s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loanrec`
--
ALTER TABLE `loanrec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantbl`
--
ALTER TABLE `loantbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logz`
--
ALTER TABLE `logz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lonrec`
--
ALTER TABLE `lonrec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mar2021s`
--
ALTER TABLE `mar2021s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberz`
--
ALTER TABLE `memberz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payset`
--
ALTER TABLE `payset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savrec`
--
ALTER TABLE `savrec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supot`
--
ALTER TABLE `supot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `apr2021l`
--
ALTER TABLE `apr2021l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `basik`
--
ALTER TABLE `basik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feb2021l`
--
ALTER TABLE `feb2021l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feb2021s`
--
ALTER TABLE `feb2021s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feb2022l`
--
ALTER TABLE `feb2022l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formpay`
--
ALTER TABLE `formpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jan2021l`
--
ALTER TABLE `jan2021l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jan2021s`
--
ALTER TABLE `jan2021s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loanrec`
--
ALTER TABLE `loanrec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loantbl`
--
ALTER TABLE `loantbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `logz`
--
ALTER TABLE `logz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lonrec`
--
ALTER TABLE `lonrec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mar2021s`
--
ALTER TABLE `mar2021s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `memberz`
--
ALTER TABLE `memberz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payset`
--
ALTER TABLE `payset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savrec`
--
ALTER TABLE `savrec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supot`
--
ALTER TABLE `supot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
