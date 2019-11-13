-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 13, 2019 at 05:14 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `package_reg`
--

DROP TABLE IF EXISTS `package_reg`;
CREATE TABLE IF NOT EXISTS `package_reg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Age` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Phone_no` int(11) NOT NULL,
  `package_city` varchar(255) NOT NULL,
  `recipt_type` varchar(30) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `member1` varchar(20) NOT NULL,
  `member2` varchar(20) NOT NULL,
  `member3` varchar(255) NOT NULL,
  `member4` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_reg`
--

INSERT INTO `package_reg` (`ID`, `Firstname`, `Lastname`, `Age`, `email`, `Phone_no`, `package_city`, `recipt_type`, `Address`, `member1`, `member2`, `member3`, `member4`) VALUES
(1, 'sneha', 'indulkar', 20, 'sneha.indulkar11@gmail.com', 2147483647, 'Online', 'bali', 'saatasrat', 'anjali', 'sonali', '', ''),
(2, 'sneha', 'indulkar', 20, 'sneha.indulkar11@gmail.com', 2147483647, 'Online', 'bali', 'saatasrat', 'anjali', 'sonali', '', ''),
(3, 'sneha', 'indulkar', 20, 'sneha.indulkar11@gmail.com', 2147483647, 'Online', 'bali', 'saatasrat', 'anjali', 'sonali', '', ''),
(4, 'sejal', 'jain', 36, 'sejal@gmail.com', 789789789, 'Online', 'bali', 'sion', 'prachi', 'sneha', '', ''),
(5, 'sejal', 'jain', 36, 'sejal@gmail.com', 789789789, 'Online', 'bali', 'sion', 'prachi', 'sneha', '', ''),
(6, 'sneha', 'indulkar', 23, 'sneha11@gmail.com', 897987987, 'Online', 'london', 'saatrasta', 'prachi', 'sneha', '', ''),
(7, 'sneha', 'indulkar', 23, 'sneha11@gmail.com', 897987987, 'Online', 'london', 'saatrasta', 'prachi', 'sneha', '', ''),
(8, 'sneha', 'indulkar', 25, 'sneha11@gmail.com', 789789789, 'Online', 'bali', 'sion', 'prachi', 'sneha', 'sonali', 'dale'),
(9, 'sneha', 'indulkar', 23, 'sejal@gmail.com', 989787877, 'Online', 'london', 'sion', 'prachi', 'sneha', 'kajal', 'dale'),
(10, 'prachi', 'pradhan', 19, 'prachi11@gmail.com', 987897854, 'Online', 'bali', 'lower parel', 'sneha', 'dale', '', ''),
(11, 'prach', 'pradh', 36, 'sejl@gmail.com', 987897456, 'Online', 'london', 'sion', 'a', 'd', 'f', ''),
(12, 'Dale', 'Alphonso', 19, 'dale.a@gmail.com', 1234565435, 'Online', 'bali', 'Lower parel', 'prachi', 'sneha', 'Samuel', ''),
(13, 'pp', 'pp', 23, 'seal@gmail.com', 987654342, 'Online', 'Australia', 'lp', 'prachi', 'dale', 'Samuel', 'sneha'),
(14, 'Espi', 'Alphonso', 44, 'espi@gmail.com', 987689762, 'Online', 'london', 'Sanpada', 'Denis', 'Samuel', 'Mai', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment_id` int(255) NOT NULL AUTO_INCREMENT,
  `cardholder` varchar(255) NOT NULL,
  `card_no` bigint(200) NOT NULL,
  `exp_month` varchar(255) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` int(5) NOT NULL,
  PRIMARY KEY (`Payment_id`),
  UNIQUE KEY `card_no` (`card_no`),
  UNIQUE KEY `cvv_no` (`cvv`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `cardholder`, `card_no`, `exp_month`, `exp_year`, `cvv`) VALUES
(2, 'sneha', 1111111111111111, 'January', 2019, 111),
(3, 'sejal', 2555898978984567, 'January', 2022, 789),
(5, 'sejal', 1111222233445566, 'January', 2021, 546),
(6, 'prachi', 4444555588889996, 'January', 2022, 547),
(7, 'Dale ', 4443555632346651, 'January', 2023, 543),
(8, 'Dale ', 6666876543456543, 'January', 2023, 765),
(9, 'Espi Alphonso', 5656878709092345, 'June', 2025, 563);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

DROP TABLE IF EXISTS `user_register`;
CREATE TABLE IF NOT EXISTS `user_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `age` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `firstname`, `lastname`, `email`, `phone`, `gender`, `Address`, `password`, `age`) VALUES
(1, 'sneha', 'indulkar', 'sneha.indulkar11@gmal.com', 9892480722, 'female', 'saatrasta', 'sneha123', 20),
(2, 'sejal', 'jain', 'sejal@gmail.com', 7894568369, 'female', 'sion', 'sejal123', 20),
(3, 'prach', 'pradh', 'prach11@gmail.com', 7897897897, 'female', 'lp', 'prach123', 25),
(6, 'prach', 'pradh', 'prac11@gmail.com', 7897897894, 'female', 'sion', '12345', 25),
(8, 'prach', 'pradh', 'pra11@gmail.com', 7897897894, 'female', 'sion', '12345', 25),
(9, 'dale', 'Alphonso', 'dale.a@gmail.com', 7654321234, 'female', 'Lower parel', 'dale@123', 19),
(10, 'js', 's', 'dalealphonso@gmail.com', 7664748543, 'female', 'Lower parel', '123', 12),
(12, 'a', 'b', 'dae.a@gmail.com', 34567212347, 'Male', 'Sanpada', '123', 19),
(13, 'pp', 'pp', 'seal@gmail.com', 3452625423, 'female', 'lp', '1234', 10),
(14, 'prachi', 'pradhan', 'prach.pradh@gmail.com', 8765432456, 'female', 'Lower parel', 'prachi@123', 20),
(15, 'Espi', 'Alphonso', 'espi@gmail.com', 9876756745, 'female', 'Sanpada', 'dale@678', 44),
(16, 'Valen', 'Dsouza', 'valen@gmail.com', 78965345, 'female', 'Bandra', 'valen@000', 19),
(18, 'Nikita', 'Varhadi', 'varhadi@gmail.com', 789653, 'female', 'Nerul', 'niki@123', 19),
(19, 'Nikita', 'Mithari', 'mithari@gmail.com', 789653676876, 'female', 'Seawood', 'Niki@M', 32);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
