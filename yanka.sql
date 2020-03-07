-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 04, 2019 at 12:22 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rnbazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@admin.com', 'dipl@12345'),
(2, 'admin1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
CREATE TABLE IF NOT EXISTS `advertise` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `company` varchar(2000) NOT NULL,
  `orgsize` varchar(1000) DEFAULT NULL,
  `turnover` varchar(2000) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assign_executive`
--

DROP TABLE IF EXISTS `assign_executive`;
CREATE TABLE IF NOT EXISTS `assign_executive` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `del_id` int(11) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assign_serviceprovider`
--

DROP TABLE IF EXISTS `assign_serviceprovider`;
CREATE TABLE IF NOT EXISTS `assign_serviceprovider` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review_image` varchar(2000) NOT NULL,
  `blogger_name` varchar(150) NOT NULL,
  `description_sort` text NOT NULL,
  `description_detl` text NOT NULL,
  `total_comments` int(11) NOT NULL,
  `date_today` varchar(100) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_logo`
--

DROP TABLE IF EXISTS `brand_logo`;
CREATE TABLE IF NOT EXISTS `brand_logo` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(2000) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `display` int(11) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_image` varchar(150) NOT NULL,
  `cat_meta_title` text,
  `cat_meta_keyword` text,
  `cat_meta_desc` text,
  `cat_image_alt` text,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`, `cat_meta_title`, `cat_meta_keyword`, `cat_meta_desc`, `cat_image_alt`) VALUES
(1, 'Men', '90658a72d5ef3cc391598662f5194af2.jpg', NULL, NULL, NULL, NULL),
(2, 'Women', '98af9ec6c234ed69108235653b9f055c.jpg', NULL, NULL, NULL, NULL),
(3, 'Baby & Kids', 'c0cbed0579b978845b8a400736e5dc1d.jpg', NULL, NULL, NULL, NULL),
(4, 'Home & Furniture', 'd539aafbb0b0bf811063f6277c9c97ec.jpg', NULL, NULL, NULL, NULL),
(5, 'Sports & Books', 'cf3027b700180a53838eb1db7c6c6b81.jpg', NULL, NULL, NULL, NULL),
(6, 'Electronics', '4a4b8c532c27b57785f6d00f54950df3.jpg', NULL, NULL, NULL, NULL),
(7, 'TVs & Appliances', 'b69a66f536722860fe324d31c43efb95.jpg', NULL, NULL, NULL, NULL),
(8, 'Video Games', '7fe325de6cc7fbe4ede42ffdf04db471.jpg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupen`
--

DROP TABLE IF EXISTS `coupen`;
CREATE TABLE IF NOT EXISTS `coupen` (
  `coupen_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupen_amount` varchar(2000) NOT NULL,
  `coupen_code` varchar(2000) NOT NULL,
  `apply_amount` varchar(1000) NOT NULL,
  PRIMARY KEY (`coupen_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupen`
--

INSERT INTO `coupen` (`coupen_id`, `coupen_amount`, `coupen_code`, `apply_amount`) VALUES
(7, '10', 'RNBZ123', '200');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_executive`
--

DROP TABLE IF EXISTS `delivery_executive`;
CREATE TABLE IF NOT EXISTS `delivery_executive` (
  `del_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` bigint(15) NOT NULL,
  PRIMARY KEY (`del_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

DROP TABLE IF EXISTS `featured_products`;
CREATE TABLE IF NOT EXISTS `featured_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hot_deals`
--

DROP TABLE IF EXISTS `hot_deals`;
CREATE TABLE IF NOT EXISTS `hot_deals` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `made_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hot_deals`
--

INSERT INTO `hot_deals` (`h_id`, `item_id`, `made_date_time`) VALUES
(17, 18, '2019-04-17 09:55:35'),
(14, 29, '2019-04-17 09:55:25'),
(16, 27, '2019-04-17 09:55:32'),
(15, 28, '2019-04-17 09:55:29'),
(18, 17, '2019-04-17 09:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_image` varchar(2000) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `offer_price` varchar(2000) DEFAULT NULL,
  `offer_link` text,
  PRIMARY KEY (`offer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `offer_image`, `title`, `offer_price`, `offer_link`) VALUES
(6, '4079a68fdb6aa2dca6a8f894958aed55.jpg', '', '', NULL),
(7, 'e4fb7c9897bf62a9af5bbd594d08dccc.jpg', '', '', NULL),
(9, '2ce5afa2a4953bf9cf9201b774ac81f0.jpg', '', '', NULL),
(10, 'c190f94d7ed5fd15394a3d6c13b386c5.jpg', '', '', 'http://localhost/rnbazar/site/subSubProductsCategory/9');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `order_no` varchar(100) NOT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT '0',
  `order_amt` int(11) NOT NULL,
  `coupen_amt` text,
  `delivery_charge` text,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `courier` text,
  `tracking_number` text,
  `address_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `order_deliv_time` varchar(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `payment_id`, `order_no`, `order_status`, `order_amt`, `coupen_amt`, `delivery_charge`, `user_id`, `user_name`, `courier`, `tracking_number`, `address_id`, `order_date`, `order_time`, `order_deliv_time`, `created_on`) VALUES
(1, 4, 'Order110:55:45', 1, 1284, '10', '50', 1, 'Goutam Hebbar', NULL, '', 66, '2019-06-26', '10:55:45', '26-06-2019', '2019-06-26 05:53:08'),
(2, 5, 'Order110:56:27', 3, 1284, '10', '50', 1, 'Goutam Hebbar', NULL, '', 67, '2019-06-26', '10:56:27', '26-06-2019', '2019-06-26 05:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `size`, `qty`) VALUES
(1, 1, 42, NULL, 1),
(2, 2, 42, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
CREATE TABLE IF NOT EXISTS `otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(200) NOT NULL,
  `otp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `mobile`, `otp`, `status`) VALUES
(1, '1234567890', 5602, 0),
(2, '1234567894', 9995, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `txn_id` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `amount`, `payment_date`, `payment_status`, `txn_id`, `created_on`) VALUES
(1, 1, 2518, '2019-06-26', 1, 'f98d899a97c1818d78de', '2019-06-26 05:12:34'),
(2, 1, 1274, '2019-06-26', 1, '96dffa621d4b707e57d4', '2019-06-26 05:14:40'),
(3, 1, 1284, '2019-06-26', 1, '25f8c4cd50f1d2e81622', '2019-06-26 05:18:13'),
(4, 1, 1284, '2019-06-26', 1, '25f8c4cd50f1d2e81622', '2019-06-26 05:25:45'),
(5, 1, 1284, '2019-06-26', 1, 'e651bf30ec63db45e12e', '2019-06-26 05:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

DROP TABLE IF EXISTS `pincode`;
CREATE TABLE IF NOT EXISTS `pincode` (
  `pincode_id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode_number` int(11) DEFAULT NULL,
  `pincode_days` text,
  `pincode_amount` text,
  PRIMARY KEY (`pincode_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`pincode_id`, `pincode_number`, `pincode_days`, `pincode_amount`) VALUES
(3, 576211, '7', '50'),
(4, 576812, '4', '100'),
(5, 560070, '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `sub_sub_id` int(11) NOT NULL,
  `small_desc` varchar(5000) NOT NULL,
  `availability` int(11) NOT NULL,
  `cash_on_delivery` varchar(10) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` varchar(11) DEFAULT NULL,
  `weight` varchar(2000) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `product_code` text,
  `offer` varchar(2000) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `most_viewed` varchar(10) DEFAULT NULL,
  `onsale_product` varchar(10) DEFAULT NULL,
  `new_arrivals` varchar(10) DEFAULT NULL,
  `bestseller` varchar(15) DEFAULT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_desc` text,
  `image_alt` text,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `vendor_id`, `item_name`, `cat_id`, `sub_cat_id`, `sub_sub_id`, `small_desc`, `availability`, `cash_on_delivery`, `image`, `created_on`, `quantity`, `weight`, `price`, `product_code`, `offer`, `status`, `most_viewed`, `onsale_product`, `new_arrivals`, `bestseller`, `meta_title`, `meta_keyword`, `meta_desc`, `image_alt`) VALUES
(17, NULL, 'Ladies stylish top', 2, 21, 41, 'Ladies stylish top in red white combine ', 1, 'Yes', '8f53a39e4ba38f9f718ae33ba8372f71.jpg', '2018-12-18 08:18:50', '', '', 699, NULL, '549', 1, 'yes', 'yes', 'yes', 'no', NULL, NULL, NULL, NULL),
(18, NULL, 'Ladies top styyyyyy', 2, 21, 41, 'ladies stylish top blue white combination', 1, 'Yes', '4761cefe2047d0fe142fc347986ef1ee.jpg', '2019-04-04 03:55:38', '0', '', 699, NULL, '529', 1, 'yes', 'yes', 'yes', 'yes', NULL, NULL, NULL, NULL),
(27, 1, 'Vendor Product', 5, 18, 40, '<p>Test</p>\r\n', 1, 'Yes', 'c63ba7876d5983fb33a04854619d4233.jpg', '2019-05-21 12:15:49', '20', '1234', 1234, 'pr1234', '', 1, 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(28, 1, 'ccs', 5, 18, 40, '<p>sssc</p>\r\n', 1, 'Yes', '6fb679ac4eca9720aa05a5cbea25778a.jpg', '2019-04-22 09:45:28', '11', '123', 12345678, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, 'vfvfvfv', 5, 18, 40, '<p>vvfvf</p>\r\n', 1, 'Yes', '1e5e2cc19ee01a65fe32a2d0944df640.jpg', '2019-05-22 04:06:59', '11', '123', 1234567, 'cdcdcdc', '', 1, 'no', 'no', 'no', 'no', '', '', '', 'sports book'),
(42, NULL, 'New Men Watch', 1, 4, 4, '<p>test</p>\r\n', 1, 'Yes', '6be93781ec77044506e7d7377e16849d.jpg', '2019-06-26 05:26:27', '14', '', 1234, '123456new', '', 1, 'no', 'no', 'no', 'no', '', '', '', ''),
(43, NULL, 'New watch sonata', 1, 4, 3, '<p>Test</p>\r\n', 1, 'Yes', '0df0ad779435c1f1c4927b2c645b23aa.jpg', '2019-05-02 05:41:39', '12', '', 2345, '123456', '', 1, 'no', 'no', 'no', 'no', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
CREATE TABLE IF NOT EXISTS `productimages` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`image_id`, `path`, `p_id`) VALUES
(22, '641786a17fd071bc7d06eafba73c5e87.jpg', 9),
(23, 'c6faefa23645e2941ecd0595b36f7568.jpg', 9),
(7, 'c2846b2e533faba5b66ecc7d6efc630f.jpg', 10),
(8, '8107973eac283ed0c87ce701255f324e.jpg', 10),
(11, 'ee60f86774c8221049afde4431314ce6.jpg', 9),
(16, 'cd42048d7eaa4f3b59f4830d67b5c80c.jpg', 7),
(17, 'c9c1cd400517d52a94749076e6171931.jpg', 7),
(18, '75b5f05dbefa59c1d14568f95e99f16d.jpg', 7),
(19, 'b88f48384524b4dca382d630ed2a4ddf.jpg', 6),
(20, '82b864380cec58e5aa48a6167e0064df.jpg', 6),
(21, 'f0a56b854ef57510889e982825f08ea3.jpg', 6),
(24, '', 7),
(31, '49e56924f1737202ee6569b05e306685.jpg', 8),
(27, 'c20be06f341b81b05b556cdab8a93124.jpg', 8),
(29, 'd1ec74078df416c6d6321b08dcebcbe2.jpg', 8),
(34, '6654df8f4d09c74a9a88c39929a7ab59.jpg', 13),
(35, 'f530172753c03c48a734269cde6d4a1a.jpg', 14),
(36, '7b3c572b139e5269beca6588198ece74.jpg', 14),
(37, '00d5a8803c9e76edc686232fba9d7434.jpg', 16),
(38, '771781460885a2370bb977b1e57c213b.jpg', 16),
(39, '0c54d1d7c54f9765533bbeca009ede48.jpg', 16),
(40, '11ea052a0c00f58137aa304bbacb75b8.jpg', 17),
(41, 'e84cd7d1853820616587435ba3644c31.jpg', 17),
(42, 'b5602db6ff36deb75a57b6efd2a7e4ce.jpg', 18),
(43, 'ca153464e9a172f303301a5ed171bd8a.jpg', 18),
(44, '1a705e88c8771ebe2fd82114fcc2251e.jpg', 18),
(45, 'd613b4000b5bf85dd4625c85e5e62925.jpg', 18),
(46, '513937544f89f7b0c256a23ef4280678.jpg', 19),
(48, 'ae7680166df303d263dd09ffdcd51ea7.jpg', 20),
(49, 'f60fb3874eb83459cdb51514bcad3370.jpg', 20),
(50, '09eed487572d4ec41e7df534091a330a.jpg', 21),
(51, '9155599de1e49b5a7ac6354404b38982.jpg', 21),
(52, '998933336e283f3f1e90f26b706ccde6.jpg', 19),
(53, 'cfe4d3153df00029642d1f7d7264addd.jpg', 22),
(54, '2293b83de976b4304b89ceb7e89b8168.jpg', 22),
(55, 'cc82378592c47c9e526b903b769d38ec.jpg', 18),
(56, '984d1c33c594370a6e7e4e174d93cc90.jpg', 18),
(57, 'db2708399fa0776c5adc06ed77e26a1c.jpg', 18),
(58, 'b65562f7fbe719dad07c1b6e32cd06bd.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `product_iteanary_details`
--

DROP TABLE IF EXISTS `product_iteanary_details`;
CREATE TABLE IF NOT EXISTS `product_iteanary_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `long_desc` text,
  `additional` text,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `image5` varchar(100) DEFAULT NULL,
  `image6` varchar(100) DEFAULT NULL,
  `image7` varchar(100) DEFAULT NULL,
  `image8` varchar(100) DEFAULT NULL,
  `image9` varchar(100) DEFAULT NULL,
  `image10` varchar(100) DEFAULT NULL,
  `image11` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_iteanary_details`
--

INSERT INTO `product_iteanary_details` (`id`, `item_id`, `long_desc`, `additional`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `image11`) VALUES
(1, 4, NULL, NULL, '9a192b62d52120692c6c026b6734b7300.jpg', '9a192b62d52120692c6c026b6734b7301.jpg', '9a192b62d52120692c6c026b6734b7302.jpg', '9a192b62d52120692c6c026b6734b7303.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
CREATE TABLE IF NOT EXISTS `product_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(500) NOT NULL,
  `size_qty` text,
  `type` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`size_id`, `size`, `size_qty`, `type`, `product_id`) VALUES
(4, 'XS', '10', 'Clothing', 17),
(5, 'XL', '0', 'Clothing', 17),
(6, 'S', '0', 'Clothing', 17),
(7, 'XS', '6', 'Clothing', 27),
(8, 'S', '1', '', 27),
(9, 'M', '2', '', 27);

-- --------------------------------------------------------

--
-- Table structure for table `pro_keyword`
--

DROP TABLE IF EXISTS `pro_keyword`;
CREATE TABLE IF NOT EXISTS `pro_keyword` (
  `pro_keyword_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `pro_keyword` text NOT NULL,
  PRIMARY KEY (`pro_keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommended`
--

DROP TABLE IF EXISTS `recommended`;
CREATE TABLE IF NOT EXISTS `recommended` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommended`
--

INSERT INTO `recommended` (`r_id`, `item_id`) VALUES
(6, 29);

-- --------------------------------------------------------

--
-- Table structure for table `referral_order`
--

DROP TABLE IF EXISTS `referral_order`;
CREATE TABLE IF NOT EXISTS `referral_order` (
  `ref_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_order_status` int(11) NOT NULL DEFAULT '1',
  `user_id` text,
  `user_mobile` text,
  `user_name` text,
  `ref_product_id` text,
  `ref_product_name` text,
  `ref_product_image` text,
  `ref_purchase_qty` text,
  `ref_pincode` text,
  `ref_address_line` text,
  `ref_order_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ref_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral_order`
--

INSERT INTO `referral_order` (`ref_order_id`, `ref_order_status`, `user_id`, `user_mobile`, `user_name`, `ref_product_id`, `ref_product_name`, `ref_product_image`, `ref_purchase_qty`, `ref_pincode`, `ref_address_line`, `ref_order_date`) VALUES
(1, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'Jp nagar 2nd phase,\r\nnear gopalan innovation mall,\r\nbangalore', '2019-04-30 17:01:03'),
(2, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'test address', '2019-05-16 11:15:35'),
(3, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'vrvrvrvr', '2019-05-16 11:16:06'),
(4, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'ssxs', '2019-05-16 11:24:02'),
(5, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'dcdcddc', '2019-05-16 11:30:09'),
(6, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'dcdcd', '2019-05-16 11:34:12'),
(7, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'ydfyhdfh', '2019-05-16 11:35:16'),
(8, 1, '1', '8310040434', 'Goutam Hebbar', '2', 'Referral product 1', 'car1.jpg', '1', '576211', 'cdcd', '2019-05-16 11:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `refmoreimages`
--

DROP TABLE IF EXISTS `refmoreimages`;
CREATE TABLE IF NOT EXISTS `refmoreimages` (
  `ref_more_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_p_id` int(11) DEFAULT NULL,
  `ref_path` text,
  PRIMARY KEY (`ref_more_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refmoreimages`
--

INSERT INTO `refmoreimages` (`ref_more_id`, `ref_p_id`, `ref_path`) VALUES
(5, 2, '774e8c405a69194468229a26fcf28748.jpg'),
(2, 3, '1ee41495d701a9f2d95f1f88ad436b13.jpg'),
(3, 3, '2a8bc796c02cc46505ab82b6617e5a00.jpg'),
(4, 3, '2b3bca2ffca7f8e803fb8e1dea4b5e91.jpg'),
(6, 2, '930a1028df4e76183f324a76ad6f8e1c.jpeg'),
(7, 2, '4232eb4771fcbccad089f410031c976b.jpg'),
(8, 3, 'banner3.jpg'),
(9, 3, 'banner4.jpg'),
(10, 3, 'book.jpg'),
(11, 3, 'ESPRESSOBAR.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ref_product`
--

DROP TABLE IF EXISTS `ref_product`;
CREATE TABLE IF NOT EXISTS `ref_product` (
  `ref_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_product_name` text,
  `ref_product_image` text,
  `ref_product_desc` text,
  `ref_product_qty` text,
  `ref_product_available` text,
  PRIMARY KEY (`ref_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_product`
--

INSERT INTO `ref_product` (`ref_product_id`, `ref_product_name`, `ref_product_image`, `ref_product_desc`, `ref_product_qty`, `ref_product_available`) VALUES
(2, 'Referral product 1', 'car1.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '9', '1'),
(3, 'Referral product 2', 'tab.jpg', '<p style=\"text-align:justify\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '9', '1');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(30000) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `item_id` varchar(30) NOT NULL,
  `date_added` varchar(50) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review`, `user_id`, `item_id`, `date_added`) VALUES
(1, 'nice', '8', '0', '2018-10-28 05:13:56 '),
(2, 'nice', '8', '0', '2018-10-28 05:14:16 '),
(3, 'test', '1', '0', '2018-11-14 09:47:34 '),
(4, 'test review', '1', '0', '2018-11-14 09:48:41 '),
(5, 'test', '1', '0', '2018-11-14 09:51:01 '),
(6, 'test', '1', '10', '2018-11-14 09:53:23 '),
(7, 'test', '10', '21', '2018-11-16 08:37:07 '),
(8, 'test', '10', '21', '2018-11-30 11:45:30 ');

-- --------------------------------------------------------

--
-- Table structure for table `session_table`
--

DROP TABLE IF EXISTS `session_table`;
CREATE TABLE IF NOT EXISTS `session_table` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(2000) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_image`, `title`, `description`) VALUES
(13, '5ec409014798f2e3974fabf1dd405c2c.jpg', '', ''),
(12, '00dbd66ced9912bfe1b17d1f5a7d8de1.png', '', ''),
(11, 'abed0d0466be0a885b6f4763b2f97645.jpg', '', ''),
(10, '0efb0b024d5a2579b32426a7fefb68af.jpg', '', ''),
(15, '376e160588f614aee763095dd8fc74ff.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subadmin`
--

DROP TABLE IF EXISTS `subadmin`;
CREATE TABLE IF NOT EXISTS `subadmin` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) NOT NULL,
  `username` varchar(2000) NOT NULL,
  `password` varchar(2000) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subadmin`
--

INSERT INTO `subadmin` (`sub_id`, `name`, `username`, `password`) VALUES
(1, 'RNBAZAR SubAdmin', 'rnbazar@subadmin.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_email` text NOT NULL,
  PRIMARY KEY (`subscriber_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`subscriber_id`, `sub_email`) VALUES
(3, 'goutamhebbar3@gmail.com'),
(4, 'goutamhebbar@gmail.com'),
(5, 'mkmkkk@hbhhbbbh'),
(6, 'kmmkk@jnj');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(100) NOT NULL,
  `sub_cat_img` text,
  `sub_cat_meta_title` text,
  `sub_cat_meta_keyword` text,
  `sub_cat_meta_desc` text,
  `sub_cat_image_alt` text,
  PRIMARY KEY (`sub_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_cat_id`, `cat_id`, `sub_cat_name`, `sub_cat_img`, `sub_cat_meta_title`, `sub_cat_meta_keyword`, `sub_cat_meta_desc`, `sub_cat_image_alt`) VALUES
(1, 1, 'Footwear', 'cbfa81b7949a8f0c041ee9dabe8767e1.jpg', NULL, NULL, NULL, NULL),
(2, 1, 'Top wear', '9455455268dd87af76e022f195c90a5e.jpg', NULL, NULL, NULL, NULL),
(3, 1, 'Sports Wear', 'a762497689a2457a088577705c52f630.jpg', NULL, NULL, NULL, NULL),
(4, 1, 'Watches', '774e8c405a69194468229a26fcf28748.jpg', NULL, NULL, NULL, NULL),
(6, 2, 'Western wear', '930a1028df4e76183f324a76ad6f8e1c.jpeg', NULL, NULL, NULL, NULL),
(7, 2, 'Ethinic Wear', 'b2b7630eed6b385128e9de4bb8c1b2c1.jpg', NULL, NULL, NULL, NULL),
(8, 2, 'Sports Wear', 'e9dad36bc588298315f1f8007af6d153.jpg', NULL, NULL, NULL, NULL),
(9, 2, 'Jewellery', '2c8540ce8c5be287867b372382562eb2.jpeg', NULL, NULL, NULL, NULL),
(10, 3, 'Boy\'s Clothing', '16266f7f84f7a319797511e3f0f66839.jpg', NULL, NULL, NULL, NULL),
(11, 3, 'Girl\'s Clothing', '09a303f32f88806d785174e1c6e04d8f.jpg', NULL, NULL, NULL, NULL),
(12, 3, 'Footwear', '7976bfd919bc37fade9b89248aadc0e0.jpg', NULL, NULL, NULL, NULL),
(13, 3, 'Toys', 'a377b106c2b6c57e229e9bd1395211d7.jpg', NULL, NULL, NULL, NULL),
(14, 4, 'Kitchen', '1db967ddbaa1c032a9def482d178bbb6.jpg', NULL, NULL, NULL, NULL),
(15, 4, 'Furniture', 'b2adc4f1a34af89d254a42d49bfd4176.jpg', NULL, NULL, NULL, NULL),
(16, 4, 'Dining', 'd8b2d7a9043f425229f8cc4f8fed03ba.jpg', NULL, NULL, NULL, NULL),
(17, 4, 'Lighting', '6173a20bf8d35ada927313c5fd189533.jpg', NULL, NULL, NULL, NULL),
(18, 5, 'Books', 'b286c7eec60e8d88d520feff0d36f603.jpg', NULL, NULL, NULL, NULL),
(19, 5, 'Sports', '6249a9da801d60348f782216047a6e03.jpg', NULL, NULL, NULL, NULL),
(20, 5, 'Music', '2a8bc796c02cc46505ab82b6617e5a00.jpg', NULL, NULL, NULL, NULL),
(21, 2, 'Top', 'da21c3021ea9c1c2c7ff4f8a3d22f00e.jpg', NULL, NULL, NULL, NULL),
(24, 11, 'new testone', '2b3bca2ffca7f8e803fb8e1dea4b5e91.jpg', '', '', '', ''),
(23, 11, 'Sub Test', '52c4465a61543e8b34a61075c18ffd0b.jpg', 'test sub', '<p>test sub</p>\r\n', '<p>new test sub</p>\r\n', 'test sub');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_category`
--

DROP TABLE IF EXISTS `sub_sub_category`;
CREATE TABLE IF NOT EXISTS `sub_sub_category` (
  `sub_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_cat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_sub_name` varchar(509) NOT NULL,
  `sub_sub_cat_meta_title` text,
  `sub_sub_cat_meta_keyword` text,
  `sub_sub_cat_meta_desc` text,
  `sub_sub_cat_image_alt` text,
  PRIMARY KEY (`sub_sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_sub_category`
--

INSERT INTO `sub_sub_category` (`sub_sub_id`, `sub_cat_id`, `cat_id`, `sub_sub_name`, `sub_sub_cat_meta_title`, `sub_sub_cat_meta_keyword`, `sub_sub_cat_meta_desc`, `sub_sub_cat_image_alt`) VALUES
(1, 4, 1, 'Fastrack', NULL, NULL, NULL, NULL),
(2, 4, 1, 'Casio', NULL, NULL, NULL, NULL),
(3, 4, 1, 'Titan', NULL, NULL, NULL, NULL),
(4, 4, 1, 'Sonata', NULL, NULL, NULL, NULL),
(5, 3, 1, 'Track Pants', NULL, NULL, NULL, NULL),
(6, 3, 1, 'Track Suits', NULL, NULL, NULL, NULL),
(7, 2, 1, 'T-Shirts', NULL, NULL, NULL, NULL),
(8, 2, 1, 'Shirts', NULL, NULL, NULL, NULL),
(9, 1, 1, 'Sports Shoe', NULL, NULL, NULL, NULL),
(10, 1, 1, 'Casual Shoes', NULL, NULL, NULL, NULL),
(11, 9, 2, 'Precious Jewellery', NULL, NULL, NULL, NULL),
(12, 9, 2, 'Silver Jewellery', NULL, NULL, NULL, NULL),
(13, 8, 2, 'Track Suits', NULL, NULL, NULL, NULL),
(14, 8, 2, 'Track Pants', NULL, NULL, NULL, NULL),
(15, 7, 2, 'Sarees', NULL, NULL, NULL, NULL),
(16, 7, 2, 'Kurtas', NULL, NULL, NULL, NULL),
(17, 6, 2, 'Dresses', NULL, NULL, NULL, NULL),
(18, 6, 2, 'Jeans', NULL, NULL, NULL, NULL),
(19, 13, 3, 'Remote Control Toys', NULL, NULL, NULL, NULL),
(20, 13, 3, 'Educational Toys', NULL, NULL, NULL, NULL),
(21, 12, 3, 'Sandals', NULL, NULL, NULL, NULL),
(22, 12, 3, 'Shoes', NULL, NULL, NULL, NULL),
(23, 11, 3, 'Skirts', NULL, NULL, NULL, NULL),
(24, 11, 3, 'Ethinic Wears', NULL, NULL, NULL, NULL),
(25, 10, 3, 'T-Shirts', NULL, NULL, NULL, NULL),
(26, 10, 3, 'Ethinic Wears', NULL, NULL, NULL, NULL),
(27, 17, 4, 'Smart Lighting', NULL, NULL, NULL, NULL),
(28, 17, 4, 'LED & LCD', NULL, NULL, NULL, NULL),
(29, 16, 4, 'Coffe Mugs', NULL, NULL, NULL, NULL),
(30, 16, 4, 'Dinnerwear', NULL, NULL, NULL, NULL),
(31, 15, 4, 'Beds', NULL, NULL, NULL, NULL),
(32, 15, 4, 'Sofas', NULL, NULL, NULL, NULL),
(33, 14, 4, 'Kitchen Tools', NULL, NULL, NULL, NULL),
(34, 14, 4, 'Gas Stoves', NULL, NULL, NULL, NULL),
(35, 20, 5, 'International Music', NULL, NULL, NULL, NULL),
(36, 20, 5, 'Bollywood Music', NULL, NULL, NULL, NULL),
(37, 19, 5, 'Cricket', NULL, NULL, NULL, NULL),
(38, 19, 5, 'Football', NULL, NULL, NULL, NULL),
(39, 18, 5, 'Academic', NULL, NULL, NULL, NULL),
(40, 18, 5, 'Chlidren', NULL, NULL, NULL, NULL),
(41, 21, 2, 'top', NULL, NULL, NULL, NULL),
(44, 23, 11, 'Test Sub Sub Cat', 'Test Sub Sub Cat', '<p>Test Sub Sub Cat</p>\r\n', '<p>Test Sub Sub Cat</p>\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testinomial`
--

DROP TABLE IF EXISTS `testinomial`;
CREATE TABLE IF NOT EXISTS `testinomial` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review_image` varchar(2000) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `mobile` varchar(2000) DEFAULT NULL,
  `password` varchar(50) NOT NULL DEFAULT '12345678',
  `flag` tinyint(4) NOT NULL COMMENT '0 - Not Verified,1 - live,2 - blocked',
  `my_referral_id` varchar(5000) DEFAULT NULL,
  `my_refferer_id` text,
  `ref_count_for_order` varchar(2000) DEFAULT '0',
  `user_created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `referral` (`my_referral_id`(30))
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `fullname`, `mobile`, `password`, `flag`, `my_referral_id`, `my_refferer_id`, `ref_count_for_order`, `user_created_on`) VALUES
(1, 'goutamhebbar3@gmail.com', 'Goutam Hebbar', '8310040434', '123456', 1, 'RNB9985', '', '4', NULL),
(2, 'krishna.becse@gmail.com', 'Krishna Bhagodikar', '9901547182', '123456', 1, 'RNB2274', 'RNB9985', '1', NULL),
(3, 'siva@gmail.com', 'Siva karunakaran', '8682828011', '123456', 1, 'RNB8284', 'RNB2274', '0', NULL),
(4, 'riya@gmail.com', 'Riya', '9446628643', '123456', 1, 'RNB5203', 'RNB9985', '0', NULL),
(14, 'q23@gmail.com', 'goutam test', '1234567894', '123456', 1, 'RNB7440', 'RNB9985', '0', '2019-05-16 17:18:53'),
(13, 'q@gmail.com', 'test for update', '1234567890', '123456', 1, 'RNB7797', 'RNB9985', '0', '2019-05-16 17:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_line` varchar(500) NOT NULL,
  `area` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` int(6) NOT NULL,
  `latlng` varchar(5000) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`address_id`, `address_line`, `area`, `city`, `landmark`, `type`, `user_id`, `state`, `pincode`, `latlng`) VALUES
(1, '#12 Jyothi Apartment, \r\n2nd Cross,3rd Main,\r\nNagharbhavi, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, 'Karnataka', 123456789, ''),
(2, 'v\r\n12345678', 'v', 'v', '12345678', 'home', 2, 'Andhra Pradesh', 353554, ''),
(3, '#112, Siri Apartment, \r\n2nd cross,\r\nJp Nagar 3rd Phase,\r\nbangalore\r\n', 'v', 'v', '12345678', 'home', 3, 'Andhra Pradesh', 353554, ''),
(4, 'jp nagar', 'jp nagar', 'Bengaluru', 'School', 'home', 4, 'Andhra Pradesh', 123456789, ''),
(5, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, 'Karnataka', 123456789, ''),
(6, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, 'Karnataka', 123456789, ''),
(7, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, 'Karnataka', 123456789, ''),
(8, 'v\r\n12345678', 'v', 'v', '12345678', 'home', 5, 'Andhra Pradesh', 353554, ''),
(9, 'bhkavb', '', 'birbhu,m', 'opt mas', 'home', 8, 'West Bengal', 342567, ''),
(10, 'SALAM COMPUTER,  VILL GORIBTOLA.,PO-KADAMTALA, PS-SUTI, DIST -MURSHIDABAD,  SANKARPUR VDO TALA, KASHIMNAGAR ', 'Sankarpur VDO TALA', 'DHULIAN ', 'Kadamtala ', 'home', 9, 'West Bengal', 742224, ''),
(11, 'bhkavb', '', 'birbhu,m', 'opt mas', 'home', 8, 'West Bengal', 342567, ''),
(12, 'bhkavb', '', 'birbhu,m', 'opt mas', 'home', 8, 'West Bengal', 342567, ''),
(13, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(14, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(15, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(16, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(17, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(18, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(19, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, 'Karnataka', 560070, ''),
(20, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(21, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(22, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 0, NULL, 576211, ''),
(23, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(24, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(25, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576812, ''),
(26, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(27, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(28, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(29, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(30, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(31, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(32, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(33, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(34, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(35, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(36, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576812, ''),
(37, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(38, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(39, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(40, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(41, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(42, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(43, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(44, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576812, ''),
(45, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(46, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(47, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(48, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 10, NULL, 576211, ''),
(49, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'JP Nagar, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 12, NULL, 560070, '12.910491,77.5857168'),
(50, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 560070, '12.9254533,77.54675700000007'),
(51, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(52, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(53, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576812, '12.9254533,77.54675700000007'),
(54, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576812, '12.9254533,77.54675700000007'),
(55, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(56, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(57, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(58, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(59, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(60, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(61, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576812, '12.9254533,77.54675700000007'),
(62, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(63, 'Banashankari Stage II, Banashankari, Bengaluru, Karnataka, India', 'Banashankari, Bengaluru, Karnataka, India', 'Bengaluru', 'Karnataka', 'home', 35, NULL, 576211, '12.9254533,77.54675700000007'),
(64, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, NULL, 576211, ''),
(65, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, NULL, 576211, ''),
(66, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, NULL, 576211, ''),
(67, '#20, Dhatri Apartment\r\n2nd Cross,3rd Main,\r\nSrinagar, Bangalore', 'jp nagar', 'Bengaluru', 'School', 'home', 1, NULL, 576211, '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(400) NOT NULL,
  `about_vendor` varchar(2000) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `bank_name` varchar(3000) DEFAULT NULL,
  `account` varchar(3000) DEFAULT NULL,
  `ifsc` varchar(2000) DEFAULT NULL,
  `pan_name` varchar(2000) DEFAULT NULL,
  `pan_number` varchar(1000) DEFAULT NULL,
  `gst` varchar(1000) DEFAULT NULL,
  `location` varchar(2000) NOT NULL,
  `city` varchar(2000) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `latlong` varchar(2000) NOT NULL,
  `vendor_image` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `mobile`, `about_vendor`, `address`, `bank_name`, `account`, `ifsc`, `pan_name`, `pan_number`, `gst`, `location`, `city`, `flag`, `latlong`, `vendor_image`) VALUES
(1, 'Goutam Hebbar', 'gsh@gmail.com', '123456', '8310040434', 'My self vendor', 'Jp Nagar ', 'HDFC', '1234567890123', 'IFSc123456', 'Goutam', 'PAn123456789', '123456789', 'jp Nagar', 'Bangalore', 1, '12.00012,74.12345', NULL),
(5, 'atick', 'ishahaidar5566@gmail.com', '54321', '8553583213', 'retailer', 'murarai', 'icici bank', '', 'ICIC0002019', 'AMAR SEN', 'AAAAA0000A', '23AAAAA0000A1Z9', 'Birbhum, West Bengal, India', '', 1, '23.8401675, 87.61863790000007', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

DROP TABLE IF EXISTS `vendor_details`;
CREATE TABLE IF NOT EXISTS `vendor_details` (
  `vendor_id` int(11) NOT NULL,
  `about_vendor` varchar(30000) NOT NULL,
  `vendor_image` varchar(3000) NOT NULL,
  `bank` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
