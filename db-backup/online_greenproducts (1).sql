-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 03:02 AM
-- Server version: 10.1.40-MariaDB
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
-- Database: `online_greenproducts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `status`, `customer_id`, `update_date`) VALUES
(1, 'Just Green Leaf', 'YES', 1, '2022-01-11 14:38:59'),
(2, 'Greenport Fashion Export', 'YES', 1, '2022-01-11 14:39:10'),
(3, 'Grenove Services	', 'YES', 1, '2022-01-11 14:39:20'),
(11, 'No Brand', 'YES', 1, '2021-06-25 16:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_status` enum('PENDING','SUCCESS') NOT NULL,
  `pro_size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_id`, `customer_id`, `quantity`, `order_status`, `pro_size`) VALUES
(2, 10, 9, 2, 'SUCCESS', ''),
(3, 14, 9, 1, 'SUCCESS', ''),
(4, 15, 9, 2, 'SUCCESS', ''),
(6, 5, 9, 1, 'SUCCESS', ''),
(7, 8, 9, 1, 'SUCCESS', ''),
(11, 18, 9, 1, 'SUCCESS', 'M'),
(12, 17, 9, 1, 'SUCCESS', 'XXL'),
(14, 13, 9, 1, 'SUCCESS', ''),
(15, 8, 9, 1, 'SUCCESS', ''),
(16, 5, 9, 1, 'SUCCESS', ''),
(17, 5, 9, 1, 'SUCCESS', ''),
(18, 5, 9, 1, 'SUCCESS', ''),
(19, 5, 9, 6, 'SUCCESS', ''),
(20, 5, 9, 1, 'PENDING', ''),
(21, 8, 9, 1, 'PENDING', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `cat_img` varchar(150) DEFAULT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `category_name`, `cat_img`, `status`, `customer_id`, `update_date`) VALUES
(1, 'Bags', '951389_cat_img.jpg', 'YES', 1, '2022-01-11 14:24:04'),
(2, 'Tissue', '548240_cat_img.jpg', 'YES', 1, '2022-01-11 14:25:29'),
(3, 'Bowl', '748824_cat_img.jpg', 'YES', 1, '2022-01-11 14:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `customer_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `email_id` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` enum('YES','NO') DEFAULT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `role` enum('customer','admin','seller') NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(15) DEFAULT NULL,
  `land_mark` varchar(150) NOT NULL,
  `about_me` varchar(150) DEFAULT NULL,
  `company_logo` varchar(150) NOT NULL,
  `company_app_doct` varchar(50) NOT NULL,
  `company_details` text NOT NULL,
  `admin_approve_cmy` enum('1','2') DEFAULT NULL,
  `rejection_reason` text,
  `otp` int(11) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `money_type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`customer_id`, `user_name`, `email_id`, `password`, `status`, `mobile_no`, `photo`, `role`, `address`, `city`, `country`, `pincode`, `land_mark`, `about_me`, `company_logo`, `company_app_doct`, `company_details`, `admin_approve_cmy`, `rejection_reason`, `otp`, `update_date`, `money_type`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'YES', '7092887009', '321506_photo.png', 'admin', 'USA', 'USA', 'USA', '605005', 'near ig squre', 'Don\'t be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed des', '979438_company_logo.png', '', '', NULL, NULL, 0, '2022-05-17 01:02:06', '$'),
(9, 'customer', 'customer@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'YES', '7092887009', '840903_photo.jpg', 'customer', 'pondicherry', 'pondicherry', NULL, '605005', 'near ig squre', 'Don\'t be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed des', '', '', '', NULL, NULL, 0, '2021-09-27 17:57:45', NULL),
(10, 'seller', 'seller@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'YES', '7092887009', '140942_photo.png', 'seller', 'Smart Craft Pvt Ltd.,\r\nSmartcraft #48/2 block - 2,\r\nfirst floor kudlu main road near shree bhagya veg hotel\r\nBangalore,\r\nBANGALORE - 560068', 'PUDUCHERRY', 'India', '605105', 'dfgdf', 'dfgdfg', '618687_company_logo.png', '282767_company_app_doct.pdf', '.', '1', NULL, NULL, '2021-09-27 17:43:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `tracking_id` varchar(15) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `offer_amount` int(11) NOT NULL,
  `quantity_in_no` int(11) NOT NULL,
  `reduced` enum('YES','NO') DEFAULT 'NO',
  `payment_type` text,
  `date_of_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seller_status` enum('PENDING','SHIPPED','REJECTED','SUCCESS','CANCEL') DEFAULT NULL,
  `rejection_reason` text,
  `cutomer_status` enum('PENDING','SUCCESS','CANCEL') DEFAULT NULL,
  `shipped_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `bill_of_order` varchar(150) DEFAULT NULL,
  `date_of_received` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `feedback` varchar(150) DEFAULT NULL,
  `feedback_cmt` text,
  `stars_in_number` int(11) DEFAULT NULL,
  `feedback_img1` varchar(150) NOT NULL,
  `feedback_img2` varchar(150) NOT NULL,
  `feedback_img3` varchar(150) NOT NULL,
  `card_number` varchar(150) DEFAULT NULL,
  `card_type` varchar(150) DEFAULT NULL,
  `expiry_month` varchar(150) DEFAULT NULL,
  `cvcode` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `tracking_id`, `customer_id`, `seller_id`, `product_id`, `amount`, `offer_amount`, `quantity_in_no`, `reduced`, `payment_type`, `date_of_order`, `seller_status`, `rejection_reason`, `cutomer_status`, `shipped_date`, `bill_of_order`, `date_of_received`, `feedback`, `feedback_cmt`, `stars_in_number`, `feedback_img1`, `feedback_img2`, `feedback_img3`, `card_number`, `card_type`, `expiry_month`, `cvcode`) VALUES
(10, '447997', 9, 1, 8, 449, 1050, 1, 'NO', 'cards', '2021-09-03 09:06:55', 'SHIPPED', '', 'PENDING', '2021-09-03 09:06:55', '798423_bill_of_order.jpg', '2021-09-03 09:06:55', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(11, '361654', 9, 1, 18, 300, 200, 1, 'YES', 'cards', '2021-09-03 09:07:28', 'SHIPPED', '', 'PENDING', '2021-09-03 09:07:28', NULL, '2021-09-03 09:07:28', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(12, '85894', 9, 1, 17, 300, 200, 1, 'NO', 'cards', '2021-09-02 13:03:12', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(13, '226850', 9, 1, 13, 539, 60, 1, 'NO', 'cards', '2021-09-02 13:03:12', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(14, '504837', 9, 1, 8, 449, 1050, 1, 'NO', 'COD', '2021-09-03 06:24:39', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', '123654789012', 'Debit Card', '', ''),
(15, '518945', 9, 1, 5, 1000, 840, 1, 'NO', 'cards', '2021-09-03 06:27:37', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', '123654789012', 'Debit Card', '2021-09', '123'),
(16, '107749', 9, 1, 5, 1000, 840, 1, 'NO', 'COD', '2021-09-03 06:32:49', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', '123456789098', NULL, '2021-09', '123'),
(17, '348957', 9, 1, 5, 1000, 840, 1, 'NO', 'COD', '2021-09-03 07:05:10', 'PENDING', NULL, 'PENDING', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, '', '', '', '1234567890981231', NULL, '2021-09', '123'),
(18, '732222', 9, 1, 5, 1000, 840, 6, 'YES', 'COD', '2021-09-03 11:33:02', 'SHIPPED', '', 'PENDING', '2021-09-03 11:33:02', '520358_bill_of_order.jpg', '2021-09-03 11:33:02', NULL, NULL, NULL, '', '', '', '1234567890981231', NULL, '2021-09', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_amount` varchar(15) NOT NULL,
  `pro_off_percentage` int(11) NOT NULL,
  `pro_final_amount` varchar(50) NOT NULL,
  `product_description` text NOT NULL,
  `pro_img1` varchar(150) NOT NULL,
  `pro_img2` varchar(150) NOT NULL,
  `pro_img3` varchar(150) NOT NULL,
  `pro_img4` varchar(150) NOT NULL,
  `des_img1` varchar(150) NOT NULL,
  `des_img2` varchar(150) NOT NULL,
  `des_img3` varchar(150) NOT NULL,
  `des_img4` varchar(150) NOT NULL,
  `des_line1` text NOT NULL,
  `des_line2` text NOT NULL,
  `des_line3` text NOT NULL,
  `pro_keywords` text NOT NULL,
  `pro_details` text NOT NULL,
  `pro_delivery_dates` int(11) DEFAULT NULL,
  `status` enum('YES','NO') NOT NULL,
  `status_seller` enum('YES','NO') DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pro_size` text NOT NULL,
  `pro_color_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `customer_id`, `cat_id`, `sub_cat_id`, `brand_id`, `pro_name`, `pro_amount`, `pro_off_percentage`, `pro_final_amount`, `product_description`, `pro_img1`, `pro_img2`, `pro_img3`, `pro_img4`, `des_img1`, `des_img2`, `des_img3`, `des_img4`, `des_line1`, `des_line2`, `des_line3`, `pro_keywords`, `pro_details`, `pro_delivery_dates`, `status`, `status_seller`, `update_date`, `pro_size`, `pro_color_ids`) VALUES
(2, 1, 3, 13, 1, 'Kuber Industries Plastic Solid Mixing Bowl - 1000 Ml, 3 Pieces, Multicolour (CTKTC034736)', '10', 1, '9', 'Material: Plastic, Color: Multi\r\nPackage Contents: 3 Pieces Mixing Bowl\r\nSize: 15 cm x 15 cm x 7 cm\r\nMade of Virgin Plastic material, 100 percent Food Grade and BPA Free. The materials used ensure the plate is sturdy and lasts a long time\r\nThese Katoris or Bowls are Microwave safe, they can be used to store curries, vegetables in your fridge and can also be used to reheat your food in the Microwave', '248704_pro_img1.jpg', '852118_pro_img2.jpg', '985145_pro_img3.jpg', '551526_pro_img4.jpg', '626214_des_img1.jpg', '987086_des_img2.jpg', '318958_des_img3.jpg', '500576_des_img4.jpg', 'Material: Plastic, Color: Multi\r\nPackage Contents: 3 Pieces Mixing Bowl\r\nSize: 15 cm x 15 cm x 7 cm\r\nMade of Virgin Plastic material, 100 percent Food Grade and BPA Free. The materials used ensure the plate is sturdy and lasts a long time\r\nThese Katoris or Bowls are Microwave safe, they can be used to store curries, vegetables in your fridge and can also be used to reheat your food in the Microwave', 'Material: Plastic, Color: Multi\r\nPackage Contents: 3 Pieces Mixing Bowl\r\nSize: 15 cm x 15 cm x 7 cm\r\nMade of Virgin Plastic material, 100 percent Food Grade and BPA Free. The materials used ensure the plate is sturdy and lasts a long time\r\nThese Katoris or Bowls are Microwave safe, they can be used to store curries, vegetables in your fridge and can also be used to reheat your food in the Microwave', 'Material: Plastic, Color: Multi\r\nPackage Contents: 3 Pieces Mixing Bowl\r\nSize: 15 cm x 15 cm x 7 cm\r\nMade of Virgin Plastic material, 100 percent Food Grade and BPA Free. The materials used ensure the plate is sturdy and lasts a long time\r\nThese Katoris or Bowls are Microwave safe, they can be used to store curries, vegetables in your fridge and can also be used to reheat your food in the Microwave', 'Boys', 'Material: Plastic, Color: Multi\r\nPackage Contents: 3 Pieces Mixing Bowl\r\nSize: 15 cm x 15 cm x 7 cm\r\nMade of Virgin Plastic material, 100 percent Food Grade and BPA Free. The materials used ensure the plate is sturdy and lasts a long time\r\nThese Katoris or Bowls are Microwave safe, they can be used to store curries, vegetables in your fridge and can also be used to reheat your food in the Microwave', 5, 'YES', NULL, '2022-01-11 10:53:58', '', '2,7,18'),
(3, 1, 2, 8, 2, 'Amazon Brand - Presto ! 3 Ply Toilet Paper Tissue Roll - 12 Rolls (160 Pulls Per Roll)', '15', 5, '10', '5% Instant Discount on HSBC Cashback Card Transactions. Here\'s how\r\n10% Instant Discount up to INR 300 on City Union Bank Debit Card Transactions. Minimum purchase value INR 350. Here\'s how\r\nNo cost EMI available on select cards. Please check \'EMI options\' above for more details', '983979_pro_img1.jpg', '542499_pro_img2.jpg', '320388_pro_img3.jpg', '699133_pro_img4.jpg', '464271_des_img1.jpg', '550745_des_img2.jpg', '857188_des_img3.jpg', '991658_des_img4.jpg', 'About this item\r\nPresto! 3 ply tissues with 160 sheets per roll\r\nSoft tissues with smooth feel\r\nSafe and hygienic choice for your family\r\nMade from 100% natural virgin paper\r\nFree from optical brightening agent (OBA)\r\nQuickly absorbs water and gets flushed easily\r\nContents: Pack of 12 bathroom tissue rolls', 'About this item\r\nPresto! 3 ply tissues with 160 sheets per roll\r\nSoft tissues with smooth feel\r\nSafe and hygienic choice for your family\r\nMade from 100% natural virgin paper\r\nFree from optical brightening agent (OBA)\r\nQuickly absorbs water and gets flushed easily\r\nContents: Pack of 12 bathroom tissue rolls', 'About this item\r\nPresto! 3 ply tissues with 160 sheets per roll\r\nSoft tissues with smooth feel\r\nSafe and hygienic choice for your family\r\nMade from 100% natural virgin paper\r\nFree from optical brightening agent (OBA)\r\nQuickly absorbs water and gets flushed easily\r\nContents: Pack of 12 bathroom tissue rolls', 'Men', 'Product Dimensions ? : ? 24 x 2.7 x 19.5 cm; 1.2 Kilograms\r\nDate First Available ? : ? 17 October 2021\r\nManufacturer ? : ? Presto\r\nASIN ? : ? B097PTGNTF\r\nItem model number ? : ? PrestoTP12160PFBA\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? Presto, GREAT DIVINE PULP AND PAPER INDIA PVT LTD, GREAT DIVINE PULP AND PAPER INDIA PVT LTD, Plot No. 122-B, Sector - 6, HSIIDC, Industrial Growth Centre, Bawal - 123501, Dist. Rewari (Haryana); Email: gautam.srivastava@gdppindia.com\r\nPacker ? : ? GREAT DIVINE PULP AND PAPER INDIA PVT LTD, GREAT DIVINE PULP AND PAPER INDIA PVT LTD, Plot No. 122-B, Sector - 6, HSIIDC, Industrial Growth Centre, Bawal - 123501, Dist. Rewari (Haryana); Email: gautam.srivastava@gdppindia.com\r\nImporter ? : ? GREAT DIVINE PULP AND PAPER INDIA PVT LTD, GREAT DIVINE PULP AND PAPER INDIA PVT LTD, Plot No. 122-B, Sector - 6, HSIIDC, Industrial Growth Centre, Bawal - 123501, Dist. Rewari (Haryana); Email: gautam.srivastava@gdppindia.com\r\nItem Weight ? : ? 1 kg 200 g\r\nItem Dimensions LxWxH ? : ? 24 x 2.7 x 19.5 Centimeters\r\nNet Quantity ? : ? 1 count\r\nGeneric Name ? : ? Toilet Tissue', 5, 'YES', NULL, '2022-01-11 10:54:29', '', '3,6,17'),
(4, 1, 1, 4, 3, 'Arka Home Products Cotton and Canvas Reusable Printed Bags (16 X 14 X 4 Inches, Off White)-2 Pieces', '75', 25, '50', 'Product details\r\nIs Discontinued By Manufacturer ? : ? No\r\nProduct Dimensions ? : ? 35.56 x 5.08 x 40.64 cm; 340 Grams\r\nDate First Available ? : ? 29 July 2018\r\nASIN ? : ? B07G13QSKY\r\nItem part number ? : ? SBGP02\r\nCountry of Origin ? : ? India\r\nItem Weight ? : ? 340 g\r\nItem Dimensions LxWxH ? : ? 35.6 x 5.1 x 40.6 Centimeters\r\nIncluded Components ? : ? 2 Shopping Bags\r\nBest Sellers Rank: #4,467 in Bags, Wallets and Luggage', '803836_pro_img1.jpg', '814039_pro_img2.jpg', '793593_pro_img3.jpg', '435401_pro_img4.jpg', '373152_des_img1.jpg', '165587_des_img2.jpg', '431639_des_img3.jpg', '809515_des_img4.jpg', 'Product details\r\nIs Discontinued By Manufacturer ? : ? No\r\nProduct Dimensions ? : ? 35.56 x 5.08 x 40.64 cm; 340 Grams\r\nDate First Available ? : ? 29 July 2018\r\nASIN ? : ? B07G13QSKY\r\nItem part number ? : ? SBGP02\r\nCountry of Origin ? : ? India\r\nItem Weight ? : ? 340 g\r\nItem Dimensions LxWxH ? : ? 35.6 x 5.1 x 40.6 Centimeters\r\nIncluded Components ? : ? 2 Shopping Bags\r\nBest Sellers Rank: #4,467 in Bags, Wallets and Luggage', 'Product details\r\nIs Discontinued By Manufacturer ? : ? No\r\nProduct Dimensions ? : ? 35.56 x 5.08 x 40.64 cm; 340 Grams\r\nDate First Available ? : ? 29 July 2018\r\nASIN ? : ? B07G13QSKY\r\nItem part number ? : ? SBGP02\r\nCountry of Origin ? : ? India\r\nItem Weight ? : ? 340 g\r\nItem Dimensions LxWxH ? : ? 35.6 x 5.1 x 40.6 Centimeters\r\nIncluded Components ? : ? 2 Shopping Bags\r\nBest Sellers Rank: #4,467 in Bags, Wallets and Luggage', 'Product details\r\nIs Discontinued By Manufacturer ? : ? No\r\nProduct Dimensions ? : ? 35.56 x 5.08 x 40.64 cm; 340 Grams\r\nDate First Available ? : ? 29 July 2018\r\nASIN ? : ? B07G13QSKY\r\nItem part number ? : ? SBGP02\r\nCountry of Origin ? : ? India\r\nItem Weight ? : ? 340 g\r\nItem Dimensions LxWxH ? : ? 35.6 x 5.1 x 40.6 Centimeters\r\nIncluded Components ? : ? 2 Shopping Bags\r\nBest Sellers Rank: #4,467 in Bags, Wallets and Luggage', 'Reusable Printed Bags,bags,vegetable bags', '100% Cotton canvas bags\r\nLarge and sturdy - a must-have in every car\r\nEco-friendly, washable and reusable with a carrying capacity of more than 20 kgs\r\nBeautiful print on the bag makes it your everyday companion. Prints may be different than those shown in the pictures here\r\nNatural fabrics are to shrink upon wash. All bags have been prewashed to reduce shrinkage and machine wash', 10, 'YES', NULL, '2022-01-11 10:48:40', '', ''),
(5, 1, 1, 1, 11, 'VOOLEX SLA Polyethylene Green Grow Bag UV Stabilized for Terrace Planting, Floor Standing Mount Type, 18\"x12\"x9\", Pack of 5, No Assemble Required', '20', 2, '18', 'About this item\r\nTerrace Gardening HDPE Grow Bags for Vegetable Plants\r\nSize: 18\"x12\"x9\" inches\r\nComes as pack of 5', '302819_pro_img1.jpg', '697410_pro_img2.jpg', '264866_pro_img3.jpg', '224078_pro_img4.jpg', '548565_des_img1.jpg', '177323_des_img2.jpg', '997240_des_img3.jpg', '270708_des_img4.jpg', '\r\nProduct details\r\nIs Discontinued By Manufacturer ? : ? No\r\nPackage Dimensions ? : ? 25.3 x 24 x 8.9 cm; 400 Grams\r\nDate First Available ? : ? 11 August 2018\r\nManufacturer ? : ? coir garden\r\nASIN ? : ? B07GD3B861\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? coir garden\r\nItem Weight ? : ? 400 g', '\r\nProduct details\r\nIs Discontinued By Manufacturer ? : ? No\r\nPackage Dimensions ? : ? 25.3 x 24 x 8.9 cm; 400 Grams\r\nDate First Available ? : ? 11 August 2018\r\nManufacturer ? : ? coir garden\r\nASIN ? : ? B07GD3B861\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? coir garden\r\nItem Weight ? : ? 400 g', '\r\nProduct details\r\nIs Discontinued By Manufacturer ? : ? No\r\nPackage Dimensions ? : ? 25.3 x 24 x 8.9 cm; 400 Grams\r\nDate First Available ? : ? 11 August 2018\r\nManufacturer ? : ? coir garden\r\nASIN ? : ? B07GD3B861\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? coir garden\r\nItem Weight ? : ? 400 g', 'Green bag,tree bag,bags,green tree bags', 'Material	High Density Polyethylene\r\nMounting Type	Floor Standing\r\nBrand	VOOLEX\r\nNumber of Pieces	5', 5, 'YES', NULL, '2022-01-11 10:22:53', '', ''),
(6, 1, 2, 10, 11, 'Beco Eco Friendly Bamboo Natural Facial Tissue Carbox - 100 Pulls (Pack of 4) Natural & Organic Bamboo Tissue Paper Box - White Facial Paper Tissues Alternative', '30', 10, '20', 'Our rolls are made from 100% organic bamboo pulp and is a natural alternative to the tree-based paper tissues. Paraben-free, BPA-free and chlorine-free. Our rolls are light brown in colour as it is not white bleached at all.\r\nSuitable for all drainage systems\r\nSoft, highly absorbent and allergy-free, does not cause rashes.\r\nEnvironmentally friendly and compostable as they biodegrade in the soil within 2-6 months and have no toxic elements\r\nDifferent size packs available: 100 pulls and 200 pulls', '948871_pro_img1.jpg', '270340_pro_img2.jpg', '935112_pro_img3.jpg', '606783_pro_img4.jpg', '102875_des_img1.jpg', '928343_des_img2.jpg', '964565_des_img3.jpg', '663782_des_img4.jpg', 'Our rolls are made from 100% organic bamboo pulp and is a natural alternative to the tree-based paper tissues. Paraben-free, BPA-free and chlorine-free. Our rolls are light brown in colour as it is not white bleached at all.\r\nSuitable for all drainage systems\r\nSoft, highly absorbent and allergy-free, does not cause rashes.\r\nEnvironmentally friendly and compostable as they biodegrade in the soil within 2-6 months and have no toxic elements\r\nDifferent size packs available: 100 pulls and 200 pulls', 'Our rolls are made from 100% organic bamboo pulp and is a natural alternative to the tree-based paper tissues. Paraben-free, BPA-free and chlorine-free. Our rolls are light brown in colour as it is not white bleached at all.\r\nSuitable for all drainage systems\r\nSoft, highly absorbent and allergy-free, does not cause rashes.\r\nEnvironmentally friendly and compostable as they biodegrade in the soil within 2-6 months and have no toxic elements\r\nDifferent size packs available: 100 pulls and 200 pulls', 'Our rolls are made from 100% organic bamboo pulp and is a natural alternative to the tree-based paper tissues. Paraben-free, BPA-free and chlorine-free. Our rolls are light brown in colour as it is not white bleached at all.\r\nSuitable for all drainage systems\r\nSoft, highly absorbent and allergy-free, does not cause rashes.\r\nEnvironmentally friendly and compostable as they biodegrade in the soil within 2-6 months and have no toxic elements\r\nDifferent size packs available: 100 pulls and 200 pulls', 'tissue,bathroom tissue,paper,tissue paper', 'Brand	Beco\r\nMaterial	Paper\r\nItem Dimensions LxWxH	24 x 3.4 x 14 Centimeters\r\nSheet Count	400\r\nPackage Type	Box\r\nPattern	Solid\r\nPly Rating	1-Ply', 6, 'YES', NULL, '2022-01-11 10:48:24', '', ''),
(7, 1, 3, 14, 3, 'Smart Dinning Melamine Modern Maggi/Snack Bowl - 500 ml, 4 Pieces, White', '42', 2, '40', 'About this item\r\n?? IN THE BOX ::4 Pcs Snacks/Maggi Bowl , Capacity-500ml\r\n?? ABOUT PRODUCT ::These are 100% Melamine Bowls (most superior quality).\r\n?? HIGH QUALITY WITH MODERN DESIGN :: This bowl set made of melamine, unbreakable and lightweight make your life more convenience. This melamine Bowl set have modern design, you will surprise when you get them.\r\n?? SPECIAL FEATURES :: The bowls are BPA free, and ideal for family camping, recreational vehicles or home use. Dishwasher safe in top rack . Very easy to clean and mess free, just use dishcloth or sponge to clean, rinse it with water and let it air dry\r\n?? DURABILITY :: All pieces of the set are made of melamine, which is durable break and chip resistant, lightweight, and easily stackable for space saving. This melamine bowls sets are stain Resistant & Easy to clean: sleek finish is easy to clean up, no problems with odors, color changing', '800590_pro_img1.jpg', '799866_pro_img2.jpg', '421582_pro_img3.jpg', '312400_pro_img4.jpg', '870056_des_img1.jpg', '362799_des_img2.jpg', '857757_des_img3.jpg', '362490_des_img4.jpg', 'Is Discontinued By Manufacturer ? : ? No\r\nDate First Available ? : ? 17 June 2016\r\nManufacturer ? : ? Smart Dinning\r\nASIN ? : ? B07GSHGWYC\r\nItem model number ? : ? 09\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? Smart Dinning, Smart Dinning\r\nNet Quantity ? : ? 6.00 Unit\r\nIncluded Components ? : ? 4 bowl\r\nGeneric Name ? : ? Mixing Bowls', 'Is Discontinued By Manufacturer ? : ? No\r\nDate First Available ? : ? 17 June 2016\r\nManufacturer ? : ? Smart Dinning\r\nASIN ? : ? B07GSHGWYC\r\nItem model number ? : ? 09\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? Smart Dinning, Smart Dinning\r\nNet Quantity ? : ? 6.00 Unit\r\nIncluded Components ? : ? 4 bowl\r\nGeneric Name ? : ? Mixing Bowls', 'Is Discontinued By Manufacturer ? : ? No\r\nDate First Available ? : ? 17 June 2016\r\nManufacturer ? : ? Smart Dinning\r\nASIN ? : ? B07GSHGWYC\r\nItem model number ? : ? 09\r\nCountry of Origin ? : ? India\r\nManufacturer ? : ? Smart Dinning, Smart Dinning\r\nNet Quantity ? : ? 6.00 Unit\r\nIncluded Components ? : ? 4 bowl\r\nGeneric Name ? : ? Mixing Bowls', 'bowl,modern bowl,maggi bowl', 'Colour	White\r\nBrand	Smart Dinning\r\nPattern	Marble\r\nIs Dishwasher Safe	Yes\r\nCapacity	500 Milliliters', 4, 'YES', NULL, '2022-01-11 10:49:07', '', '2,7,18'),
(8, 1, 1, 3, 1, 'Amazon Brand-Eono Reusable Tote Bags|100% Organic Cotton Grocery Bag|Eco-Friendly, Multi-Purpose Bag|Sturdy Canvas Bag with 15kgs Capacity | Multiple Stylish Designs,Pack of 1,Pack of 2, Pack of 6', '25', 1, '24', 'Closure: No Closure\r\nQUALITY & DURABILITY: Repeated use of the bag without reduction in quality is the prime test for a durable product, considering that tote bags have an exceptional strength to weight ratio. Our bags are light weighted still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. Cross stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping, an overnight stay, or even just for storage, our canvas bags are perfect for many occasions. Purely based on their size, they can hold considerably more than single-use plastic bags, and reusability allows them the opportunity to carve out a role in the everyday life of the user. If you’re looking for other ways to utilise and re use the bags\r\nDIY - Our bags are ideal for imprinting as the Cotton Fabric being highly receptive to inks. Heat and Vinyl transfers of the prints go ease with us. Making the bags effective for school and college art works, Bulk Gifting for weddings and an effective tool for marketing your brand as totes are primarily meant for everyday uses. Note: Printing quality depends on the materials that get used. Recommending a good level digital prints or good water colours that can survive the wash cycle.\r\nETHICAL&SUSTAINABLE FASHION - Our Reusable packaging too has made sure that we are Eco-friendly from sourcing the raw material to packaging. We make sure there is no use of plastic. Having a positive impact on our environment is our prime concern.Our Bags are Ethically manufactured.Our Factories are SEDEX and SA 8000 compliant-norms addressing the ethical treatment, Pay &occupational health standards for the workers making from sourcing of cotton to making the bags. GOTS Certified\r\nWASHING NOTICE: Washing of bags Regularly would not be advised as the natural fibre cotton has a shrinkage rate about 5- 10 %. In case of dirt, washing in cold water with mild detergents is recommended. Drying is necessary before iron or while vinyl transferring. Please notice that the fabric may not return to the original flatness if prone to extreme conditions. 2.DIMENSIONS - of one pc - 38CM x 42CM and can hold upto 15kgs. Colour – Natural', '582895_pro_img1.jpg', '379237_pro_img2.jpg', '819730_pro_img3.jpg', '949421_pro_img4.jpg', '421594_des_img1.jpg', '660036_des_img2.jpg', '611608_des_img3.jpg', '256508_des_img4.jpg', 'Closure: No Closure\r\nQUALITY & DURABILITY: Repeated use of the bag without reduction in quality is the prime test for a durable product, considering that tote bags have an exceptional strength to weight ratio. Our bags are light weighted still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. Cross stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping, an overnight stay, or even just for storage, our canvas bags are perfect for many occasions. Purely based on their size, they can hold considerably more than single-use plastic bags, and reusability allows them the opportunity to carve out a role in the everyday life of the user. If you’re looking for other ways to utilise and re use the bags\r\nDIY - Our bags are ideal for imprinting as the Cotton Fabric being highly receptive to inks. Heat and Vinyl transfers of the prints go ease with us. Making the bags effective for school and college art works, Bulk Gifting for weddings and an effective tool for marketing your brand as totes are primarily meant for everyday uses. Note: Printing quality depends on the materials that get used. Recommending a good level digital prints or good water colours that can survive the wash cycle.\r\nETHICAL&SUSTAINABLE FASHION - Our Reusable packaging too has made sure that we are Eco-friendly from sourcing the raw material to packaging. We make sure there is no use of plastic. Having a positive impact on our environment is our prime concern.Our Bags are Ethically manufactured.Our Factories are SEDEX and SA 8000 compliant-norms addressing the ethical treatment, Pay &occupational health standards for the workers making from sourcing of cotton to making the bags. GOTS Certified\r\nWASHING NOTICE: Washing of bags Regularly would not be advised as the natural fibre cotton has a shrinkage rate about 5- 10 %. In case of dirt, washing in cold water with mild detergents is recommended. Drying is necessary before iron or while vinyl transferring. Please notice that the fabric may not return to the original flatness if prone to extreme conditions. 2.DIMENSIONS - of one pc - 38CM x 42CM and can hold upto 15kgs. Colour – Natural', 'Closure: No Closure\r\nQUALITY & DURABILITY: Repeated use of the bag without reduction in quality is the prime test for a durable product, considering that tote bags have an exceptional strength to weight ratio. Our bags are light weighted still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. Cross stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping, an overnight stay, or even just for storage, our canvas bags are perfect for many occasions. Purely based on their size, they can hold considerably more than single-use plastic bags, and reusability allows them the opportunity to carve out a role in the everyday life of the user. If you’re looking for other ways to utilise and re use the bags\r\nDIY - Our bags are ideal for imprinting as the Cotton Fabric being highly receptive to inks. Heat and Vinyl transfers of the prints go ease with us. Making the bags effective for school and college art works, Bulk Gifting for weddings and an effective tool for marketing your brand as totes are primarily meant for everyday uses. Note: Printing quality depends on the materials that get used. Recommending a good level digital prints or good water colours that can survive the wash cycle.\r\nETHICAL&SUSTAINABLE FASHION - Our Reusable packaging too has made sure that we are Eco-friendly from sourcing the raw material to packaging. We make sure there is no use of plastic. Having a positive impact on our environment is our prime concern.Our Bags are Ethically manufactured.Our Factories are SEDEX and SA 8000 compliant-norms addressing the ethical treatment, Pay &occupational health standards for the workers making from sourcing of cotton to making the bags. GOTS Certified\r\nWASHING NOTICE: Washing of bags Regularly would not be advised as the natural fibre cotton has a shrinkage rate about 5- 10 %. In case of dirt, washing in cold water with mild detergents is recommended. Drying is necessary before iron or while vinyl transferring. Please notice that the fabric may not return to the original flatness if prone to extreme conditions. 2.DIMENSIONS - of one pc - 38CM x 42CM and can hold upto 15kgs. Colour – Natural', 'Closure: No Closure\r\nQUALITY & DURABILITY: Repeated use of the bag without reduction in quality is the prime test for a durable product, considering that tote bags have an exceptional strength to weight ratio. Our bags are light weighted still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. Cross stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping, an overnight stay, or even just for storage, our canvas bags are perfect for many occasions. Purely based on their size, they can hold considerably more than single-use plastic bags, and reusability allows them the opportunity to carve out a role in the everyday life of the user. If you’re looking for other ways to utilise and re use the bags\r\nDIY - Our bags are ideal for imprinting as the Cotton Fabric being highly receptive to inks. Heat and Vinyl transfers of the prints go ease with us. Making the bags effective for school and college art works, Bulk Gifting for weddings and an effective tool for marketing your brand as totes are primarily meant for everyday uses. Note: Printing quality depends on the materials that get used. Recommending a good level digital prints or good water colours that can survive the wash cycle.\r\nETHICAL&SUSTAINABLE FASHION - Our Reusable packaging too has made sure that we are Eco-friendly from sourcing the raw material to packaging. We make sure there is no use of plastic. Having a positive impact on our environment is our prime concern.Our Bags are Ethically manufactured.Our Factories are SEDEX and SA 8000 compliant-norms addressing the ethical treatment, Pay &occupational health standards for the workers making from sourcing of cotton to making the bags. GOTS Certified\r\nWASHING NOTICE: Washing of bags Regularly would not be advised as the natural fibre cotton has a shrinkage rate about 5- 10 %. In case of dirt, washing in cold water with mild detergents is recommended. Drying is necessary before iron or while vinyl transferring. Please notice that the fabric may not return to the original flatness if prone to extreme conditions. 2.DIMENSIONS - of one pc - 38CM x 42CM and can hold upto 15kgs. Colour – Natural', 'bag,bags,cotton bags,vegetable bags', 'Closure: No Closure\r\nQUALITY & DURABILITY: Repeated use of the bag without reduction in quality is the prime test for a durable product, considering that tote bags have an exceptional strength to weight ratio. Our bags are light weighted still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. Cross stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping, an overnight stay, or even just for storage, our canvas bags are perfect for many occasions. Purely based on their size, they can hold considerably more than single-use plastic bags, and reusability allows them the opportunity to carve out a role in the everyday life of the user. If you’re looking for other ways to utilise and re use the bags\r\nDIY - Our bags are ideal for imprinting as the Cotton Fabric being highly receptive to inks. Heat and Vinyl transfers of the prints go ease with us. Making the bags effective for school and college art works, Bulk Gifting for weddings and an effective tool for marketing your brand as totes are primarily meant for everyday uses. Note: Printing quality depends on the materials that get used. Recommending a good level digital prints or good water colours that can survive the wash cycle.\r\nETHICAL&SUSTAINABLE FASHION - Our Reusable packaging too has made sure that we are Eco-friendly from sourcing the raw material to packaging. We make sure there is no use of plastic. Having a positive impact on our environment is our prime concern.Our Bags are Ethically manufactured.Our Factories are SEDEX and SA 8000 compliant-norms addressing the ethical treatment, Pay &occupational health standards for the workers making from sourcing of cotton to making the bags. GOTS Certified\r\nWASHING NOTICE: Washing of bags Regularly would not be advised as the natural fibre cotton has a shrinkage rate about 5- 10 %. In case of dirt, washing in cold water with mild detergents is recommended. Drying is necessary before iron or while vinyl transferring. Please notice that the fabric may not return to the original flatness if prone to extreme conditions. 2.DIMENSIONS - of one pc - 38CM x 42CM and can hold upto 15kgs. Colour – Natural', 5, 'YES', NULL, '2022-01-11 10:31:45', '', ''),
(17, 1, 2, 7, 2, 'Presto! 2 Ply Facial Tissue Soft Pack - 200 Pulls (Pack of 3)', '60', 20, '40', 'Soft-touch facial tissues that are gentle on the skin. Napkin Usage: Daily-use\r\nFacial Tissues made from 100% natural virgin paper\r\nHighly absorbent tissues that can be used in cars, bathrooms, living rooms, bedrooms, and offices\r\n2-ply white facial tissues\r\nSheet size: 19.5 cm x 20 cm\r\nFree from optical brightening agent (OBA)\r\nPack contents: 3 Facial Tissue Soft Poly Packs with 200 sheets per pack', '928486_pro_img1.jpg', '294064_pro_img2.jpg', '364094_pro_img3.jpg', '144742_pro_img4.jpg', '883234_des_img1.jpg', '137993_des_img2.jpg', '509801_des_img3.jpg', '471654_des_img4.jpg', 'Soft-touch facial tissues that are gentle on the skin. Napkin Usage: Daily-use\r\nFacial Tissues made from 100% natural virgin paper\r\nHighly absorbent tissues that can be used in cars, bathrooms, living rooms, bedrooms, and offices\r\n2-ply white facial tissues\r\nSheet size: 19.5 cm x 20 cm\r\nFree from optical brightening agent (OBA)\r\nPack contents: 3 Facial Tissue Soft Poly Packs with 200 sheets per pack', 'Soft-touch facial tissues that are gentle on the skin. Napkin Usage: Daily-use\r\nFacial Tissues made from 100% natural virgin paper\r\nHighly absorbent tissues that can be used in cars, bathrooms, living rooms, bedrooms, and offices\r\n2-ply white facial tissues\r\nSheet size: 19.5 cm x 20 cm\r\nFree from optical brightening agent (OBA)\r\nPack contents: 3 Facial Tissue Soft Poly Packs with 200 sheets per pack', 'Soft-touch facial tissues that are gentle on the skin. Napkin Usage: Daily-use\r\nFacial Tissues made from 100% natural virgin paper\r\nHighly absorbent tissues that can be used in cars, bathrooms, living rooms, bedrooms, and offices\r\n2-ply white facial tissues\r\nSheet size: 19.5 cm x 20 cm\r\nFree from optical brightening agent (OBA)\r\nPack contents: 3 Facial Tissue Soft Poly Packs with 200 sheets per pack', 'tissue,bathroom tissue,paper,tissue paper,facial tissue', 'Soft-touch facial tissues that are gentle on the skin. Napkin Usage: Daily-use\r\nFacial Tissues made from 100% natural virgin paper\r\nHighly absorbent tissues that can be used in cars, bathrooms, living rooms, bedrooms, and offices\r\n2-ply white facial tissues\r\nSheet size: 19.5 cm x 20 cm\r\nFree from optical brightening agent (OBA)\r\nPack contents: 3 Facial Tissue Soft Poly Packs with 200 sheets per pack', 6, 'YES', NULL, '2022-01-11 10:49:38', '', '3,6,17'),
(18, 1, 3, 12, 3, 'VG CRAFT Wood Classic Bowl - Set of 3, Brown', '40', 10, '30', 'Size - 4, 5, 6 Inch\r\nThe deep in-curved design makes serving easy and the glazed bowl is very easy to clean.\r\nSimple and elegant piece with multiple-use naturally suited to everyday use. Great for green salad, pasta, bread, cereal, fruit or decor at your table; Smaller bowls are convenient for serving.\r\nMatching servers are contoured for easy tossing and serving\r\nDO NOT put in dishwasher, microwave, freezer or oven. Keep away from heat and sunlight, storage in a well-ventilated place', '191249_pro_img1.jpg', '160762_pro_img2.jpg', '724568_pro_img3.jpg', '495278_pro_img4.jpg', '865973_des_img1.jpg', '375804_des_img2.jpg', '626244_des_img3.jpg', '530373_des_img4.jpg', 'Size - 4, 5, 6 Inch\r\nThe deep in-curved design makes serving easy and the glazed bowl is very easy to clean.\r\nSimple and elegant piece with multiple-use naturally suited to everyday use. Great for green salad, pasta, bread, cereal, fruit or decor at your table; Smaller bowls are convenient for serving.\r\nMatching servers are contoured for easy tossing and serving\r\nDO NOT put in dishwasher, microwave, freezer or oven. Keep away from heat and sunlight, storage in a well-ventilated place', 'Size - 4, 5, 6 Inch\r\nThe deep in-curved design makes serving easy and the glazed bowl is very easy to clean.\r\nSimple and elegant piece with multiple-use naturally suited to everyday use. Great for green salad, pasta, bread, cereal, fruit or decor at your table; Smaller bowls are convenient for serving.\r\nMatching servers are contoured for easy tossing and serving\r\nDO NOT put in dishwasher, microwave, freezer or oven. Keep away from heat and sunlight, storage in a well-ventilated place', 'Size - 4, 5, 6 Inch\r\nThe deep in-curved design makes serving easy and the glazed bowl is very easy to clean.\r\nSimple and elegant piece with multiple-use naturally suited to everyday use. Great for green salad, pasta, bread, cereal, fruit or decor at your table; Smaller bowls are convenient for serving.\r\nMatching servers are contoured for easy tossing and serving\r\nDO NOT put in dishwasher, microwave, freezer or oven. Keep away from heat and sunlight, storage in a well-ventilated place', 'brown bowl,bowl,wooden bowl', 'Size - 4, 5, 6 Inch\r\nThe deep in-curved design makes serving easy and the glazed bowl is very easy to clean.\r\nSimple and elegant piece with multiple-use naturally suited to everyday use. Great for green salad, pasta, bread, cereal, fruit or decor at your table; Smaller bowls are convenient for serving.\r\nMatching servers are contoured for easy tossing and serving\r\nDO NOT put in dishwasher, microwave, freezer or oven. Keep away from heat and sunlight, storage in a well-ventilated place', 6, 'YES', NULL, '2022-01-11 10:42:41', '', '2,7'),
(19, 1, 2, 7, 3, 'Amazon Brand - Solimo 2 Ply Paper Napkins - 50 Pulls (Pack of 4)', '85', 20, '65', 'Tissues made from 100% natural virgin paper\r\n2 ply tissues with 50 pulls per pack\r\nFree from optical brightening agent (OBA)\r\nHighly absorbent tissues that soak up spills quickly\r\nSoft touch tissues which can be used as table napkins\r\nSafe for contact with food\r\nPack of 4 Paper napkins', '594682_pro_img1.jpg', '800067_pro_img2.jpg', '827203_pro_img3.jpg', '134492_pro_img4.jpg', '998105_des_img1.jpg', '182919_des_img2.jpg', '693874_des_img3.jpg', '856555_des_img4.jpg', 'Soft and Highly Absorbent Paper Napkins\r\nSolimo paper napkins are designed considering you and your family’s everyday use and needs. These tissues are soft and highly absorbent and soak up spills quickly. These can be used as facial tissues, paper napkins at the dinner table or in the kitchen', 'Soft and Highly Absorbent Paper Napkins\r\nSolimo paper napkins are designed considering you and your family’s everyday use and needs. These tissues are soft and highly absorbent and soak up spills quickly. These can be used as facial tissues, paper napkins at the dinner table or in the kitchen', 'Soft and Highly Absorbent Paper Napkins\r\nSolimo paper napkins are designed considering you and your family’s everyday use and needs. These tissues are soft and highly absorbent and soak up spills quickly. These can be used as facial tissues, paper napkins at the dinner table or in the kitchen', 'tissue,bathroom tissue,paper,tissue paper', 'Size	50 X 4\r\nMaterial	Paper\r\nBrand	Amazon Brand - Solimo\r\nPly Rating	2-Ply\r\nNet Quantity	4 count', 6, 'YES', NULL, '2022-01-11 10:49:54', '', '3,6,17'),
(20, 1, 1, 2, 11, 'Necavu 100% cotton set of 6 fridge bag | Eco-friendly natural vegetables bags for fridge storage & mesh net vegetable bag fridge | Multi-purpose Eco-friendly cotton mesh bag (neem)', '20', 5, '15', '????ECO-FRIENDLY AND REUSABLE: These kitchen reusable grocery bags are zero waste and fully biodegradable. Forget about any plastic or heavy metal toggles and closure beads. Use these drawstring mesh bags hundreds of times and they will still retain their quality.\r\n????TARE WEIGHT: Reusable produce bags are totally food-safe, zero waste, and come with drawstrings that enable you to hang them. produce bags come with tare weight to check out at the supermarket.\r\n????SUSTAINABLE: These mesh bag are made in India using high-quality cotton knit fabric. Cotton mesh produced bags are machine washable and durable. Our breathable cotton fridge bags allows ethylene gas to escape which will prevent fruits and vegetables from rot.\r\n????VERSATILE: These cotton bags are not only for veggies, such as fruit storage, food, snacks, vegetable bag fridge,but also perfect for storage, such as toys, cosmetics, accessories, perfect for grocery shopping etc.\r\n????WE MAKE IT EASY FOR YOU: Bags come in sizes L (25x 35cm), M (25 x 30cm), and S (25 x 25cm) per set of 2 each.', '585194_pro_img1.jpg', '208596_pro_img2.jpg', '185205_pro_img3.jpg', '809464_pro_img4.jpg', '293914_des_img1.jpg', '795102_des_img2.jpg', '280092_des_img3.jpg', '808798_des_img4.jpg', '????ECO-FRIENDLY AND REUSABLE: These kitchen reusable grocery bags are zero waste and fully biodegradable. Forget about any plastic or heavy metal toggles and closure beads. Use these drawstring mesh bags hundreds of times and they will still retain their quality.\r\n????TARE WEIGHT: Reusable produce bags are totally food-safe, zero waste, and come with drawstrings that enable you to hang them. produce bags come with tare weight to check out at the supermarket.\r\n????SUSTAINABLE: These mesh bag are made in India using high-quality cotton knit fabric. Cotton mesh produced bags are machine washable and durable. Our breathable cotton fridge bags allows ethylene gas to escape which will prevent fruits and vegetables from rot.\r\n????VERSATILE: These cotton bags are not only for veggies, such as fruit storage, food, snacks, vegetable bag fridge,but also perfect for storage, such as toys, cosmetics, accessories, perfect for grocery shopping etc.\r\n????WE MAKE IT EASY FOR YOU: Bags come in sizes L (25x 35cm), M (25 x 30cm), and S (25 x 25cm) per set of 2 each.', '????ECO-FRIENDLY AND REUSABLE: These kitchen reusable grocery bags are zero waste and fully biodegradable. Forget about any plastic or heavy metal toggles and closure beads. Use these drawstring mesh bags hundreds of times and they will still retain their quality.\r\n????TARE WEIGHT: Reusable produce bags are totally food-safe, zero waste, and come with drawstrings that enable you to hang them. produce bags come with tare weight to check out at the supermarket.\r\n????SUSTAINABLE: These mesh bag are made in India using high-quality cotton knit fabric. Cotton mesh produced bags are machine washable and durable. Our breathable cotton fridge bags allows ethylene gas to escape which will prevent fruits and vegetables from rot.\r\n????VERSATILE: These cotton bags are not only for veggies, such as fruit storage, food, snacks, vegetable bag fridge,but also perfect for storage, such as toys, cosmetics, accessories, perfect for grocery shopping etc.\r\n????WE MAKE IT EASY FOR YOU: Bags come in sizes L (25x 35cm), M (25 x 30cm), and S (25 x 25cm) per set of 2 each.', '????ECO-FRIENDLY AND REUSABLE: These kitchen reusable grocery bags are zero waste and fully biodegradable. Forget about any plastic or heavy metal toggles and closure beads. Use these drawstring mesh bags hundreds of times and they will still retain their quality.\r\n????TARE WEIGHT: Reusable produce bags are totally food-safe, zero waste, and come with drawstrings that enable you to hang them. produce bags come with tare weight to check out at the supermarket.\r\n????SUSTAINABLE: These mesh bag are made in India using high-quality cotton knit fabric. Cotton mesh produced bags are machine washable and durable. Our breathable cotton fridge bags allows ethylene gas to escape which will prevent fruits and vegetables from rot.\r\n????VERSATILE: These cotton bags are not only for veggies, such as fruit storage, food, snacks, vegetable bag fridge,but also perfect for storage, such as toys, cosmetics, accessories, perfect for grocery shopping etc.\r\n????WE MAKE IT EASY FOR YOU: Bags come in sizes L (25x 35cm), M (25 x 30cm), and S (25 x 25cm) per set of 2 each.', 'bag,bags,cotton bags,vegetable bags,fridge bag', '????ECO-FRIENDLY AND REUSABLE: These kitchen reusable grocery bags are zero waste and fully biodegradable. Forget about any plastic or heavy metal toggles and closure beads. Use these drawstring mesh bags hundreds of times and they will still retain their quality.\r\n????TARE WEIGHT: Reusable produce bags are totally food-safe, zero waste, and come with drawstrings that enable you to hang them. produce bags come with tare weight to check out at the supermarket.\r\n????SUSTAINABLE: These mesh bag are made in India using high-quality cotton knit fabric. Cotton mesh produced bags are machine washable and durable. Our breathable cotton fridge bags allows ethylene gas to escape which will prevent fruits and vegetables from rot.\r\n????VERSATILE: These cotton bags are not only for veggies, such as fruit storage, food, snacks, vegetable bag fridge,but also perfect for storage, such as toys, cosmetics, accessories, perfect for grocery shopping etc.\r\n????WE MAKE IT EASY FOR YOU: Bags come in sizes L (25x 35cm), M (25 x 30cm), and S (25 x 25cm) per set of 2 each.', 6, 'YES', NULL, '2022-01-11 10:34:36', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_qes_ans`
--

CREATE TABLE `tbl_product_qes_ans` (
  `pro_qes_ans_id` int(11) NOT NULL,
  `question` text,
  `customer_id` int(11) DEFAULT NULL,
  `answer` text,
  `seller_id` int(11) DEFAULT NULL,
  `date_of_question` timestamp NULL DEFAULT NULL,
  `date_of_reply` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_qes_ans`
--

INSERT INTO `tbl_product_qes_ans` (`pro_qes_ans_id`, `question`, `customer_id`, `answer`, `seller_id`, `date_of_question`, `date_of_reply`, `product_id`) VALUES
(1, 'size fit for 6 year Baby?', 9, 'it is fit upto 7 years Baby', 1, '2021-06-26 07:45:17', '2021-06-26 11:19:01', 7),
(12, 'cloth details', 9, NULL, NULL, '2021-07-03 01:59:57', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_public_feedback`
--

CREATE TABLE `tbl_public_feedback` (
  `sender_id` int(11) NOT NULL,
  `sender_name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sender_comment` text,
  `date_of_feedback` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_public_feedback`
--

INSERT INTO `tbl_public_feedback` (`sender_id`, `sender_name`, `email`, `sender_comment`, `date_of_feedback`) VALUES
(1, 'ragadevan', 'deragav96@gmail.com', 'this website was awesome', '2021-06-25 08:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qes_ans_votes`
--

CREATE TABLE `tbl_qes_ans_votes` (
  `qes_ans_vote_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vote_type` enum('UP','DOWN') DEFAULT NULL,
  `date_of_voted` timestamp NULL DEFAULT NULL,
  `date_of_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pro_qes_ans_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_qes_ans_votes`
--

INSERT INTO `tbl_qes_ans_votes` (`qes_ans_vote_id`, `product_id`, `customer_id`, `vote_type`, `date_of_voted`, `date_of_updated`, `pro_qes_ans_id`) VALUES
(1, 7, 9, 'DOWN', '2021-06-26 07:47:54', '2021-06-26 07:47:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review_votes`
--

CREATE TABLE `tbl_review_votes` (
  `review_vote_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vote_type` enum('UP','DOWN') DEFAULT NULL,
  `date_of_voted` timestamp NULL DEFAULT NULL,
  `date_of_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_review_votes`
--

INSERT INTO `tbl_review_votes` (`review_vote_id`, `product_id`, `customer_id`, `vote_type`, `date_of_voted`, `date_of_updated`, `order_id`) VALUES
(1, 15, 9, 'UP', '2021-07-01 13:23:43', '2021-07-01 13:23:46', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_list`
--

CREATE TABLE `tbl_stock_list` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `current_available` varchar(15) DEFAULT NULL,
  `total_stock` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stock_list`
--

INSERT INTO `tbl_stock_list` (`stock_id`, `product_id`, `customer_id`, `current_available`, `total_stock`) VALUES
(1, 13, 1, '100', '100'),
(3, 2, 1, '100', '100'),
(4, 3, 1, '100', '100'),
(5, 4, 1, '100', '100'),
(6, 5, 1, '94', '100'),
(7, 6, 1, '100', '100'),
(8, 7, 1, '100', '100'),
(9, 8, 1, '99', '100'),
(15, 17, 1, '100', '100'),
(16, 18, 1, '99', '100'),
(17, 19, 1, '100', '100'),
(18, 20, 1, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(50) NOT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `cat_id`, `sub_cat_name`, `status`, `customer_id`, `update_date`) VALUES
(1, 1, 'Reusable Green Grow Bags', 'YES', 1, '2022-01-11 14:32:36'),
(2, 1, 'Reusable Mesh Fridge Bags', 'YES', 1, '2022-01-11 14:33:32'),
(3, 1, 'Cotton Bag', 'YES', 1, '2022-01-11 14:33:49'),
(4, 1, 'Printed Bags', 'YES', 1, '2022-01-11 14:34:27'),
(7, 2, 'Facial Tissue', 'YES', 1, '2022-01-11 14:35:27'),
(8, 2, 'Toilet Tissues', 'YES', 1, '2022-01-11 14:35:35'),
(10, 2, 'bamboo tissue', 'YES', 1, '2022-01-11 14:35:45'),
(12, 3, 'wooden bowl', 'YES', 1, '2022-01-11 14:36:59'),
(13, 3, 'Plastic bowl', 'YES', 1, '2022-01-11 14:37:24'),
(14, 3, 'Modern Maggi', 'YES', 1, '2022-01-11 14:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket_product`
--

CREATE TABLE `tbl_ticket_product` (
  `tick_pro_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ticket_comments_seller` text,
  `ticket_staus` enum('PENDING','SUCCESS') NOT NULL,
  `ticket_reply` text NOT NULL,
  `date_of_raised` timestamp NULL DEFAULT NULL,
  `date_of_reply` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`wishlist_id`, `product_id`, `customer_id`) VALUES
(4, 19, 9),
(5, 20, 9),
(6, 8, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_qes_ans`
--
ALTER TABLE `tbl_product_qes_ans`
  ADD PRIMARY KEY (`pro_qes_ans_id`);

--
-- Indexes for table `tbl_public_feedback`
--
ALTER TABLE `tbl_public_feedback`
  ADD PRIMARY KEY (`sender_id`);

--
-- Indexes for table `tbl_qes_ans_votes`
--
ALTER TABLE `tbl_qes_ans_votes`
  ADD PRIMARY KEY (`qes_ans_vote_id`);

--
-- Indexes for table `tbl_review_votes`
--
ALTER TABLE `tbl_review_votes`
  ADD PRIMARY KEY (`review_vote_id`);

--
-- Indexes for table `tbl_stock_list`
--
ALTER TABLE `tbl_stock_list`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `tbl_ticket_product`
--
ALTER TABLE `tbl_ticket_product`
  ADD PRIMARY KEY (`tick_pro_id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_product_qes_ans`
--
ALTER TABLE `tbl_product_qes_ans`
  MODIFY `pro_qes_ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_public_feedback`
--
ALTER TABLE `tbl_public_feedback`
  MODIFY `sender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_qes_ans_votes`
--
ALTER TABLE `tbl_qes_ans_votes`
  MODIFY `qes_ans_vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_review_votes`
--
ALTER TABLE `tbl_review_votes`
  MODIFY `review_vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stock_list`
--
ALTER TABLE `tbl_stock_list`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_ticket_product`
--
ALTER TABLE `tbl_ticket_product`
  MODIFY `tick_pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
