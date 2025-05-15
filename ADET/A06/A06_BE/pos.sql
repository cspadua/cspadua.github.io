-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 10:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `categoryImage` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`, `categoryImage`) VALUES
(1, 'Espresso', 'img/espresso.svg'),
(2, 'Refreshers ', 'img/refreshers.svg'),
(3, 'Cold Brew', 'img/coldBrew.svg'),
(4, 'Desserts', 'img/dessert.svg'),
(5, 'Bakery', 'img/bakery.svg'),
(6, 'Pasta', 'img/pasta.svg'),
(7, 'Sandwiches', 'img/sandwich.svg'),
(8, 'Cake', 'img/cake.svg'),
(9, 'Tart', 'img/tart.svg'),
(10, 'Tea', 'img/tea.svg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(3) NOT NULL,
  `categoryID` int(3) NOT NULL,
  `isAvailable` varchar(5) NOT NULL DEFAULT 'true',
  `name` varchar(30) NOT NULL,
  `code` varchar(10) NOT NULL,
  `contentImage` varchar(40) NOT NULL,
  `price` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `isAvailable`, `name`, `code`, `contentImage`, `price`) VALUES
(1, 1, 'true', 'Caffe Misto', 'CFM', 'img/espressoImg/1.png', 120),
(2, 1, 'true', 'Flat White', 'FTW', 'img/espressoImg/2.png', 110),
(3, 2, 'true', 'Strawberry Açaí', 'STA', 'img/refreshersImg/1.png', 125),
(4, 2, 'true', 'Strawberry Lemonade', 'STL', 'img/refreshersImg/2.png', 140),
(5, 1, 'true', 'Espresso', 'ESP', 'img/espressoImg/3.png', 100),
(6, 1, 'true', 'Con Panna', 'CPN', 'img/espressoImg/4.png', 130),
(7, 2, 'true', 'Mango Dragonfruit', 'MGD', 'img/refreshersImg/3.png', 115),
(8, 2, 'true', 'Dragon Drink', 'DRD', 'img/refreshersImg/4.png', 130),
(9, 3, 'true', 'Salted Caramel', 'STC', 'img/coldBrewImg/1.png', 140),
(10, 3, 'true', 'Vanilla Sweet Cream', 'VSC', 'img/coldBrewImg/2.png', 135),
(11, 3, 'true', 'Nitro Cold Brew', 'NCW', 'img/coldBrewImg/3.png', 125),
(12, 3, 'true', 'Cold Brew', 'CB', 'img/coldBrewImg/4.png', 100),
(13, 3, 'true', 'Nitro Sweet Cream', 'NTW', 'img/coldBrewImg/5.png', 135),
(14, 3, 'true', 'Dark Caramel Nitro', 'DCN', 'img/coldBrewImg/6.png', 130),
(15, 4, 'true', 'Chocolate Mousse', 'CTM', 'img/dessertsImg/1.png', 850),
(16, 4, 'true', 'New York Cheesecake', 'NYC', 'img/dessertsImg/2.png', 160),
(17, 4, 'true', 'Blueberry Licious', 'BBL', 'img/dessertsImg/3.png', 170),
(18, 4, 'true', 'Classic Chocolate Cake', 'CCC', 'img/dessertsImg/4.png', 190),
(19, 4, 'true', 'Banoffee Pie', 'BFP', 'img/dessertsImg/5.png', 145),
(20, 5, 'true', 'Belgian Waffle', 'BGW', 'img/bakeryImg/1.png', 95),
(21, 5, 'true', 'Banana Bread', 'BNB', 'img/bakeryImg/2.png', 110),
(22, 5, 'true', 'Chocolate Doughnut', 'CCD', 'img/bakeryImg/3.png', 125),
(23, 5, 'true', 'Cinnamon Danish', 'CND', 'img/bakeryImg/4.png', 140),
(24, 5, 'true', 'Macadamia Cookie', 'MDC', 'img/bakeryImg/5.png', 135),
(25, 5, 'true', 'Pistachio Dream Bar', 'PDB', 'img/bakeryImg/6.png', 205),
(26, 5, 'true', 'Sausage Roll', 'SGR', 'img/bakeryImg/7.png', 155),
(27, 6, 'true', 'Pasta Napolitana', 'PSN', 'img/pastaImg/1.png', 132),
(28, 7, 'true', 'Classic, Egg & Cheese', 'CEC', 'img/sandwichImg/1.png', 70),
(29, 7, 'true', 'Ham, Egg, & Cheese', 'HEC', 'img/sandwichImg/2.png', 80),
(30, 7, 'true', 'Spanish Chorizo', 'SNC', 'img/sandwichImg/3.png', 75),
(31, 7, 'true', 'Fontina Cheese', 'FTC', 'img/sandwichImg/4.png', 90),
(32, 8, 'true', 'Blackout Cake', 'BOC', 'img/cakeImg/1.png', 900),
(33, 8, 'true', 'Peanut Butter Cheesecake', 'PBC', 'img/cakeImg/2.png', 1100),
(34, 9, 'true', 'Strawberry Tart', 'STT', 'img/tartImg/1.png', 400),
(35, 9, 'true', 'Tarte Au Chocolate', 'TAC', 'img/tartImg/2.png', 470),
(36, 9, 'true', 'Meringue Tartlet', 'MRT', 'img/tartImg/3.png', 520),
(37, 10, 'true', 'Full Brewed Tea', 'FBT', 'img/teaImg/1.png', 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
