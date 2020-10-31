-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 08:14 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ars`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(5) NOT NULL,
  `flight_no` varchar(50) NOT NULL,
  `from1` varchar(50) NOT NULL,
  `to1` varchar(50) NOT NULL,
  `depttime` varchar(50) NOT NULL,
  `arrivaltime` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `airline` varchar(50) NOT NULL,
  `no_of_seats` int(5) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `flight_no`, `from1`, `to1`, `depttime`, `arrivaltime`, `type`, `airline`, `no_of_seats`, `price`) VALUES
(18, 'INDDOM18', 'mumbai', 'kolkata', '03:12', '05:20', 'domestic', 'indigo', 40, 6000),
(22, 'AIRDOM22', 'kolkata', 'delhi', '03:12', '4:23', 'domestic', 'airindia', 30, 6000),
(23, 'JETDOM23', 'mumbai', 'kolkata', '11:34', '12:50', 'domestic', 'jetairways', 30, 5523),
(28, 'AIRDOM28', 'kolkata', 'mumbai', '03:12', '05:20', 'domestic', 'airindia', 40, 3000),
(30, 'AIRDOM30', 'kolkata', 'mumbai', '03:12', '05:20', 'domestic', 'airindia', 40, 3000),
(31, 'SPIDOM31', 'mumbai', 'kolkata', '3:20', '4:23', 'domestic', 'spicejet', 30, 5000),
(32, 'INDDOM32', 'kohi', 'manali', '10:40', '12:59', 'Domestic', 'indigo', 45, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(9) NOT NULL,
  `from1` varchar(50) NOT NULL,
  `to1` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `depttime` varchar(50) NOT NULL,
  `arrivaltime` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `airline` varchar(50) NOT NULL,
  `class1` varchar(50) NOT NULL,
  `price` int(9) NOT NULL,
  `flight_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_passenger` int(9) NOT NULL,
  `booking_status` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `seat_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `from1`, `to1`, `date`, `depttime`, `arrivaltime`, `type`, `airline`, `class1`, `price`, `flight_no`, `name`, `email`, `no_of_passenger`, `booking_status`, `payment_status`, `seat_no`) VALUES
(46, 'mumbai', 'kolkata', '2019-04-02', '03:12', '05:20', 'domestic', 'indigo', 'business', 9000, 'INDDOM18', 'Sayan Das', 'sayan123@gmail.com', 2, 'success', 'success', '0'),
(47, 'mumbai', 'kolkata', '2019-05-01', '03:12', '05:20', 'domestic', 'indigo', 'economic', 6000, 'INDDOM18', 'Sachin Rana', 'ravi@gmail.com', 2, 'success', 'success', '0'),
(49, 'mumbai', 'kolkata', '2019-05-01', '03:12', '05:20', 'domestic', 'indigo', 'economic', 6000, 'INDDOM18', 'Amit Gupta', 'ravi@gmail.com', 2, 'success', 'success', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `password`, `dob`, `email`, `phone`) VALUES
(9, 'Arpan Maiti', 'Male', 'arpan123', '2019-04-05', 'arpan@gmail.com', 1111111112),
(10, 'Ravi Ranja', 'Male', 'ravi123', '2019-04-03', 'ravi@gmail.com', 123435),
(11, 'Shreyesh Sharma', 'Male', 'shreyesh123', '2019-04-19', 'shreyesh@gmail.com', 12345),
(12, 'Sachin Rana', 'Female', 'sachin123', '2019-04-03', 'sachin@gmail.com', 1111111111),
(13, 'Rahul Das', 'Male', 'rahul123', '2019-04-03', 'rahul@gmail.com', 2147483647),
(14, 'sambhoo', 'Male', 'amit', '2019-04-16', 'arpan@mail.com', 1234566788),
(15, 'sayan maiti', 'Male', 's123', '2019-04-03', 'sayan123@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
