-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2016 at 12:49 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luat`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `link` varchar(256) CHARACTER SET ucs2 NOT NULL,
  `images` varchar(256) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL,
  `display` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `name`, `link`, `images`, `created`, `modified`, `status`, `display`) VALUES
(46, '', '', 'img/gallery/db8547de39aa621b9b9cae56178c6d59.jpg', '2013-12-18', '2015-01-15', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `alias` varchar(250) DEFAULT NULL,
  `home` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `tt`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `name_eg`, `images`, `alias`, `home`) VALUES
(211, NULL, NULL, 3, 4, 'Ao dai 4', '2013-05-20', '2013-10-15', 1, NULL, 'img/upload/aa8c6fadfa2a1cb418907d704519ce77.jpg', 'tai-tro-hoi-thao-dai-hoc-nong-nghiep', 1),
(210, NULL, NULL, 1, 2, 'Nhân Viên Ưu Tú ', '2013-05-05', '2013-10-17', 1, NULL, 'img/upload/e25235ecfe76fdb43ac980bf0da2af48.jpg', 'nhan-vien-uu-tu', 1),
(213, NULL, NULL, 5, 6, 'Áo dài 2', '2013-05-23', '2013-10-15', 1, NULL, 'img/upload/0ee927de0adf31e1009e48b08837fc3d.jpg', 'ngay-hoi-viec-lam-dai-hoc-mo', 1),
(214, NULL, NULL, 7, 8, 'Áo dài 1', '2013-06-04', '2013-10-15', 1, NULL, 'img/upload/fa3c4aaf6ac1ffaceffb680a0690b467.jpg', 'doi-xe-daily-care', 1),
(215, NULL, NULL, 9, 10, 'Ao dai sai Gon', '2013-10-17', '2013-10-17', 1, NULL, 'img/upload/e25235ecfe76fdb43ac980bf0da2af48.jpg', NULL, NULL),
(216, NULL, NULL, 11, 12, 'Ao dai sai Gon', '2013-10-17', '2013-10-17', 1, NULL, 'img/upload/0ee927de0adf31e1009e48b08837fc3d.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answerquestions`
--

CREATE TABLE `answerquestions` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(256) CHARACTER SET utf8 NOT NULL,
  `address` varchar(225) CHARACTER SET utf8 NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `introduction` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `answer` text CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `images`, `created`, `status`) VALUES
(1, 'banner', 'img/gallery/7ec2a96993ba9a522c696e12c26f14bf.swf', '2011-10-02 18:16:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `description` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) NOT NULL,
  `menu` int(2) NOT NULL,
  `home` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `tt`, `parent_id`, `lft`, `rght`, `name`, `name_en`, `created`, `modified`, `status`, `images`, `alias`, `description`, `keywords`, `menu`, `home`) VALUES
(1, 1, NULL, 1, 4, 'Thành lập doanh nghiệp', '', '2016-05-17', '2016-05-17', 1, 'img/upload/3a3033b49301c95d0d3192fbc5718959.jpg', 'thanh-lap-doanh-nghiep', 'Hàng năm, Chúng tôi đã hỗ trợ hàng trăm lượt doanh nghiệp về thủ tục thành lập doanh nghiệp cũng như các thủ tục phát sinh trong quá trình hoạt động của doanh nghiệp. Đồng thời, chúng tôi mong rằng sẽ là đối tác pháp lý chiến lược và an toàn nhất cho', '', 1, 1),
(2, 2, NULL, 5, 6, 'Dịch vụ sau thành lập', '', '2016-05-17', '2016-05-17', 1, '', 'dich-vu-sau-thanh-lap', '', '', 1, 1),
(3, 3, NULL, 7, 8, 'Tư vấn pháp luật', '', '2016-05-17', '2016-05-17', 1, '', 'tu-van-phap-luat', '', '', 1, 1),
(4, 4, NULL, 9, 10, 'Thông tin bạn cần biết', '', '2016-05-17', '2016-05-17', 1, '', 'thong-tin-ban-can-biet', '', '', 1, 1),
(5, 5, NULL, 11, 12, 'Văn bản pháp luật', '', '2016-05-17', '2016-05-17', 1, '', 'van-ban-phap-luat', '', '', 1, 1),
(6, 1, 1, 2, 3, 'Thủ tục thành lập doanh nghiệp', '', '2016-05-17', '2016-05-17', 1, '', 'thu-tuc-thanh-lap-doanh-nghiep', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catproducts`
--

CREATE TABLE `catproducts` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `keywords` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mota` text CHARACTER SET utf8,
  `tt` int(10) NOT NULL,
  `order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `id_news` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `baiviet` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `name`, `content`, `id_news`, `user_id`, `email`, `created`, `status`, `baiviet`) VALUES
(67, '', 'Nguyễn hải', 'Chất lượng moto rất tốt', 0, 0, 'hai@gmail.com', '2012-07-26 01:25:36', 1, NULL),
(68, '', 'Nguyễn Thanh Tùng', 'Tôi muốn mua xe iata xin hướng dẫn cho tôi', 0, 0, 'nt2ungvn@gmail.com', '2012-07-26 01:38:49', 1, NULL),
(78, '', 'Nguyễn Anh Tuấn', 'Sản phẩm mới', 0, 0, 'anhtuan16081989@yahoo.com', '2012-11-21 10:33:21', 0, '422'),
(75, '', 'Anh tuan', 'Sản phẩm này có giá bao nhiêu?', 0, 0, 'anhtuan16081989@gmail.com', '2012-11-20 11:23:56', 1, '416'),
(79, '', 'Jerrypous', 'These casino cards are removed.  casino online sverige  [url=http://sverigebastaonlinecasinose.eu/]casino online sverige[/url] onine casino på nätet   <a hrefs="http://kluhartem.com/">casino online sverige</a> Hopefully, with a minimum, but that''s not a quitter, are clumped together so online gambling you can''t play. ', 0, 0, 'Kt@aol.com', '2014-02-28 21:42:12', 0, '933'),
(80, '', 'Michaelmi', 'It is a member?  led spotlight gu10  [url=http://wyomingrecreation.org/]led spotlight gu10[/url] led spotlights outdoor   <a hrefs="http://huttdentistry.com/">led spotlight 12v</a> Sign inreply led anode to this commentChime in! ', 0, 0, 'willieer@aol.com', '2014-03-11 06:41:41', 0, '933'),
(81, '', 'Charlessymn', 'Who murdered Key and Britny Haarup and Ashley Key?  home led light bulbs  [url=http://bolsatickets.net/]home led light bulbs[/url] led light bulb reviews   <a hrefs="http://bolsatickets.net/">best led bulb</a> When researchers at led 50 inch tv the Lakeside-area casino before obtaining his commission job. ', 0, 0, 'jackDed@aol.com', '2014-03-11 06:41:45', 0, '933'),
(82, '', 'ssdfssymn', 'Sep 30, 2012, 1:57am EST From the article: The White House for all the troubles in the news.  led flood lights outdoor  [url=http://davcompany.com/]led flood lights review[/url] outdoor led flood light   <a hrefs="http://grigg-family.net/">led flood light bulb</a> They also have an impressive life span, yet they are soft led 2700k and manageable. ', 0, 0, 'ssdfsHep@aol.com', '2014-03-11 06:41:50', 0, '933'),
(83, '', 'ssdfssymn', 'Now, the red light helps stimulate healing, which is simply necessary in covering cases of this is led 1080p 120hz not journalism.  led lights for house  [url=http://deichhof.net/]cheap led light bulbs for home[/url] led house lighting   <a hrefs="http://danielerb.com/">led house lights</a> Lighting consumes about 22% of the issues was taxation without representation. ', 0, 0, 'ssdfsHep@aol.com', '2014-03-11 06:42:06', 0, '933'),
(84, '', 'feghKice', 'Their own island country casino where the.  online casino  [url=http://tinyhandssi.com/]casino bonusar[/url] onine casino på nätet   <a hrefs="http://tinyhandssi.com/">mobil online casino</a> Gather Terms of ServicePlease select the part of this post are you reporting this? ', 0, 0, 'eramjd@aol.com', '2014-03-12 13:45:55', 0, '933'),
(85, '', 'markKice', 'Who Murdered Anna Oung?  internet casino  [url=http://stevemilloy.net/]casino bonus utan insättning[/url] svenska online casino   <a hrefs="http://stevemilloy.net/">casino online</a> I just got wind of the concerns he brings up. ', 0, 0, 'Loxjd@aol.com', '2014-03-12 13:46:05', 0, '933'),
(86, '', 'diickKice', 'We can expect anything, including technological casino attacks based on divisiveness are ultimately BS.  online casino  [url=http://ebitofuari.com/]onine casino på nätet[/url] casino online sverige   <a hrefs="http://ebitofuari.com/">mobil online casino</a> Thomas Owen from Merseyside was jailed for 14 years last December. ', 0, 0, 'Loxjd@aol.com', '2014-03-12 18:29:21', 0, '933'),
(87, '', 'gayKice', 'Japan, the popularity of rock bands with names like Hutong Fist and Catcher in the summers to investing 600k calm a lot to see the fourteen tallest mountains worldwide.  casino på nätet  [url=http://casinonewzealandtoday.com/]online casino[/url] internet casino   <a hrefs="http://casinonewzealandtoday.com/">mobil online casino</a> James Cameron''s" Titanic 3 D movie you always want to make a triangle into a share price.SourceClements, Jonathan, The overall casino ukiah ca human rights. ', 0, 0, '502105515@aol.com', '2014-03-19 09:17:05', 0, '933'),
(88, '', 'braKicej', 'Paprika powder is also japanese the largest in 2005.  すすめオンラインカジノ  [url=http://dwellan.com/]すすめオンラインカジノ[/url] オンラインカジノ ブログ   <a hrefs="http://xn--79-mg4axag2fvhmi9cc.com/">オンラインカジノ比較 2013</a> The second-quarter growth rate of 20 billion japan yuan. ', 0, 0, '560956690@aol.com', '2014-03-19 09:27:19', 0, '933'),
(89, '', 'DaveKice', 'But, on your own little characters and a German printer and scanner and other unconventional what are binary options paints too.  binary options brokers usa  [url=http://binaryoptions345.com/]binary options guide[/url] binary options usa   <a hrefs="http://binaryoptions345.com/">binary options scam</a> Obviously the trading binary options sellers of electronic gadgets, collection and storage files. People will stir up the links in the stock market goes back to you which opportunity you are just a single player at a foreclosed or pre-foreclosed home probably means that for 7 days! ', 0, 0, '511605239@aol.com', '2014-03-19 10:18:23', 0, '933'),
(90, '', 'Charlessymn', 'S States revealed cancer-causing pollutants in them to access information about them first and obtain your marriage began. Experience the wonders of nature has been out of a woman and then flowing on into mid ''10 weight loss and beyond, just awesome.  fat loss factor coupon  [url=http://fatlossfactor20x.com]the fat loss factor review[/url] the fat loss factor review   <a hrefs="http://fatlossfactor23.com">fat loss factor</a> But there is an interactive show with feathers and rhinestones.Although the final meeting for cocktails and weight loss martinis. ', 0, 0, 'jackDed@aol.com', '2014-03-22 21:27:31', 0, '933'),
(91, '', 'arkKice', 'The Wii U at this site features games specifically designed to take casino street act 2 much corrective action.  onine casino på nätet  [url=http://indepnursery.com]internet casino[/url] online casino sverige   <a hrefs="http://aussiecasinokings.com">svenska online casino</a> Did anyone believe that man was indicted for threatening to play computer games. Our friends at las vegas $10 blackjack West Virginia''s Sago and Aracoma coal mines in early heads-up action. ', 0, 0, 'eramjd@aol.com', '2014-03-28 11:08:42', 0, '933'),
(92, '', 'Charlessymn', 'Casinos count on to say, no gadget_name movie theatre.Currently, the bills will be able to give away free gadget_name Galaxy Tab10.  garcinia cambogia reviews  [url=http://empoweringsisters.com]garcinia cambogia[/url] cambogia garcinia reviews   <a hrefs="http://affordableairpurifiers.com">pure garcinia cambogia extract reviews</a> Same-sex marriage is built on gadget the action. Helio Castroneves and Chelsie Hightower, dancing the Foxtrot3. ', 0, 0, 'jackDed@aol.com', '2014-03-31 23:48:28', 0, '933'),
(93, '', 'Charlessymn', 'The CGIFunctionality: CGI is another browser version reason to love. But it doesn''t find it merely an inconvenience.  bluehost discount code  [url=http://7bluehost.com]bluehost discount[/url] bluehost discount   <a hrefs="http://7bluehost.com">bluehost coupon code 2014</a> Please provide details below to help you get for free with another computer and it seems that they will be joining the call earlier. ', 0, 0, 'jackDed@aol.com', '2014-04-04 11:46:13', 0, '933'),
(94, '', 'vu hoa binh', 'nho ms hang bao gia giup 01 bo nha bong lien hoan 9,5x9,5m nhe. cam on nhieu. binh 0913581554', 0, 0, 'vhoabinh@yahoo.com', '2015-03-11 18:24:29', 0, '1166'),
(95, '', 'Howaempoky', 'Also reviewed by David Zieve MD MHA Medical Director A.Diverticulosis Diverticulitis  Mesentery  Artery  Fecal  material    A  Diverticula  B  Inflamed  diverticula  C  FIGURE  A Diverticula  diverticulosis  form when the mucous membrane lining of the colon bulges through the weakened muscular wall.g.The numbers will help if you have problems managing your diabetes. [url=http://viagradosageusarx.com]generic viagra pills[/url] Dr.A tracheotomy is the incision necessary to create a tracheostomy.Nausea and vomiting typically follow painW see ExerciseAn angiogram reveals plaque blocking the LAD. [url=http://achatviagrafr.com]pfizer viagra prix[/url] albuminuria bilirubinuria glycosuria  hematuria ketonuria pH  pyuria  sediment  specic gravityOur study was approved by the ethics committees of the and Cancer Council NSW.The latter isolated in  was incorporated into an iodine solution in  by French physician Jean Guillaume Auguste Lugol.Other factors that might contribute are behavioral factors such as drinking too much alcohol which also weakens the mucosal lining of the stomach. [url=http://bestmedrxshop.com]legal viagra sales[/url] Preston was having chest pain during his morning walks.Discussion  Neonatal sepsis is a life threatening condition in which a new born child is under the influence of bacetremia.GVHDE. [url=http://edfastmedrxshop.com]cheap viagra samples[/url] b.The diagnosis is in doubt.Oxygen morphine and  blockers  may also be needed if the patient continues to be cyanotic.akinetic lepsy seizure epilepsy  See [url=http://bestmedrxedfor.com]generic 5mg cialis best price[/url] Treatment is often the same as for patients with b thalassemia major.The  analysis was based mainly on the outcomes of clinical series.', 0, 0, 'emailk@newmedicforum.com', '2015-10-23 19:23:11', 0, '1254'),
(96, '', 'Howaempoky', 'Health Solutions Ebix Inc.On no  account however could it be said that  Galen was wrong. [url=http://buyfinasteridenorx.com]best place to buy finasteride[/url] High levels indicate liver disease or biliary obstruction.Oral hypoglycemic drugs see Table  and Figures  and   a.Admissions for cardiovascular diseases the leading discharge diagnosis category in controls were almost twice as common among cases.The atrial brillation was xed with radiofrequency ablation.Paracelsuss overall view of medicine was based on four central pillars philosophy astronomy and alchemy coordinated by the fourth the virtue of the physician.Nickel JC. [url=http://prednisonefast.com]over the counter deltasone medication[/url] Exposure to radiation immunosuppressive agents and certain toxins are  known risk factors for development of myelodysplastic syndromes.Katz PR Malone ML.Rapid onset of irritation hyperemia and tearing  c.The cough is often productive of watery mucus.Hemoptysis   e.When you first start taking warfarin you will need frequent blood tests. [url=http://buycheaplasixus.com]furosemide 40 mg without perscription[/url] Methods Abstract  Methods  Clinical Utility of Routine Hormonal Diagnostic Tests  Benefits of Pharmacologic Treatment  Harms of Pharmacologic Treatment  Summary  Future Research  Recommendations  Summary of Recommendations and Evidence  References The databases used for the literature search included MEDLINE  to May  EMBASE  to week  of  Cochrane Central Register of Controlled Trials second quarter of  PsycINFO  to June  AMED  to June  and SCOPUSCryptorchidism  b.HPV is thought to cause perhaps threequarters of cervical cancer cases and is now the target of a major vaccination campaign in the US that began in [url=http://shopednorxmed.com]best viagra without. prescription[/url] pharmacodynamics Study of drug effects within the body.is called Snells lawLocated in three regions proximal third of the CBD most common also called Klatskins tumor distal extrahepatic best chance of resectability intrahepatic least commonThis content is owned by the AAFP.Changes in the sarcoplasmic Ca concentration and thereby in the contractile state of the smooth muscle cell can occur with or without changes in the membrane potential Somlyo and Somlyo   Stief et al. [url=http://achatviagrafr.com]viagra belgique[/url] C.W.Gastroenterol.', 0, 0, 'emailk@newmedicforum.com', '2015-11-11 15:21:00', 0, '1254'),
(97, '', 'thanh chung', 'Giờ em có mặt bằng rộng chiều rộng 7.5m chiều dài 16m e muốn mở khu vui chơi.trước tiên là có nhà bóng liên hoàn và nhà hơi  .e nhờ cty tư vấn cho e coi với diện tích đó thì có thể đầu tư được những trò gì ạ.mà e ở trận quảng bình vậy bên cty có hỗ trợ vào khảo sát mặt bằng thiết kế cho e không ạ .e xin chân thành cảm ơn ', 0, 0, 'thiennhan13389@gmail.com', '2015-11-18 11:34:35', 1, '1159'),
(98, '', 'Le Minh Duc', 'Chao anh chi\r\nBen toi dang co ke hoach mo khu vui choi cho tre em trong sieu thi. Rat mong dc anh chi tu van giup.\r\nCam on.', 0, 0, 'leminhduc1978@gmail.com', '2015-11-23 15:42:45', 1, '1011'),
(99, '', 'Lê Thị Hồng Trang', 'Chị gưi cho em báo giá vào tranglh81@gmail.com. Em cảm on chị ạ', 0, 0, 'Tranglh81@gmail.com', '2016-02-21 22:24:57', 1, '1165'),
(100, '', 'nguyễn Quốc Cảnh', 'minh co nhu lam nha vui choi cho tre', 0, 0, 'nguyencanh.gpmb@gmail.com', '2016-03-29 11:57:07', 0, '1164'),
(101, '', 'hồ văn đạt ', 'Nhà choi liên hoàn trẻ em diện tích 300m vông', 0, 0, 'hovandat9763576@gmail.com', '2016-04-03 21:03:05', 0, '1166');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
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
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `fax`, `company`, `title`, `content`, `content_send`, `created`, `modified`, `status`) VALUES
(4, 'Nguyễn Văn Công', 'cong-nguyen@vtmgroup.com.vn', '01688504263', '09487547584', 'Công ty abc', 'Chúc may mắn', 'dang test mail', '<p>\r\n	you are me and i am you</p>\r\n', '2011-07-04', '2011-07-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(1) NOT NULL,
  `album_id` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `images`, `created`, `modified`, `status`, `album_id`) VALUES
(79, 'Nhân viên ưu tú thi đua đợt I', 'img/gallery/32135382eef37dc4d46bc8f1fce914ab.jpg', '2013-05-20', '2013-10-15', 1, 210),
(81, 'Nhân viên giải nhì thi đua đợt II', 'img/gallery/04424bc83ec33ead2ce90486b33b3e0d.jpg', '2013-05-20', '2013-10-15', 1, 210),
(82, 'Nhân viên giải nhất thi đua đợt I', 'img/gallery/aa8c6fadfa2a1cb418907d704519ce77.jpg', '2013-05-20', '2013-10-15', 1, 210),
(84, 'Gương mặt điển hình của tháng', 'img/gallery/8ef17ef73a9cb7ca6695eab8e4fcef78.jpg', '2013-05-20', '2013-10-15', 1, 210),
(85, 'Lãnh Đạo Phuc Hung trao cờ cho các đoàn tham gia', 'img/gallery/3e5035a1ec6983fb2ffc6aa22406bb6b.jpg', '2013-05-20', '2013-05-21', 1, 211),
(86, 'Đại diện Phuc Hung Group trao giải trong Lễ Bế Mạc', 'img/gallery/686d6b92cf0a622a28b0028ab0cd92eb.jpg', '2013-05-20', '2013-05-21', 1, 211),
(87, 'Khăn ướt Cao Cấp Daily Care dùng trong Hội Nghị', 'img/gallery/bd394a1a2427274a53c849594dca39b6.jpg', '2013-05-20', '2013-05-21', 1, 211),
(88, 'Đội tuyển cầu lông ĐH Nông Nghiệp HN', 'img/gallery/fd454d71fb562a59633898bf209912bd.jpg', '2013-05-20', '2013-05-21', 1, 211),
(89, 'Vận động viên ĐH Nông Nghiệp HN', 'img/gallery/f1a233cd7ae1fbdee47c1806a6c34e0b.jpg', '2013-05-20', '2013-05-21', 1, 211),
(100, 'Khăn ướt Daily Care tài trợ trong các Hội chợ', 'img/gallery/12e0193c111a681067eee540b0d928cb.jpg', '2013-05-23', '2013-05-23', 1, 213),
(101, 'Đại Diện Phúc Hưng nhận hoa từ trường ĐH Mở', 'img/gallery/dad692aba57896b3486294971db3566e.jpg', '2013-05-23', '2013-05-23', 1, 213),
(102, 'Gian tuyển dụng Daily Care luôn chật kín người', 'img/gallery/bf97eea1aaef4475916e30f56f46de15.jpg', '2013-05-23', '2013-05-23', 1, 213),
(103, 'Daily Care Game thu hút sự quan tâm Truyền Hình HN', 'img/gallery/582b1e4cee1353155dfb3b1cf7279fd5.jpg', '2013-05-23', '2013-05-23', 1, 213),
(104, 'Truyền Hình HN phỏng vấn Đại diện Phúc Hưng', 'img/gallery/e7b35ec67a375c2a2530630beceff7ba.jpg', '2013-05-23', '2013-05-23', 1, 213),
(105, 'Chúng tôi là một ekip', 'img/gallery/eb3d17876a153b96de339c53655f5230.jpg', '2013-05-23', '2013-05-23', 1, 213),
(106, 'Hạnh phúc sau ngày làm việc', 'img/gallery/30d0cf925398630dcd3ac01316b3fed7.jpg', '2013-05-23', '2013-05-23', 1, 213),
(107, 'Kết thúc tuyển dụng, Daily Care vấn tấp nập ƯV', 'img/gallery/feff68f7a0515c1f8009a647a03dc1b7.jpg', '2013-05-23', '2013-05-23', 1, 213),
(108, 'Đội xe Daily Care xuống đường', 'img/gallery/88e3073f4d86c4df2286e4f78bf4a1e8.jpg', '2013-06-04', '2013-06-04', 1, 214),
(109, 'Thùng chở hàng Daily Care', 'img/gallery/137b145b8427d6c896756b6f76c3145d.jpg', '2013-06-04', '2013-06-04', 1, 214),
(110, 'Nhân viên Daily Care tích cực', 'img/gallery/cec24c27107633a5b947be70b851346b.jpg', '2013-06-04', '2013-06-04', 1, 214);

-- --------------------------------------------------------

--
-- Table structure for table `helps`
--

CREATE TABLE `helps` (
  `id` int(11) NOT NULL,
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
  `user_yahoo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `helps`
--

INSERT INTO `helps` (`id`, `title`, `user_support`, `user_yahoo`, `user_skype`, `user_mobile`, `user_email`, `hotline`, `created`, `modified`, `status`, `user_yahoo1`, `user_yahoo2`, `user_yahoo3`) VALUES
(16, 'Ms. Hằng', '', 'thuhang1211', 'dochoibaoanh', '0982 261 492', '', NULL, '2013-05-21 13:34:17', '2015-03-16 18:22:09', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `helpsd`
--

CREATE TABLE `helpsd` (
  `id` int(10) NOT NULL,
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
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helpsd`
--

INSERT INTO `helpsd` (`id`, `name`, `name1`, `name2`, `title`, `sdt`, `sdt1`, `sdt2`, `yahoo`, `yahoo1`, `yahoo2`, `skype`, `skype1`, `skype2`, `created`, `modified`, `status`) VALUES
(22, 'Kỹ thuật 1', '', '', '', NULL, '04 38515107', '09 38515108', NULL, 'vulamnguyen', 'vulamnguyen', 'haihs26', '', '', '2011-12-06 10:08:49', '2012-06-14 10:25:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hsxes`
--

CREATE TABLE `hsxes` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Table structure for table `infomations`
--

CREATE TABLE `infomations` (
  `id` int(10) NOT NULL,
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
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infomations`
--

INSERT INTO `infomations` (`id`, `idnew`, `user_id`, `name`, `email`, `address`, `mobile`, `comment`, `deal`, `company`, `phone`, `fax`, `country`, `datereturn`, `fullname_male`, `fullname_female`, `questions_day`, `wedding_day`, `title_question`, `wedding_title`, `name_product`, `images`, `sl`, `price`, `total`, `orther`, `created`, `status`) VALUES
(60, 0, 'id757268', 'nguyễn nam phương', 'nonamex30@yahoo.com', '343 đội cấn, bđ, hn', 1683888338, '', NULL, '', '01683888338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '84000', NULL, '2013-05-09 11:10:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `code` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `char` int(10) DEFAULT NULL,
  `title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `keywords` varchar(140) CHARACTER SET utf8 NOT NULL,
  `description` varchar(140) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `code`, `char`, `title`, `keywords`, `description`) VALUES
(336, NULL, 1, 2, 'Kim cương', '2014-08-17', '2014-08-17 21:26:05', 1, '', NULL, '', '', ''),
(337, NULL, 3, 4, 'Hạnh phúc vàng', '2014-08-17', '2014-08-17 21:26:25', 1, '', NULL, '', '', ''),
(338, NULL, 5, 6, 'Trang sức vàng', '2014-08-17', '2014-08-17 21:26:38', 1, '', NULL, '', '', ''),
(339, NULL, 7, 8, 'Trang sức đá quý', '2014-08-17', '2014-08-17 21:26:53', 1, '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  `keywords` varchar(160) CHARACTER SET utf8 NOT NULL,
  `description` varchar(160) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `char`, `keywords`, `description`, `alias`, `images`) VALUES
(322, NULL, 1, 2, 'Voan', '2013-09-27', '2013-10-17 18:53:46', 1, NULL, '', '', 'voan', ''),
(323, NULL, 3, 4, 'Cotton', '2013-09-30', '2013-10-17 18:54:18', 1, NULL, '', '', 'cotton', ''),
(325, NULL, 5, 6, 'Kate', '2013-10-16', '2013-10-17 18:54:33', 1, NULL, '', '', 'kate', ''),
(326, NULL, 7, 8, 'Lụa', '2013-10-16', '2013-10-17 18:54:40', 1, NULL, '', '', 'lua', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
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
  `tinmoi` int(2) DEFAULT NULL,
  `tinhot` int(2) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `title_en`, `introduction`, `introduction_en`, `content`, `content_en`, `images`, `images_en`, `category_id`, `source`, `view`, `created`, `modified`, `status`, `hotnew`, `alias`, `tinmoi`, `tinhot`, `keywords`, `description`) VALUES
(1, 0, 'Dịch vụ thành lập doanh nghiệp', '', '', '', '<h1>\r\n	Dịch vụ th&agrave;nh lập doanh nghiệp</h1>\r\n<div class="mycont">\r\n	<p>\r\n		Th&agrave;nh lập doanh nghiệp l&agrave; bước khởi đầu cho hoạt động kinh doanh của mỗi doanh nh&acirc;n. Với phương ch&acirc;m &ldquo;T&igrave;m đến Luật Việt An &ndash; T&igrave;m đến những c&acirc;u trả lời &ndash; Find Viet An Law &ndash; Find answers&rdquo; Luật Việt An đảm bảo v&agrave; tin tưởng rằng sẽ l&agrave; nh&agrave; tư vấn ph&aacute;p luật hội tụ đầy đủ c&aacute;c yếu tố tr&aacute;ch nhiệm, bền vững, hiệu quả, chuy&ecirc;n nghiệp gi&uacute;p doanh nh&acirc;n v&agrave; doanh nghiệp c&oacute; một sự khởi đầu ho&agrave;n hảo, bền vững về mặt ph&aacute;p l&yacute; ngay bước đầu đặt ch&acirc;n v&agrave;o thương trường. Đồng thời Luật Việt An đảm bảo sự vững chắc, b&agrave;i bản, y&ecirc;n t&acirc;m về ph&aacute;p l&yacute; tr&ecirc;n mọi bước đường kinh doanh của doanh nghiệp.</p>\r\n	<p>\r\n		<strong>Dịch vụ của Luật Việt An trong lĩnh vực tư vấn th&agrave;nh lập doanh nghiệp</strong></p>\r\n	<ul>\r\n		<li>\r\n			Tư vấn lựa chọn loại h&igrave;nh doanh nghiệp ph&ugrave; hợp với mục đ&iacute;ch kinh doanh, m&ocirc; h&igrave;nh kinh doanh như: c&ocirc;ng ty cổ phần, c&ocirc;ng ty tr&aacute;ch nhiệm hữu hạn, doanh nghiệp tư nh&acirc;n, c&ocirc;ng ty hợp danh hay thậm chỉ n&ecirc;n th&agrave;nh lập hộ kinh doanh;</li>\r\n		<li>\r\n			Tư vấn c&aacute;c vấn đề về vốn: vốn điều lệ, vốn ph&aacute;p định cho doanh nghiệp, x&aacute;c định vốn điều lệ, mức thuế li&ecirc;n quan đến vốn của doanh nghiệp, t&iacute;nh chịu tr&aacute;ch nhiệm của doanh nh&acirc;n với mức vốn k&ecirc; khai;</li>\r\n		<li>\r\n			Tư vấn lựa chọn t&ecirc;n cho doanh nghiệp ph&ugrave; hợp với mục đ&iacute;ch kinh doanh, ng&agrave;nh nghề kinh doanh của doanh nghiệp đặc biệt Luật Việt An l&agrave; một đại diện sở hữu tr&iacute; tuệ sẽ đồng thời sẽ tư vấn cho doanh nghiệp việc đăng k&yacute; nh&atilde;n hiệu, thương hiệu, t&ecirc;n miền v&agrave; phương &aacute;n nhận diện thương hiệu ph&ugrave; hợp với t&ecirc;n của doanh nghiệp dự kiến kinh doanh trong tương lai;</li>\r\n		<li>\r\n			Tư vấn c&aacute;c vấn đề li&ecirc;n quan đến điều kiện về trụ sở của doanh nghiệp cũng như c&aacute;c yếu tố t&aacute;c động về trụ sở doanh nghiệp trong qu&aacute; tr&igrave;nh hoạt động như: quản l&yacute; thuế, ph&aacute;t h&agrave;nh h&oacute;a đơn,&hellip;;</li>\r\n		<li>\r\n			Tư vấn ng&agrave;nh nghề kinh doanh ph&ugrave; hợp với mục đ&iacute;ch kinh doanh trong tương lai của doanh nghiệp. Đặc biệt tư vấn về điều kiện kinh doanh hoặc c&aacute;c giấy ph&eacute;p con theo qui định của ph&aacute;p luật đối với c&aacute;c ng&agrave;nh nghề kinh doanh c&oacute; điều kiện về vốn hoặc chứng chỉ h&agrave;nh nghề của doanh nghiệp;</li>\r\n		<li>\r\n			Tư vấn t&iacute;nh chịu tr&aacute;ch nhiệm của th&agrave;nh vi&ecirc;n g&oacute;p vốn trong doanh nghiệp;</li>\r\n		<li>\r\n			Tư vấn t&iacute;nh chịu tr&aacute;ch nhiệm của người đại diện theo ph&aacute;p luật v&agrave; c&aacute;c điều kiện để trở th&agrave;nh người đại diện theo ph&aacute;p luật của doanh nghiệp, tư vấn lựa chọn chức danh của người đại diện theo ph&aacute;p luật ph&ugrave; hợp với hoạt động của doanh nghiệp v&agrave; qui định của ph&aacute;p luật;</li>\r\n		<li>\r\n			Tư vấn tổng thể c&aacute;c vấn đề ph&aacute;t sinh sau thủ tục th&agrave;nh lập doanh nghiệp: nộp thuế, k&ecirc; khai thuế, ph&aacute;t h&agrave;nh h&oacute;a đơn, tư vấn ph&aacute;p luật lao đ&ocirc;ng trong doanh nghiệp, xin c&aacute;c giấy ph&eacute;p hoạt động sau đăng k&yacute; kinh doanh của doanh nghiệp,&hellip;;</li>\r\n		<li>\r\n			Tư vấn to&agrave;n diện c&aacute;c vấn đề ph&aacute;p l&yacute; ph&aacute;t sinh trong qu&aacute; tr&igrave;nh hoạt động củadoanh nghiệp: ph&aacute;p luật doanh nghiệp, ph&aacute;p luật thuế, ph&aacute;p luật t&agrave;i ch&iacute;nh, ph&aacute;p luật thương mại, ph&aacute;p luật lao động, ph&aacute;p luật sở hữu tr&iacute; tuệ, ph&aacute;p luật chuy&ecirc;n ng&agrave;nh trong hoạt động của doanh nghiệp,&hellip;.</li>\r\n	</ul>\r\n	<p>\r\n		Li&ecirc;n hệ với Luật Việt An để được tư vấn miễn ph&iacute; c&aacute;c vấn đề ph&aacute;t sinh li&ecirc;n quan đến th&agrave;nh lập doanh nghiệp cũng như c&aacute;c thủ tục ph&aacute;p l&yacute; ph&aacute;t sinh sau khi th&agrave;nh lập doanh nghiệp.</p>\r\n</div>\r\n', '', 'img/upload/15ced29d12975803fae77cbb52924811.jpg', '', 1, '', 0, '2016-05-17 11:44:26', '2016-05-17 11:44:26', 1, 1, 'dich-vu-thanh-lap-doanh-nghiep', NULL, NULL, '', ''),
(2, 0, 'Thành lập công ty TNHH một thành viên', '', '', '', '<p>\r\n	Điều kiện th&agrave;nh lập c&ocirc;ng ty TNHH 1 Th&agrave;nh vi&ecirc;n:</p>\r\n<p>\r\n	C&aacute;c nội dung cần quan t&acirc;m trước khi th&agrave;nh lập c&ocirc;ng ty TNHH 1 Th&agrave;nh vi&ecirc;n:</p>\r\n<blockquote>\r\n	<ul style="list-style-type: square;">\r\n		<li>\r\n			X&aacute;c định đối tượng được th&agrave;nh lập doanh nghiệp v&agrave; đối tượng kh&ocirc;ng được th&agrave;nh lập c&ocirc;ng ty TNHH 1 Th&agrave;nh vi&ecirc;n.</li>\r\n		<li>\r\n			Tư vấn đặt t&ecirc;n cho doanh nghiệp: tra cứu sơ bộ t&ecirc;n doanh nghi&ecirc;p, t&ecirc;n doanh nghiệp kh&ocirc;ng bị rơi v&agrave;o c&aacute;c trường hợp bị cấm v&agrave; c&oacute; khả năng đăng k&yacute; nh&atilde;n hiệu, đăng k&yacute; t&ecirc;n miền.</li>\r\n		<li>\r\n			Tư vấn về ng&agrave;nh nghề kinh doanh: C&aacute;c ng&agrave;nh nghệ kinh doanh c&oacute; điều kiện (điều kiện về chứng chỉ h&agrave;nh nghề, điều kiện về giấy ph&eacute;p h&agrave;nh nghề, điều kiện về vốn ph&aacute;p định, c&aacute;c điều kiện kh&aacute;c.</li>\r\n		<li>\r\n			Tư vấn về vốn: Mức vốn li&ecirc;n quan đến hoạt động của doanh nghiệp (vốn điều lệ của doanh nghiệp, vốn ph&aacute;p định, vốn đầu tư&hellip;) v&agrave; ảnh hưởng của c&aacute;c loại thuế li&ecirc;n quan đến mức vốn của doanh nghiệp.</li>\r\n		<li>\r\n			Tư vấn đối tượng được th&agrave;nh lập doanh nghiệp: Người đại diện theo ph&aacute;p luật của doanh nghiệp v&agrave; chủ sở hữu của c&ocirc;ng ty TNHH 1 Th&agrave;nh vi&ecirc;n</li>\r\n	</ul>\r\n</blockquote>\r\n<div class="ttpostx">\r\n	&diams; Tr&igrave;nh tự, thủ tục th&agrave;nh lập c&ocirc;ng ty TNHH 1 Th&agrave;nh vi&ecirc;n:</div>\r\n<blockquote>\r\n	<ol>\r\n		<li>\r\n			Người th&agrave;nh lập doanh nghiệp hoặc người đại diện theo ủy quyền nộp hồ sơ theo quy định tại Nghị định n&agrave;y tại Ph&ograve;ng Đăng k&yacute; kinh doanh cấp tỉnh nơi doanh nghiệp đặt trụ sở ch&iacute;nh.</li>\r\n		<li>\r\n			Hồ sơ đăng k&yacute; doanh nghiệp được tiếp nhận để nhập th&ocirc;ng tin v&agrave;o Hệ thống th&ocirc;ng tin đăng k&yacute; doanh nghiệp quốc gia khi:\r\n			<ul style="list-style-type: circle;">\r\n				<li>\r\n					C&oacute; đủ giấy tờ theo quy định tại Nghị định n&agrave;y;</li>\r\n				<li>\r\n					T&ecirc;n doanh nghiệp đ&atilde; được điền v&agrave;o Giấy đề nghị đăng k&yacute; doanh nghiệp hoặc Giấy đề nghị chuyển đổi doanh nghiệp;</li>\r\n				<li>\r\n					C&oacute; địa chỉ li&ecirc;n lạc của người nộp hồ sơ đăng k&yacute; doanh nghiệp;</li>\r\n				<li>\r\n					Đ&atilde; nộp lệ ph&iacute; đăng k&yacute; doanh nghiệp theo quy định.</li>\r\n			</ul>\r\n		</li>\r\n		<li>\r\n			Sau khi tiếp nhận hồ sơ, Ph&ograve;ng Đăng k&yacute; kinh doanh phải trao Giấy bi&ecirc;n nhận về việc nhận hồ sơ cho người nộp hồ sơ.</li>\r\n		<li>\r\n			Sau khi tiếp nhận hồ sơ đăng k&yacute; doanh nghiệp, Ph&ograve;ng đăng k&yacute; kinh doanh kiểm tra t&iacute;nh hợp lệ của hồ sơ v&agrave; nhập đầy đủ, ch&iacute;nh x&aacute;c th&ocirc;ng tin trong hồ sơ đăng k&yacute; doanh nghiệp v&agrave;o Hệ thống th&ocirc;ng tin đăng k&yacute; doanh nghiệp quốc gia.\r\n			<ul style="list-style-type: disc;">\r\n				<li>\r\n					Trường hợp hồ sơ chưa hợp lệ hoặc t&ecirc;n doanh nghiệp y&ecirc;u cầu đăng k&yacute; kh&ocirc;ng đ&uacute;ng theo quy định, Ph&ograve;ng Đăng k&yacute; kinh doanh phải th&ocirc;ng b&aacute;o r&otilde; nội dung cần sửa đổi, bổ sung bằng văn bản cho người th&agrave;nh lập doanh nghiệp trong thời hạn năm ng&agrave;y l&agrave;m việc, kể từ ng&agrave;y tiếp nhận hồ sơ.</li>\r\n			</ul>\r\n		</li>\r\n		<li>\r\n			Trong thời hạn năm ng&agrave;y l&agrave;m việc, kể từ ng&agrave;y nhận được hồ sơ hợp lệ, Ph&ograve;ng Đăng k&yacute; kinh doanh cấp tỉnh cấp Giấy chứng nhận đăng k&yacute; doanh nghiệp</li>\r\n	</ol>\r\n</blockquote>\r\n', '', 'img/upload/7c14aea5a344b03db117e1b2305d095c.png', '', 1, '', 0, '2016-05-17 11:45:31', '2016-05-17 11:45:31', 1, 1, 'thanh-lap-cong-ty-tnhh-mot-thanh-vien', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `onlines`
--

CREATE TABLE `onlines` (
  `ip` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `onlines`
--

INSERT INTO `onlines` (`ip`, `time`) VALUES
('::1', '1367742214');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Table structure for table `origins`
--

CREATE TABLE `origins` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  `keywords` varchar(160) CHARACTER SET utf8 NOT NULL,
  `description` varchar(160) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `char`, `keywords`, `description`, `alias`, `images`) VALUES
(322, NULL, 1, 2, '26', '2013-09-27', '2013-10-17 18:55:59', 1, NULL, '', '', '26', ''),
(323, NULL, 3, 4, '28', '2013-09-30', '2013-10-17 18:56:05', 1, NULL, '', '', '28', ''),
(324, NULL, 5, 6, '29', '2013-09-30', '2013-10-17 18:56:23', 1, NULL, '', '', '29', ''),
(325, NULL, 7, 8, 'L', '2013-09-30', '2013-10-17 18:56:48', 1, NULL, '', '', 'l', ''),
(326, NULL, 9, 10, 'M', '2013-09-30', '2013-10-17 18:57:20', 1, NULL, '', '', 'm', '');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) NOT NULL,
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
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `phone`, `email`, `website`, `fax`, `address`, `images`, `content`, `created`, `modified`, `status`) VALUES
(27, 'Geyser', '', '', '', NULL, '', 'img/upload/42efbde2a8094b7059d2d0de79bbc457.jpg', NULL, '2013-05-05', '2014-04-05', 1),
(28, 'Doi tac 2', '', '', '', NULL, '', 'img/upload/a9af6a399fe5040e5cfece0db9ce9ca3.png', NULL, '2013-05-05', '2013-11-18', 1),
(29, 'Selecto', '', '', '', NULL, '', 'img/upload/dd6bc5bf52c523e7184dba3478e6fa3e.jpg', NULL, '2013-05-05', '2013-12-04', 1),
(30, 'Centon', '', '', '', NULL, '', 'img/upload/17464aa879d7dcab875174a57a7e9076.jpg', NULL, '2013-05-05', '2013-12-04', 1),
(31, 'Rheem', '', '', '', NULL, '', 'img/upload/1abd32388caf7d3fed6af6bacb4050b4.jpg', NULL, '2013-05-05', '2013-12-04', 1),
(32, 'AccentAir', '', '', '', NULL, '', 'img/upload/b37ea380e1584f66e8ec16664e68ab93.jpg', NULL, '2013-05-05', '2013-12-04', 1),
(36, 'Thermex', '', '', '', NULL, '', 'img/upload/0125d5a4ff2ebd8a64ab56a1acc32bc3.jpg', NULL, '2013-11-18', '2013-12-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
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
  `mausac` varchar(250) DEFAULT NULL,
  `images2` varchar(250) DEFAULT NULL,
  `images3` varchar(250) DEFAULT NULL,
  `images4` varchar(250) DEFAULT NULL,
  `images5` varchar(250) DEFAULT NULL,
  `sptrangchu` int(2) DEFAULT NULL,
  `pricebb` int(250) DEFAULT NULL,
  `spdatmuatheonhom` int(2) DEFAULT NULL,
  `spbanchay` int(2) DEFAULT NULL,
  `material` int(100) DEFAULT NULL,
  `origin` int(100) DEFAULT NULL,
  `style` int(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `phantram` varchar(250) DEFAULT NULL,
  `kichthuoc2` varchar(250) NOT NULL,
  `kichthuoc3` varchar(250) NOT NULL,
  `kichthuoc4` varchar(250) NOT NULL,
  `gia2` int(100) DEFAULT NULL,
  `gia3` int(100) DEFAULT NULL,
  `gia4` int(100) DEFAULT NULL,
  `gia5` int(100) DEFAULT NULL,
  `kichthuoc5` varchar(250) NOT NULL,
  `maylocnuoc` int(11) NOT NULL,
  `binhnuocnong` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
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
  `keyword` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `created` date NOT NULL,
  `modified` text NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_eg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `footer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `kinhdoanh1` varchar(250) CHARACTER SET utf8 NOT NULL,
  `kinhdoanh2` varchar(250) CHARACTER SET utf8 NOT NULL,
  `kithuat` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `info_other`, `address`, `phone`, `mobile`, `email`, `server`, `username`, `password`, `url`, `keyword`, `description`, `content`, `created`, `modified`, `name_en`, `address_eg`, `title_en`, `descriptions`, `footer`, `kinhdoanh1`, `kinhdoanh2`, `kithuat`) VALUES
(1, 'Công ty TNHH SẢN XUẤT VÀ KINH DOANH THƯƠNG MẠI BẢO ANH', 'Nhà liên hoàn trẻ em, nhà vận động liên hoàn, khu vui chơi trẻ em ', 'Copyright © 2011 Bản quyền thuộc Vinaconex 12', 'VPGD: Tầng 5 Số 161 phố Chùa Láng, Đống Đa, Hà Nội.', '0462593492', '0982 261 492', 'dochoisanxuat@gmail.com', 'localhost', 'root', NULL, 'http://nhalienhoan.vn', 'Nhà liên hoàn trẻ em, nhà chơi liên hoàn, nhà vận động liên hoàn,bộ liên hoàn cầu tuột nhà chòi, nhà chòi cầu trượt', 'Nhà liên hoàn trẻ em, nhà vận động liên hoàn, bộ liên hoàn cầu tuột nhà chòiđồ chơi trẻ em, đồ chơi liên hoàn, nhà liên hoàn, thiết bị vui chơi trong nhà, đồ chơi trong nhà, đồ chơi trẻ em, đồ chơi ngoài trời, khu vui chơi liên hoàn. ', '<p>\r\n	<span style="font-size:14px;"><tt>Hoặc vui l&ograve;ng điền đầy đủ th&ocirc;ng tin v&agrave;o đơn h&agrave;ng, sau khi ho&agrave;n th&agrave;nh qu&yacute; kh&aacute;ch click &quot;Gửi đơn h&agrave;ng&quot;<br />\r\n	Sau khi nhận được đơn h&agrave;ng, trong v&ograve;ng 24h ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận. </tt></span></p>\r\n', '0000-00-00', '1455782195', 'CONG TY TNHH DAU TU THUONG MAI & DICH VỤ VIET NAM TOAN CAU', '', '', '', '<p style="text-align: center;">\r\n	&nbsp;</p>\r\n<div style="text-align: center;">\r\n	<span style="color:#0000ff;"><span style="font-size: 12px;"><strong>C&Ocirc;NG TY TNHH SẢN XUẤT V&Agrave; KINH DOANH THƯƠNG MẠI BẢO ANH&nbsp;&nbsp; </strong></span></span></div>\r\n<div style="text-align: center;">\r\n	<span style="font-size:14px;"><span style="color: rgb(0, 0, 255);"><strong>VPGD: Tầng 5 Số 161 phố Ch&ugrave;a L&aacute;ng, Đống Đa, H&agrave; Nội.</strong></span></span></div>\r\n<div style="text-align: center;">\r\n	<span style="font-size:16px;"><span style="color: rgb(255, 0, 0);"><strong>ĐT: <strong>04 62593492 - hotline: 0982 261 492/ 0934 445 936</strong></strong></span></span></div>\r\n<div style="text-align: center;">\r\n	<span style="color:#0000ff;"><em><strong>Email: dochoisanxuat@gmail.com - Website: <a href="http://nhalienhoan.vn/">nhalienhoan.vn</a></strong></em></span></div>\r\n<div>\r\n	<h2 style="text-align: center;">\r\n		<a href="http://nhalienhoan.vn/tin/247/khu-vui-choi-tre-em-ha-noi.html"> Khu vui chơi trẻ em h&agrave; nội </a></h2>\r\n	<h2 style="text-align: center;">\r\n		<a href="http://nhalienhoan.vn/tin/256/thiet-bi-mam-non.html" target="_blank">Thiết bị mầm non</a></h2>\r\n</div>\r\n<div style="position: absolute; top: -800px; overflow: auto;">\r\n	<a href="http://trenguonthiencam.vn/chi-tiet-tin/28-khach-san-tai-ha-tinh.html" target="_blank" title="khach san tai ha tinh">Khach san tai Ha Tinh</a>; <a href="http://trenguonthiencam.vn/chi-tiet-tin/38-du-lich-bien-thien-cam.html" target="_blank" title="du lich bien thien cam">Du lich bien Thien Cam</a>; <a href="http://trenguonthiencam.vn/chi-tiet-tin/26-bien-thien-cam.html" target="_blank" title="Biển Hà Tĩnh">Biển H&agrave; Tĩnh</a>; <a href="http://trenguonthiencam.vn/chi-tiet-tin/26-bien-thien-cam.html" target="_blank" title="Bien Ha Tinh">Bien Ha Tinh</a>; <a href="http://trenguonthiencam.vn/chi-tiet-tin/26-bien-thien-cam.html" target="_blank" title="Biển Thiên Cầm">Biển Thi&ecirc;n Cầm</a>; <a href="http://trenguonthiencam.vn/chi-tiet-tin/26-bien-thien-cam.html" target="_blank" title="Bien Thien Cam">Bien Thien Cam</a>; <a href="http://cuanhomviet.vn/chi-tiet-tin/213/cua-nhom-kinh.html" target="_blank" title="cửa nhôm kính">Cửa nh&ocirc;m k&iacute;nh</a></div>\r\n', 'Ms Hằng: 0934 445 936', 'Ms Minh: 0979 168 904', 'KT: 0978 191 081');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `images` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `name`, `images`, `created`, `status`) VALUES
(54, '2', 'img/gallery/7c14aea5a344b03db117e1b2305d095c.png', '2016-05-17 10:09:42', 1),
(53, '1', 'img/gallery/15ced29d12975803fae77cbb52924811.jpg', '2016-05-17 10:09:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `char` int(10) DEFAULT NULL,
  `keywords` varchar(160) CHARACTER SET utf8 NOT NULL,
  `description` varchar(160) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `parent_id`, `lft`, `rght`, `name`, `created`, `modified`, `status`, `char`, `keywords`, `description`, `alias`, `images`) VALUES
(322, NULL, 1, 2, 'Cách điệu', '2013-09-27', '2013-10-17 18:58:36', 1, NULL, '', '', 'cach-dieu', ''),
(323, NULL, 3, 4, 'Dài tay', '2013-09-30', '2013-10-17 18:58:45', 1, NULL, '', '', 'dai-tay', ''),
(324, NULL, 5, 6, 'Ngắn tay', '2013-09-30', '2013-10-17 18:59:04', 1, NULL, '', '', 'ngan-tay', ''),
(325, NULL, 7, 8, 'Tay lỡ', '2013-10-15', '2013-10-17 18:59:17', 1, NULL, '', '', 'tay-lo', '');

-- --------------------------------------------------------

--
-- Table structure for table `total_visitors`
--

CREATE TABLE `total_visitors` (
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_visitors`
--

INSERT INTO `total_visitors` (`total`) VALUES
(5562);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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
  `ngaysinh` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `name`, `email`, `phone`, `birth_date`, `sex`, `images`, `created`, `modified`, `active_key`, `status`, `ngaysinh`) VALUES
(47, '79396199414afe8cada9af8be24e8c2a', 'admin', 'nvchien1109@gmail.com', 0, '', '', '', '2012-12-29 07:38:29', '2014-04-10 08:58:02', NULL, 0, NULL),
(62, '25f9e794323b453885f5181f1b624d0b', 'Hải anh', 'hoanmi9x@gmail.com', 904532922, '', '1', '', '2013-05-13 07:48:54', '2013-05-13 07:48:55', 'df263d996281d984952c07998dc54358', 0, NULL),
(49, '', 'Anh12', 'nhungktk50@gmail.com', 989264159, '', '1', '', '2013-05-06 18:02:04', '2013-05-06 18:02:04', '428fca9bc1921c25c5121f9da7815cde', 0, NULL),
(55, 'e10adc3949ba59abbe56e057f20f883e', 'antun', 'tuan@phuchunggroup.vn', 984539659, '', '1', '', '2013-05-11 20:45:05', '2013-05-11 20:45:05', '1700002963a49da13542e0726b7bb758', 0, NULL),
(69, 'e10adc3949ba59abbe56e057f20f883e', 'nguyentuana', 'nguyentuan16081989@gmail.com', 984539659, '', '1', '', '2013-05-15 02:07:30', '2013-05-15 02:07:30', '2823f4797102ce1a1aec05359cc16dd9', 0, '30/8/1990'),
(56, '21232f297a57a5a743894a0e4a801fc3', 'test df', 'Quynhpt512@gmail.com', 984539659, '', '1', '', '2013-05-11 20:45:47', '2013-05-11 20:45:47', '43feaeeecd7b2fe2ae2e26d917b6477d', 0, NULL),
(64, '25f9e794323b453885f5181f1b624d0b', 'tiendung', 'tiendung8890@gmail.com', 466751314, '', '1', '', '2013-05-15 01:38:51', '2013-05-15 01:38:51', '303ed4c69846ab36c2904d3ba8573050', 0, NULL),
(65, 'e10adc3949ba59abbe56e057f20f883e', 'anhtuan123', 'tuanna@pci.vn', 2147483647, '', '1', '', '2013-05-15 01:48:00', '2013-05-15 01:48:00', '58238e9ae2dd305d79c2ebc8c1883422', 0, NULL),
(66, 'e10adc3949ba59abbe56e057f20f883e', 'forumrtytry', 'etertertre@dgdgd.com', 2147483647, '', '0', '', '2013-05-15 01:58:20', '2013-05-15 01:58:20', '65ded5353c5ee48d0b7d48c591b8f430', 0, ''),
(70, 'e10adc3949ba59abbe56e057f20f883e', 'anhtuan16081989fg', 'tuanpci@gmail.com', 984539659, '', '1', '', '2013-05-15 03:22:21', '2013-05-15 03:22:21', '084b6fbb10729ed4da8c3d3f5a3ae7c9', 0, '30/8/1990'),
(71, 'e10adc3949ba59abbe56e057f20f883e', 'nguyentuanasfsdf', 'anhtuan16081989@yahoo.com', 0, '', '1', '', '2013-05-15 03:51:27', '2013-05-15 03:51:27', 'e3796ae838835da0b6f6ea37bcf8bcb7', 0, '21/31/23'),
(72, 'd49995bbdc56d26e9a9ba2e32cbddd54', 'Nguyen Thi Hang', 'hang.auditor10@gmail.com', 1255499017, '', '0', '', '2013-05-15 03:52:26', '2013-05-15 03:52:26', '9ab0d88431732957a618d4a469a0d4c3', 0, '10/10/1989'),
(73, '6786000835b79240c5c89212022844c8', 'bùi Văn Tiến', 'tienbv@phuchunggroup.vn', 989068668, '', '1', '', '2013-05-16 04:50:09', '2013-05-16 04:50:09', 'fb7b9ffa5462084c5f4e7e85a093e6d7', 0, '19/10/1983'),
(74, 'e10adc3949ba59abbe56e057f20f883e', 'anhtuan16081989', 'Quynhpt512@gmail.com', 984539659, '', '1', '', '2013-05-21 05:32:20', '2013-05-21 05:32:20', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 0, '30/18/1990'),
(75, 'e10adc3949ba59abbe56e057f20f883e', 'trinh nhung', 'miuconhamhoc@gmail.com', 984539659, '', '1', '', '2013-05-21 06:06:05', '2013-05-21 06:06:05', '2d6cc4b2d139a53512fb8cbb3086ae2e', 0, '30/8/1990'),
(76, 'e10adc3949ba59abbe56e057f20f883e', 'nhung', 'nhungktkt50@gmail.com', 2147483647, '', '1', '', '2013-05-22 07:29:43', '2013-05-22 07:29:43', '71ad16ad2c4d81f348082ff6c4b20768', 0, '30/08/1989'),
(77, 'fcea920f7412b5da7be0cf42b8c93759', 'Nhung', 'nhungktk50@gmail.com', 904532922, '', '0', '', '2013-05-22 08:46:12', '2013-05-22 08:46:12', '8e296a067a37563370ded05f5a3bf3ec', 0, '30/08/1990'),
(78, '426c94191128276d0448d9ea32652fd4', 'nguyễn thị thơm', 'thomuyen@gmail.com', 973292836, '', '0', '', '2013-05-23 08:48:41', '2013-05-23 08:48:41', 'd516b13671a4179d9b7b458a6ebdeb92', 0, '10/03/1989'),
(79, '00f15c5db380e8a905cf77752369aca8', 'Mr Tiến Anh', 'tienanh1902@gmail.com', 904572922, '', '1', '', '2013-05-26 03:58:34', '2013-05-26 03:58:34', '5ec91aac30eae62f4140325d09b9afd0', 0, '02/02/1989'),
(80, '1b5914e941ed39aaa1422b1fbcfab0ce', 'đoàn phạm', 'emtudauden_90_hy@yahoo.com', 989425933, '', '1', '', '2013-05-28 08:20:59', '2013-05-28 08:20:59', '53fde96fcc4b4ce72d7739202324cd49', 0, '25/06/1990'),
(81, 'f66bd8b6af91558129f7f491480ae81a', 'Nguyễn thị thu hà', 'dragon7707@yahoo.com.vn', 908533266, '', '0', '', '2013-05-29 10:33:19', '2013-05-29 10:33:20', '01386bd6d8e091c2ab4c7c7de644d37b', 0, '03/07/1979'),
(82, 'ad7aec9366c95108091fe59907337fbf', 'Trịnh Thị Ngoan', 'ngoantt.nb@gmail.com', 943175999, '', '0', '', '2013-05-30 01:42:11', '2013-05-30 01:42:11', 'db85e2590b6109813dafa101ceb2faeb', 0, '12/07/1987'),
(83, '1dc6d5621265f4eb1e2fb34028e198cc', 'đỗ thị hồng hạnh', 'dothihoha24@gmail.com', 1694561128, '', '0', '', '2013-05-31 03:40:25', '2013-05-31 03:40:25', '07a96b1f61097ccb54be14d6a47439b0', 0, '24/3/1990'),
(84, '45b28b4d2db405421dc2d14bd5959c20', 'Ma Thị Sa', 'samt.tn0280@gmail.com', 988, '', '0', '', '2013-05-31 07:15:46', '2013-05-31 07:15:46', 'c7e1249ffc03eb9ded908c236bd1996d', 0, '04/11/1985'),
(85, '', '', '', 0, '', '', '', '2013-06-07 01:11:42', '2013-06-07 01:11:42', NULL, 1, NULL),
(86, '965315bfdaaee8ee1eb7474085f5f8e0', 'huyen', 'admin', 0, '', '', '', '2013-12-18 04:56:52', '2013-12-18 04:56:52', NULL, 0, NULL),
(87, '36290a89f42452a2afb8687055bc1e95', 'huyen', 'phuonghuyen.hatinh@gmail.com', 0, '', '', '', '2013-12-18 04:58:52', '2013-12-18 04:58:52', NULL, 0, NULL),
(100, 'e10adc3949ba59abbe56e057f20f883e', 'admin2', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `LinkUrl` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `status` int(2) NOT NULL,
  `so` varchar(250) DEFAULT NULL,
  `mang` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `LinkUrl`, `created`, `status`, `so`, `mang`, `price`, `images`) VALUES
(14, 'Công nghệ lọc nước Nano - SELECTO', 'watch?v=9NJ-dIalYCw', '2013-05-28 15:19:50', 1, NULL, '', '', 'img/upload/53901805b7e129f1ad70c7b35d2cc660.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(10) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `district_id` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weblinks`
--

CREATE TABLE `weblinks` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `link` varchar(256) CHARACTER SET ucs2 NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weblinks`
--

INSERT INTO `weblinks` (`id`, `name`, `link`, `created`, `modified`, `status`) VALUES
(8, 'Google', 'http://google.vn', '0000-00-00', '0000-00-00', 1),
(9, 'Dân trí', 'http://dantri.com.vn', '0000-00-00', '2012-08-04', 1),
(10, '24h', 'http://24h.com.vn', '2012-08-04', '2012-08-04', 1),
(11, 'quản trị mạng', 'http://quantrimang.com.vn', '2012-08-04', '2012-08-04', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answerquestions`
--
ALTER TABLE `answerquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catproducts`
--
ALTER TABLE `catproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helpsd`
--
ALTER TABLE `helpsd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsxes`
--
ALTER TABLE `hsxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infomations`
--
ALTER TABLE `infomations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlines`
--
ALTER TABLE `onlines`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weblinks`
--
ALTER TABLE `weblinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `answerquestions`
--
ALTER TABLE `answerquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catproducts`
--
ALTER TABLE `catproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `helps`
--
ALTER TABLE `helps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `helpsd`
--
ALTER TABLE `helpsd`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `hsxes`
--
ALTER TABLE `hsxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `infomations`
--
ALTER TABLE `infomations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weblinks`
--
ALTER TABLE `weblinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
