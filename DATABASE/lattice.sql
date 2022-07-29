-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 09:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lattice`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
`id` int(252) NOT NULL,
  `name` varchar(252) NOT NULL,
  `address` varchar(252) NOT NULL,
  `email` varchar(252) NOT NULL,
  `phone` int(252) NOT NULL,
  `password` varchar(252) NOT NULL,
  `photo` varchar(252) NOT NULL,
  `doctor_id` varchar(252) NOT NULL,
  `hospital_id` varchar(252) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phone`, `password`, `photo`, `doctor_id`, `hospital_id`) VALUES
(14, 'Adah', 'A-4 New Delhi', 'adah@gmail.com', 2147483647, '12adwAb7', 'photo_1659111923721.jpg', '61AG16', '121G7'),
(15, 'Adia', 'A-4 New Delhi', 'adia@gmail.com', 2147483647, '12adwAb7', 'photo_1659111942614.jpg', '61AG17', '121G7'),
(16, 'Alice', 'A-4 New Delhi', 'alice@gmail.com', 2147483647, '12adwAb7', 'photo_1659111960165.jpg', '61AG18', '121G7'),
(17, 'Alis', 'A-4 New Delhi', 'alis@gmail.com', 2147483647, '12adwAb7', 'photo_1659111980853.jpg', '61AG19', '121G7'),
(18, 'Amy', 'A-4 New Delhi', 'amy@gmail.com', 2147483647, '12adwAb7', 'photo_1659112021943.jpg', '61AG20', '121G7'),
(19, 'Ani', 'A-4 New Delhi', 'ani@gmail.com', 2147483647, '12adwAb7', 'photo_1659112052151.jpg', '61AG15', '121G6'),
(20, 'Anya', 'A-4 New Delhi', 'anya@gmail.com', 2147483647, '12adwAb7', 'photo_1659112067416.jpg', '61AG510', '121G4'),
(21, 'Arya', 'A-4 New Delhi', 'arya@gmail.com', 2147483647, '12adwAb7', 'photo_1659112081705.jpg', '61AG5', '121G5'),
(6, 'Eli', 'A-4 New Delhi', 'eli@gmail.com', 2147483647, '12adwAb7', 'photo_1659111628967.jpg', '61AG6', '121G4'),
(7, 'Eva', 'A-4 New Delhi', 'eva@gmail.com', 2147483647, '12adwAb7', 'photo_1659111647758.jpg', '61AG7', '121G4'),
(1, 'John', 'A-4 New Delhi', 'hb@gmail.com', 2147483647, '12@adwAbc', 'photo_1659110364716.jpg', '61AG1', '121G5'),
(2, 'Harman', 'A-4 New Delhi', 'hm@gmail.com', 2147483647, '12adwAbc', 'photo_1659110527193.jpg', '61AG2', '121G5'),
(8, 'Ian', 'A-4 New Delhi', 'ian@gmail.com', 2147483647, '12adwAb7', 'photo_1659111666660.jpg', '61AG8', '121G4'),
(9, 'Ivy', 'A-4 New Delhi', 'ivy@gmail.com', 2147483647, '12adwAb7', 'photo_1659111680563.jpg', '61AG9', '121G4'),
(13, 'James', 'A-4 New Delhi', 'James@gmail.com', 2147483647, '12adwAb7', 'photo_1659111770085.jpg', '61AG14', '121G6'),
(10, 'Kai', 'A-4 New Delhi', 'kai@gmail.com', 2147483647, '12adwAb7', 'photo_1659111697110.jpg', '61AG11', '121G6'),
(11, 'Max', 'A-4 New Delhi', 'max@gmail.com', 2147483647, '12adwAb7', 'photo_1659111716412.jpg', '61AG12', '121G6'),
(4, 'Mia', 'A-4 New Delhi', 'mia@gmail.com', 2147483647, '12adwAb7', 'photo_1659111582258.jpg', '61AG3', '121G5'),
(12, 'Robert', 'A-4 New Delhi', 'robert@gmail.com', 2147483647, '12adwAb7', 'photo_1659111750059.jpg', '61AG13', '121G6'),
(5, 'Zoe', 'A-4 New Delhi', 'zoe@gmail.com', 2147483647, '12adwAb7', 'photo_1659111606579.jpg', '61AG4', '121G5');

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE IF NOT EXISTS `psychiatrists` (
`sno` int(252) NOT NULL,
  `doctor_id` varchar(252) NOT NULL,
  `role` varchar(252) NOT NULL,
  `hospital_id` varchar(252) NOT NULL,
  `hospital_name` varchar(252) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`sno`, `doctor_id`, `role`, `hospital_id`, `hospital_name`) VALUES
(1, '61AG1', 'Psychiatrist', '121G5', 'Apollo Hospitals'),
(10, '61AG10', 'Psychiatrist', '121G4', 'Jawaharlal Nehru Medical College and Hospital'),
(11, '61AG11', 'Psychiatrist', '121G6', 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(12, '61AG12', 'Psychiatrist', '121G6', 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(13, '61AG13', 'Psychiatrist', '121G6', 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(14, '61AG14', 'Psychiatrist', '121G6', 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(15, '61AG15', 'Psychiatrist', '121G6', 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(16, '61AG16', 'Psychiatrist', '121G7', 'AIIMS - All India Institute Of Medical Science'),
(17, '61AG17', 'Psychiatrist', '121G7', 'AIIMS - All India Institute Of Medical Science'),
(18, '61AG18', 'Psychiatrist', '121G7', 'AIIMS - All India Institute Of Medical Science'),
(19, '61AG19', 'Psychiatrist', '121G7', 'AIIMS - All India Institute Of Medical Science'),
(2, '61AG2', 'Psychiatrist', '121G5', 'Apollo Hospitals'),
(20, '61AG20', 'Psychiatrist', '121G7', 'AIIMS - All India Institute Of Medical Science'),
(3, '61AG3', 'Psychiatrist', '121G5', 'Apollo Hospitals'),
(4, '61AG4', 'Psychiatrist', '121G5', 'Apollo Hospitals'),
(5, '61AG5', 'Psychiatrist', '121G5', 'Apollo Hospitals'),
(6, '61AG6', 'Psychiatrist', '121G4', 'Jawaharlal Nehru Medical College and Hospital'),
(7, '61AG7', 'Psychiatrist', '121G4', 'Jawaharlal Nehru Medical College and Hospital'),
(8, '61AG8', 'Psychiatrist', '121G4', 'Jawaharlal Nehru Medical College and Hospital'),
(9, '61AG9', 'Psychiatrist', '121G4', 'Jawaharlal Nehru Medical College and Hospital');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
 ADD PRIMARY KEY (`email`), ADD UNIQUE KEY `sno.` (`id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
 ADD PRIMARY KEY (`doctor_id`), ADD UNIQUE KEY `sno` (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
MODIFY `id` int(252) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
MODIFY `sno` int(252) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
