-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2015 at 01:06 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostnfound`
--
CREATE DATABASE IF NOT EXISTS `lostnfound` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lostnfound`;

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf16 COLLATE utf16_swedish_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf16 COLLATE utf16_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_picture` varchar(50) CHARACTER SET utf16 COLLATE utf16_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `found`
--

INSERT INTO `found` (`id`, `title`, `description`, `user_id`, `product_picture`) VALUES
(1, 'kgsdkja', 'as,djasd', 0, '398924download.jpg'),
(2, 'gfdgf', 'hgfhgfh', 0, '933049download.jpg'),
(3, 'gfdgf', 'hgfhgfh', 0, '411311download.jpg'),
(4, 'fayed', 'gd boy', 0, '78328661L0SPIkgVL._SL1000_.jpg'),
(5, 'fayed', 'gd boy', 0, '6465461L0SPIkgVL._SL1000_.jpg'),
(6, 'fayed', 'gd boy', 0, '6018261L0SPIkgVL._SL1000_.jpg'),
(7, 'fayed', 'gd boy', 0, '75606561L0SPIkgVL._SL1000_.jpg'),
(8, 'acasasqweqweasdas', 'asdasdasd', 0, '83053img.jpg'),
(9, 'acasasqweqweasdas', 'asdasdasd', 0, '889875img.jpg'),
(10, 'kajsdhkas', 'asdljasldjasd', 0, '558113download (1).jpg'),
(11, 'sdasda', 'asdasd', 0, '43125161L0SPIkgVL._SL1000_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guidelines`
--

CREATE TABLE `guidelines` (
  `id` int(45) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `example` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int(45) NOT NULL,
  `modified_by` int(45) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guidelines`
--

INSERT INTO `guidelines` (`id`, `title`, `description`, `example`, `status`, `created`, `modified`, `created_by`, `modified_by`, `deleted_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, ped', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.  Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.  Pellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.', 'xvophqmncwe2.jpg', 1, '2015-10-13 00:00:00', '2013-10-15 07:14:40', 0, 0, '2015-10-13 19:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `product_code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `product_code`, `user_id`, `product_picture`) VALUES
(2, 'Moneybag', 'orange moneybag', 'E8FN7Z', 175828, '198434download.jpg'),
(3, 'hang bag', 'hand bag', 'SKL687', 146304, '946191download (1).jpg'),
(4, 'mobile', 'mobile phone', 'SRPGV1', 304745, '60349261L0SPIkgVL._SL1000_.jpg'),
(5, 'glass', '-0.5 power glass', '8IDJFH', 680647, '472672img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `password`, `mobile_number`, `address`, `zip_code`, `city`, `district`, `status`, `created`, `created_by`, `modified`, `modified_by`, `deleted_at`, `profile_picture`) VALUES
(8, 175828, 'Fayed', 'Al Kawsar', '81dc9bdb52d04dc20036dbd8313ed0', '01829981273', '11/ab,east lamapad,Fatullah', '1421', 'Narayangonj', 'narayangonj', 1, '2015-12-03 05:04:09', 175828, '0000-00-00 00:00:00', 0, '2015-12-03 16:04:09', 'ufbmzPicture.jpg'),
(9, 146304, 'Jannatul Ferdous', 'Shupty', 'ba5b449a0edb77fd4198520562be77', '0191111111', 'cantonment', '1200', 'dhaka', 'dhaka', 1, '2015-12-03 05:08:07', 146304, '0000-00-00 00:00:00', 0, '2015-12-03 16:08:07', 'yjixc11221580_636583043150196_564991536947307298_n.jpg'),
(10, 304745, 'Md Asad', 'Zaman', '81dc9bdb52d04dc20036dbd8313ed0', '01681117777', 'mirpur', '1201', 'dhaka', 'dhaka', 1, '2015-12-03 05:14:32', 304745, '0000-00-00 00:00:00', 0, '2015-12-03 16:14:32', 'brslq12227645_1129053120438494_881176702174810344_n.jpg'),
(11, 680647, 'Badrul Alam', 'Bulon', 'ca6d7a1f805b261e666b016f20ab45', '01923901283', 'Mohammadpur', '2341', 'dhaka', 'dhaka', 1, '2015-12-03 05:16:48', 680647, '0000-00-00 00:00:00', 0, '2015-12-03 16:16:48', 'nrhdh11127492_830773353644270_3244994878070854_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `theme_option`
--

CREATE TABLE `theme_option` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fotter_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme_option`
--

INSERT INTO `theme_option` (`id`, `logo`, `fotter_text`) VALUES
(1, 'logo.png', '2014 Â© Metronic. All Rights Reserved. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `username` varchar(63) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `is_admin`, `created`, `created_by`, `modified`, `modified_by`, `is_block`) VALUES
(1, 'fayed', 'fayed@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2015-07-15 00:00:00', 0, '2008-10-15 10:19:44', 0, 0),
(18, 'fayed22', 'fayedalkawsar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2015-12-03 05:04:09', 175828, '0000-00-00 00:00:00', 0, 0),
(19, 'shupty', 'shupty15-1756@diu.edu.bd', 'ba5b449a0edb77fd4198520562be77dc', 0, '2015-12-03 05:08:07', 146304, '0000-00-00 00:00:00', 0, 0),
(20, 'asadniloy', 'asad15-1688@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2015-12-03 05:14:32', 304745, '0000-00-00 00:00:00', 0, 0),
(21, 'bulon', 'bulon15-1653@diu.edu.bd', 'ca6d7a1f805b261e666b016f20ab457d', 0, '2015-12-03 05:16:48', 680647, '0000-00-00 00:00:00', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guidelines`
--
ALTER TABLE `guidelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_option`
--
ALTER TABLE `theme_option`
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
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `guidelines`
--
ALTER TABLE `guidelines`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `theme_option`
--
ALTER TABLE `theme_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
