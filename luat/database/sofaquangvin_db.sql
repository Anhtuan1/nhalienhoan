-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2013 at 04:03 AM
-- Server version: 5.5.27-log
-- PHP Version: 5.3.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sofaquangvin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE IF NOT EXISTS `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `link` varchar(256) CHARACTER SET ucs2 NOT NULL,
  `images` varchar(256) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL,
  `display` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `name`, `link`, `images`, `created`, `modified`, `status`, `display`) VALUES
(25, 'cong ty abc', 'http://zing.vn', 'img/gallery/88654b0d4c2e2d7b8a4fd519f870c2b3.jpg', '2011-10-03', '2013-01-11', 0, 1),
(26, 'Sofa - ghe sofa', 'http://sofaquangvinh.vn', 'img/gallery/aed5ce1f0358efc5b80877da0fd817d8.jpg', '2011-10-03', '2013-01-11', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tt` int(10) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL,
  `name_eg` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `tt`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `name_eg`, `images`) VALUES
(204, NULL, NULL, 1, 2, 'Ảnh khánh thành dây truyền mới', '2012-05-07', '2012-06-18', 1, NULL, 'img/upload/product/2a1bd4f22b63ff775ad0cc8db96591aa.jpg'),
(206, NULL, NULL, 3, 4, 'Họp ngày 30/04/2012', '2012-05-08', '2012-06-18', 1, NULL, 'img/upload/product/102e31ae3f441fbcb391f9e5a26bcbb9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `answerquestions`
--

CREATE TABLE IF NOT EXISTS `answerquestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(256) CHARACTER SET utf8 NOT NULL,
  `address` varchar(225) CHARACTER SET utf8 NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `introduction` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `answer` text CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `images`, `created`, `status`) VALUES
(2, 'Sofa - ghe sofa - gh? sofa - sofa dep - sofa cao cap', '', '2013-01-05 08:54:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tt` int(10) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(256) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=270 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `tt`, `parent_id`, `lft`, `rght`, `name`, `name_en`, `created`, `modified`, `status`, `images`, `alias`) VALUES
(146, 0, NULL, 3, 4, 'GIỚI THIỆU', 'ABOUT US', '2011-09-27', '2012-11-20', 0, '', 'gioi-thieu'),
(266, NULL, NULL, 5, 6, 'Dịch vụ', '', '2012-11-20', '2013-01-11', 0, '', 'dich-vu'),
(230, NULL, NULL, 1, 2, 'Tin tức', '', '2012-09-28', '2012-12-26', 1, 'img/upload/69feff559a43cea50289310b89e28f12.jpg', 'tin-tuc'),
(269, NULL, NULL, 7, 8, 'Bản đồ', '', '2013-01-05', '2013-01-05', 1, '', 'ban-do');

-- --------------------------------------------------------

--
-- Table structure for table `catproducts`
--

CREATE TABLE IF NOT EXISTS `catproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET ucs2 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=387 ;

--
-- Dumping data for table `catproducts`
--

INSERT INTO `catproducts` (`id`, `parent_id`, `lft`, `rght`, `name`, `name_en`, `created`, `modified`, `status`, `char`, `images`, `alias`, `order`) VALUES
(144, NULL, 1, 12, 'Danh mục sản phẩm', '', '2012-10-12', '2012-11-27 18:40:31', 1, NULL, '', 'danh-muc-san-pham', NULL),
(380, 144, 4, 5, 'Sofa Góc', 'Sofa Goc', '2013-01-13', '2013-01-15 03:45:18', 1, NULL, '', 'sofa-goc', 2),
(385, 144, 8, 9, 'Sofa Văn Phòng', 'Sofa van phong', '2013-01-14', '2013-01-15 03:46:13', 1, NULL, '', 'sofa-van-phong', 4),
(386, 144, 10, 11, 'Sofa Đã Sản Xuất', 'Sofa da san xuat', '2013-01-14', '2013-01-15 03:46:40', 1, NULL, '', 'sofa-da-san-xuat', 5),
(374, 144, 2, 3, 'Sofa Đẹp', '', '2013-01-05', '2013-01-15 03:44:54', 1, NULL, '', 'sofa-dep', 1),
(383, 144, 6, 7, 'Sofa Gia Đình', 'Sofa gia dinh', '2013-01-13', '2013-01-15 03:46:00', 1, NULL, '', 'sofa-gia-dinh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `id_news` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `baiviet` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `name`, `content`, `id_news`, `user_id`, `email`, `created`, `status`, `baiviet`) VALUES
(67, '', 'Nguyễn hải', 'Chất lượng moto rất tốt', 0, 0, 'hai@gmail.com', '2012-07-26 01:25:36', 1, NULL),
(68, '', 'Nguyễn Thanh Tùng', 'Tôi muốn mua xe iata xin hướng dẫn cho tôi', 0, 0, 'nt2ungvn@gmail.com', '2012-07-26 01:38:49', 1, NULL),
(78, '', 'Nguyễn Anh Tuấn', 'Sản phẩm mới', 0, 0, 'anhtuan16081989@yahoo.com', '2012-11-21 10:33:21', 1, '422'),
(75, '', 'Anh tuan', 'Sản phẩm này có giá bao nhiêu?', 0, 0, 'anhtuan16081989@gmail.com', '2012-11-20 11:23:56', 1, '416');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `content_send` text,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `fax`, `company`, `title`, `content`, `content_send`, `created`, `modified`, `status`) VALUES
(4, 'Nguyễn Văn Công', 'cong-nguyen@vtmgroup.com.vn', '01688504263', '09487547584', 'Công ty abc', 'Chúc may mắn', 'dang test mail', '<p>\r\n	you are me and i am you</p>\r\n', '2011-07-04', '2011-07-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(1) NOT NULL,
  `album_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `images`, `created`, `modified`, `status`, `album_id`) VALUES
(67, 'anh 4', 'img/gallery/43d68f446ea7527b3dc6daddc6dc80df.jpg', '2012-06-19', '2012-06-19', 1, 204),
(68, 'anh 5', 'img/gallery/2cf9661dce136d9f6ca6bfce24933a71.jpg', '2012-06-19', '2012-06-19', 1, 204),
(64, 'anh 3', 'img/gallery/0452ded776f37827ca4887da56816ba8.jpg', '2012-05-08', '2012-06-19', 1, 206),
(65, 'anh 2', 'img/gallery/e19281319ecba7282bcd8239287056d7.jpg', '2012-05-08', '2012-06-19', 1, 206),
(66, 'Anh dep', 'img/gallery/7db208fcf126d1bb3cfee4c6b6bacf62.jpg', '2012-05-08', '2012-06-19', 1, 206);

-- --------------------------------------------------------

--
-- Table structure for table `helps`
--

CREATE TABLE IF NOT EXISTS `helps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `user_support` varchar(200) DEFAULT NULL,
  `user_yahoo` varchar(200) DEFAULT NULL,
  `user_skype` varchar(200) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `hotline` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `user_yahoo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_yahoo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_yahoo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `helps`
--

INSERT INTO `helps` (`id`, `title`, `user_support`, `user_yahoo`, `user_skype`, `user_mobile`, `user_email`, `hotline`, `created`, `modified`, `status`, `user_yahoo1`, `user_yahoo2`, `user_yahoo3`) VALUES
(13, 'Kỹ Thuật', 'Mr Vinh', 'quangvinh_maiyeuem_911', 'quangvinh_maiyeuem_911', '0913667468', 'quangvinh.sofa@gmail.com', NULL, '2013-01-05 01:08:22', '2013-01-16 03:14:39', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `helpsd`
--

CREATE TABLE IF NOT EXISTS `helpsd` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `name1` varchar(256) CHARACTER SET utf8 NOT NULL,
  `name2` varchar(256) CHARACTER SET utf8 NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `sdt1` varchar(20) NOT NULL,
  `sdt2` varchar(20) NOT NULL,
  `yahoo` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `yahoo1` varchar(256) CHARACTER SET utf8 NOT NULL,
  `yahoo2` varchar(256) NOT NULL,
  `skype` varchar(256) DEFAULT NULL,
  `skype1` varchar(256) CHARACTER SET utf8 NOT NULL,
  `skype2` varchar(256) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `helpsd`
--

INSERT INTO `helpsd` (`id`, `name`, `name1`, `name2`, `title`, `sdt`, `sdt1`, `sdt2`, `yahoo`, `yahoo1`, `yahoo2`, `skype`, `skype1`, `skype2`, `created`, `modified`, `status`) VALUES
(22, 'Kỹ thuật 1', '', '', '', NULL, '04 38515107', '09 38515108', NULL, 'vulamnguyen', 'vulamnguyen', 'haihs26', '', '', '2011-12-06 10:08:49', '2012-06-14 10:25:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hsxes`
--

CREATE TABLE IF NOT EXISTS `hsxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET ucs2 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

--
-- Dumping data for table `hsxes`
--

INSERT INTO `hsxes` (`id`, `parent_id`, `lft`, `rght`, `name`, `name_en`, `created`, `modified`, `status`, `char`, `images`, `alias`) VALUES
(170, 145, 234, 235, 'Biotherm', '', '2012-10-12', '2012-10-12 15:11:54', 1, NULL, '', 'biotherm'),
(169, 145, 232, 233, 'Clarins', '', '2012-10-12', '2012-10-12 15:11:32', 1, NULL, '', 'clarins'),
(168, 145, 230, 231, 'Naris', '', '2012-10-12', '2012-10-12 15:11:16', 1, NULL, '', 'naris'),
(167, 145, 228, 229, 'Kose', '', '2012-10-12', '2012-10-12 15:11:01', 1, NULL, '', 'kose'),
(166, 145, 226, 227, 'Mac', '', '2012-10-12', '2012-10-12 15:10:41', 1, NULL, '', 'mac'),
(165, 145, 224, 225, 'Shiseido', '', '2012-10-12', '2012-10-12 15:10:28', 1, NULL, '', 'shiseido'),
(164, 145, 222, 223, 'Yves Saint Laurent', '', '2012-10-12', '2012-10-12 15:10:13', 1, NULL, '', 'yves-saint-laurent'),
(163, 145, 220, 221, 'Loreal', '', '2012-10-12', '2012-10-12 15:08:39', 1, NULL, '', 'loreal'),
(161, 145, 216, 217, 'Jada', '', '2012-10-12', '2012-10-12 15:08:08', 1, NULL, '', 'jada'),
(162, 145, 218, 219, 'Pola', '', '2012-10-12', '2012-10-12 15:08:50', 1, NULL, '', 'pola'),
(159, 145, 212, 213, 'Ohui', '', '2012-10-12', '2012-10-12 15:07:42', 1, NULL, '', 'ohui'),
(160, 145, 214, 215, 'Whoo', '', '2012-10-12', '2012-10-12 15:07:54', 1, NULL, '', 'whoo'),
(156, 145, 206, 207, 'Dior', '', '2012-10-12', '2012-10-12 14:19:19', 1, NULL, '', 'dior'),
(157, 145, 208, 209, 'Menard', '', '2012-10-12', '2012-10-12 14:19:30', 1, NULL, '', 'menard'),
(155, 145, 204, 205, 'Chanel', '', '2012-10-12', '2012-10-12 14:19:08', 1, NULL, '', 'chanel'),
(158, 145, 210, 211, 'Lovite', '', '2012-10-12', '2012-10-12 15:07:29', 1, NULL, '', 'lovite'),
(152, 144, 162, 183, 'Bộ quà tặng', '', '2012-10-12', '2012-10-12 14:18:30', 1, NULL, '', 'bo-qua-tang'),
(151, 144, 144, 161, 'Sản phẩm cho nam giới', '', '2012-10-12', '2012-10-12 14:18:17', 1, NULL, '', 'san-pham-cho-nam-gioi'),
(150, 144, 130, 143, 'Chăm sóc tóc', '', '2012-10-12', '2012-10-12 14:17:57', 1, NULL, '', 'cham-soc-toc'),
(149, 144, 106, 129, 'Chăm sóc cơ thể', '', '2012-10-12', '2012-10-12 14:17:49', 1, NULL, '', 'cham-soc-co-the'),
(148, 144, 96, 105, 'Nước hoa', '', '2012-10-12', '2012-10-12 14:17:36', 1, NULL, '', 'nuoc-hoa'),
(147, 144, 70, 95, 'Dưỡng da', '', '2012-10-12', '2012-10-12 14:17:28', 1, NULL, '', 'duong-da'),
(146, 144, 2, 69, 'Trang điểm', '', '2012-10-12', '2012-10-12 14:17:18', 1, NULL, '', 'trang-diem'),
(154, 144, 192, 201, 'Phụ kiện làm đẹp', '', '2012-10-12', '2012-10-12 14:18:56', 1, NULL, '', 'phu-kien-lam-dep'),
(153, 144, 184, 191, 'Thực phẩm & đồ uống', '', '2012-10-12', '2012-10-12 14:20:10', 1, NULL, '', 'thuc-pham-do-uong'),
(144, NULL, 1, 202, 'Chủng loại', '', '2012-10-12', '2012-10-12 14:16:44', 1, NULL, '', 'chung-loai'),
(145, NULL, 203, 244, 'Hãng sản xuất', '', '2012-10-12', '2012-10-12 14:17:01', 1, NULL, '', 'hang-san-xuat'),
(171, 145, 236, 237, 'Davidoof', '', '2012-10-12', '2012-10-12 15:12:11', 1, NULL, '', 'davidoof'),
(172, 145, 238, 239, 'Burberry', '', '2012-10-12', '2012-10-12 15:12:28', 1, NULL, '', 'burberry'),
(173, 145, 240, 241, 'Bvlgari', '', '2012-10-12', '2012-10-12 15:13:16', 1, NULL, '', 'bvlgari'),
(174, 145, 242, 243, 'DKNY', '', '2012-10-12', '2012-10-12 15:13:36', 1, NULL, '', 'dkny'),
(175, 146, 3, 4, 'Bộ trang điểm', '', '2012-10-12', '2012-10-12 15:15:01', 1, NULL, '', 'bo-trang-diem'),
(176, 146, 5, 20, 'Mặt', '', '2012-10-12', '2012-10-12 15:15:19', 1, NULL, '', 'mat'),
(177, 146, 21, 34, 'Mắt', '', '2012-10-12', '2012-10-12 15:15:31', 1, NULL, '', 'mat'),
(178, 146, 35, 48, 'Môi', '', '2012-10-12', '2012-10-12 15:17:57', 1, NULL, '', ''),
(179, 146, 49, 54, 'Móng', '', '2012-10-12', '2012-10-12 15:18:24', 1, NULL, '', 'mong'),
(180, 146, 55, 68, 'Cọ trang điểm', '', '2012-10-12', '2012-10-12 15:18:46', 1, NULL, '', 'co-trang-diem'),
(181, 176, 6, 7, 'Kem lót & BB Cream', '', '2012-10-12', '2012-10-12 15:22:00', 1, NULL, '', 'kem-lot-bb-cream'),
(182, 176, 8, 9, 'Kem nền & Kem hiệu chỉnh màu sắc', '', '2012-10-12', '2012-10-12 15:22:29', 1, NULL, '', 'kem-nen-kem-hieu-chinh-mau-sac'),
(183, 176, 10, 11, 'Kem che khuyết điểm', '', '2012-10-12', '2012-10-12 15:22:42', 1, NULL, '', 'kem-che-khuyet-diem'),
(184, 176, 12, 13, 'Phấn', '', '2012-10-12', '2012-10-12 15:22:59', 1, NULL, '', 'phan'),
(185, 176, 14, 15, 'Phấn má', '', '2012-10-12', '2012-10-12 15:23:12', 1, NULL, '', 'phan-ma'),
(186, 176, 16, 17, 'Highlight/ Bronzer/ Luminizer', '', '2012-10-12', '2012-10-12 15:23:45', 1, NULL, '', 'highlight-bronzer-luminizer'),
(187, 176, 18, 19, 'Sản phẩm chống bóng mặt & thấm dầu', '', '2012-10-12', '2012-10-12 15:24:17', 1, NULL, '', 'san-pham-chong-bong-mat-tham-dau'),
(188, 177, 22, 23, 'Bộ phấn mắt', '', '2012-10-12', '2012-10-12 15:24:36', 1, NULL, '', 'bo-phan-mat'),
(189, 177, 24, 25, 'Mascara', '', '2012-10-12', '2012-10-12 15:24:51', 1, NULL, '', 'mascara'),
(190, 177, 26, 27, 'Chì & bột kẻ chân mày', '', '2012-10-12', '2012-10-12 15:25:10', 1, NULL, '', 'chi-bot-ke-chan-may'),
(191, 177, 28, 29, 'Chì & kẻ mắt nước', '', '2012-10-12', '2012-10-12 15:25:36', 1, NULL, '', 'chi-ke-mat-nuoc'),
(192, 177, 30, 31, 'Che khuyết điểm', '', '2012-10-12', '2012-10-12 15:25:53', 1, NULL, '', 'che-khuyet-diem'),
(193, 177, 32, 33, 'Phấn mắt', '', '2012-10-12', '2012-10-12 15:26:09', 1, NULL, '', 'phan-mat'),
(194, 178, 36, 37, 'Bộ trang điểm môi', '', '2012-10-12', '2012-10-12 15:26:28', 1, NULL, '', 'bo-trang-diem-moi'),
(195, 178, 38, 39, 'Dưỡng môi', '', '2012-10-12', '2012-10-12 15:26:40', 1, NULL, '', 'duong-moi'),
(196, 178, 40, 41, 'Son môi', '', '2012-10-12', '2012-10-12 15:26:59', 1, NULL, '', 'son-moi'),
(197, 178, 42, 43, 'Son bóng', '', '2012-10-12', '2012-10-12 15:27:08', 1, NULL, '', 'son-bong'),
(198, 178, 44, 45, 'Chì môi', '', '2012-10-12', '2012-10-12 15:27:20', 1, NULL, '', 'chi-moi'),
(199, 178, 46, 47, 'Tẩy trang mắt môi', '', '2012-10-12', '2012-10-12 15:27:33', 1, NULL, '', 'tay-trang-mat-moi'),
(200, 179, 50, 51, 'Sơn móng', '', '2012-10-12', '2012-10-12 15:28:01', 1, NULL, '', 'son-mong'),
(201, 179, 52, 53, 'Sản phẩm dưỡng móng', '', '2012-10-12', '2012-10-12 15:28:15', 1, NULL, '', 'san-pham-duong-mong'),
(202, 180, 56, 57, 'Bộ cọ', '', '2012-10-12', '2012-10-12 15:28:34', 1, NULL, '', 'bo-co'),
(203, 180, 58, 59, 'Cọ phấn', '', '2012-10-12', '2012-10-12 15:28:55', 1, NULL, '', 'co-phan'),
(204, 180, 60, 61, 'Cọ má', '', '2012-10-12', '2012-10-12 15:29:13', 1, NULL, '', 'co-ma'),
(205, 180, 62, 63, 'Cọ mắt', '', '2012-10-12', '2012-10-12 15:29:29', 1, NULL, '', 'co-mat'),
(206, 180, 64, 65, 'Cọ môi', '', '2012-10-12', '2012-10-12 15:29:43', 1, NULL, '', 'co-moi'),
(207, 180, 66, 67, 'Nước rửa cọ', '', '2012-10-12', '2012-10-12 15:30:03', 1, NULL, '', 'nuoc-rua-co'),
(208, 147, 71, 72, 'Sữa rửa mặt & Tẩy trang', '', '2012-10-12', '2012-10-12 15:49:47', 1, NULL, '', 'sua-rua-mat-tay-trang'),
(209, 147, 73, 74, 'Nước hoa hồng & Xịt khoáng', '', '2012-10-12', '2012-10-12 15:50:10', 1, NULL, '', 'nuoc-hoa-hong-xit-khoang'),
(210, 147, 75, 76, 'Dưỡng ẩm', '', '2012-10-12', '2012-10-12 15:50:26', 1, NULL, '', 'duong-am'),
(211, 147, 77, 78, 'Đặc trị chống lão hóa', '', '2012-10-12', '2012-10-12 15:50:43', 1, NULL, '', 'dac-tri-chong-lao-hoa'),
(212, 147, 79, 80, 'Làm trắng', '', '2012-10-12', '2012-10-12 15:50:58', 1, NULL, '', 'lam-trang'),
(213, 147, 81, 82, 'Mặt nạ', '', '2012-10-12', '2012-10-12 15:51:15', 1, NULL, '', 'mat-na'),
(214, 147, 83, 84, 'Kem mắt', '', '2012-10-12', '2012-10-12 15:51:50', 1, NULL, '', 'kem-mat'),
(215, 147, 85, 86, 'Tẩy tế bào chết', '', '2012-10-12', '2012-10-12 15:52:26', 1, NULL, '', 'tay-te-bao-chet'),
(216, 147, 87, 88, 'Chăm sóc môi', '', '2012-10-12', '2012-10-12 15:52:44', 1, NULL, '', 'cham-soc-moi'),
(217, 147, 89, 90, 'Chống nắng', '', '2012-10-12', '2012-10-12 15:52:57', 1, NULL, '', 'chong-nang'),
(218, 147, 91, 92, 'Chăm sóc cho mẹ & bé', '', '2012-10-12', '2012-10-12 15:53:16', 1, NULL, '', 'cham-soc-cho-me-be'),
(219, 147, 93, 94, 'Dụng cụ chăm sóc da chuyên nghiệp', '', '2012-10-12', '2012-10-12 15:53:35', 1, NULL, '', 'dung-cu-cham-soc-da-chuyen-nghiep'),
(220, 148, 97, 98, 'Bộ quà tặng', '', '2012-10-12', '2012-10-12 15:53:57', 1, NULL, '', 'bo-qua-tang'),
(221, 148, 99, 100, 'Dành cho nữ', '', '2012-10-12', '2012-10-12 15:54:13', 1, NULL, '', 'danh-cho-nu'),
(222, 148, 101, 102, 'Dành cho nam', '', '2012-10-12', '2012-10-12 15:54:27', 1, NULL, '', 'danh-cho-nam'),
(223, 148, 103, 104, 'Dành cho trẻ em', '', '2012-10-12', '2012-10-12 15:54:39', 1, NULL, '', 'danh-cho-tre-em'),
(224, 149, 107, 108, 'Sữa tắm & Muối tắm', '', '2012-10-12', '2012-10-12 15:55:08', 1, NULL, '', 'sua-tam-muoi-tam'),
(225, 149, 109, 110, 'Dưỡng thể', '', '2012-10-12', '2012-10-12 15:55:21', 1, NULL, '', 'duong-the'),
(226, 149, 111, 112, 'Tẩy tế bào chết', '', '2012-10-12', '2012-10-12 15:55:43', 1, NULL, '', 'tay-te-bao-chet'),
(227, 149, 113, 114, 'Làm trắng da', '', '2012-10-12', '2012-10-12 15:55:55', 1, NULL, '', 'lam-trang-da'),
(228, 149, 115, 116, 'Kem, tinh dầu massage', '', '2012-10-12', '2012-10-12 15:56:21', 1, NULL, '', 'kem-tinh-dau-massage'),
(229, 149, 117, 118, 'Chống nắng', '', '2012-10-12', '2012-10-12 15:56:36', 1, NULL, '', 'chong-nang'),
(230, 149, 119, 120, 'Chăm sóc tay & chân', '', '2012-10-12', '2012-10-12 15:56:54', 1, NULL, '', 'cham-soc-tay-chan'),
(231, 149, 121, 122, 'Khử mùi', '', '2012-10-12', '2012-10-12 15:57:13', 1, NULL, '', 'khu-mui'),
(232, 149, 123, 124, 'Tẩy lông', '', '2012-10-12', '2012-10-12 15:57:33', 1, NULL, '', 'tay-long'),
(233, 149, 125, 126, 'Làm trắng răng', '', '2012-10-12', '2012-10-12 15:57:52', 1, NULL, '', 'lam-trang-rang'),
(234, 149, 127, 128, 'Sản phẩm cho mẹ & bé', '', '2012-10-12', '2012-10-12 15:58:15', 1, NULL, '', 'san-pham-cho-me-be'),
(235, 150, 131, 132, 'Dầu gội & Sả', '', '2012-10-12', '2012-10-12 15:58:38', 1, NULL, '', 'dau-goi-sa'),
(236, 150, 133, 134, 'Dầu hấp phục hồi & mặt nạ tóc', '', '2012-10-12', '2012-10-12 15:59:04', 1, NULL, '', 'dau-hap-phuc-hoi-mat-na-toc'),
(237, 150, 135, 136, 'Đặc trị chăm sóc tóc & Da đầu', '', '2012-10-12', '2012-10-12 15:59:34', 1, NULL, '', 'dac-tri-cham-soc-toc-da-dau'),
(238, 150, 137, 138, 'Tạo kiểu', '', '2012-10-12', '2012-10-12 15:59:48', 1, NULL, '', 'tao-kieu'),
(239, 150, 139, 140, 'Dụng cụ chăm sóc tóc', '', '2012-10-12', '2012-10-12 16:00:08', 1, NULL, '', 'dung-cu-cham-soc-toc'),
(240, 150, 141, 142, 'Màu nhuộm', '', '2012-10-12', '2012-10-12 16:14:56', 1, NULL, '', 'mau-nhuom'),
(241, 151, 145, 146, 'Bộ quà tặng', '', '2012-10-12', '2012-10-12 16:18:59', 1, NULL, '', 'bo-qua-tang'),
(242, 151, 147, 148, 'Sáp thơm & Dung dịch sau cạo râu', '', '2012-10-12', '2012-10-12 16:19:44', 1, NULL, '', 'sap-thom-dung-dich-sau-cao-rau'),
(243, 151, 149, 150, 'Sữa rửa mặt', '', '2012-10-12', '2012-10-12 16:20:54', 1, NULL, '', 'sua-rua-mat'),
(244, 151, 151, 152, 'Dưỡng da & Đặc trị', '', '2012-10-12', '2012-10-12 16:21:18', 1, NULL, '', 'duong-da-dac-tri'),
(245, 151, 153, 154, 'Chống nắng', '', '2012-10-12', '2012-10-12 16:23:46', 1, NULL, '', 'chong-nang'),
(246, 151, 155, 156, 'Chăm sóc cơ thể', '', '2012-10-12', '2012-10-12 16:23:10', 1, NULL, '', 'cham-soc-co-the'),
(247, 151, 157, 158, 'Chăm sóc & tạo kiểu tóc', '', '2012-10-12', '2012-10-12 16:23:35', 1, NULL, '', 'cham-soc-tao-kieu-toc'),
(248, 151, 159, 160, 'Sản phẩm làm trắng răng', '', '2012-10-12', '2012-10-12 16:24:08', 1, NULL, '', 'san-pham-lam-trang-rang'),
(249, 152, 163, 164, 'Dành cho nữ', '', '2012-10-12', '2012-10-12 16:24:32', 1, NULL, '', 'danh-cho-nu'),
(250, 152, 165, 166, 'Dành cho nam', '', '2012-10-12', '2012-10-12 16:24:48', 1, NULL, '', 'danh-cho-nam'),
(251, 152, 167, 168, 'Dành cho teens', '', '2012-10-12', '2012-10-12 16:25:05', 1, NULL, '', 'danh-cho-teens'),
(252, 152, 169, 170, 'Ngày đặc biệt', '', '2012-10-12', '2012-10-12 16:25:22', 1, NULL, '', 'ngay-dac-biet'),
(253, 152, 171, 172, 'Bộ trang điểm', '', '2012-10-12', '2012-10-12 16:25:36', 1, NULL, '', 'bo-trang-diem'),
(254, 152, 173, 174, 'Bộ nước hoa', '', '2012-10-12', '2012-10-12 16:25:49', 1, NULL, '', 'bo-nuoc-hoa'),
(255, 152, 175, 176, 'Bộ dưỡng da', '', '2012-10-12', '2012-10-12 16:26:04', 1, NULL, '', 'bo-duong-da'),
(256, 152, 177, 178, 'Bộ sả phẩm chăm sóc cơ thể', '', '2012-10-12', '2012-10-12 16:26:54', 1, NULL, '', 'bo-sa-pham-cham-soc-co-the'),
(257, 152, 179, 180, 'Bộ dụng cụ làm đẹp', '', '2012-10-12', '2012-10-12 16:27:18', 1, NULL, '', 'bo-dung-cu-lam-dep'),
(258, 152, 181, 182, 'Bộ sản phẩm chăm sóc tóc', '', '2012-10-12', '2012-10-12 16:27:53', 1, NULL, '', 'bo-san-pham-cham-soc-toc'),
(259, 153, 185, 186, 'Yến Sào', '', '2012-10-12', '2012-10-12 16:30:05', 1, NULL, '', 'yen-sao'),
(260, 153, 187, 188, 'Vitamin', '', '2012-10-12', '2012-10-12 16:30:17', 1, NULL, '', 'vitamin'),
(261, 153, 189, 190, 'Sữa', '', '2012-10-12', '2012-10-12 16:30:37', 1, NULL, '', 'sua'),
(262, 154, 193, 194, 'Vòng cổ', '', '2012-10-12', '2012-10-12 16:30:53', 1, NULL, '', 'vong-co'),
(263, 154, 195, 196, 'Nhẫn', '', '2012-10-12', '2012-10-12 16:31:15', 1, NULL, '', 'nhan'),
(264, 154, 197, 198, 'Kính mắt', '', '2012-10-12', '2012-10-12 16:31:38', 1, NULL, '', 'kinh-mat'),
(265, 154, 199, 200, 'Băng đô', '', '2012-10-12', '2012-10-12 16:31:53', 1, NULL, '', 'bang-do');

-- --------------------------------------------------------

--
-- Table structure for table `infomationdetails`
--

CREATE TABLE IF NOT EXISTS `infomationdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infomations_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `images` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `infomationdetails`
--

INSERT INTO `infomationdetails` (`id`, `infomations_id`, `product_id`, `name`, `images`, `quantity`, `price`) VALUES
(5, 36, 19, 'sp14', '/khieuvu/admin/webroot/upload/image/images/bg_menu_27.jpg', 1, 200),
(6, 36, 20, 'sp13', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 1, 400),
(7, 37, 20, 'sp13', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 2, 400),
(8, 37, 19, 'sp14', '/khieuvu/admin/webroot/upload/image/images/bg_menu_27.jpg', 1, 200),
(9, 38, 21, 'sp2', '/khieuvu/admin/webroot/upload/image/images/bg_menu_17.jpg', 1, 300),
(10, 38, 27, 'sp3', '/khieuvu/admin/webroot/upload/image/files/3.jpg', 1, 200),
(11, 39, 27, 'sp3', '/khieuvu/admin/webroot/upload/image/files/3.jpg', 23, 200),
(12, 40, 25, 'sp1', '/khieuvu/admin/webroot/upload/image/images/bg_menu_09.jpg', 3, 120),
(13, 40, 26, 'sp43', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 1, 120000),
(14, 41, 21, 'sp2', '/khieuvu/admin/webroot/upload/image/images/bg_menu_17.jpg', 2, 300),
(15, 41, 19, 'sp14', '/khieuvu/admin/webroot/upload/image/images/bg_menu_27.jpg', 1, 200),
(16, 41, 26, 'sp43', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 1, 120000),
(17, 42, 26, 'sp43', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 5, 120000),
(18, 43, 32, 'sp565', '/khieuvu/admin/webroot/upload/image/files/bg_menu_20.jpg', 2, 20000),
(19, 44, 64, 'sp5', '/admin/webroot/upload/image/files/vietsys_53.jpg', 1, 40000),
(20, 44, 48, 'sp4', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(21, 44, 61, 'sp2', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(22, 44, 49, 'sp5', '/admin/webroot/upload/image/files/vietsys_53.jpg', 1, 40000),
(23, 45, 63, 'sp4', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(24, 46, 49, 'sp5', '/admin/webroot/upload/image/files/vietsys_53.jpg', 1, 40000),
(25, 46, 50, 'sp6', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(26, 47, 64, 'sp5', '/admin/webroot/upload/image/files/vietsys_53.jpg', 1, 40000),
(27, 47, 78, 'sp4', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(28, 48, 73, 'sp4', '/admin/webroot/upload/image/files/vietsys_55.jpg', 1, 300000),
(29, 51, 243, 'Tủ chữ L nhiều ngăn', 'img/upload/e06b30abc2aa67efdccf89e55f45cafc.jpg', 1, 4500000),
(30, 51, 245, 'Bếp cho quán ăn vừa và nhỏ', 'img/upload/3007b340574bcfd67cc42fd18c74d9b0.jpg', 1, 160000),
(31, 52, 240, 'Máy khử mùi Nsaka', 'img/upload/de7ed01c7b9dbb1bbdb2711a21176e49.jpg', 1, 120000),
(32, 52, 231, 'Bếp trung bình chữ I', 'img/upload/06e0bd26dd69280f9c14e247b49a3ec6.jpg', 2, 2300000),
(33, 53, 244, 'Bến chữ U đẹp', 'img/upload/434d3a69764058750f0f6b59e7c2e0e3.jpg', 1, 12500000),
(34, 54, 243, 'Tủ chữ L nhiều ngăn', 'img/upload/e06b30abc2aa67efdccf89e55f45cafc.jpg', 1, 4500000),
(35, 55, 265, 'SMATSHBOX', 'img/upload/87464e10d659180a02545ff8f51049cc.jpg', 1, 658000),
(36, 56, 292, 'Sữa tắm giảm béo cơ thể Naris – Slimming Body Soap', 'img/upload/6d5e5b83d158913b08fb973b7dd95fcf.gif', 2, 245000),
(37, 57, 291, 'Kem lót kiểm soát dầu L''ovite-Oil Control Makeup Base', 'img/upload/baed33d9924f99e9ea6e3696a07f53ac.jpg', 1, 790000),
(38, 60, 675, 'Sofa SD 211', 'img/upload/a77cf4b89cbb3460d54dbbe90a8a863d.jpg', 1, 100),
(39, 61, 675, 'Sofa SD 211', 'img/upload/a77cf4b89cbb3460d54dbbe90a8a863d.jpg', 1, 100),
(40, 61, 674, 'Sofa SD 211', 'img/upload/8be811571dc4fd8e2e2fb55e3c840170.jpg', 1, 100),
(41, 62, 726, 'Sofa Gia Đình GD 25', 'img/upload/e220b0b06c8ae0bc8d68e88fed1a7b39.jpg', 1, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `infomations`
--

CREATE TABLE IF NOT EXISTS `infomations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idnew` int(10) NOT NULL,
  `user_id` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'null',
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `mobile` int(15) DEFAULT NULL,
  `comment` varchar(300) CHARACTER SET utf8 NOT NULL,
  `deal` text CHARACTER SET utf8,
  `company` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `datereturn` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `fullname_male` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `fullname_female` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `questions_day` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `wedding_day` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `title_question` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `wedding_title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_product` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `sl` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `orther` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=299 ;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `char`) VALUES
(293, NULL, 5, 6, 'SOFA ĐẸP', '2012-11-19', '2013-01-14 02:11:20', 1, NULL),
(292, NULL, 3, 4, 'SOFA GIA ĐÌNH', '2012-11-19', '2013-01-05 01:05:54', 1, NULL),
(291, NULL, 1, 2, 'SOFA VĂN PHÒNG', '2012-11-19', '2013-01-05 01:11:01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `title_en` varchar(256) NOT NULL,
  `introduction` text NOT NULL,
  `introduction_en` text NOT NULL,
  `content` text,
  `content_en` text NOT NULL,
  `images` varchar(256) NOT NULL,
  `images_en` varchar(256) NOT NULL,
  `category_id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `view` int(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(1) DEFAULT '0',
  `hotnew` tinyint(4) DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `title_en`, `introduction`, `introduction_en`, `content`, `content_en`, `images`, `images_en`, `category_id`, `source`, `view`, `created`, `modified`, `status`, `hotnew`, `alias`) VALUES
(137, 0, 'Salon – Sofa Cao Cấp Quang Vinh', '', '', '', '<p>\r\n	<span style="font-size: small;"><span style="color: #ff0000;"><b>Salon &ndash; Sofa Cao Cấp Quang Vinh</b> </span>&nbsp;<b>xin gửi tới qu&yacute; kh&aacute;ch h&agrave;ng lời ch&uacute;c tr&acirc;n trọng nhất. Cầu ch&uacute;c cho mỗi kh&aacute;ch h&agrave;ng của</b> <span style="color: #ff0000;"><b>Sofa Quang Vinh</b></span> <b>lu&ocirc;n dồi d&agrave;o sức khoẻ, th&agrave;nh đạt, hạnh ph&uacute;c v&agrave; như &yacute;</b></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size: small;"><b><span style="color: #ff0000;">Với phương ch&acirc;m &#39;&#39; kh&aacute;ch h&agrave;ng l&agrave; thượng đế, thượng đế l&agrave; sự sống&#39;&#39;</span> ch&uacute;ng t&ocirc;i lu&ocirc;n lu&ocirc;n lắng nghe v&agrave;&nbsp;nỗ lực cao nhất để đ&aacute;p ứng những y&ecirc;u cầu khắt khe nhất của kh&aacute;ch h&agrave;ng.V&igrave; vậy, h&atilde;y gọi ngay cho ch&uacute;ng t&ocirc;i nếu bạn c&oacute; &yacute; tưởng mở 1 qu&aacute;n cafe, 1 nh&agrave; h&agrave;ng karaoke m&agrave; đang ph&acirc;n v&acirc;n kh&ocirc;ng biết n&ecirc;n l&agrave;m thế n&agrave;o ? hay bạn rất th&iacute;ch 1 mẫu sofa n&agrave;o đ&oacute; ( c&oacute; thể l&agrave; của ch&uacute;ng t&ocirc;i hoặc bạn thấy ở đ&acirc;u đ&oacute; ) m&agrave; chưa biết n&ecirc;n mua ở đ&acirc;u hay đặt l&agrave;m ở đ&acirc;u ? Ch&uacute;ng t&ocirc;i sẽ c&oacute; mặt mọi l&uacute;c, mọi nơi bạn cần để tư vấn cho bạn.Ch&uacute;ng t&ocirc;i l&uacute;c n&agrave;o cũng sẵn s&agrave;ng chờ bạn - tất cả chỉ c&aacute;ch nhau một cuộc điện thoại m&agrave; th&ocirc;i.</b></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size: small;"><b><span style="color: #ff0000;">Với đội ngũ c&ocirc;ng nh&acirc;n kỹ thuật gi&agrave;u kinh nghiệm, tinh thần tr&aacute;ch nhiệm cao với c&ocirc;ng việc</span>, ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo giao h&agrave;ng đ&uacute;ng hẹn trong thời gian nhanh nhất, chất lượng tốt nhất.Chắc chắn bạn sẽ h&agrave;i l&ograve;ng với sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i.</b></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size: small;"><b><span style="color: #ff0000;">Với bề d&agrave;y th&agrave;nh t&iacute;ch trong suốt những năm qua, sản phẩm của ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; mặt ở khắp mọi nơi tr&ecirc;n địa b&agrave;n H&agrave; Nội trong c&aacute;c cửa h&agrave;ng, showroom , hay c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n cafe, karaoke..</span>Ngo&agrave;i ra, sản phẩm của ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; mặt ở nhiều tỉnh th&agrave;nh kh&aacute;c như Việt Tr&igrave;, Ph&uacute; Thọ, Quảng Ninh, Sơn La, Bắc Ninh...N&ecirc;n rất c&oacute; thể bạn đ&atilde; d&ugrave;ng sản phẩm của ch&uacute;ng t&ocirc;i m&agrave; kh&ocirc;ng hay biết.</b></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size: small;"><b><span style="color: #ff0000;">Với tất cả sự tự tin về năng lực của bản th&acirc;n, ch&uacute;ng t&ocirc;i ho&agrave;n to&agrave;n c&oacute; thể khẳng định ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; sản xuất Sofa chuy&ecirc;n nghiệp</span>.Bạn ho&agrave;n to&agrave;n c&oacute; thể cảm nhận được điều đ&oacute; nếu bạn tiếp x&uacute;c với ch&uacute;ng t&ocirc;i.Vậy bạn c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng gọi cho ch&uacute;ng t&ocirc;i :</b></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size: medium;"><b>Mr Vinh </b>&ndash; <b>Phụ Tr&aacute;ch Kinh Doanh</b></span></p>\r\n<p>\r\n	<span style="color: #ff0000;"><span style="font-size: medium;"><b>Xưởng Sản Xuất Sofa &nbsp;Quang Vinh</b></span></span><b><span style="font-size: medium;"><span style="color: #ff0000;"> </span>&nbsp;&nbsp; </span><br />\r\n	<span style="font-size: small;">Địa Chỉ : </span></b><span style="font-size: small;">Số 100 &ndash; Ng&otilde; 143 Th&uacute;y Lĩnh &ndash; P.Lĩnh Nam &ndash; Q.Ho&agrave;ng Mai &ndash; HN<b> </b></span></p>\r\n<p>\r\n	<span style="font-size: small;"><b>Di động&nbsp; </b>: 0913.667.468&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Email</b>:&nbsp;quangvinh.sofa@gmail.com&nbsp;&nbsp;</span></p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;</p>\r\n<p>\r\n	<span style="color: #ff0000;"><span style="font-size: small;"><b>Ti&ecirc;n phong về gi&aacute; cả, dẫn đầu về chất lượng, độc đ&aacute;o trong từng sản phẩm l&agrave; tất cả những g&igrave; l&agrave;m n&ecirc;n Sofa Quang Vinh</b></span></span></p>\r\n<p>\r\n	<b>&nbsp;</b></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 146, '', 0, '2013-01-14 04:48:30', '2013-01-15 15:04:47', 1, 1, 'salon-–-sofa-cao-cap-quang-vinh'),
(119, 0, 'Mẹo trang điểm giúp bạn trẻ hơn tuổi', '', '<p>\r\n	(Lam dep) - Nếu biết c&aacute;ch trang điểm v&agrave; l&agrave;m đẹp cho m&igrave;nh, mỹ phẩm c&oacute; thể gi&uacute;p bạn tr&ocirc;ng trẻ hơn v&agrave;i tuổi đấy.</p>\r\n', '', '<p>\r\n	<strong>1. Sử dụng kem dưỡng ẩm</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep1.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Kem dưỡng ẩm c&oacute; t&aacute;c dụng l&agrave;m cho da mềm mại, mịn m&agrave;ng v&agrave; c&oacute; đủ sức để kh&aacute;ng để &ldquo;chống chọi&rdquo; với thời tiết hanh kh&ocirc; của m&ugrave;a thu. Trước khi b&ocirc;i c&aacute;c lớp kem nền v&agrave; phấn l&ecirc;n da, bạn n&ecirc;n thoa một ch&uacute;t kem dưỡng ẩm cho l&agrave;n da như kem l&oacute;t để bảo vệ, nhờ đ&oacute; lớp trang điểm cũng tự nhi&ecirc;n v&agrave; l&acirc;u tr&ocirc;i hơn.</p>\r\n<p>\r\n	<strong>2. Sử dụng kem che khuyết điểm dạng lỏng</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep2.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Khi bắt đầu bước sang tuổi 30, l&agrave;n da của bạn bắt đầu c&oacute; sự xuất hiện của l&atilde;o h&oacute;a như nếp nhăn, t&agrave;n nhang hay vết ch&acirc;n chim&hellip; Sử dụng kem che khuyết điểm dạng nước với độ bao phủ lớn hơn sẽ gi&uacute;p bạn che được những v&ugrave;ng da l&agrave;m m&igrave;nh mất tự tin.</p>\r\n<p>\r\n	<strong>3. D&ugrave;ng kem nền m&agrave;u v&agrave;ng</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep3.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Thay v&igrave; sử dụng những loại kem nền m&agrave;u s&aacute;ng c&oacute; t&aacute;c dụng l&agrave;m trắng da, bạn h&atilde;y thử sử dụng kem nền m&agrave;u v&agrave;ng. Gam m&agrave;u n&agrave;y sẽ gi&uacute;p l&agrave;n da của bạn tự nhi&ecirc;n v&agrave; trẻ hơn, n&oacute; cũng ph&ugrave; hợp với sắc tố da của người ch&acirc;u &Aacute;.</p>\r\n<p>\r\n	<strong>4. Sử dụng miếng bọt biển </strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep4.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	D&ugrave;ng miếng bọt biển để thoa kem nền sẽ gi&uacute;p l&agrave;n da của bạn tr&aacute;nh bị t&igrave;nh trạng loang lổ, bởi kem sẽ kh&ocirc;ng được thoa đều khi sử dụng bằng tay.</p>\r\n<p>\r\n	<strong>5. Bỏ qua phấn bột</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep5.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Nếu bạn kh&ocirc;ng muốn khu&ocirc;n mặt của m&igrave;nh tr&ocirc;ng giả bởi c&aacute;c lớp phấn tr&aacute;t l&ecirc;n nhau th&igrave; h&atilde;y trang điểm kiểu nude để c&oacute; một vẻ đẹp thật tự nhi&ecirc;n. Thay v&igrave; sử dụng phấn, bạn h&atilde;y đầu tư k cho m&igrave;nh để c&oacute; được một lớp nền ho&agrave;n hảo.</p>\r\n<p>\r\n	<strong>6. Che bớt phần xương mặt</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep6.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	C&agrave;ng về gi&agrave;, khu&ocirc;n mặt của phụ nữ lại c&agrave;ng h&oacute;p lại để lộ những phần xương &ldquo;đ&aacute;ng gh&eacute;t&rdquo; như xương g&ograve; m&aacute; v&agrave; xương h&agrave;m khiến khu&ocirc;n mặt bị bạch ra v&agrave; l&agrave;m họ gi&agrave; nua. Sử dụng cọ t&aacute;n đều phấn ở hai b&ecirc;n g&ograve; m&aacute; c&oacute; thể gi&uacute;p che bớt phần xương mặt của bạn.</p>\r\n<p>\r\n	<strong>7. Chăm ch&uacute;t cho đ&ocirc;i l&ocirc;ng m&agrave;y</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep7.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Khi c&oacute; tuổi, l&ocirc;ng m&agrave;y của phụ nữ sẽ bị thưa v&agrave; rụng nhiều hơn, v&igrave; thế sẽ l&agrave; một sai lầm lớn nếu như bạn cố gắng khắc phục n&oacute; bằng c&aacute;ch tỉa l&ocirc;ng m&agrave;y với ước mong l&agrave;m cho n&oacute; trở n&ecirc;n c&acirc;n đối. Bạn chỉ n&ecirc;n tỉa bớt đi những sợi l&ocirc;ng mọc kh&ocirc;ng đ&uacute;ng chỗ, nếu kh&ocirc;ng tự tin với tay nghề của m&igrave;nh, tốt hơn hết l&agrave; h&atilde;y đến tiệm để c&aacute;c thợ l&agrave;nh nghề gi&uacute;p bạn.</p>\r\n<p>\r\n	<strong>8. Chọn ch&igrave; kẻ m&agrave;y m&agrave;u n&acirc;u s&aacute;ng</strong></p>\r\n<p style="text-align: right; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep8.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Một chiếc b&uacute;t ch&igrave; kẻ m&agrave;y m&agrave;u n&acirc;u s&aacute;ng sẽ gi&uacute;p đ&ocirc;i l&ocirc;ng m&agrave;y của bạn tr&ocirc;ng trẻ trung v&agrave; tự nhi&ecirc;n hơn thay v&igrave; sử dụng b&uacute;t kẻ m&agrave;u tối.</p>\r\n<p>\r\n	<strong>9. Uốn mi</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep9.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Sẽ l&agrave; một thiếu s&oacute;t lớn trong việc trang điểm mắt nếu như bạn qu&ecirc;n sử dụng dụng cụ uốn mi trước khi chuốt mascara. Một đ&ocirc;i mi cong v&agrave; d&agrave;i sẽ l&agrave;m cho đ&ocirc;i mắt bạn s&aacute;ng hơn v&agrave; trẻ hơn tuổi thật.</p>\r\n<p>\r\n	<strong>10. Sử dụng phấn nền cho mắt</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep10.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	N&ecirc;n sử dụng loại phấn nền ri&ecirc;ng cho mắt sẽ gi&uacute;p bạn che được nếp nhăn v&agrave; vết quầng th&acirc;m cho v&ugrave;ng mắt. Hơn nữa, v&ugrave;ng da mắt vốn rất nhạy cảm, v&igrave; thế cần một loại phấn ri&ecirc;ng với c&aacute;c th&agrave;nh phần dưỡng ẩm đặc biệt.</p>\r\n<p>\r\n	<strong>11. Thoa son m&agrave;u nude</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Mẹo trang điểm giúp bạn trẻ hơn tuổi, Trang điểm, Làm đẹp, lam dep, trang diem, trang diem tu nhien, trang diem giup ban tre hon, my pham" class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-09-20/1348135840-lam-dep11.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p>\r\n	Những m&agrave;u son đậm như đỏ, cam&hellip; c&oacute; t&aacute;c dụng l&agrave;m bạn tr&ocirc;ng nổi bật hơn nhưng lại khiến khu&ocirc;n mặt của bạn bị gi&agrave; hơn v&agrave;i tuổi. Một đ&ocirc;i m&ocirc;i m&agrave;u hồng nude nhẹ nh&agrave;ng sẽ khiến bạn trẻ trung v&agrave; quyến rũ hơn nhiều. Đừng qu&ecirc;n trước đ&oacute; h&atilde;y thoa một lớp son dưỡng ẩm để l&agrave;m mềm m&ocirc;i trong tiết trời kh&ocirc; hanh n&agrave;y bạn nh&eacute;.</p>\r\n<p>\r\n	<strong>12. Sử dụng phấn highlight</strong></p>\r\n<p>\r\n	D&ugrave;ng phấn highlight gi&uacute;p bạn l&agrave;m nổi bật n&ecirc;n những đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt m&igrave;nh v&agrave; khắc phục một v&agrave;i khuyết điểm. N&oacute; cũng l&agrave;m cho khu&ocirc;n mặt của bạn thanh tho&aacute;t v&agrave; c&oacute; chiều s&acirc;u hơn, v&igrave; thế bạn đừng qu&ecirc;n sử dụng c&ocirc;ng cụ &ldquo;đắc lực&rdquo; n&agrave;y khi trang điểm cho khu&ocirc;n mặt của m&igrave;nh.</p>\r\n<div class="nguontin">\r\n	Theo Thu Trang (Xzone)</div>\r\n', '', 'img/upload/42a72c1a3ad60cc26c4eb7276875e040.jpg', '', 230, '', 0, '2012-07-23 14:47:22', '2012-10-12 15:48:06', 1, NULL, 'meo-trang-diem-giup-ban-tre-hon-tuoi'),
(126, 0, 'Bí kíp cho hàng mi cong thu hút ánh nhìn.', '...', '<p>\r\n	Kh&ocirc;ng cần nối mi hoặc gắn l&ocirc;ng mi giả vẫn c&oacute; đ&ocirc;i mắt to tr&ograve;n với h&agrave;ng mi cong v&uacute;t thu h&uacute;t mọi &aacute;nh nh&igrave;n.</p>\r\n', '<p>\r\n	update</p>\r\n', '<p>\r\n	<font style="FONT-FAMILY: Arial">Giờ đ&acirc;y, thay v&igrave; nối mi hay uốn mi đắt tiền m&agrave; c&ograve;n c&oacute; nguy cơ g&acirc;y hại đến sức khoẻ, sao bạn kh&ocirc;ng bỏ t&uacute;i một v&agrave;i b&iacute; k&iacute;p đơn giản nhưng lại tạo được một h&agrave;ng mi đ&aacute;ng mơ ước?</font></p>\r\n<p style="TEXT-ALIGN: center">\r\n	<font style="FONT-FAMILY: Arial"><img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--1-.jpg" /></font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Chỉ 2 ph&uacute;t mỗi ng&agrave;y trước khi đi ngủ, <strong>LATISSE &reg;</strong> thế hệ mới sẽ gi&uacute;p k&iacute;ch h&agrave;ng mi mọc d&agrave;i hơn, d&agrave;y hơn v&agrave; tăng cường hoạt t&iacute;nh gi&uacute;p k&iacute;ch hoạt sợi mi yếu ớt mọc khỏe v&agrave; cong tự nhi&ecirc;n ho&agrave;n hảo sau 2 tuần sử dụng.</font></p>\r\n<p>\r\n	<strong><font style="FONT-FAMILY: Arial">LATISSE &reg;&nbsp;thế hệ mới</font></strong><font style="FONT-FAMILY: Arial"> l&agrave; sản phẩm được s&aacute;ng chế bởi một đội ngũ 16 b&aacute;c sĩ gi&agrave;u kinh ghiệm từ khắp nơi tr&ecirc;n thế giới v&agrave; l&agrave; giải ph&aacute;p điều trị theo toa của b&aacute;c sĩ thuộc Tập đo&agrave;n Allergan một c&ocirc;ng ty chuy&ecirc;n ng&agrave;nh dược với hơn 60 năm kinh nghiệm về mắt. Latisse đ&atilde; được chứng nhận bởi tổ chức FDA của Mỹ với c&ocirc;ng dụng k&iacute;ch th&iacute;ch h&agrave;ng mi mọc d&agrave;i, d&agrave;y v&agrave; sẫm m&agrave;u hơn, đặc biệt hoạt chất bimatoprost sẽ gi&uacute;p k&iacute;ch hoạt sợi mi yếu ớt mọc khỏe hơn v&agrave; cong tự nhi&ecirc;n ho&agrave;n hảo nhất.</font></p>\r\n<table align="center" border="1" cellpadding="1" cellspacing="1" width="450">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor="#def1c8">\r\n				<p style="TEXT-ALIGN: justify">\r\n					<strong><font style="FONT-FAMILY: Arial">LATISSE &reg; thế hệ mới</font></strong><font style="FONT-FAMILY: Arial"> sản phẩm th&iacute;ch hợp với những bạn c&oacute; h&agrave;ng mi qu&aacute; thưa thớt, yếu ớt, sợi mi kh&ocirc;ng được khỏe, mi qu&aacute; ngắn hoặc những h&agrave;ng mi nối l&acirc;u ng&agrave;y, mi yếu ớt, bị rụng hết v&agrave; ch&acirc;n mi kh&ocirc;ng thể mọc lại được.</font></p>\r\n				<p style="TEXT-ALIGN: center">\r\n					<font style="FONT-FAMILY: Arial"><img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--2-.jpg" /></font></p>\r\n				<p style="TEXT-ALIGN: justify">\r\n					<strong><font style="FONT-FAMILY: Arial">LATISSE &reg; thế hệ mới </font></strong><font style="FONT-FAMILY: Arial">sản phẩm được chỉ định điều trị theo toa của b&aacute;c sỹ tại Mỹ, được chứng nhận bởi tổ chức FDA mỹ.</font></p>\r\n				<p style="TEXT-ALIGN: justify">\r\n					<strong><font style="FONT-FAMILY: Arial">LATISSE &reg; thế hệ mới c&oacute; gi&aacute; 2,590,000</font></strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<strong><font style="FONT-FAMILY: Arial">LATISSE &reg; thế hệ mới</font></strong><font style="FONT-FAMILY: Arial"> l&agrave; sản phẩm dưới dạng serum chứa 60 c&acirc;y cọ v&agrave; mỗi c&acirc;y cọ đ&atilde; được v&ocirc; tr&ugrave;ng c&ugrave;ng với 1 lượng serum vừa đủ sử dụng cho h&agrave;ng mi. Mỗi tối, bạn chỉ cần d&ugrave;ng cọ b&ocirc;i một đường l&ecirc;n ch&acirc;n mi tr&ecirc;n của mắt v&agrave; sẽ cảm nhận được hiệu quả sau 2 tuần đầu sử dụng l&agrave; mi sẽ mọc dần l&ecirc;n v&agrave; hơi c&oacute; cảm gi&aacute;c ngứa nơi mi mắt. Đến tuần thứ 4 sử dụng, bạn sẽ thấy r&otilde; h&agrave;ng mi mọc d&agrave;i hơn nhiều v&agrave; sau 16 tuần sử dụng, h&agrave;ng mi sẽ trở n&ecirc;n đẹp nhất. Với những ưu điểm vượt trội trong việc k&iacute;ch mọc ho&agrave;n hảo h&agrave;ng mi sản phẩm l&agrave; lựa chọn h&agrave;ng đầu cho phụ nữ tại Mỹ, Ch&acirc;u &Acirc;u đặc biệt tại Nhật Bản, H&agrave;n Quốc v&agrave; Trung Quốc&hellip;.</font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Với những bạn c&oacute; ch&acirc;n mi b&igrave;nh thường (mi đ&atilde; c&oacute; sẵn d&agrave;y, khỏe nhưng ngắn) chỉ c&oacute; nhu cầu k&iacute;ch mi mọc d&agrave;i nhanh v&agrave; cong khỏe sản phẩm k&iacute;ch mi mọc nhanh Revitalash Advanced sẽ l&agrave; lựa chọn cho c&aacute;c bạn.</font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">C&ocirc;ng ty Athena Cosmetics của Mỹ sau nghi&ecirc;n cứu c&ocirc;ng thức k&iacute;ch th&iacute;ch sự tăng trưởng của c&aacute;c nang l&ocirc;ng mi đ&atilde; cho ra đời sản phẩm Revitalash Advanced để biến những l&agrave;n mi, d&ugrave; c&oacute; ngắn, thưa yếu ớt thế n&agrave;o, cũng trở n&ecirc;n d&agrave;i, cong sẫm m&agrave;u. C&ocirc;ng thức trong Revitalash Advanced&nbsp; ở dạng tinh thể, k&iacute;ch hoạt mạnh mẽ sự ph&aacute;t triển của từng nang l&ocirc;ng mi, đồng thời tiếp s&acirc;u c&aacute;c dưỡng chất gi&uacute;p l&ocirc;ng mi mọc chắc khoẻ v&agrave; kh&ocirc;ng bị g&atilde;y rụng. Kết quả l&acirc;m s&agrave;ng cho thấy l&ocirc;ng mi mọc d&agrave;i từ 3mm-5mm sau 3 tuần sử dụng. Nếu sử dụng đều đặn bạn c&oacute; thể sở&nbsp;hữu một l&agrave;n mi&nbsp;d&agrave;i cong sẫm m&agrave;u như nối mi thẩm mỹ chỉ sau 2-3 th&aacute;ng.</font></p>\r\n<p style="TEXT-ALIGN: center">\r\n	<font style="FONT-FAMILY: Arial"><img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" height="351" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--3-.jpg" width="282" /></font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Sản phẩm được FDA của Mỹ c&ocirc;ng nhận - Kết quả l&acirc;m s&agrave;ng cho thấy 97% người sử dụng c&oacute; l&agrave;n mi d&agrave;y &amp; d&agrave;i hơn từ 3mm-5mm sau 3 tuần.</font></p>\r\n<p>\r\n	<em><strong><font style="FONT-FAMILY: Arial">Revitalash Advanced c&oacute; gi&aacute; 1,990,000</font></strong></em></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">100% phụ nữ sau khi sử dụng Revitalash Advanced đều khuyến kh&iacute;ch bạn b&egrave; m&igrave;nh sử dụng. Hiện nay, Revitalash Advanced l&agrave; sản phẩm k&iacute;ch dưỡng mi được b&aacute;n chạy nhất tại Mỹ được tin d&ugrave;ng bởi nhiều ng&ocirc;i sao như Jennifer Lopez, Sarah Jessica Parker...</font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Để ho&agrave;n thiện vẻ đẹp đ&ocirc;i mắt v&agrave; l&agrave;m bật s&aacute;ng gương mặt của bạn, cặp ch&acirc;n m&agrave;y l&agrave; yếu tố rất quan trọng l&agrave;m t&ocirc;n l&ecirc;n vẻ rạng ngời, sắc sảo của gương mặt..&nbsp;&nbsp; </font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Được ph&aacute;t triển c&ugrave;ng với d&ograve;ng sản phẩm Revitalash Advanced l&agrave; sản phẩm <strong>Revita Brow</strong> c&oacute; c&ocirc;ng thức chuy&ecirc;n biệt để k&iacute;ch dưỡng sự ph&aacute;t triển của l&ocirc;ng ch&acirc;n m&agrave;y. Bạn g&aacute;i thường xuy&ecirc;n kẻ ch&acirc;n m&agrave;y sẽ v&ocirc; t&igrave;nh l&agrave;m chai m&ograve;n ch&acirc;n l&ocirc;ng m&agrave;y, l&agrave;m l&ocirc;ng m&agrave;y kh&oacute; ph&aacute;t triển, mọc lại rời rạc.</font></p>\r\n<p style="TEXT-ALIGN: center">\r\n	<font style="FONT-FAMILY: Arial"><img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" height="366" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--4-.jpg" width="306" /></font></p>\r\n<p style="TEXT-ALIGN: left">\r\n	<em><strong><font style="FONT-FAMILY: Arial">Revita Brow k&iacute;ch hoạt l&ocirc;ng m&agrave;y mọc đều, đầy đặn chỉ sau 3 tuần </font></strong></em></p>\r\n<p>\r\n	<em><strong><font style="FONT-FAMILY: Arial">Revita Brow c&oacute; gi&aacute; 1,950,000</font></strong></em></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Revita Brow sử dụng sức mạnh của chuỗi axit amin &amp; thực vật điều ho&agrave; gi&uacute;p k&iacute;ch hoạt &amp; hồi sinh sự ph&aacute;t triển ở ch&acirc;n l&ocirc;ng maỳ l&agrave;m l&ocirc;ng m&agrave;y mọc trở lại đều đặn, sẫm m&agrave;u v&agrave; khoẻ mạnh hơn. Hơn nữa, c&aacute;c tinh chất chuy&ecirc;n biệt c&oacute; trong Revita Brow c&ograve;n bổ sung dồi d&agrave;o dưỡng chất, chống lại c&aacute;c t&aacute;c hại của mỹ phẩm như chất ch&igrave; trong b&uacute;t vẽ, giữ cho l&ocirc;ng m&agrave;y đầy đặn &amp; kh&ocirc;ng bị g&atilde;y rụng trở lại. Sử dụng Revita Brow kh&ocirc;ng chỉ k&iacute;ch dưỡng cho l&ocirc;ng m&agrave;y của bạn mọc đầy đặn &amp; khoẻ mạnh m&agrave; c&ograve;n bảo tr&igrave; cho đ&ocirc;i m&agrave;y &iacute;t bị g&atilde;y rụng, chai m&ograve;n do sử dụng ch&igrave; kẻ mỗi ng&agrave;y.</font></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">B&ecirc;n cạnh 2 d&ograve;ng sản phẩm uy t&iacute;n d&agrave;nh cho l&ocirc;ng mi &amp; ch&acirc;n m&agrave;y, chuy&ecirc;n gia &#39;Revita&#39; cũng nhắm đến việc k&iacute;ch hoạt sự mọc t&oacute;c khi chế tạo d&ograve;ng sản phẩm chuy&ecirc;n biệt<strong> &#39;Hair by Revitalash &#39; </strong>gi&uacute;p bạn g&aacute;i c&oacute; m&aacute;i t&oacute;c d&agrave;y &amp; khoẻ mạnh.&nbsp;</font></p>\r\n<p style="TEXT-ALIGN: center">\r\n	<font style="FONT-FAMILY: Arial"><img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" height="176" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--5-.jpg" width="150" />&nbsp;<img alt="Bí kíp cho hàng mi cong thu hút ánh nhìn, Làm đẹp, " class="news-image" src="http://hn.24h.com.vn/upload/3-2012/images/2012-09-08/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--6-.jpg" /></font></p>\r\n<p>\r\n	<em><strong><font style="FONT-FAMILY: Arial">Hair by Revitalash được kiểm nghiệm hiệu quả trong việc k&iacute;ch th&iacute;ch sự mọc t&oacute;c &amp; trị h&oacute;i</font></strong></em></p>\r\n<p>\r\n	<em><strong><font style="FONT-FAMILY: Arial">Hair by Revitalash c&oacute; gi&aacute; 2,990,000</font></strong></em></p>\r\n<p>\r\n	<font style="FONT-FAMILY: Arial">Hair by Revitalash&#39; được tinh chế từ c&aacute;c hoạt chất th&iacute;ch hợp cho sự ph&aacute;t triển của t&oacute;c &amp; c&aacute;c dưỡng chất như rễ c&acirc;y nh&acirc;n s&acirc;m, chiết xuất protein dồi d&agrave;o từ lu&aacute; m&igrave; &amp; chiết xuất từ c&aacute;c tr&aacute;i c&acirc;y kh&ocirc;ng chỉ k&iacute;ch hoạt ch&acirc;n t&oacute;c ph&aacute;t triển m&agrave; c&ograve;n tiếp th&ecirc;m c&aacute;c dưỡng chất cho t&oacute;c mọc d&agrave;y, nhiều &amp; tr&agrave;n đầy sức sống.</font></p>\r\n', '<p>\r\n	update..</p>\r\n', 'img/upload/daacc1ca22fffaa5052db78bfa0330ff.jpg', '', 230, '', 0, '2012-07-29 16:43:23', '2012-12-25 09:22:51', 1, 1, 'bi-kip-cho-hang-mi-cong-thu-hut-anh-nhin'),
(127, 0, 'Cách trang điểm cổ điển chỉ với 4 bước ', 'Co., Ltd. medical equipment import a new batch of medical products', '<p>\r\n	(Lam dep) - Trang điểm 2 bộ phận quan trọng nhất tr&ecirc;n khu&ocirc;n mặt theo phong c&aacute;ch cổ điển, bạn sẽ vừa sang trọng v&agrave; ấn tượng.</p>\r\n', '<p>\r\n	<span id="result_box" lang="en"><span class="hps">This</span> <span class="hps">concerns</span> <span class="hps">the most modern</span> <span class="hps">water</span> <span class="hps">pipe</span> <span class="hps">in the world,</span> <span class="hps">is produced by</span> <span class="hps">the</span> <span class="hps">U.S.</span> <span class="hps">technology</span><span>,</span> <span class="hps">today&#39;s most</span> <span class="hps">advanced</span></span></p>\r\n', '<p>\r\n	Ng&agrave;y cuối tuần rảnh, nếu phải đi ra ngo&agrave;i, bạn thử đổi gi&oacute; cho khu&ocirc;n mặt m&igrave;nh theo phong c&aacute;ch <strong>trang điểm</strong> cổ điển xem sao nh&eacute;!</p>\r\n<p style="text-align: center; ">\r\n	<img alt="Cách trang điểm cổ điển chỉ với 4 bước, Trang điểm, Làm đẹp, trang diem, trang điểm, trang diem co dien, son, lam dep, trang diem han quoc, trang diem tu nhien," class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-08-26/1345942245-trang-diem1.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p style="text-align: center; font-style: italic; color: rgb(0, 0, 255); ">\r\n	Ng&agrave;y cuối tuần rảnh, nếu phải đi ra ngo&agrave;i, bạn thử đổi gi&oacute; cho khu&ocirc;n mặt</p>\r\n<p>\r\n	<strong>Bước 1</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Cách trang điểm cổ điển chỉ với 4 bước, Trang điểm, Làm đẹp, trang diem, trang điểm, trang diem co dien, son, lam dep, trang diem han quoc, trang diem tu nhien," class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-08-26/1345942245-trang-diem2.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p style="text-align: center; font-style: italic; color: rgb(0, 0, 255); ">\r\n	Thoa một lớp phấn <u>trang điểm</u> cho một nửa b&oacute;ng mắt b&ecirc;n dưới l&ocirc;ng m&agrave;y của bạn.</p>\r\n<p>\r\n	H&atilde;y tỉ mỉ một ch&uacute;t để t&ocirc; m&agrave;u phấn b&ecirc;n dưới sẫm hơm một ch&uacute;t so với m&agrave;u b&oacute;ng mắt b&ecirc;n tr&ecirc;n.&nbsp;Để trang điểm b&oacute;ng mắt n&agrave;y, bạn cần một chổi trang điểm nhỏ để c&oacute; thể dễ d&agrave;ng pha m&agrave;u cho m&agrave;u b&oacute;ng mắt b&ecirc;n dưới.</p>\r\n<p>\r\n	<br />\r\n	<strong>Bước 2</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Cách trang điểm cổ điển chỉ với 4 bước, Trang điểm, Làm đẹp, trang diem, trang điểm, trang diem co dien, son, lam dep, trang diem han quoc, trang diem tu nhien," class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-08-26/1345942245-trang-diem3.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p style="text-align: center; font-style: italic; color: rgb(0, 0, 255); ">\r\n	Để đ&ocirc;i mắt thật sự to hơn v&agrave; nổi bật hơn, l&agrave;n mi của bạn cần phải được uốn c&ocirc;ng bằng việc &aacute;p dụng mascara</p>\r\n<p>\r\n	Điều n&agrave;y cũng gi&uacute;p tăng số lượng l&ocirc;ng mi th&ecirc;m d&agrave;y dặn v&agrave; gi&uacute;p l&ocirc;ng mi d&agrave;i hơn, cong v&uacute;t.&nbsp;Khi chải l&ocirc;ng mi, bạn n&ecirc;n chải cẩn thận. Tuyệt đối tr&aacute;nh t&igrave;nh trạng mascara đ&atilde; bị v&oacute;n cục.</p>\r\n<p>\r\n	<strong>Bước 3</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Cách trang điểm cổ điển chỉ với 4 bước, Trang điểm, Làm đẹp, trang diem, trang điểm, trang diem co dien, son, lam dep, trang diem han quoc, trang diem tu nhien," class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-08-26/1345942245-trang-diem4.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p style="text-align: center; font-style: italic; color: rgb(0, 0, 255); ">\r\n	Để t&ocirc; son m&ocirc;i, trước hết bạn thoa một lớp son l&oacute;t tr&ecirc;n to&agrave;n bộ m&ocirc;i tr&ecirc;n v&agrave; m&ocirc;i dưới.</p>\r\n<p>\r\n	Sau đ&oacute;, bạn t&ocirc; son m&ocirc;i theo đường viền m&ocirc;i v&agrave; nh&igrave;n v&agrave;o gương. Điều n&agrave;y sẽ gi&uacute;p bạn nh&igrave;n thấy r&otilde; bất cứ nhược điểm n&agrave;o khi trang điểm đ&ocirc;i m&ocirc;i của m&igrave;nh.</p>\r\n<p>\r\n	<strong>Bước 4</strong></p>\r\n<p style="text-align: center; ">\r\n	<img alt="Cách trang điểm cổ điển chỉ với 4 bước, Trang điểm, Làm đẹp, trang diem, trang điểm, trang diem co dien, son, lam dep, trang diem han quoc, trang diem tu nhien," class="news-image" src="http://img-hn.24hstatic.com:8008/upload/3-2012/images/2012-08-26/1345942245-trang-diem5.jpg" style="font-family: ''Times New Roman''; text-align: -webkit-center; font-size: medium; " /></p>\r\n<p style="text-align: center; font-style: italic; color: rgb(0, 0, 255); ">\r\n	Tiếp tục d&ugrave;ng chổi t&ocirc; m&ocirc;i để thoa son m&ocirc;i v&agrave;o những khu vực b&ecirc;n trong của m&ocirc;i tr&ecirc;n, m&ocirc;i dưới.</p>\r\n<p>\r\n	Để đ&ocirc;i m&ocirc;i c&oacute; m&agrave;u cổ điển, ấn tượng, bạn c&oacute; thể sử dụng son m&ocirc;i m&agrave;u đỏ.<br />\r\n	Kết th&uacute;c <em>trang điểm</em> kiểu cổ điển, bạn c&oacute; thể thoa một ch&uacute;t phấn m&aacute; hồng v&agrave; phấn phủ tr&ecirc;n m&aacute;.</p>\r\n<div class="nguontin">\r\n	Theo Hạnh (Phunutoday)</div>\r\n', '<p>\r\n	<span id="result_box" lang="en"><span class="hps">This</span> <span class="hps">concerns</span> <span class="hps">the most modern</span> <span class="hps">water</span> <span class="hps">pipe</span> <span class="hps">in the world,</span> <span class="hps">is produced by</span> <span class="hps">the</span> <span class="hps">U.S.</span> <span class="hps">technology</span><span>,</span> <span class="hps">today&#39;s most</span> <span class="hps">advanced</span></span></p>\r\n', 'img/upload/e4c59a39a5204c63cc1237be2fbf2b3e.jpg', '', 230, '', 0, '2012-07-29 16:45:58', '2012-12-25 09:22:30', 1, 1, ''),
(132, 0, 'Video dạy bé đánh răng', '', '<p>\r\n	Quỳnh Tr&acirc;m - Dạy b&eacute; đ&aacute;nh răng</p>\r\n', '', '<p>\r\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/5uzQaw9x9u4" width="560"></iframe></p>\r\n', '', 'img/upload/e0f6454346ccdf7087be45b35831c22c.jpg', '', 230, '', 0, '2012-11-21 13:53:33', '2012-12-25 09:22:18', 1, 1, 'video-day-be-danh-rang'),
(133, 0, '10 cách để dạy bé yêu tập nói', '', '<p>\r\n	Theo c&aacute;c nh&agrave; nghi&ecirc;n cứu th&igrave;&nbsp; &ldquo;Từ 4 &ndash; 6 th&aacute;ng tuổi trẻ bắt đầu lảm nhảm những từ c&oacute; 2 &acirc;m tiết như: baba hay mama&rdquo;,</p>\r\n', '', '<p>\r\n	<span style="font-size: small;"><strong>Những ai l&agrave;m cha mẹ hầu hết đều mong đợi gi&acirc;y ph&uacute;t b&eacute; y&ecirc;u ph&aacute;t ra những lời đầu ti&ecirc;n, d&ugrave; bập bẹ nhưng thật dễ thương phải kh&ocirc;ng? C&oacute; nhiều cha mẹ n&ocirc;n n&oacute;ng v&igrave; m&atilde;i m&agrave; b&eacute; vẫn kh&ocirc;ng chịu n&oacute;i, đừng qu&aacute; n&ocirc;n n&oacute;ng, h&atilde;y thật ki&ecirc;n nhẫn dạy b&eacute; theo những c&aacute;ch dưới đ&acirc;y. Rồi một ng&agrave;y &ldquo;chiếc loa ph&aacute;t thanh t&iacute; hon&rdquo; sẽ l&agrave;m bạn ngạc nhi&ecirc;n đấy! </strong></span></p>\r\n<div class="mceTemp" style="text-align: justify;">\r\n	<dl class="wp-caption alignleft" id="attachment_70729" style="width: 240px;">\r\n		<dt class="wp-caption-dt">\r\n			<a class="cboxElement" href="http://www.webtretho.com/wttnews/wp-content/uploads/2010/04/Corbis-42-33842964.jpg" rel="lightbox[23429]" title="Corbis-42-33842964"><img alt="" class="size-full wp-image-70729" height="345" src="http://www.webtretho.com/wttnews/wp-content/uploads/2010/04/Corbis-42-33842964.jpg" title="Corbis-42-33842964" width="230" /></a></dt>\r\n		<dd class="wp-caption-dd">\r\n			Ảnh: Inmagine.</dd>\r\n	</dl>\r\n</div>\r\n<p style="text-align: justify;">\r\n	Theo c&aacute;c nh&agrave; nghi&ecirc;n cứu th&igrave;&nbsp; &ldquo;Từ 4 &ndash; 6 th&aacute;ng tuổi trẻ bắt đầu lảm nhảm những từ c&oacute; 2 &acirc;m tiết như: baba hay mama&rdquo;, n&oacute; l&agrave; tiền th&acirc;n của những từ đầu ti&ecirc;n theo bản năng m&agrave; b&eacute; tự ph&aacute;t ra.</p>\r\n<p style="text-align: justify;">\r\n	C&aacute;c giai đoạn m&agrave; b&eacute; phải đi qua bao gồm; ph&aacute;t &acirc;m nguy&ecirc;n &acirc;m (0 &ndash; 3 th&aacute;ng), nh&acirc;n rộng theo c&aacute;ch bập bẹ, c&oacute; nghĩa l&agrave; lặp lại những &acirc;m thanh c&ugrave;ng một phụ &acirc;m như: bababa, dadada, (4 &ndash; 6 th&aacute;ng), tăng bập bẹ với nhiều &acirc;m thanh pha trộn (6 &ndash; 9 th&aacute;ng).</p>\r\n<p style="text-align: justify;">\r\n	Dưới đ&acirc;y l&agrave; 10 mẹo c&oacute; thể gi&uacute;p cho b&eacute; tăng cường khả năng diễn đạt những từ đầu ti&ecirc;n<br />\r\n	<br />\r\n	<strong> 1. Tham gia v&agrave;o cuộc &ldquo;đ&agrave;m thoại kỳ lạ&rdquo; của b&eacute;</strong></p>\r\n<p style="text-align: justify;">\r\n	D&ugrave; chưa hiểu b&eacute; diễn đạt g&igrave;, bạn vẫn c&oacute; thể tham gia v&agrave;o &ldquo;cuộc hội thoại&rdquo; với tất cả niềm vui v&agrave; sự h&agrave;o hứng của b&eacute;. Đ&aacute;p lại những &acirc;m thanh ngọt ng&agrave;o v&agrave; tiếng trọ trẹ dễ thương ấy bằng c&aacute;ch nh&igrave;n v&agrave;o mắt b&eacute;, gật đầu, n&oacute;i chuyện&hellip;B&eacute; sẽ bắt đầu hiểu l&agrave; bố mẹ lưu t&acirc;m m&igrave;nh, đ&oacute; l&agrave; một th&ocirc;ng tin li&ecirc;n lạc hai chiều cho v&agrave; nhận, n&oacute; gi&uacute;p b&eacute; th&iacute;ch tr&ograve; chuyện v&agrave; cởi mở hơn.</p>\r\n<p style="text-align: justify;">\r\n	<strong>2. Tr&ograve; chuyện với b&eacute; </strong></p>\r\n<p style="text-align: justify;">\r\n	Tr&ograve; chuyện với b&eacute; sẽ gi&uacute;p bạn x&acirc;y dựng vốn từ vựng h&agrave;ng ng&agrave;y của m&igrave;nh, lại tăng cường sự gần gũi với con v&agrave; gi&uacute;p b&eacute; học từ ngữ chuẩn hơn.</p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size: small;"><strong>3. Trả lời tiếng kh&oacute;c của b&eacute;</strong></span></p>\r\n<p style="text-align: justify;">\r\n	Kh&oacute;c thật ra l&agrave; một c&aacute;ch giao tiếp của b&eacute; khi đ&ograve;i hỏi những nhu cầu của cơ thể. Bạn trả lời lại l&agrave; c&aacute;ch bạn đ&aacute;p ứng những nhu cầu ấy, chẳng hạn bạn sẽ nhận biết được l&uacute;c n&agrave;o b&eacute; bệnh, đ&oacute;i, mệt mỏi&hellip;Đ&oacute; l&agrave; một c&aacute;ch chia sẻ th&ocirc;ng tin kỳ lạ nhưng l&yacute; th&uacute;.</p>\r\n<p style="text-align: justify;">\r\n	<strong>4. N&oacute;i chuyện phiếm với b&eacute; </strong></p>\r\n<p style="text-align: justify;">\r\n	&ldquo;B&eacute; &ldquo;măm&rdquo; xong rồi, b&acirc;y giờ mẹ sẽ thay t&atilde; cho b&eacute; nh&eacute;, thay t&atilde; xong b&eacute; sẽ chơi với b&agrave; để mẹ nấu cơm nh&eacute;&rdquo;&hellip;Khi bạn n&oacute;i với b&eacute; những điều n&agrave;y, b&eacute; sẽ tự tạo được khả năng li&ecirc;n kết sự việc v&agrave; biết kết nối, x&acirc;u chuỗi mọi thứ thật logic, điều n&agrave;y gi&uacute;p b&eacute; phản ứng nhanh trong khả năng sử dụng ng&ocirc;n ngữ.</p>\r\n<div class="wp-caption aligncenter" id="attachment_70730" style="width: 510px">\r\n	<a class="cboxElement" href="http://www.webtretho.com/wttnews/wp-content/uploads/2010/04/Corbis-42-340704145-500.jpg" rel="lightbox[23429]" title="Corbis-42-340704145-500"><img alt="" class="size-full wp-image-70730" height="300" src="http://www.webtretho.com/wttnews/wp-content/uploads/2010/04/Corbis-42-340704145-500.jpg" title="Corbis-42-340704145-500" width="500" /></a>\r\n	<p class="wp-caption-text">\r\n		Ảnh: Inmagine.</p>\r\n</div>\r\n<p style="text-align: justify;">\r\n	<strong>5. H&aacute;t những b&agrave;i h&aacute;t ngắn</strong></p>\r\n<p style="text-align: justify;">\r\n	Nếu kh&ocirc;ng thể h&aacute;t được những bản nhạc d&agrave;i v&agrave; kh&oacute;, bạn c&oacute; thể h&aacute;t những bản ngắn. Qu&aacute; tr&igrave;nh lặp đi lặp lại c&aacute;c từ trong b&agrave;i h&aacute;t sẽ l&agrave; bước đầu ti&ecirc;n để ghi nhớ những lời m&agrave; b&eacute; y&ecirc;u th&iacute;ch để từ từ b&eacute; sẽ bắt chước theo.</p>\r\n<p style="text-align: justify;">\r\n	<strong>6. Đọc cho b&eacute; nghe</strong></p>\r\n<p style="text-align: justify;">\r\n	Trẻ em quan t&acirc;m đến s&aacute;ch sớm hơn bạn nghĩ. H&atilde;y thử đọc cuốn s&aacute;ch ưa th&iacute;ch của bạn hoặc những cuốn truyện tranh m&agrave; b&eacute; th&iacute;ch ngắm nh&igrave;n thật thường xuy&ecirc;n, bạn sẽ thấy b&eacute; ngồi y&ecirc;n chăm ch&uacute;. Cũng giống như kh&aacute;i niệm đằng sau những b&agrave;i h&aacute;t y&ecirc;u th&iacute;ch của b&eacute;, sự lặp lại những g&igrave; bạn đọc từ s&aacute;ch sẽ gi&uacute;p b&eacute; x&acirc;y dựng vốn từ vựng cơ bản.</p>\r\n<p style="text-align: justify;">\r\n	<strong>7. Chơi đ&ugrave;a c&ugrave;ng b&eacute;</strong></p>\r\n<p style="text-align: justify;">\r\n	Khu&ocirc;n mặt của b&eacute; trở n&ecirc;n ủ dột, rồi b&eacute; mếu v&agrave; kh&oacute;c th&igrave; c&oacute; lẽ l&agrave; v&igrave; b&eacute; mệt mỏi. Bạn gi&uacute;p b&eacute; thư gi&atilde;n bằng những đồ chơi b&eacute; th&iacute;ch, c&ugrave;ng chơi với b&eacute; v&agrave; tập cho b&eacute; đ&aacute;nh vần từng m&oacute;n một.</p>\r\n<p style="text-align: justify;">\r\n	<strong>8. Học từ bạn b&egrave;</strong></p>\r\n<p style="text-align: justify;">\r\n	Nếu b&eacute; đ&atilde; đến tuổi đi mẫu gi&aacute;o m&agrave; vẫn chưa n&oacute;i s&otilde;i th&igrave; bạn n&ecirc;n cho b&eacute; tiếp cận nhiều với m&ocirc;i trường học tập, dạy th&ecirc;m cho b&eacute; n&oacute;i những từ đơn giản. C&oacute; bạn b&egrave;, tr&ograve; chuyện nhiều, b&eacute; sẽ tự tin để n&oacute;i tốt hơn.</p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size: small;"><strong>9. Khuyến kh&iacute;ch sự cố gắng của b&eacute;<br />\r\n	</strong><br />\r\n	Khi b&eacute; bắt đầu n&oacute;i huy&ecirc;n thuy&ecirc;n cả ng&agrave;y v&agrave; ph&aacute;t &acirc;m sai, bạn đừng cười b&eacute;, h&atilde;y để b&eacute; được tự tin n&oacute;i những g&igrave; b&eacute; th&iacute;ch. Nhiều cha mẹ thấy con n&oacute;i lung tung thường bật cười, điều đ&oacute; sẽ cản trở b&eacute; học n&oacute;i. </span></p>\r\n<p style="text-align: justify;">\r\n	<strong>10. Ki&ecirc;n nhẫn</strong></p>\r\n<p style="text-align: justify;">\r\n	Cha mẹ kh&ocirc;ng thể n&oacute;i thay con nhưng c&oacute; thể khuyến kh&iacute;ch con n&oacute;i lời đầu ti&ecirc;n. Tuy nhi&ecirc;n h&atilde;y nhớ rằng mỗi b&eacute; con c&oacute; sự ph&aacute;t triển kh&aacute;c nhau v&agrave; v&igrave; thế sẽ c&oacute; b&eacute; n&oacute;i sớm nhưng cũng c&oacute; b&eacute; n&oacute;i chậm hơn một ch&uacute;t. Đừng qu&aacute; lo lắng v&agrave; h&atilde;y ki&ecirc;n nhẫn đợi chờ, rồi bạn sẽ được nghe b&eacute; thốt ra những lời dễ thương m&agrave; th&ocirc;i. Hẳn bạn cũng sẽ bớt lo lắng khi biết rằng m&atilde;i đến năm bốn tuổi, nh&agrave; b&aacute;c học Einstein mới bắt đầu biết n&oacute;i.</p>\r\n', '', 'img/upload/fda12c9f58d2932cb6a9a08949c53e6e.jpg', '', 230, '', 0, '2012-11-21 14:01:54', '2012-12-25 09:22:03', 1, 1, '10-cach-de-day-be-yeu-tap-noi');
INSERT INTO `news` (`id`, `user_id`, `title`, `title_en`, `introduction`, `introduction_en`, `content`, `content_en`, `images`, `images_en`, `category_id`, `source`, `view`, `created`, `modified`, `status`, `hotnew`, `alias`) VALUES
(134, 0, 'Mẹ chồng bòn rút tiền cưới của chúng tôi ', '', '<p>\r\n	<span style="font-family: verdana">Kh&ocirc;ng biết c&oacute; phải em suy nghĩ đơn giản kh&ocirc;ng. Hồi s&aacute;ng em mới đọc được c&aacute;i n&agrave;y tr&ecirc;n ngoisao.net m&agrave; giật cả m&igrave;nh:</span></p>\r\n', '', '<p>\r\n	<span style="font-family: verdana">Kh&ocirc;ng biết c&oacute; phải em suy nghĩ đơn giản kh&ocirc;ng. Hồi s&aacute;ng em mới đọc được c&aacute;i n&agrave;y tr&ecirc;n ngoisao.net m&agrave; giật cả m&igrave;nh:<br />\r\n	<br />\r\n	</span></p>\r\n<div class="bbcode_container">\r\n	<div class="bbcode_quote">\r\n		<div class="quote_container">\r\n			<font color="#3F3F3F"><span style="font-family: verdana">T&ocirc;i quen v&agrave; đồng &yacute; lấy anh v&igrave; t&igrave;nh cảm ch&acirc;n th&agrave;nh anh d&agrave;nh cho t&ocirc;i v&agrave; gia đ&igrave;nh t&ocirc;i. T&ocirc;i cũng thầm mừng v&igrave; gia đ&igrave;nh anh kh&ocirc;ng kh&aacute; giả g&igrave;, nh&agrave; anh cũng ở qu&ecirc;, gia đ&igrave;nh anh xuất th&acirc;n b&igrave;nh thường. T&ocirc;i nghĩ như thế cuộc sống l&agrave;m d&acirc;u trong gia đ&igrave;nh anh sẽ nhẹ nh&agrave;ng. Nhưng c&agrave;ng tiến gần đến đ&aacute;m cưới, t&ocirc;i c&agrave;ng nhận ra nhiều điều &quot;kỳ quặc&quot; ở gia đ&igrave;nh anh.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Ba mẹ anh tuy đ&atilde; c&oacute; ch&uacute;t &iacute;t thu nhập từ vườn tược nhưng vẫn sống chủ yếu bằng tiền c&aacute;c con gởi h&agrave;ng th&aacute;ng, v&agrave; số tiền n&agrave;y đ&atilde; được quy định, th&aacute;ng n&agrave;o đưa muộn l&agrave; y như rằng bị mẹ chồng nặng nhẹ: &quot;Cực khổ cả đời nu&ocirc;i con c&aacute;i lớn l&ecirc;n, giờ th&igrave; con c&aacute;i phải lo lại cho ba mẹ chứ&quot;. Vậy n&ecirc;n t&ocirc;i để &yacute; thấy chẳng bao giờ anh d&aacute;m trốn tr&aacute;nh, d&ugrave; th&aacute;ng đ&oacute; c&oacute; ph&aacute;t sinh g&igrave;, d&ugrave; ng&agrave;y cưới đang cận kề.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">&Ocirc;ng b&agrave; cũng chẳng lo cho ch&uacute;ng t&ocirc;i bất cứ thứ g&igrave; m&agrave; c&aacute;c c&ocirc; d&acirc;u kh&aacute;c lẽ ra phải được nhận từ nh&agrave; chồng. Vậy l&agrave; hai đứa phải t&iacute;ch g&oacute;p để chụp ảnh, mua &aacute;o cưới, trang tr&iacute; b&ecirc;n nh&agrave; trai... v&agrave; những g&igrave; bố mẹ chồng y&ecirc;u cầu.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Về b&ecirc;n nh&agrave; chồng, bước v&agrave;o ph&ograve;ng hai vợ chồng - căn ph&ograve;ng kh&ocirc;ng được dọn dẹp cũng chẳng được trang ho&agrave;ng cho ra c&aacute;i ph&ograve;ng t&acirc;n h&ocirc;n - mẹ t&ocirc;i nghẹn ng&agrave;o. D&ugrave; b&agrave; kh&ocirc;ng n&oacute;i lời n&agrave;o nhưng t&ocirc;i nghe kể l&agrave; tr&ecirc;n đường về b&agrave; đ&atilde; kh&oacute;c, kh&oacute;c v&igrave; kh&ocirc;ng ngờ con g&aacute;i m&igrave;nh lại thiệt th&ograve;i như thế khi về nh&agrave; chồng. Nhưng nếu b&agrave; biết những g&igrave; xảy ra sau đ&oacute;, chắc b&agrave; c&ograve;n x&oacute;t xa lắm!Rồi th&igrave; ng&agrave;y cưới cũng đến. Ng&agrave;y rước d&acirc;u &ocirc;ng b&agrave; cũng cho t&ocirc;i 5 chỉ v&agrave;ng (thực tế l&agrave; 4,5 chỉ), đưa cho nh&agrave; g&aacute;i hơn 10 triệu đồng tiền cưới. T&ocirc;i v&agrave; chồng nhủ thầm, th&ocirc;i th&igrave; ba mẹ cũng đ&atilde; thương, lo lắng để kh&ocirc;ng ngậm ng&ugrave;i với b&agrave; con họ h&agrave;ng.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Đ&aacute;m cưới b&ecirc;n nh&agrave; trai chia ra nhiều tiệc n&ecirc;n phải đ&oacute;n kh&aacute;ch cả ng&agrave;y. Ai d&egrave; tới trưa th&igrave; trời bắt đầu chuyển mưa. Thế l&agrave; bố mẹ chồng gọi t&ocirc;i v&agrave;o đếm tiền mừng để liệu coi lời lỗ thế n&agrave;o. Phong b&igrave; mừng được cất trong ph&ograve;ng mẹ chồng chứ hai vợ chồng cũng chẳng được giữ. Mới đếm được hơn 40 triệu đồng (gần nửa số kh&aacute;ch mời) th&igrave; mẹ chồng bảo t&ocirc;i l&agrave; b&agrave; giữ lại 40 triệu đồng để trả cho c&aacute;c khoản đ&atilde; chi, chiều t&ocirc;i lo đếm nốt phong b&igrave; để t&iacute;nh tiền m&acirc;m cỗ, rượu bia v&agrave; những khoản kh&aacute;c b&agrave; chưa nhớ ra.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">T&ocirc;i kh&ocirc;ng hiểu n&ecirc;n hỏi mẹ chồng th&igrave; được biết 40 triệu đồng đ&oacute; bao gồm tiền v&agrave;ng, tiền cưới, m&acirc;m quả v&agrave; tất tần tật chi ph&iacute; cho nh&agrave; trai đi rước d&acirc;u... Tới đ&acirc;y t&ocirc;i mới ngớ ra l&agrave; nh&agrave; chồng chẳng cho ch&uacute;ng t&ocirc;i thứ g&igrave; v&agrave; cũng chẳng phải lo bất cứ khoản n&agrave;o, giờ lại chặn trước số tiền họ đ&atilde; chi, sợ rằng trời mưa...</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Số phận cũng trớ tr&ecirc;u, đ&ecirc;m t&acirc;n h&ocirc;n anh phải đi l&agrave;m. T&ocirc;i th&igrave; cũng chẳng c&ograve;n t&acirc;m tr&iacute; n&agrave;o m&agrave; một m&igrave;nh ở lại nh&agrave; chồng. Thế l&agrave; ch&uacute;ng t&ocirc;i đi, hẹn bố mẹ chồng s&aacute;ng h&ocirc;m sau về sớm để thanh to&aacute;n c&aacute;c khoản c&ograve;n lại. T&ocirc;i mệt n&ecirc;n ngủ thiếp đi, c&ograve;n anh th&igrave; phải thức l&agrave;m việc đến s&aacute;ng. &Ocirc;ng b&agrave; đ&atilde; chẳng thương c&ograve;n gọi điện sớm hỏi khi n&agrave;o về? Chẳng d&aacute;m ăn s&aacute;ng, hai vợ chồng tranh thủ chạy hơn 20 km về nh&agrave;.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">C&ograve;n chưa kịp v&agrave;o nh&agrave;, mới đặt ch&acirc;n đến cửa th&igrave; bố chồng đ&atilde; đưa cho chồng t&ocirc;i tờ giấy với một danh s&aacute;ch những khoản chi. T&iacute;nh xong th&igrave; lỗ gần chục triệu đồng, chưa kể trước, sau hai vợ chồng chi cũng hơn 20 triệu đồng. Vậy l&agrave; ch&uacute;ng t&ocirc;i ra ri&ecirc;ng với b&agrave;n tay trắng. N&oacute;i đ&uacute;ng hơn th&igrave; c&ograve;n ch&uacute;t hồi m&ocirc;n mẹ t&ocirc;i cho để mua sắm trong nh&agrave;.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Vậy cũng chưa y&ecirc;n. Sau khi cưới được &iacute;t ng&agrave;y, v&igrave; qu&aacute; bận m&agrave; chưa gửi tiền h&agrave;ng th&aacute;ng về, mẹ chồng lại gọi điện nhắc chuyện lo đ&aacute;m cưới cho ch&uacute;ng t&ocirc;i, lo cho t&ocirc;i 5 chỉ v&agrave;ng n&ecirc;n ốm, giờ n&oacute;i t&ocirc;i cho lại 1 chỉ v&agrave;ng. Nghe chồng n&oacute;i m&agrave; kh&ocirc;ng thể tưởng tưởng nổi tại sao b&agrave; lại mở lời như thế được? Tại sao b&agrave; kh&ocirc;ng nghĩ c&aacute;c con chỉ mới ra ri&ecirc;ng c&ograve;n bộn bề thế n&agrave;o, c&ograve;n bao nhi&ecirc;u khoản phải chi trả.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Nhưng để &ecirc;m nh&agrave; &ecirc;m cửa, để chồng khỏi kh&oacute; xứ t&ocirc;i cũng đồng &yacute;. Nhưng bấy nhi&ecirc;u đ&oacute; cũng chưa l&agrave;m t&ocirc;i buồn bằng việc sau cưới, mẹ chồng tỏ ra kh&oacute; chịu, coi thường, ph&acirc;n biệt đối xử v&agrave; gần như chẳng h&agrave;i l&ograve;ng với bất cứ điều g&igrave; t&ocirc;i l&agrave;m cho b&agrave;.</span></font><br />\r\n			<font color="#3F3F3F"><span style="font-family: verdana">Sau h&ocirc;n nh&acirc;n t&ocirc;i thực sự sốc nhưng may mắn thay t&ocirc;i c&ograve;n c&oacute; chồng b&ecirc;n cạnh. Ch&uacute;ng t&ocirc;i tự động vi&ecirc;n nhau vượt qua thời gian n&agrave;y, b&agrave;n tay trắng ch&uacute;ng t&ocirc;i sẽ g&acirc;y dựng tổ ấm như m&igrave;nh mong ước. Cố l&ecirc;n nh&eacute; chồng y&ecirc;u!</span></font></div>\r\n	</div>\r\n</div>\r\n<p>\r\n	Em thấy những chuyện n&agrave;y l&agrave; ... rất b&igrave;nh thường. Th&aacute;ng 3 năm sau l&agrave; em kết h&ocirc;n. Nh&agrave; chồng b&ecirc;n em cũng kh&ocirc;ng c&oacute; điều kiện v&agrave; em cũng biết từ trước n&ecirc;n kh&ocirc;ng c&oacute; đ&ograve;i hỏi g&igrave; nhiều. Sắp tới bọn em đi chụp ảnh cưới, mua sắm đồ đạc ph&ograve;ng cưới, quần &aacute;o em v&agrave; bạn trai cũng định tự lo. Em cũng n&oacute;i lu&ocirc;n l&agrave; tiền mừng đ&aacute;m cưới sẽ gửi lại cho c&aacute;c bố mẹ hai b&ecirc;n để trả nợ v&agrave; những khoản phải chi ra trong đ&aacute;m cưới (Em dự định sẽ chỉ giữ lại tiền mừng của bạn b&egrave; em). Tự em cũng cảm thấy nếu m&agrave; bố mẹ chồng lo cho những việc như thế th&igrave; ... rất ngại. Thứ nhất l&agrave; c&aacute;c cụ c&oacute; tuổi rồi (2 bố mẹ chồng em đều hơn 60 tuổi), kh&ocirc;ng c&oacute; thu nhập g&igrave; ngo&agrave;i đồng lương hưu ba cọc ba đồng. Thứ hai, em cảm thấy nếu c&aacute;c cụ mua sắm đồ đạc cho, sau n&agrave;y c&oacute; muốn sẳm sửa g&igrave; cũng phải th&ocirc;ng qua &yacute; của c&aacute;c cụ. N&oacute;i chung, em muốn tự lập về kinh tế ngay từ đầu. C&oacute; lẽ em c&ograve;n trẻ qu&aacute; n&ecirc;n suy nghĩ ng&acirc;y thơ hay sao. <b>C&aacute;c chị c&oacute; kinh nghiệm c&oacute; thể gi&uacute;p em, như vậy theo lễ tiết b&igrave;nh thường bố mẹ chồng thường lo cho vợ chồng mới cưới những khoản g&igrave; ạ?</b></p>\r\n', '', 'img/upload/631c210ee87e9d136768fe66d9ce6282.jpg', '', 230, '', 0, '2012-11-21 14:22:50', '2012-12-30 10:07:58', 1, 1, 'me-chong-bon-rut-tien-cuoi-cua-chung-toi'),
(136, 0, 'Site Map', '', '<p>\r\n	<span style="color:#008000;"><b><span style="font-size: large;">XƯỞNG SẢN XUẤT SOFA QUANG VINH</span></b></span></p>\r\n', '', '<p>\r\n	<iframe frameborder="0" height="450" marginheight="0" marginwidth="0" scrolling="no" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=vi&amp;geocode=&amp;q=+Th%C3%BAy+L%C4%A9nh+-+L%C4%A9nh+Nam+-+Ho%C3%A0ng+Mai+-+H%C3%A0+n%E1%BB%99i+-viet+nam&amp;aq=&amp;sll=20.989009,105.78289&amp;sspn=0.083822,0.169086&amp;ie=UTF8&amp;hq=&amp;hnear=Th%C3%BAy+L%C4%A9nh,+L%C4%A9nh+Nam,+Ho%C3%A0ng+Mai,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam&amp;ll=20.974167,105.894&amp;spn=0.005239,0.010568&amp;t=m&amp;z=14&amp;output=embed" width="525"></iframe><br />\r\n	<small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=vi&amp;geocode=&amp;q=+Th%C3%BAy+L%C4%A9nh+-+L%C4%A9nh+Nam+-+Ho%C3%A0ng+Mai+-+H%C3%A0+n%E1%BB%99i+-viet+nam&amp;aq=&amp;sll=20.989009,105.78289&amp;sspn=0.083822,0.169086&amp;ie=UTF8&amp;hq=&amp;hnear=Th%C3%BAy+L%C4%A9nh,+L%C4%A9nh+Nam,+Ho%C3%A0ng+Mai,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam&amp;ll=20.974167,105.894&amp;spn=0.005239,0.010568&amp;t=m&amp;z=14" style="color:#0000FF;text-align:left">Xem Bản đồ cỡ lớn hơn</a></small></p>\r\n', '', '', '', 269, '', 0, '2013-01-10 08:00:23', '2013-01-15 10:20:36', 1, 1, 'site-map');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `pid`, `pname`, `images`, `quantity`, `price`, `total_price`) VALUES
(1, 'id366822', 21, 'Ống công nghiệp inox ', '/tana/admin/webroot/upload/image/images/index_29.jpg', 1, 300, 300),
(2, 'id366822', 20, 'Ống công nghiệp inox', '/tana/admin/webroot/upload/image/images/index_33.jpg', 1, 400, 400),
(3, 'id366822', 19, 'Ống công nghiệp inox ', '/tana/admin/webroot/upload/image/images/index_31.jpg', 1, 200, 200),
(4, 'id47761', 25, 'Ống công nghiệp inox ', '/tana/admin/webroot/upload/image/images/index_27.jpg', 5, 120, 600),
(5, 'id47761', 20, 'Ống công nghiệp inox', '/tana/admin/webroot/upload/image/images/index_33.jpg', 5, 400, 2000),
(6, 'id717636', 25, 'sp1', '/khieuvu/admin/webroot/upload/image/images/bg_menu_09.jpg', 1, 120, 120),
(7, 'id881866', 21, 'sp2', '/khieuvu/admin/webroot/upload/image/images/bg_menu_17.jpg', 1, 300, 300),
(8, 'id503470', 26, 'sp43', '/khieuvu/admin/webroot/upload/image/images/bg_menu_20.jpg', 1, 120000, 120000),
(9, 'id67517', 27, 'sp3', '/khieuvu/admin/webroot/upload/image/files/3.jpg', 1, 200, 200);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(256) NOT NULL,
  `website` varchar(256) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `images` varchar(256) NOT NULL,
  `content` text,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `phone`, `email`, `website`, `fax`, `address`, `images`, `content`, `created`, `modified`, `status`) VALUES
(18, 'Công ty bcd', '', '', 'http://google.com', NULL, '', 'img/upload/aded75138b945d987476ee4beaa48400.jpg', NULL, '2012-07-29', '2012-07-29', 1),
(17, 'Công ty dcb', '', '', 'http://google.com', NULL, '', 'img/upload/65756cba90775ab2b30a744199a7c84a.jpg', NULL, '2012-07-29', '2012-07-29', 1),
(16, 'Công ty abc', '', '', 'http://eximbank.com.vn', NULL, '', 'img/upload/61c692bbd3e8c4f8cb24ca87e9ff3d92.jpg', NULL, '2012-07-29', '2012-07-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `title_en` varchar(256) NOT NULL,
  `price` int(30) DEFAULT NULL,
  `manufacturer` varchar(256) NOT NULL COMMENT 'hang sx',
  `introduction` text NOT NULL COMMENT 'mo ta chung',
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `images` varchar(256) NOT NULL,
  `images_en` varchar(256) NOT NULL,
  `catproduct_id` int(10) NOT NULL,
  `display` int(2) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `sptieubieu` tinyint(2) NOT NULL,
  `status` int(2) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `kichthuoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `chatlieu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoanggia` int(20) DEFAULT NULL,
  `spkhuyenmai` int(2) DEFAULT NULL,
  `giakhuyenmai` int(250) DEFAULT NULL,
  `giausd` varchar(250) DEFAULT NULL,
  `luatuoi` text,
  `newpro` int(2) DEFAULT NULL,
  `loaigia` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=778 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `title_en`, `price`, `manufacturer`, `introduction`, `content`, `content_en`, `images`, `images_en`, `catproduct_id`, `display`, `created`, `modified`, `sptieubieu`, `status`, `alias`, `code`, `kichthuoc`, `chatlieu`, `khoanggia`, `spkhuyenmai`, `giakhuyenmai`, `giausd`, `luatuoi`, `newpro`, `loaigia`) VALUES
(678, 'Sofa Văn Phòng VP 01', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			H&atilde;ng sản xuất: Quang Vinh</p>\r\n		<p>\r\n			Chất liệu: Da nhập khẩu cao cấp</p>\r\n		<p>\r\n			T&igrave;nh trạng: C&ograve;n h&agrave;ng</p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a53e70de45d478af634e7dcb8b2c1485.png', '', 385, 0, '2013-01-14 02:37:11', '2013-01-15 14:12:50', 0, 1, 'sofa-van-phong-vp-01', 'Sofa-ghe sofa-VP-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(680, 'Sofa Đẹp GD 18', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/ef3455567d153dce40f7609de8be30c2.jpg', '', 374, 0, '2013-01-15 01:42:23', '2013-01-16 03:35:19', 0, 1, 'sofa-dep-gd-18', 'Sofa-ghe sofa-GD-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(677, 'Sofa Gia Đình GD 01', '', 3000000, '292', '', '<div class="noidung">\r\n	<p>\r\n		H&atilde;ng sản xuất: Quang Vinh</p>\r\n	<p>\r\n		Chất liệu: Da nhập khẩu cao cấp</p>\r\n	<p>\r\n		T&igrave;nh trạng: C&ograve;n h&agrave;ng</p>\r\n</div>\r\n', '', 'img/upload/d091cee3e28e88f0c894584e80801133.jpg', '', 383, 0, '2013-01-14 02:35:15', '2013-01-15 14:11:43', 0, 1, 'sofa-gia-dinh-gd-01', 'Sofa-ghe sofa-GD-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(676, 'Sofa Đẹp GD 15', '', 3200000, '293', '', '<p>\r\n	H&atilde;ng sản xuất: Quang Vinh</p>\r\n<p>\r\n	Chất liệu: Da nhập khẩu Cao cấp</p>\r\n<p>\r\n	T&igrave;nh trạng: C&ograve;n h&agrave;ng</p>\r\n', '', 'img/upload/94021c47d3d8baf2ef3c2036e6ab755a.jpg', '', 374, 0, '2013-01-14 02:25:53', '2013-01-16 03:33:53', 0, 1, 'sofa-dep-gd-15', 'Sofa-ghe-sofa-GD-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(681, 'Sofa Đẹp GD 22', '', 3000000, '293', '', '<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n', '', 'img/upload/2456a0b15d461f6670e69b1b67ec8700.jpg', '', 374, 0, '2013-01-15 01:45:52', '2013-01-15 14:10:14', 0, 1, 'sofa-dep-gd-22', 'Sofa-ghe sofa-GD-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(679, 'Sofa Đẹp GD 16', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/23f9aae922d14ec1941191fb48e94a13.jpg', '', 374, 0, '2013-01-14 04:02:04', '2013-01-16 03:34:25', 1, 1, 'sofa-dep-gd-16', 'Sofa-ghe sofa-GD-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(682, 'Sofa Đẹp QV 01', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/f7221fad91e014027f03fdc050145344.jpg', '', 374, 0, '2013-01-15 01:48:02', '2013-01-16 03:31:32', 1, 1, 'sofa-dep-qv-01', 'Sofa-ghe sofa-QV-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(683, 'Sofa Đẹp QV 02', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/b7c11b3871ae719e186fc589b79e0ae3.jpg', '', 374, 0, '2013-01-15 01:49:48', '2013-01-15 14:41:11', 1, 1, 'sofa-dep-qv-02', 'Sofa-ghe sofa-QV-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(684, 'Sofa Đẹp QV 03', '', 3000000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 'img/upload/6e7ea86705ab224f1905dcab68067ee0.jpeg', '', 374, 0, '2013-01-15 01:58:28', '2013-01-15 14:08:49', 0, 1, 'sofa-dep-qv-03', 'Sofa-ghe sofa-QV-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(685, 'Sofa Đẹp QV 04', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 'img/upload/f78e0bbb48c2a080b90f33befa4e3d2b.jpg', '', 374, 0, '2013-01-15 02:00:01', '2013-01-15 14:08:25', 0, 1, 'sofa-dep-qv-04', 'Sofa-ghe sofa-QV-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(686, 'Sofa Đẹp QV 05', '', 3000000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 'img/upload/f989cb7a2e3f197993ec2e575182690e.jpeg', '', 374, 0, '2013-01-15 02:04:58', '2013-01-15 14:07:56', 0, 1, 'sofa-dep-qv-05', 'Sofa-ghe sofa-QV-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(687, 'Sofa Đẹp QV 06', '', 3500000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/feb3bf9354e0b330b39a2331256446be.jpg', '', 374, 0, '2013-01-15 02:06:50', '2013-01-15 15:52:11', 1, 1, 'sofa-dep-qv-06', 'Sofa-ghe sofa-QV-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(688, 'Sofa Đẹp QV 07', '', 3000000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/a911d50d959e93cc5d48adfef6f165b3.jpg', '', 374, 0, '2013-01-15 02:08:01', '2013-01-15 14:06:51', 0, 1, 'sofa-dep-qv-07', 'Sofa-ghe sofa-QV-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(689, 'Sofa Đẹp QV 08', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/4575b0ce55fef16581bdbf2bddfe0e99.jpg', '', 374, 0, '2013-01-15 02:08:58', '2013-01-16 03:33:02', 1, 1, 'sofa-dep-qv-08', 'Sofa-ghe sofa-QV-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(690, 'Sofa Đẹp QV 09', '', 3500000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da&nbsp; nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/31f4889e2754af3d8614d140c88afe4d.jpg', '', 374, 0, '2013-01-15 02:10:33', '2013-01-15 15:52:43', 0, 1, 'sofa-dep-qv-09', 'Sofa-ghe sofa-QV-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(691, 'Sofa Đẹp QV 10', '', 3200000, '293', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/bc4828b4e6840d928b35ec466382327d.jpg', '', 374, 0, '2013-01-15 02:11:28', '2013-01-16 03:32:10', 0, 1, 'sofa-dep-qv-10', 'Sofa-ghe sofa-QV-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(692, 'Sofa đã sản xuất 01', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/dc9cc9b681856b4df59ddaed3fc24ccb.jpg', '', 386, 0, '2013-01-15 02:16:48', '2013-01-15 05:10:22', 0, 1, 'sofa-da-san-xuat-01', 'Sofa-ghe sofa-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(693, 'Sofa đã sản xuất 02', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/cf3b674a9b5d56b6aca4c18e6dc64a5b.jpg', '', 386, 0, '2013-01-15 02:18:08', '2013-01-15 05:10:28', 0, 1, 'sofa-da-san-xuat-02', 'Sofa-ghe sofa-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(694, 'Sofa đã sản xuất 03', '', 0, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/81c8aeabdbbe7abb081a0c51fe147554.jpg', '', 386, 0, '2013-01-15 02:19:30', '2013-01-15 05:05:34', 1, 1, 'sofa-da-san-xuat-03', 'Sofa-ghe sofa-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(695, 'Sofa đã sản xuất 04', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/4131f76e821bb7cf47775323cbfcca84.jpg', '', 386, 0, '2013-01-15 02:20:18', '2013-01-15 05:06:10', 0, 1, 'sofa-da-san-xuat-04', 'Sofa-ghe sofa-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(696, 'Sofa đã sản xuất 05', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/4da21d23f357350bf99811c64b104ad9.jpg', '', 386, 0, '2013-01-15 02:21:05', '2013-01-15 05:10:18', 0, 1, 'sofa-da-san-xuat-05', 'Sofa-ghe sofa-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(697, 'Sofa đã sản xuất 06', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/4da21d23f357350bf99811c64b104ad9.jpg', '', 386, 0, '2013-01-15 02:22:01', '2013-01-15 05:06:55', 0, 1, 'sofa-da-san-xuat-06', 'Sofa-ghe sofa-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(698, 'Sofa đã sản xuất 07', '', NULL, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/6fd3e67e9f5313336ba3e5e248b30ff9.jpg', '', 386, 0, '2013-01-15 02:23:39', '2013-01-15 05:07:01', 0, 1, 'sofa-da-san-xuat-07', 'Sofa-ghe sofa-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(699, 'Sofa đã sản xuất 08', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/f8170e9c52fa9b8b0c7c84aa5f489beb.jpg', '', 386, 0, '2013-01-15 02:24:35', '2013-01-15 05:07:09', 0, 1, 'sofa-da-san-xuat-08', 'Sofa-ghe sofa-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(700, 'Sofa đã sản xuất 09', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/6da6c694e96fa60e3be235607388f995.jpg', '', 386, 0, '2013-01-15 02:25:28', '2013-01-15 05:07:15', 0, 1, 'sofa-da-san-xuat-09', 'Sofa-ghe sofa-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(701, 'Sofa đã sản xuất 10', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/66f8889b5bbb73e37091bcf1660edae9.jpg', '', 386, 0, '2013-01-15 02:26:13', '2013-01-15 05:07:20', 0, 1, 'sofa-da-san-xuat-10', 'Sofa-ghe sofa-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(702, 'Sofa đã sản xuất 11', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/d08be6331172434ec3252cb951d53622.jpg', '', 386, 0, '2013-01-15 02:27:01', '2013-01-15 05:09:02', 0, 1, 'sofa-da-san-xuat-11', 'Sofa-ghe sofa-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(703, 'Sofa đã sản xuất 12', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/924afa45130e9361d86015340332e658.jpg', '', 386, 0, '2013-01-15 02:27:55', '2013-01-15 05:07:42', 0, 1, 'sofa-da-san-xuat-12', 'Sofa-ghe sofa-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(704, 'Sofa đã sản xuất 13', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/66342c763d5f22404e5417b218a78c80.jpg', '', 386, 0, '2013-01-15 02:28:42', '2013-01-15 05:07:36', 0, 1, 'sofa-da-san-xuat-13', 'Sofa-ghe sofa-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(705, 'Sofa đã sản xuất 14', '', NULL, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/748380c56bd180704f9d2de53e20ef4c.jpg', '', 386, 0, '2013-01-15 02:29:29', '2013-01-15 05:07:30', 0, 1, 'sofa-da-san-xuat-14', 'Sofa-ghe sofa-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(708, 'Sofa Gia Đình GD 03', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/8b6c620ad065a1aac06f9b5be90259f2.jpg', '', 383, 0, '2013-01-15 02:34:22', '2013-01-15 02:34:22', 1, 1, 'sofa-gia-dinh-gd-03', 'Sofa-ghe sofa-GD-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(707, 'Sofa Gia Đình GD 02', '', 3200000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/4606c83d62831b2546eaf03e444699b8.jpg', '', 383, 0, '2013-01-15 02:32:44', '2013-01-15 14:54:48', 0, 1, 'sofa-gia-dinh-gd-02', 'Sofa-ghe sofa-GD-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(709, 'Sofa Gia Đình GD 04', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/f357a47b5cbf0a5760fd73f57b9089db.jpg', '', 383, 0, '2013-01-15 02:35:02', '2013-01-15 02:35:02', 0, 1, 'sofa-gia-dinh-gd-04', 'Sofa-ghe sofa-GD-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(710, 'Sofa Gia Đình GD 05', '', 3300000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/31839724c6e2a23f710f71228391549b.jpg', '', 383, 0, '2013-01-15 02:35:48', '2013-01-15 14:35:50', 0, 1, 'sofa-gia-dinh-gd-05', 'Sofa-ghe sofa-GD-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(711, 'Sofa Gia Đình GD 06', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/bfc1350202b181b5f81f2804b033f52a.jpg', '', 383, 0, '2013-01-15 02:37:12', '2013-01-15 14:53:10', 0, 1, 'sofa-gia-dinh-gd-06', 'Sofa-ghe sofa-GD-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(712, 'Sofa Gia Đình GD 07', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/4e4b885f5bd7ac8726550458d70b6d20.jpg', '', 383, 0, '2013-01-15 02:37:59', '2013-01-15 02:37:59', 1, 1, 'sofa-gia-dinh-gd-07', 'Sofa-ghe sofa-GD-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(713, 'Sofa Gia Đình GD 08', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/9cb388723da40519a736295987e3f575.jpg', '', 383, 0, '2013-01-15 02:39:10', '2013-01-15 02:39:10', 0, 1, 'sofa-gia-dinh-gd-08', 'Sofa-ghe sofa-GD-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(714, 'Sofa Gia Đình GD 09', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/969ef075c4bac70d931370c5d9329347.jpg', '', 383, 0, '2013-01-15 02:40:05', '2013-01-15 02:40:05', 1, 1, 'sofa-gia-dinh-gd-09', 'Sofa-ghe sofa-GD-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(715, 'Sofa Gia Đình GD 10', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/3a7c2846da6b5a79ecab09de923e37ad.jpg', '', 383, 0, '2013-01-15 02:41:01', '2013-01-15 02:41:01', 0, 1, 'sofa-gia-dinh-gd-10', 'Sofa-ghe sofa-GD-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(716, 'Sofa Gia Đình GD 11', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/09edf89992e1a635c8f9abc9d4b8d0b0.jpg', '', 383, 0, '2013-01-15 02:41:57', '2013-01-15 02:41:57', 0, 1, 'sofa-gia-dinh-gd-11', 'Sofa-ghe sofa-GD-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(717, 'Sofa Gia Đình GD 12', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a168a7903a6983549933ba30be7756c3.jpg', '', 383, 0, '2013-01-15 02:42:48', '2013-01-15 02:42:48', 0, 1, 'sofa-gia-dinh-gd-12', 'Sofa-ghe sofa-GD-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(718, 'Sofa Gia Đình GD 13', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/7908770dbcd195b180638f2dd7fc9c45.jpg', '', 383, 0, '2013-01-15 02:43:29', '2013-01-15 02:43:29', 0, 1, 'sofa-gia-dinh-gd-13', 'Sofa-ghe sofa-GD-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(719, 'Sofa Gia Đình GD 14', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/2f35c245d77c226f78b01f7052f689fa.jpg', '', 383, 0, '2013-01-15 02:44:21', '2013-01-15 02:44:21', 0, 1, 'sofa-gia-dinh-gd-14', 'Sofa-ghe sofa-GD-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(720, 'Sofa Gia Đình GD 17', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a7844ed213a2ca63609546c537290ec8.jpg', '', 383, 0, '2013-01-15 02:45:01', '2013-01-15 02:45:01', 0, 1, 'sofa-gia-dinh-gd-17', 'Sofa-ghe sofa-GD-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(721, 'Sofa Gia Đình GD 19', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/424a9d97d7d8464347a0f0c87f661cc8.jpg', '', 383, 0, '2013-01-15 02:45:50', '2013-01-15 02:45:50', 0, 1, 'sofa-gia-dinh-gd-19', 'Sofa-ghe sofa-GD-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(722, 'Sofa Gia Đình GD 20', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/404637ad2b9c741390e1767234e9f183.jpg', '', 383, 0, '2013-01-15 02:46:40', '2013-01-15 02:46:40', 1, 1, 'sofa-gia-dinh-gd-20', 'Sofa-ghe sofa-GD-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(723, 'Sofa Gia Đình GD 21', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/43e9973db9d5bbc68f878fa731c0781b.jpg', '', 383, 0, '2013-01-15 02:47:36', '2013-01-15 14:50:39', 0, 1, 'sofa-gia-dinh-gd-21', 'Sofa-ghe sofa-GD-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(724, 'Sofa Gia Đình GD 23', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc nỉ nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/fa2cf257a52addaa12cf4f0e664aa9cc.jpg', '', 383, 0, '2013-01-15 02:48:49', '2013-01-15 14:49:43', 1, 1, 'sofa-gia-dinh-gd-23', 'Sofa-ghe sofa-GD-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(725, 'Sofa Gia Đình GD 24', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a9c5fb52e75b20ea2f9621fb1ad19b91.jpg', '', 383, 0, '2013-01-15 02:49:42', '2013-01-15 02:49:42', 0, 1, 'sofa-gia-dinh-gd-24', 'Sofa-ghe sofa-GD-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(726, 'Sofa Gia Đình GD 25', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/e220b0b06c8ae0bc8d68e88fed1a7b39.jpg', '', 383, 0, '2013-01-15 02:50:20', '2013-01-15 02:50:20', 0, 1, 'sofa-gia-dinh-gd-25', 'Sofa-ghe sofa-GD-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(727, 'Sofa Gia Đình GD 26', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/e2cdcffe7417911c6371c6c2a14fb150.jpg', '', 383, 0, '2013-01-15 02:51:03', '2013-01-15 02:51:03', 0, 1, 'sofa-gia-dinh-gd-26', 'Sofa-ghe sofa-GD-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(728, 'Sofa Gia Đình GD 27', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/823f231da88f852f390c4fa421a38376.jpeg', '', 383, 0, '2013-01-15 02:52:04', '2013-01-15 02:52:04', 0, 1, 'sofa-gia-dinh-gd-27', 'Sofa-ghe sofa-GD-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(729, 'Sofa Gia Đình GD 28', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/149cd565470a223fad827659fc2224d8.jpeg', '', 383, 0, '2013-01-15 02:52:40', '2013-01-15 02:52:40', 0, 1, 'sofa-gia-dinh-gd-28', 'Sofa-ghe sofa-GD-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(730, 'Sofa Gia Đình GD 29', '', 3000000, '292', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/6fa5a4bc0005e3c89c9128bd3a68bd61.jpeg', '', 383, 0, '2013-01-15 02:55:20', '2013-01-15 02:55:20', 0, 1, 'sofa-gia-dinh-gd-29', 'Sofa-ghe sofa-GD-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(731, 'Sofa Góc 01', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/e2040c53fe35501f201f24ade759559d.png', '', 380, 0, '2013-01-15 02:56:47', '2013-01-15 02:56:47', 0, 1, 'sofa-goc-01', 'Sofa-ghe sofa-G-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(732, 'Sofa Góc 02', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a275eb3627d18f786fc9a83704c44eec.jpg', '', 380, 0, '2013-01-15 02:57:48', '2013-01-15 14:47:29', 0, 1, 'sofa-goc-02', 'Sofa-ghe sofa-G-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(733, 'Sofa Góc 03', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/0ab42245f9cb8a028664e02128aa94c4.jpg', '', 380, 0, '2013-01-15 02:58:41', '2013-01-15 02:58:41', 1, 1, 'sofa-goc-03', 'Sofa-ghe sofa-G-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(734, 'Sofa Góc 04', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/75fdd91290f12da7a862af7243cebfcb.jpg', '', 380, 0, '2013-01-15 02:59:59', '2013-01-15 02:59:59', 0, 1, 'sofa-goc-04', 'Sofa-ghe sofa-G-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(735, 'Sofa Góc 05', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/87cc5749b2a3cd674308447adab84eb5.jpg', '', 380, 0, '2013-01-15 03:01:02', '2013-01-15 03:01:02', 1, 1, 'sofa-goc-05', 'Sofa-ghe sofa-G-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(736, 'Sofa Góc 06', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/6f14d19bdb68022dace997e31361baf6.jpg', '', 380, 0, '2013-01-15 03:01:49', '2013-01-15 03:01:49', 0, 1, 'sofa-goc-06', 'Sofa-ghe sofa-G-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(737, 'Sofa Góc 07', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/8d6fb416c625cf5dca8db3db1fcbf963.jpg', '', 380, 0, '2013-01-15 03:02:37', '2013-01-15 03:02:37', 1, 1, 'sofa-goc-07', 'Sofa-ghe sofa-G-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(738, 'Sofa Góc 08', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/b22281d5bc350db96bc5ad27b9320ac9.jpg', '', 380, 0, '2013-01-15 03:03:29', '2013-01-15 03:03:29', 1, 1, 'sofa-goc-08', 'Sofa-ghe sofa-G-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(739, 'Sofa Góc 09', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a63c29504246e3c2a097ecd3d62e9a14.jpg', '', 380, 0, '2013-01-15 03:04:16', '2013-01-15 03:04:16', 0, 1, 'sofa-goc-09', 'Sofa-ghe sofa-G-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(740, 'Sofa Góc 10', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/100d36ed41bb8460357fc24b5d8eb96c.jpg', '', 380, 0, '2013-01-15 03:04:57', '2013-01-15 03:04:57', 0, 1, 'sofa-goc-10', 'Sofa-ghe sofa-G-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(741, 'Sofa Góc 11', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/1622f232a6df907b585a46dc4824852f.jpg', '', 380, 0, '2013-01-15 03:05:50', '2013-01-15 03:05:50', 1, 1, 'sofa-goc-11', 'Sofa-ghe sofa-G-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(742, 'Sofa Góc 12', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/d47185b19f2a86c501c29b196065db36.jpeg', '', 380, 0, '2013-01-15 03:06:55', '2013-01-15 14:45:11', 1, 1, 'sofa-goc-12', 'Sofa-ghe sofa-G-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(743, 'Sofa Góc 13', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/10d31bb1de775cd116a709bd920b23fa.jpg', '', 380, 0, '2013-01-15 03:08:58', '2013-01-15 03:08:58', 1, 1, 'sofa-goc-13', 'Sofa-ghe sofa-G-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(744, 'Sofa Góc 14', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/26e874c293780a47958228a14064db01.jpg', '', 380, 0, '2013-01-15 03:09:48', '2013-01-15 03:09:48', 1, 1, 'sofa-goc-14', 'Sofa-ghe sofa-G-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(745, 'Sofa Góc 15', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<p>\r\n			<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n		<p>\r\n			<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n		<p>\r\n			<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/b913626cc5bf2b15782c40906a196efa.jpg', '', 380, 0, '2013-01-15 03:12:05', '2013-01-15 03:12:05', 1, 1, 'sofa-goc-15', 'Sofa-ghe sofa-G-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(746, 'Sofa Góc 16', '', 3000000, '', '', '<div class="noidung">\r\n	<p>\r\n		<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n	<p>\r\n		<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n	<p>\r\n		<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n</div>\r\n', '', 'img/upload/c799f2e820409de8e378eb7135869853.jpg', '', 380, 0, '2013-01-15 03:18:44', '2013-01-15 03:18:44', 0, 1, 'sofa-goc-16', 'Sofa-ghe sofa-G-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(747, 'Sofa Góc 17', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da hoặc Nỉ nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/c50b3610bc1af26851c1f7bf5fd3ff55.jpg', '', 380, 0, '2013-01-15 03:20:05', '2013-01-15 03:20:05', 1, 1, 'sofa-goc-17', 'Sofa-ghe sofa-G-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(748, 'Sofa Góc 18', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/7437b8661f67cc15fc1d960bb6e1d88a.jpg', '', 380, 0, '2013-01-15 03:21:51', '2013-01-15 03:21:51', 0, 1, 'sofa-goc-18', 'Sofa-ghe sofa-G-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(749, 'Sofa Góc 19', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/30add23a1ad5316aabd935afcdfd594a.jpg', '', 380, 0, '2013-01-15 03:23:14', '2013-01-15 03:23:14', 1, 1, 'sofa-goc-19', 'Sofa-ghe sofa-G-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(750, 'Sofa Góc 20', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/fa1ae11e3b963ea6416c9e511627e5ab.jpg', '', 380, 0, '2013-01-15 03:23:58', '2013-01-15 03:23:58', 1, 1, 'sofa-goc-20', 'Sofa-ghe sofa-G-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(751, 'Sofa Góc 21', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/79d273891136f6a7b0163030fc5b1171.jpeg', '', 380, 0, '2013-01-15 03:24:58', '2013-01-15 03:24:58', 1, 1, 'sofa-goc-21', 'Sofa-ghe sofa-G-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(752, 'Sofa Góc 22', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/17a39304ec7e6a1f3fcbdb26238d6e01.jpg', '', 380, 0, '2013-01-15 03:26:47', '2013-01-15 03:26:47', 1, 1, 'sofa-goc-22', 'Sofa-ghe sofa-G-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(753, 'Sofa Góc 23', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/45f72ed87189e0b4dbfe5c827e5ba11b.jpeg', '', 380, 0, '2013-01-15 03:27:43', '2013-01-15 14:04:17', 0, 1, 'sofa-goc-23', 'Sofa-ghe sofa-G-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(754, 'Sofa Góc 24', '', 3000000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/8d2ed6272e17361fa9769a839646641c.jpeg', '', 380, 0, '2013-01-15 03:28:32', '2013-01-15 14:02:34', 1, 1, 'sofa-goc-24', 'Sofa-ghe sofa-G-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(755, 'Sofa Văn Phòng VP 02', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/dc07e39eaf4734536a64f5459a026b4c.jpg', '', 385, 0, '2013-01-15 03:31:48', '2013-01-15 14:32:41', 0, 1, 'sofa-van-phong-vp-02', 'Sofa-ghe sofa-VP-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(756, 'Sofa Văn Phòng VP 03', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/ed428c653457159a939355c1d00ca0cd.jpg', '', 385, 0, '2013-01-15 03:33:04', '2013-01-15 14:32:16', 0, 1, 'sofa-van-phong-vp-03', 'Sofa-ghe sofa-VP-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(757, 'Sofa Văn Phòng VP 04', '', 13000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/d8f93f90163b21da9db5bb0a4496d9b6.png', '', 385, 0, '2013-01-15 03:34:57', '2013-01-15 14:31:53', 0, 1, 'sofa-van-phong-vp-04', 'Sofa-ghe sofa-VP-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(758, 'Sofa Văn Phòng VP 05', '', 12000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/9974aa8bc02ab480357bbc9d8e84f899.jpg', '', 385, 0, '2013-01-15 03:36:31', '2013-01-15 14:31:34', 1, 1, 'sofa-van-phong-vp-05', 'Sofa-ghe sofa-VP-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(759, 'Sofa Văn Phòng VP 06', '', 12500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/aa3cf9807584574046d9ec5980eac99c.jpg', '', 385, 0, '2013-01-15 03:37:23', '2013-01-15 14:31:12', 0, 1, 'sofa-van-phong-vp-06', 'Sofa-ghe sofa-VP-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(760, 'Sofa Văn Phòng VP 07', '', 10500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/9c3f5f37b6f92e828da606156f3a5bf2.jpg', '', 385, 0, '2013-01-15 03:38:59', '2013-01-15 14:30:52', 0, 1, 'sofa-van-phong-vp-07', 'Sofa-ghe sofa-VP-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(761, 'Sofa Văn Phòng VP 08', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/14c9e66c09a0f7d5e27a260ce50bfe90.jpg', '', 385, 0, '2013-01-15 03:39:50', '2013-01-15 14:30:16', 0, 1, 'sofa-van-phong-vp-08', 'Sofa-ghe sofa-VP-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(762, 'Sofa Văn Phòng VP 09', '', 13000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/b82fcfa1eb6f759886830ab7b0ac6650.jpg', '', 385, 0, '2013-01-15 03:40:39', '2013-01-15 14:29:55', 0, 1, 'sofa-van-phong-vp-09', 'Sofa-ghe sofa-VP-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(763, 'Sofa Văn Phòng VP 10', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/1022d9e564d736e7a2656d8098f82fae.jpg', '', 385, 0, '2013-01-15 03:41:29', '2013-01-15 14:29:25', 0, 1, 'sofa-van-phong-vp-10', 'Sofa-ghe sofa-VP-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `title`, `title_en`, `price`, `manufacturer`, `introduction`, `content`, `content_en`, `images`, `images_en`, `catproduct_id`, `display`, `created`, `modified`, `sptieubieu`, `status`, `alias`, `code`, `kichthuoc`, `chatlieu`, `khoanggia`, `spkhuyenmai`, `giakhuyenmai`, `giausd`, `luatuoi`, `newpro`, `loaigia`) VALUES
(764, 'Sofa Văn Phòng VP 11', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/a016316f369ce337999b7b19e1f42e1e.jpg', '', 385, 0, '2013-01-15 03:42:50', '2013-01-15 14:29:04', 0, 1, 'sofa-van-phong-vp-11', 'Sofa-ghe sofa-VP-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(765, 'Sofa Văn Phòng VP 12', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/7375907b41cba6d4a3f6b732ef218726.jpg', '', 385, 0, '2013-01-15 03:44:04', '2013-01-15 14:28:39', 0, 1, 'sofa-van-phong-vp-12', 'Sofa-ghe sofa-VP-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(766, 'Sofa Văn Phòng VP 13', '', 12500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/9e1c325d6c93afec1cbc6875398929cb.jpg', '', 385, 0, '2013-01-15 03:47:54', '2013-01-15 14:28:17', 0, 1, 'sofa-van-phong-vp-13', 'Sofa-ghe sofa-VP-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(767, 'Sofa Văn Phòng VP 14', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/6b51a96753803f6575180b03f7216899.jpg', '', 385, 0, '2013-01-15 03:48:39', '2013-01-15 14:27:57', 1, 1, 'sofa-van-phong-vp-14', 'Sofa-ghe sofa-VP-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(768, 'Sofa Văn Phòng VP 15', '', 13000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/502df6db571614eafabe7c1d5cf9faa8.jpg', '', 385, 0, '2013-01-15 03:49:16', '2013-01-15 14:27:41', 0, 1, 'sofa-van-phong-vp-15', 'Sofa-ghe sofa-VP-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(769, 'Sofa Văn Phòng VP 16', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/6f396de93b3b538493d7c83d60e8a3bc.jpg', '', 385, 0, '2013-01-15 03:49:59', '2013-01-15 14:27:11', 0, 1, 'sofa-van-phong-vp-16', 'Sofa-ghe sofa-VP-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(770, 'Sofa Văn Phòng VP 17', '', 13500000, '', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/f49cbf610f035c498c0e9b357cf39665.jpg', '', 385, 0, '2013-01-15 03:50:40', '2013-01-15 14:26:47', 1, 1, 'sofa-van-phong-vp-17', 'Sofa-ghe sofa-VP-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(771, 'Sofa Văn Phòng VP 18', '', 13000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/c90ab08a9b29ad05aa950ebc22c67f38.jpg', '', 385, 0, '2013-01-15 03:51:49', '2013-01-15 14:26:20', 1, 1, 'sofa-van-phong-vp-18', 'Sofa-ghe sofa-VP-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(772, 'Sofa Văn Phòng VP 19', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu Cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/7653cddc0ae807b978c36743fe087205.jpg', '', 385, 0, '2013-01-15 03:52:51', '2013-01-15 03:52:51', 0, 1, 'sofa-van-phong-vp-19', 'Sofa-ghe sofa-VP-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(773, 'Sofa Văn Phòng VP 20', '', 12500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/9f41c2a0d69bab2a83270a0a732f5ee5.jpg', '', 385, 0, '2013-01-15 03:53:40', '2013-01-15 14:25:49', 0, 1, 'sofa-van-phong-vp-20', 'Sofa-ghe sofa-VP-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(774, 'Sofa Văn Phòng VP 21', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/0fe404f1758c031ea4c03e7425b6b761.jpg', '', 385, 0, '2013-01-15 03:54:32', '2013-01-15 14:25:30', 0, 1, 'sofa-van-phong-vp-21', 'Sofa-ghe sofa-VP-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(775, 'Sofa Văn Phòng VP 22', '', 13000000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Da nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/192c60d2bbc3caaf55b4ae7a3bed988c.jpg', '', 385, 0, '2013-01-15 03:55:28', '2013-01-15 14:25:03', 0, 1, 'sofa-van-phong-vp-22', 'Sofa-ghe sofa-VP-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(776, 'Sofa Văn Phòng VP 23', '', 11500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/08bdf3b3b7a0c4f8d1239d336a6d99df.jpg', '', 385, 0, '2013-01-15 03:56:09', '2013-01-15 14:24:39', 0, 1, 'sofa-van-phong-vp-23', 'Sofa-ghe sofa-VP-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(777, 'Sofa Văn Phòng VP 24', '', 13500000, '291', '', '<div class="noidung">\r\n	<div class="noidung">\r\n		<div class="noidung">\r\n			<p>\r\n				<strong>H&atilde;ng sản xuất: Quang Vinh</strong></p>\r\n			<p>\r\n				<strong>Chất liệu: Nỉ nhập khẩu cao cấp</strong></p>\r\n			<p>\r\n				<strong>T&igrave;nh trạng: C&ograve;n h&agrave;ng</strong></p>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', 'img/upload/e7ff177f4ec755ec85ed979e292e7c8c.jpg', '', 385, 0, '2013-01-15 03:56:58', '2013-01-15 14:24:07', 0, 1, 'sofa-van-phong-vp-24', 'Sofa-ghe sofa-VP-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `info_other` varchar(250) CHARACTER SET utf8 NOT NULL,
  `address` varchar(256) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(256) NOT NULL,
  `server` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `created` date NOT NULL,
  `modified` text NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_eg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `footer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `info_other`, `address`, `phone`, `mobile`, `email`, `server`, `username`, `password`, `url`, `keyword`, `description`, `content`, `created`, `modified`, `name_en`, `address_eg`, `title_en`, `descriptions`, `footer`) VALUES
(1, 'XƯỞNG SẢN XUẤT GHẾ SOFA QUANG VINH', 'SALON - SOFA CAO CẤP - XƯỞNG SẢN XUẤT GHẾ SOFA QUANG VINH', 'Copyright © 2011 Bản quyền thuộc Vinaconex 12', 'Số 100, Ngõ 143 Thúy Lĩnh - Lĩnh Nam - Hoàng Mai - Hà Nội', '0913 667 468', '0913 667 468', 'quangvinh.sofa@gmail.com', 'localhost', 'root', NULL, 'http://sofaquangvinh.vn', 'sofa, ghe sofa, ban ghe sofa, sofa cao cap, sofa dep, sofa ni, sofa da, sofa van phong, sofa gia dinh, sofa goc, mau sofa dep, ghế sofa, bàn ghế sofa, sofa cao cấp, sofa đẹp, sofa nỉ, sofa văn phòng, sofa gia đình, sofa góc, mẫu sofa đẹp, xuong san xuat sofa, ', 'sofa, ghe sofa, ban ghe sofa, sofa cao cap, sofa dep, sofa ni, sofa da, sofa van phong, sofa gia dinh, sofa goc, mau sofa dep, ghế sofa, bàn ghế sofa, sofa cao cấp, sofa đẹp, sofa nỉ, sofa văn phòng, sofa gia đình, sofa góc, mẫu sofa đẹp, xuong san xuat sofa,', '<p>\r\n	<span style="font-size:14px;"><tt>Hoặc vui l&ograve;ng điền đầy đủ th&ocirc;ng tin v&agrave;o đơn h&agrave;ng, sau khi ho&agrave;n th&agrave;nh qu&yacute; kh&aacute;ch click &quot;Gửi đơn h&agrave;ng&quot;<br />\r\n	Sau khi nhận được đơn h&agrave;ng, trong v&ograve;ng 24h ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận. </tt></span></p>\r\n', '0000-00-00', '1358263603', 'CONG TY TNHH DAU TU THUONG MAI & DICH VỤ VIET NAM TOAN CAU', '', 'SALON - SOFA QUANG VINH', '', '<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<p style="text-align: center;">\r\n	<span style="color:#000000;"><b><span style="font-size: large;"><span id="cke_bm_233S" style="display: none;">&nbsp;</span>XƯỞNG SẢN XUẤT SOFA QUANG VINH</span></b></span></p>\r\n<p style="text-align: center;">\r\n	<span style="color:#000000;"><span style="font-size: large;">Địa chỉ: Số 100 ng&otilde; 143 Th&uacute;y Lĩnh - Lĩnh Nam - Ho&agrave;ng Mai - H&agrave; Nội</span></span></p>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<p style="text-align: center;">\r\n	<span style="color:#ff0000;"><span style="font-size: large;"><span id="cke_bm_267S" style="display: none;">&nbsp;</span>Hotline : Mr Vinh 0913.667.468&nbsp; -&nbsp; Mr Quang 0919.504.468</span></span><span style="font-size: large;"><span id="cke_bm_267E" style="display: none;">&nbsp;</span></span></p>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<p>\r\n	<span style="color:#000000;"><span style="display: none;">&nbsp;</span></span></p>\r\n<p style="text-align: center;">\r\n	<span style="color:#000000;"><span style="font-size: large;"><span id="cke_bm_234S" style="display: none;">&nbsp;</span>Email: quangvinh.sofa@gmail.com</span></span></p>\r\n<p style="text-align: center;">\r\n	<strong><span style="color:#000000;"><span id="cke_bm_225S" style="display: none;">&nbsp;</span>Copyright Quang Vinh</span></strong></p>\r\n<p style="text-align: center;">\r\n	<span style="color:#000000;"><span style="font-size: large;"><span id="cke_bm_225E" style="display: none;">&nbsp;</span><span id="cke_bm_234E" style="display: none;">&nbsp;</span><span id="cke_bm_233E" style="display: none;">&nbsp;</span></span></span></p>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span></p>\r\n<p>\r\n	<span style="display: none;">&nbsp;</span><span style="display: none;">&nbsp;</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE IF NOT EXISTS `slideshows` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `images` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `name`, `images`, `created`, `status`) VALUES
(31, 'sofa - ghe sofa', 'img/gallery/8f6fc5999f7ee75b89c274ea60ddad64.jpg', '2012-10-16 11:36:47', 1),
(34, 'sofa - ghe sofa', 'img/gallery/a77cf4b89cbb3460d54dbbe90a8a863d.jpg', '2012-12-03 16:30:30', 1),
(33, 'sofa - ghe sofa', 'img/gallery/bbe0290282cec175247a840ee8c31314.jpg', '2012-11-30 14:50:56', 1),
(35, 'sofa - ghe sofa', 'img/gallery/47f96939009ecf35916d9359438ef2f0.jpg', '2013-01-11 06:45:40', 1),
(36, 'sofa - ghe sofa', 'img/gallery/88940d47c11172d43a86706a57d6078a.jpg', '2013-01-11 06:47:41', 1),
(37, 'sofa - ghe sofa', 'img/gallery/6b27b51b4050c0aacb6b02ed68364d7c.jpg', '2013-01-11 06:48:06', 1),
(38, 'sofa - ghe sofa', 'img/gallery/7d8f9c8449a89ddea9a26e805681bc0c.jpg', '2013-01-11 06:48:46', 1),
(39, 'sofa - ghe sofa', 'img/gallery/02b867a10d2eec0d6f270094457ec148.jpg', '2013-01-11 06:49:00', 1),
(40, 'sofa - ghe sofa', 'img/gallery/567518d8a9bebbb41d696f1b004ab5eb.jpg', '2013-01-11 06:49:19', 1),
(41, 'sofa - ghe sofa', 'img/gallery/85775002f2620fe1daaa379c6b8d1989.jpeg', '2013-01-11 06:49:36', 1),
(42, 'sofa - ghe sofa', 'img/gallery/c80f6f27f405a2d23f232db6411dc54c.jpg', '2013-01-11 06:49:55', 1),
(43, 'sofa - ghe sofa', 'img/gallery/4b690e551c96e2d5f5efaebe71545d0d.jpeg', '2013-01-11 06:50:26', 1),
(44, 'sofa - ghe sofa', 'img/gallery/bf496b77860ec3ee6ad0db68763ea7c3.jpg', '2013-01-11 06:50:51', 1),
(45, 'sofa - ghe sofa', 'img/gallery/5ea749ad334e5bf6d1d37d51cb8c77b3.jpg', '2013-01-11 06:51:06', 1),
(46, 'sofa - ghe sofa', 'img/gallery/205adfb3ccd4b71ffd65bf262d06c1d0.jpg', '2013-01-11 06:51:18', 1),
(47, 'sofa - ghe sofa', 'img/gallery/0bbb7a0af4129b642c8c035570ebc548.jpg', '2013-01-11 06:51:33', 1),
(48, 'sofa - ghe sofa', 'img/gallery/18ff8dcd2e24b85c2cb7cb4a1eacd438.jpg', '2013-01-11 06:51:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `birth_date` varchar(200) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `images` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active_key` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `name`, `email`, `phone`, `birth_date`, `sex`, `images`, `created`, `modified`, `active_key`, `status`) VALUES
(47, 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'dinhvan.vn2306@gmail.com', 0, '', '', '', '2012-12-29 07:38:29', '2012-12-29 07:38:29', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `video` varchar(250) CHARACTER SET utf8 NOT NULL,
  `LinkUrl` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `left` int(2) NOT NULL,
  `right` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `video`, `LinkUrl`, `created`, `status`, `left`, `right`) VALUES
(1, 'Gala trong ngay', 'video/upload/c67b28f317fe8740ada0a80316a0559c.flv', 'http://www.youtube.com/watch?v=5z7DEE70dEs&feature=related', '2011-10-02 18:51:33', 1, 0, 0),
(5, 'sao truc', '', '4sdh3v9QX8M', '2012-11-20 08:50:57', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE IF NOT EXISTS `wards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `district_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `weblinks`
--

CREATE TABLE IF NOT EXISTS `weblinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `link` varchar(256) CHARACTER SET ucs2 NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `weblinks`
--

INSERT INTO `weblinks` (`id`, `name`, `link`, `created`, `modified`, `status`) VALUES
(8, 'Google', 'http://google.vn', '0000-00-00', '0000-00-00', 1),
(9, 'Dân trí', 'http://dantri.com.vn', '0000-00-00', '2012-08-04', 1),
(10, '24h', 'http://24h.com.vn', '2012-08-04', '2012-08-04', 1),
(11, 'quản trị mạng', 'http://quantrimang.com.vn', '2012-08-04', '2012-08-04', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
