-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 03:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_alexander_hardo_php_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

CREATE TABLE `tbl_cars` (
  `car_id` int(11) NOT NULL,
  `brand` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `model` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fk_office_id` int(11) NOT NULL,
  `img` varchar(1000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`car_id`, `brand`, `model`, `price`, `fk_office_id`, `img`) VALUES
(1, ' Volkswagen', 'Passat (3C)', 100, 1, 'http://i.auto-bild.de/mdb/large/82/b6typ3c-db8.jpg'),
(2, ' Porsche ', 'Boxster/Cayman', 200, 1, 'https://st.motortrend.com/uploads/sites/5/2014/05/2015-Porsche-Boxster-GTS-front-three-quarter-in-motion-033.jpg?interpolation=lanczos-none&fit=around|660:438'),
(3, 'Opel ', ' Astra', 80, 1, '\r\nhttp://deacademic.com/pictures/dewiki/79/Opel_Astra_Design_Edition_%28J%29_%E2%80%93_Frontansicht%2C_14._August_2011%2C_Heiligenhaus.jpg'),
(4, 'Mercedes-Benz', 'E-Class', 145, 1, 'https://d1ek71enupal89.cloudfront.net/images/blocks_png/MERCEDES-BENZ/E%20CLASS/4DR/16MerEclSe4drBlaFR1_800.jpg'),
(5, ' Ford ', '  Kuga', 90, 1, 'https://imgd.aeplcdn.com/1056x594/cw/ec/25520/Ford-Kuga-Right-Front-Three-Quarter-82690.jpg?v=201711021421&q=80'),
(6, ' Volkswagen', 'Passat (3C)', 100, 2, 'http://i.auto-bild.de/mdb/large/82/b6typ3c-db8.jpg'),
(7, ' Porsche ', 'Boxster/Cayman', 200, 2, 'https://st.motortrend.com/uploads/sites/5/2014/05/2015-Porsche-Boxster-GTS-front-three-quarter-in-motion-033.jpg?interpolation=lanczos-none&fit=around|660:438'),
(8, 'Opel ', ' Astra', 80, 2, 'http://deacademic.com/pictures/dewiki/79/Opel_Astra_Design_Edition_%28J%29_%E2%80%93_Frontansicht%2C_14._August_2011%2C_Heiligenhaus.jpg'),
(9, 'Mercedes-Benz', 'E-Class', 145, 2, 'https://d1ek71enupal89.cloudfront.net/images/blocks_png/MERCEDES-BENZ/E%20CLASS/4DR/16MerEclSe4drBlaFR1_800.jpg'),
(10, ' Ford ', '  Kuga', 90, 2, 'https://imgd.aeplcdn.com/1056x594/cw/ec/25520/Ford-Kuga-Right-Front-Three-Quarter-82690.jpg?v=201711021421&q=80'),
(11, ' Volkswagen', 'Passat (3C)', 100, 3, 'http://i.auto-bild.de/mdb/large/82/b6typ3c-db8.jpg'),
(12, ' Porsche ', 'Boxster/Cayman', 200, 3, 'https://st.motortrend.com/uploads/sites/5/2014/05/2015-Porsche-Boxster-GTS-front-three-quarter-in-motion-033.jpg?interpolation=lanczos-none&fit=around|660:438'),
(13, 'Opel ', ' Astra', 80, 3, 'http://deacademic.com/pictures/dewiki/79/Opel_Astra_Design_Edition_%28J%29_%E2%80%93_Frontansicht%2C_14._August_2011%2C_Heiligenhaus.jpg'),
(14, 'Mercedes-Benz', 'E-Class', 145, 3, 'https://d1ek71enupal89.cloudfront.net/images/blocks_png/MERCEDES-BENZ/E%20CLASS/4DR/16MerEclSe4drBlaFR1_800.jpg'),
(15, ' Ford ', '  Kuga', 90, 3, 'https://imgd.aeplcdn.com/1056x594/cw/ec/25520/Ford-Kuga-Right-Front-Three-Quarter-82690.jpg?v=201711021421&q=80'),
(16, ' Volkswagen', 'Passat (3C)', 100, 4, 'http://i.auto-bild.de/mdb/large/82/b6typ3c-db8.jpg'),
(17, ' Porsche ', 'Boxster/Cayman', 200, 4, 'https://st.motortrend.com/uploads/sites/5/2014/05/2015-Porsche-Boxster-GTS-front-three-quarter-in-motion-033.jpg?interpolation=lanczos-none&fit=around|660:438'),
(18, 'Opel ', ' Astra', 80, 4, 'http://deacademic.com/pictures/dewiki/79/Opel_Astra_Design_Edition_%28J%29_%E2%80%93_Frontansicht%2C_14._August_2011%2C_Heiligenhaus.jpg'),
(19, 'Mercedes-Benz', 'E-Class', 145, 4, 'https://d1ek71enupal89.cloudfront.net/images/blocks_png/MERCEDES-BENZ/E%20CLASS/4DR/16MerEclSe4drBlaFR1_800.jpg'),
(20, ' Ford ', '  Kuga', 90, 4, 'https://imgd.aeplcdn.com/1056x594/cw/ec/25520/Ford-Kuga-Right-Front-Three-Quarter-82690.jpg?v=201711021421&q=80'),
(21, ' Volkswagen', 'Passat (3C)', 100, 5, 'http://i.auto-bild.de/mdb/large/82/b6typ3c-db8.jpg'),
(22, ' Porsche ', 'Boxster/Cayman', 200, 5, 'https://st.motortrend.com/uploads/sites/5/2014/05/2015-Porsche-Boxster-GTS-front-three-quarter-in-motion-033.jpg?interpolation=lanczos-none&fit=around|660:438'),
(23, 'Opel ', ' Astra', 80, 5, 'http://deacademic.com/pictures/dewiki/79/Opel_Astra_Design_Edition_%28J%29_%E2%80%93_Frontansicht%2C_14._August_2011%2C_Heiligenhaus.jpg'),
(24, 'Mercedes-Benz', 'E-Class', 145, 5, 'https://d1ek71enupal89.cloudfront.net/images/blocks_png/MERCEDES-BENZ/E%20CLASS/4DR/16MerEclSe4drBlaFR1_800.jpg'),
(25, ' Ford ', '  Kuga', 90, 5, 'https://imgd.aeplcdn.com/1056x594/cw/ec/25520/Ford-Kuga-Right-Front-Three-Quarter-82690.jpg?v=201711021421&q=80'),
(26, 'alex', 'alex', 65, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `name`, `address`, `age`) VALUES
(1, 'Alex', 'Am Kanal', 31),
(2, 'Sara', 'Anne-Frank-Gasse', 29),
(3, 'patrick', 'Barichgasse', 30),
(4, 'Isabel', 'Blütengasse', 21),
(5, 'Sami', 'Dr.-Bohr-Gasse', 19),
(6, 'Meriam', 'Faradaygasse', 19),
(7, 'Katrin', 'Franzosengraben', 31),
(8, 'Sabine', 'Hafengasse', 25),
(9, 'Tim', 'Hetzgasse', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `lat` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `lon` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `fk_car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `lat`, `lon`, `fk_car_id`) VALUES
(1, '48.193623', '16.309151', 1),
(2, '48.193235', '16.400883', 9),
(3, '48.179635', '16.375948', 20),
(4, '48.187454', '16.360882', 8),
(5, '48.186069', ' 16.433690', 22),
(6, '48.225739', '16.362019', 12),
(7, '48.202494', '16.405575', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_office`
--

CREATE TABLE `tbl_office` (
  `office_id` int(11) NOT NULL,
  `address` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `zip` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `office_name` varchar(33) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_office`
--

INSERT INTO `tbl_office` (`office_id`, `address`, `zip`, `office_name`) VALUES
(1, 'schönbrunner straße ', '1120', 'Meidling'),
(2, 'hietzinger kai', '1130', 'hietzing'),
(3, 'kärntner straße', '1010', 'alte stadt'),
(4, 'lassallestraße', '1020', 'Leopoldstadt'),
(5, 'wiedner hauptstraße', '1040', 'Wieden ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rent`
--

CREATE TABLE `tbl_rent` (
  `rent_id` int(11) NOT NULL,
  `fk_customer_id` int(11) NOT NULL,
  `fk_location_id` int(11) NOT NULL,
  `fk_car_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_rent`
--

INSERT INTO `tbl_rent` (`rent_id`, `fk_customer_id`, `fk_location_id`, `fk_car_id`, `start_date`, `end_date`) VALUES
(1, 1, 2, 1, '2018-06-01', '2018-06-03'),
(2, 4, 1, 7, '2018-06-06', '2018-06-08'),
(3, 7, 3, 13, '2018-06-18', '2018-06-20'),
(4, 3, 4, 18, '2018-06-20', '2018-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_bin NOT NULL,
  `useremail` varchar(60) COLLATE utf8_bin NOT NULL,
  `userpass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `useremail`, `userpass`) VALUES
(2, 'alex', 'alex@car.com', 'ba530a3de516671e75365bf3c1c29d866038eefe9e7a16caf8456986e0809bb1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_location_id` (`fk_office_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `tbl_office`
--
ALTER TABLE `tbl_office`
  ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`,`fk_location_id`,`fk_car_id`),
  ADD KEY `fk_location_id` (`fk_location_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_office`
--
ALTER TABLE `tbl_office`
  MODIFY `office_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD CONSTRAINT `tbl_cars_ibfk_1` FOREIGN KEY (`fk_office_id`) REFERENCES `tbl_office` (`office_id`);

--
-- Constraints for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD CONSTRAINT `tbl_location_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `tbl_cars` (`car_id`);

--
-- Constraints for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  ADD CONSTRAINT `tbl_rent_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `tbl_customers` (`customer_id`),
  ADD CONSTRAINT `tbl_rent_ibfk_2` FOREIGN KEY (`fk_location_id`) REFERENCES `tbl_office` (`office_id`),
  ADD CONSTRAINT `tbl_rent_ibfk_3` FOREIGN KEY (`fk_car_id`) REFERENCES `tbl_cars` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
