-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 04:29 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mocuasa_ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(17717, 'admin', '$2y$10$gUAcO9Uiibs6zA2VbO6HieU3fFAjgXEPFnLyn9wzHIPpuVzKLQpwm', 'Admin', 'One', 'g3.jpg', '2020-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(41, 16, 'John', 'Razack', '', ''),
(42, 17, 'Asia', 'Mtama', '', ''),
(43, 17, 'Esther', 'Mpepo', '', ''),
(44, 17, 'Prisca', 'Juma', '', ''),
(45, 18, 'Martin', 'Paul', '', ''),
(46, 18, 'Mike', 'Fanuel', '', ''),
(47, 18, 'Christina', 'Clay', '', ''),
(48, 18, 'Najma', 'Hamza', '', ''),
(49, 18, 'Pendo', 'Munuo', '', ''),
(50, 18, 'Nasma', 'Mushi', '', ''),
(51, 18, 'John ', 'Modest', '', ''),
(52, 18, 'Martha', 'Benjamin', '', ''),
(53, 18, 'Eliza ', 'Yona', '', ''),
(54, 18, 'Lameck', 'Beno', '', ''),
(56, 20, 'ROSE', 'Gody', 'female3.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(17, 'Honorary Treasurer', 1, 3),
(18, 'Executive Members', 1, 4),
(20, 'chairperson', 1, 5),
(21, 'Administrator', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(1000001, '1000001', '1234', 'rose', 'nzali', ''),
(1000002, '', '1234', 'metallic', 'metallic', ''),
(1000003, '', '1234', 'luka', 'luka', 'male3.jpg'),
(1000004, 'Sin6eEYcObf8D4Q', '$2y$10$/LwUsOOGgHS3wLVm5u6PPO6ERy2m3Q6AOSjqqvlv7o9XiAe0Q7qrm', 'paschal ', 'ngoi', ''),
(1000005, 'Kk5lnx7JRSLNvTf', '$2y$10$igX9LAqSvW1BVqLXwrJHdOWeR/GOF5zHHhLj.HWFHVJSJ88PabriK', 'ngoi', 'tech', ''),
(1000006, 'utTmYAgvXwJPsU6', '$2y$10$pSwamJaRFkdcDESa11Gly.RILvM0eKskVUZq4lDZLS79eh/KsdASS', 'paschal ', 'metallic', ''),
(1000007, '4hD7aoUXivEntxg', '$2y$10$nqsT38neRxDjxSoQ3BKD1Osi82CU6LrnSNtzqKFup8ueiINJkDNf6', 'deric', 'kayombo', 'male3.jpg'),
(1000008, 'WkEhJbMKP2dwABT', '$2y$10$EE2w342HSI3HKAw2l0nojevsAMwF6..mZ4iXz.R/2kgzsaMyqBaze', 'esther', 'McSawwe', 'female3.jpg'),
(1000009, 'pZIqT65HWn17PXo', '$2y$10$AyspAcw95O.brN7sm2E5..7Vu/NLgPYMLM7zP9gNsn/g.T0gYyKKS', 'Anna', 'Jimmy', 'female3.jpg'),
(1000010, 'X8AuIfPseFEW917', '$2y$10$ZCl4tiSlhRl./PzVTW/8yeTZ983J3BZ6JCa3n0VY0YIJWVpeZDJki', 'Susan', 'Naliaka', 'female3.jpg'),
(1000011, 'P3knTDJlsiM2uLO', '$2y$10$a5VHt4Vg4BMMwedwsM/7Ne19ALKCFs971gtsR9OhzxSYqJJFgI7/K', 'mizengo', 'casian', ''),
(1000012, 'dx65vY3fia7TlSU', '$2y$10$Df9mN6HC9aEtXODjsnO1SusurqI3K/XeboqRFu30PiBzl0eromhnS', 'metallic', 'admin', 'male3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17719;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000013;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
