-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 03:06 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmsfixes`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_or_sub` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `parent_id`, `description`, `main_or_sub`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, '', 0, '2017-10-03 11:28:43', '2017-10-03 11:28:43'),
(2, 'News', 0, '', 0, '2017-09-22 13:44:48', '2017-09-22 13:44:48'),
(3, 'Founders', 1, '', 1, '2017-09-22 13:45:36', '2017-09-22 13:45:36'),
(4, 'books', 0, 'စာအုပ္မ်ား', 0, '2017-10-09 17:30:00', '2017-10-09 17:30:00'),
(5, 'book1', 4, 'ေဒါက္တာအရွင္ေသာပါက ေရးသားေသာစာအုပ္မ်ား', 1, '2017-10-10 07:26:50', '2017-10-10 07:26:50'),
(6, 'book2', 4, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 1, '2017-10-10 08:13:43', '2017-10-10 08:13:43'),
(7, 'Gallery', 0, '', 0, '2017-09-22 13:49:36', '2017-09-22 13:49:36'),
(8, 'contact', 0, 'this is contact', 0, '2017-10-09 17:30:00', '2017-10-09 17:30:00'),
(9, 'parahita', 0, 'This is parahita category', 0, '2017-12-04 06:06:05', '2017-12-04 06:06:05'),
(10, 'pyinnyardarna', 9, 'This is pyinnyardana category', 1, '2017-12-04 06:07:08', '2017-12-04 06:07:08'),
(11, 'parahita1', 9, 'This is parahita', 1, '2017-12-04 06:08:01', '2017-12-04 06:08:01'),
(12, 'thatharnar', 0, 'This is thatharnar main category', 0, '2017-12-04 06:18:59', '2017-12-04 06:18:59'),
(13, 'thatharnar1', 12, 'This is subcategory', 1, '2017-12-04 06:19:22', '2017-12-04 06:19:22'),
(14, 'thatharnar2', 12, 'this is subcategory', 1, '2017-12-04 06:19:43', '2017-12-04 06:19:43'),
(15, 'education', 0, 'This is education category', 0, '2017-12-04 07:18:58', '2017-12-04 07:18:58'),
(16, 'donor', 0, 'This is donor category.', 0, '2017-12-04 07:19:30', '2017-12-04 07:19:30'),
(17, 'people', 0, 'တရားပဲြပင့္ေလွ်ာက္လုိသူမ်ား', 0, '2017-12-04 07:21:12', '2017-12-04 07:21:12'),
(18, 'ပရဟိတလုပ္ငန္းစဥ္မ်ား', 12, 'ပရဟိတလုပ္ငန္းစဥ္မ်ား', 1, '2017-12-04 09:47:26', '2017-12-04 09:47:26'),
(19, 'သင္တန္းသားမ်ားလုိက္နာရန္ စည္မ်ဥ္း', 9, 'သင္တန္းသားမ်ားလုိက္နာရန္ စည္မ်ဥ္း', 1, '2017-12-05 00:53:26', '2017-12-05 00:53:26'),
(20, 'slider', 1, 'This is slider category.', 1, '2017-12-07 08:14:18', '2017-12-07 08:14:18'),
(21, 'photo', 7, 'This is  subcategory', 1, '2017-12-11 08:18:29', '2017-12-11 08:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `cfl_group`
--

CREATE TABLE `cfl_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_name1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type1` int(11) NOT NULL,
  `cf_name2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type2` int(11) NOT NULL,
  `cf_name3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type3` int(11) NOT NULL,
  `cf_name4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type4` int(11) NOT NULL,
  `cf_name5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type5` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cfl_group`
--

INSERT INTO `cfl_group` (`id`, `group_name`, `cf_name1`, `cf_type1`, `cf_name2`, `cf_type2`, `cf_name3`, `cf_type3`, `cf_name4`, `cf_type4`, `cf_name5`, `cf_type5`, `created_at`, `updated_at`) VALUES
(1, 'CF 1', 'name', 1, 'DOB', 3, 'Father''s Name', 1, 'Image', 4, 'Address', 5, NULL, '2017-12-28 00:24:06'),
(2, 'CF 2', 'Image', 4, 'PDF', 4, 'DOB', 3, 'Position', 1, 'Experience', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cfl_value`
--

CREATE TABLE `cfl_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `cfl_group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `cf_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_value2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_value3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_value4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_value5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cfl_value`
--

INSERT INTO `cfl_value` (`id`, `cfl_group_id`, `post_id`, `cf_value1`, `cf_value2`, `cf_value3`, `cf_value4`, `cf_value5`, `created_at`, `updated_at`) VALUES
(1, 2, 289, '38phatmingalar.jpg', '21 yarsulumutwalharyamyar.jpg', '2017-12-28', 'Programmar', '5', NULL, NULL),
(2, 2, 290, '38phatmingalar.jpg', '21 yarsulumutwalharyamyar.jpg', '2017-12-28', 'Programmar', '5', NULL, NULL),
(3, 2, 291, '38phatmingalar.jpg', '21 yarsulumutwalharyamyar.jpg', '2017-12-28', 'Programmar', '5', NULL, NULL),
(4, 2, 292, '', 'a chit ei san kyae chin.jpg', '2017-12-14', 'Programmar', '6', NULL, NULL),
(5, 2, 288, 'a chit oo.jpg', 'a chain ma phyone nee.jpg', '2017-12-16', 'prd', '2343', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cf_detail`
--

CREATE TABLE `cf_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `cf_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_type` int(11) NOT NULL,
  `cf_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_detail`
--

INSERT INTO `cf_detail` (`id`, `post_id`, `cf_name`, `cf_type`, `cf_value`, `created_at`, `updated_at`) VALUES
(1, 291, 'Address', 5, 'Yangon , Myanmar', NULL, NULL),
(2, 292, 'addresss', 5, 'Yertrt', NULL, NULL),
(3, 288, 'sfsr', 1, 'rfeert', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `url`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'kyawkyaw', 'kyaw@gmail.com', '', 'this is comment', '2017-09-30 08:54:02', '2017-09-30 08:54:02'),
(2, 'Hein', 'heinhtetaung.sglife@gmail.com', '', 'dfdf', '2017-10-05 07:18:35', '2017-10-05 07:18:35'),
(3, 'mgmg', 'mgmg@gmail.com', '', 'THis is comment', '2017-10-18 02:39:37', '2017-10-18 02:39:37'),
(4, 'aso', 'aso@gmail.com', '', 'This is testing', '2017-10-18 02:41:56', '2017-10-18 02:41:56'),
(5, 'abc', 'abc@gmail.com', '', 'this is comment', '2017-10-18 02:56:57', '2017-10-18 02:56:57'),
(7, 'abcdef', 'abcdef@gmail.com', '', 'this is comment', '2017-10-18 02:58:49', '2017-10-18 02:58:49'),
(8, 'testing', 'test@example.com', '', 'abdddcdcddc', '2017-10-18 03:02:07', '2017-10-18 03:02:07'),
(9, 'test1', 'test1@gmail.com', '', 'this is msms', '2017-10-18 03:04:33', '2017-10-18 03:04:33'),
(10, 'foo', 'foo@gmail.com', '', 'this is foo comment', '2017-10-20 11:44:09', '2017-10-20 11:44:09'),
(11, 'bar', 'bar@gmail.com', '', 'this is test', '2017-10-20 11:47:25', '2017-10-20 11:47:25'),
(12, 'test name', 'test@gmail.com', '', 'this is testing', '2017-10-20 11:50:23', '2017-10-20 11:50:23'),
(16, 'mgmg', 'mgmg343433@gmail.com', 'www.mgmg.com', 'This is comment/', '2017-12-06 09:12:39', '2017-12-06 09:12:39'),
(17, 'koko', 'koko@gmail.com', 'www.koko.com', 'Thisdfijeifjeifjeijfei', '2017-12-06 09:13:53', '2017-12-06 09:13:53'),
(18, 'mama', 'mama@example.com', 'www.mama.com', 'This is example.', '2017-12-06 09:19:31', '2017-12-06 09:19:31'),
(20, 'kdfkejfiejieji', 'kdfiee@exmaple.com', 'kdfiedjf', 'kdfiejfiejfe', '2017-12-06 09:25:36', '2017-12-06 09:25:36'),
(21, 'kyawkyaw', 'kyaw@gmai.com', 'kdfiejfie', 'efefefefe', '2017-12-06 09:27:05', '2017-12-06 09:27:05'),
(23, 'bar', 'bar12313@gmail.com', 'www.bar.com', 'I am bar', '2017-12-07 10:46:55', '2017-12-07 10:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `main_category_id`, `sub_category_id`, `short_description`, `file`, `created_at`, `updated_at`) VALUES
(2, 'ဓါတ္ပံုမွတ္တမ္းမ်ား', 7, 21, 'သတၱမအႀကိမ္ေျမာက္ စုေပါင္းမဟာဘံုကထိန္ အလွဴ ေတာ္မဂၤလာ ၆-၁-၂၀၁7 (တနဂၤေႏြ)', 'kt2011-20.jpg,kt2011-19.jpg,kt2011-18.jpg,kt2011-17.jpg,kt2011-16.jpg,kt2011-14.jpg', '2017-12-11 09:26:45', '2017-12-11 09:26:45'),
(3, 'ဓါတ္ပံုမွတ္တမ္းမ်ား', 7, 21, 'အျပည္ျပည္ဆိုင္ရာဓမၼဂီရိ၀ိပႆနာအဖြဲ႔၊ ဓမၼေဇာတိ(ယာယီ)စခန္း ကမာၻ႔၀ိပႆနာ သာသနာျပဳ မဟာသဒၶမၼေဇာတိကဓဇ ဆရာႀကီးဦးဂိုအင္ဟာ ၏ အာနာပါနသတိသင္တန္း', 'anpn-07.jpg,anpn-06.jpg,anpn-05.jpg,anpn-04.jpg,anpn2009.jpg', '2017-12-11 09:36:00', '2017-12-11 09:36:00'),
(4, 'photo', 7, 21, 'ဆ႒မအႀကိမ္ေျမာက္ စုေပါင္းမဟာဘံုကထိန္အလွဴေတာ္မဂၤလာ ၁၄-၁၁-၂၀၁၀(တနဂၤေႏြ)', 'kt2011-16.jpg,kt2011-14.jpg,kt2010-04.jpg,kt2010-03.jpg,kt2010-02.jpg,kt2010-01.jpg', '2017-12-11 10:14:47', '2017-12-11 10:14:47'),
(5, 'dfedfefe', 7, 21, 'dfeefefefe', 'kt2011-20.jpg,kt2011-19.jpg,kt2011-18.jpg,kt2011-17.jpg,kt2011-16.jpg,kt2011-14.jpg,kt2010-04.jpg,kt2010-03.jpg', '2017-12-11 11:13:01', '2017-12-11 11:13:01'),
(6, 'dfdfed', 7, 21, 'dfefe', 'anpn-06.jpg,anpn-05.jpg,anpn-04.jpg,anpn2009.jpg,4.JPG,3.jpg,2H9A1595.JPG,2.jpg,1.jpg', '2017-12-11 11:15:00', '2017-12-11 11:15:00'),
(7, 'dfdfed', 7, 21, 'dfefeert3', 'mdy1.jpg,mdy.jpg,MaBaTha.jpg,kt2011-20.jpg,kt2011-19.jpg', '2017-12-11 11:16:53', '2017-12-11 11:16:53'),
(8, 'dfedfefe', 7, 21, 'dfee', 'Screenshot from 2017-11-16 20-44-21.png,Screenshot from 2017-11-07 21-40-30.png,Screenshot from 2017-10-28 02-34-13.png,Screenshot from 2017-10-21 18-33-15.png', '2017-12-11 11:17:05', '2017-12-11 11:17:05'),
(9, 'test', 7, 21, 'dfefefe', 'ူူpoem1.jpeg,ygn1.jpeg,ygn.jpeg,Screenshot from 2017-11-16 20-44-21.png,Screenshot from 2017-11-07 21-40-30.png,Screenshot from 2017-10-28 02-34-13.png,Screenshot from 2017-10-21 18-33-15.png', '2017-12-11 11:19:01', '2017-12-11 11:19:01'),
(10, 'garfhrf', 7, 21, 'dfefefe', 'Pizigani_1367_Chart_10MB.jpg,msg-1-fc-40.jpg,mdy1.jpg,mdy.jpg,MaBaTha.jpg,kt2011-20.jpg,kt2011-19.jpg,kt2011-18.jpg,kt2011-17.jpg,kt2011-16.jpg', '2017-12-11 11:19:46', '2017-12-11 11:19:46'),
(11, 'tekfjefie', 7, 21, 'dfefefefe', 'kt2011-16.jpg,kt2011-14.jpg,kt2010-04.jpg,kt2010-03.jpg,kt2010-02.jpg,kt2010-01.jpg,download.jpg,anpn-07.jpg,anpn-06.jpg,anpn-05.jpg', '2017-12-11 11:27:22', '2017-12-11 11:27:22'),
(12, 'dfegfege', 7, 21, 'feefefe', '4.JPG,3.jpg,2H9A1595.JPG,2.jpg', '2017-12-11 11:28:42', '2017-12-11 11:28:42'),
(13, 'eferfefe', 7, 21, 'dfee', 'kt2011-17.jpg,kt2011-16.jpg,kt2011-14.jpg', '2017-12-11 11:30:02', '2017-12-11 11:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2017_08_21_150237_create_category_table', 1),
(11, '2017_08_21_151540_create_posts_table', 1),
(12, '2017_08_21_152000_create_postsmeta_table', 1),
(13, '2017_09_04_141003_create_student_table', 1),
(14, '2017_09_04_143648_create_contact_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monk_entrance_form`
--

CREATE TABLE `monk_entrance_form` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `war_taw` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birth_place` text COLLATE utf8_unicode_ci NOT NULL,
  `thatharnar_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `live_monastery` text COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name_address` text COLLATE utf8_unicode_ci NOT NULL,
  `lived_monastery` text COLLATE utf8_unicode_ci NOT NULL,
  `learned_monastery` text COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `f_address` text COLLATE utf8_unicode_ci NOT NULL,
  `passed_gov_sch` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monk_entrance_form`
--

INSERT INTO `monk_entrance_form` (`id`, `degree`, `age`, `war_taw`, `birth_date`, `birth_place`, `thatharnar_no`, `live_monastery`, `teacher_name_address`, `lived_monastery`, `learned_monastery`, `f_name`, `f_address`, `passed_gov_sch`, `created_at`, `updated_at`) VALUES
(1, 'ဦးပညာဝံသ', '၃၁', '၁၀', '၁၃၇၂၊နတ္ေတာ္ဆလန္း(၁၀)ရက္', 'သေျပကုန္းရြာ။ေရနီျမိဳ့', '၂၃၄၃၈၄၈၃၄၃', 'ေဇတဝန္ေက်ာင္းတိုက္', 'ဦးေတေဇာဘာသ။ ရန္ကုန္ မစိုးရိမ္ေက်ာင္းတိုက္။', 'ေသြးေဆးကန္ေက်ာင္းတိုက္။ ေဝ႒ဳဝန္ေက်ာင္းတိုက္', 'ေဇတဝန္ေက်ာင္း', 'ဦးျမသာ', 'သေျပကုန္းေက်းရြာ၊ေရနီျမိဳ', '၁၀ တန္း', '2017-12-09 01:49:03', '2017-12-09 01:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `monk_registration_form`
--

CREATE TABLE `monk_registration_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `degree` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `thatharnar_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(11) NOT NULL,
  `war_taw` int(11) DEFAULT NULL,
  `school_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passed_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monk_registration_form`
--

INSERT INTO `monk_registration_form` (`id`, `degree`, `f_name`, `thatharnar_no`, `birth_date`, `age`, `war_taw`, `school_address`, `phone`, `email`, `passed_date`, `created_at`, `updated_at`) VALUES
(16, 'ဦးသုမန', 'ဦးလွ', '၅၉၃၄၉၃၄၉၃၈၄၉၃', '1988-06-14', 35, 10, 'ရန္ကုန္', '၀၉၃၄၃၈၄၈၃၈၄၃', 'thumana@gmail.com', '2017-12-06', '2017-12-06 10:35:35', '2017-12-06 10:35:35'),
(18, 'ဦးေကာသံလ', 'ဦးဘ', '၂၃၂၄၈၂၄၈၂၄၂', '1990-01-01', 29, 5, 'ရန္ကုန္ ေသြးေဆးကန္ေက်ာင္းတိုက္', '၀၉၃၄၃၈၄၈၃၈၄၃', 'ukaythanla@gmail.com', '2006-02-14', '2017-12-07 10:56:05', '2017-12-07 10:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `place` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `c_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `c_address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `position` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `title`, `place`, `date`, `c_name`, `c_address`, `phone`, `position`, `created_at`, `updated_at`) VALUES
(1, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေအာင္ေမာင္း', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(4, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေအာင္ေက်ာ္', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(5, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေမာင္ေမာင္', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(6, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေက်ာ္ေက်ာ္', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(7, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေအာင္ေမာင္း၁', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(8, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေအာင္ေက်ာ္၂', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(9, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေမာင္ေမာင္၃', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(10, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေက်ာ္ေက်ာ္၄', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(11, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေက်ာ္ေက်ာ္', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(12, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေအာင္ေမာင္း၁', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01'),
(13, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေအာင္ေက်ာ္၂', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(14, 'ဆြမ္းေလာင္း ေအာင္ပဲြ', 'မရမ္းကုန္း', '11/12/2017 (တပို့တြဲ လဆန္း ၈ ရက္)', 'ဦးေမာင္ေမာင္၃', 'မရမ္းကုန္းျမိဳ့', '၀၉၇၄၈၃၈၃၄၃၈', 'ကားျဖင့္ ပင့္ေဆာင့္ပါမည္', '2017-12-10 06:11:58', '2017-12-10 06:11:58'),
(15, 'ေက်ာင္းေရစက္ခ်', 'လသာ ၁၈ လမ္း', '(နတ္ေတာ္လဆန္း ၁၀ ရရက္)', 'ဦး ေက်ာ္ေက်ာ္၄', 'လသာ ၁၈ လမ္း အိမ္အမွတ္၁၈', '၀၉၈၃၄၈၃၄၈၃', 'ကားနဲ့', '2017-12-10 01:37:01', '2017-12-10 01:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `main_category_id`, `sub_category_id`, `short_description`, `detail_description`, `feature_photo`, `attach_file`, `detail_photo`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `custom_field5`, `created_at`, `updated_at`) VALUES
(1, 'ေဒါက္တာအရွင္ေသာပါက၏ ေထရုပတၱိအက်ဥ္း', 1, 3, '<table>\r\n	<tbody>\r\n		<tr>\r\n		<td align="center" valign="top">၁။</td>\r\n		<td valign="top">အမည္</td>\r\n		<td>အ႐ွင္ေသာပါက</td>\r\n		</tr>\r\n		<tr>\r\n		<td align="center" valign="top">၂။</td>\r\n		<td valign="top">မိဘအမည္</td>\r\n		<td>ဦးေမာင္ေမာင္+ ေဒၚေအးၾကဴ</td>\r\n		</tr>\r\n		<tr>\r\n		<td align="center" valign="top">၃။</td>\r\n		<td valign="top">ေမြးသကၠရာဇ္</td>\r\n		<td>၁၃၃၃- ခုႏွစ္၊ တပို႔တြဲလဆန္း (၆) ရက္ (၂၁.၁.၁၉၇၂)ေသာၾကာေန႔</td>\r\n		</tr>\r\n		<tr>\r\n		<td align="center" valign="top">၄။</td>\r\n		<td valign="top">ေမြးရပ္ဇာတိ</td>\r\n		<td>ဧရာ၀တီတိုင္း၊ ေမာင္လၿမိဳင္ကၽြန္းၿမိဳ႕နယ္၊ေရွာက္ေခ်ာင္းေက်းရြာ</td>\r\n		</tr>\r\n		<tr>\r\n		<td align="center" valign="top">၅။</td>\r\n		<td valign="top">လူမ်ိဳး</td>\r\n		<td>ဗမာ</td>\r\n		</tr>\r\n		<tr>\r\n		<td align="center" valign="top">၆။</td>\r\n		<td valign="top">ရဟန္းျဖစ္သည့္ခုႏွစ္သကၠရာဇ္ ႏွင့္ ေနရာ</td>\r\n		<td>၁၃၅၃-ခု၊ တန္ခူးလဆန္း(၅)ရက္ (၇.၄.၁၉၉၂)အဂၤါေန႔။ ပန္းတေနာ္ၿမိဳ႕၊ ျမေတာင္စာသင္တိုက္၊ဧရာ၀တီတိုင္း။</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<tbody>\r\n<tr>\r\n<td align="center" valign="top">၇။</td>\r\n<td valign="top">သာသနာ၀င္မွတ္တမ္းအမွတ္ (မွတ္ပံုတင္အမွတ္)</td>\r\n<td>၁၄/ပတန(သ) ၀၀၀၅၀၇</td>\r\n</tr>\r\n<tr>\r\n<td align="center" valign="top">၈။</td>\r\n<td valign="top">ပညာအရည္အခ်င္း (ေအာင္ျမင္သည့္စာေမးပြဲမ်ား)</td>\r\n<td>\r\n<ul>\r\n<li class="first-child">၁၃၅၁ (၁၉၉၀) ခုႏွစ္တြင္ ပထမႀကီးတန္းကို ေအာင္ျမင္ခဲ့သည္၊</li>\r\n<li>၁၃၅၇ (၁၉၉၆) ခုႏွစ္တြင္ “သာသနဓဇဓမၼာစရိယ” ဘြဲ႕၊</li>\r\n<li>၁၃၆၂ (၂၀၀၀) ခုႏွစ္တြင္ အိႏိၵယႏိုင္ငံ။ မဂဓတကၠသိုလ္မွ (M.A) မဟာ၀ိဇၹာဘြဲ႕၊</li>\r\n<li class="last-child">၁၃၆၆ (၂၀၀၄) ခုႏွစ္တြင္ အိႏၵိယႏိုင္ငံ။ မဂဓတကၠသိုလ္မွ (Ph.D) ပါရဂူဘြဲ႕(“Analysis of the Moral Character (Sila) in Buddhism”) က်မ္းေခါင္းစဥ္ျဖင့္ က်မ္းစာျပဳစုၿပီး ပါရဂူဘြဲ႕ကို ရရိွခဲ့ျခင္းျဖစ္သည္)</li>\r\n</ul>\r\n<div><a id="s1"></a> <img alt="" src="file:///D:/Work/ZTW/www.jetavam.com/images/stories/dhamarsiriya.jpg" border="0" width="70"></div>\r\n<div><a id="s2"></a> <img alt="" src="file:///D:/Work/ZTW/www.jetavam.com/images/stories/master.jpg" border="0" width="70"></div>\r\n<div><a id="s3"></a> <img alt="" src="file:///D:/Work/ZTW/www.jetavam.com/images/stories/phd.jpg" border="0" width="70"></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align="center" valign="top">၉။</td>\r\n<td valign="top">ပညာသင္ၾကားခဲ့ေသာေနရာမ်ား</td>\r\n<td>\r\n<ul>\r\n<li class="first-child">ေမာ္လၿမိဳင္ကၽြန္းၿမိဳ႕နယ္ ၿငိမ္းဦးေက်ာင္းတိုက္၊</li>\r\n<li>ပန္းတေနာ္ၿမိဳ႕ ျမေတာင္စာသင္တိုက္၊</li>\r\n<li>အင္းစိန္ၿမိဳ႕နယ္ ရြာမပရိယတိၱ စာသင္တိုက္၊</li>\r\n<li>ရန္ကင္းၿမိဳ႕နယ္ ပဥၥနိကာယ သာသနာ့ဗိမာန္ေက်ာင္းတိုက္</li>\r\n<li class="last-child">အိႏိၵယႏိုင္ငံ၊ ဘီဟာျပည္နယ္၊ မဂဓ တကၠသိုလ္</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align="center" valign="top">၁၀။</td>\r\n<td valign="top">သာသနာေရးဆိုင္ရာ ေဆာင္ရြက္ခ်က္အက်ဥ္း</td>\r\n<td>\r\n<ul>\r\n<li class="first-child">ဘုန္းေတာ္ႀကီးမ်ားအတြက္ ကြန္ပ်ဴတာ၊ အဂၤလိပ္စာ၊ ပရိယတၱိစာေပမ်ား သင္ၾကားပို႕ခ်ေပးျခင္း။</li>\r\n<li>(၁၀)တန္း ဘာသာစံု အခမဲ့ပညာဒါနသင္တန္းေက်ာင္းဖြင့္လွစ္သင္ၾကားေပးျခင္း။</li>\r\n<li>ေက်ာင္းသားလူငယ္မ်ားအတြက္ ေႏြရာသီယဥ္ေက်းမွုႏွင့္အဂၤလိပ္စာ ပညာဒါနသင္တန္းမ်ား ဖြင္လွစ္သင္ၾကားေပးျခင္း။</li>\r\n<li>ေဇတ၀န္ဓမၼာ႐ံုေက်ာင္းတိုက္တြင္ ပဓာနနာယကတာ၀န္ျဖင့္ တရားေဟာျခင္း၊ စာေပေရးသားျပဳစုျခင္း၊ စာေပမ်ားပို႕ခ်ျခင္း။</li>\r\n<li>တစ္လလွ်င္ (၂)ႀကိမ္ အခမဲ့ က်န္းမာေရးကုသမႈေပးေနျခင္း။</li>\r\n<li class="last-child">ျပည္နယ္တိုင္းအသီးသီးသို႔ ႂကြေရာက္၍ တရားဓမၼမ်ား ေဟာေျပာျပသျခင္း။</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align="center" valign="top">၁၁။</td>\r\n<td valign="top">ယခုလက္ရိွသီတင္းသံုးရာေနရာဌာန</td>\r\n<td>ေဇတ၀န္ဓမၼာ႐ံုေက်ာင္းတိုက္၊ ျမသီတာရပ္ကြက္ (ဘိုၿခံ) ပ်ဥ္းမပင္အုပ္စု၊ မဂၤလာဒံုၿမိဳ႕နယ္၊ ရန္ကုန္ၿမိဳ႕၊<br>\r\nဖုန္း = ၀၁-၆၃၆၈၈၆/ ၀၉-၈၅၉၈၀၀၁</td>\r\n</tr>\r\n<tr>\r\n<td align="center" valign="top">၁၂။</td>\r\n<td valign="top">စာေပေရးသားျပဳစုျခင္း</td>\r\n<td>\r\n<ol>\r\n<li>Analysis of the Moral Character (Sila) in Buddhism</li>\r\n<li>Fundamental English Grammar(အေျခခံအဂၤလိပ္သဒၵါက်မ္း) စေသာက်မ္းစာအုပ္ အႀကၤီးအေသး စုစုေပါင္း (၂၀)အုပ္ထုတ္ေ၀ၿပီးျဖစ္ပါသည္၊ ဆက္လက္ထုတ္လွ်က္ရိွပါသည္။</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n</tbody>', 'saryartaw.png', '', 'saryartaw1.png', '', '', '', '', '', '2017-12-04 08:19:59', '2017-12-05 02:32:54'),
(2, 'သာသနာျပဳ လုပ္ငန္းစဥ္မ်ား', 12, 13, '“ပရိယတိၱ၊ ပဋိပတၱိ၊ ပရဟိတ” ဟူ.ေသာ ဤ.ေက်ာင္းတိုက္၏ သာသနာ.ျပဳလုပ္ငန္းစဥ္သံုးရပ္ ထားရိွသည့္ အတိုင္း', '<b>ပရိယတၱိလုပ္ငန္းစဥ္မ်ား</b>\r\n<br>\r\nဓမၼာစရိယ သံဃာေတာ္မ်ားကို လက္ခံ၍ က်မ္းရင္းသံုးက်မ္းႏွင့္ အဂၤလိပ္စာ ဘာသာရပ္မ်ားကို စနစ္တက် သင္ၾကားေပးရန္ အစီအစဥ္ထားရိွသည္။ (မၾကာမီ အေကာင္အထည္ေဖၚပါမည္) ခုလက္ရိွအေနအထားတြင္ ပထမျပန္သံဃာေတာ္မ်ားအား ပရိယတၱိစာေပမ်ားသင္ၾကား ပို႕ခ်လွ်က္ရိွသည္။ ေနရာအခက္အခဲေၾကာင့္ အနည္းငယ္သာ လက္ခံႏိုင္ေသးသည္။ ေႏြရာသီ သႀကၤန္အၿပီးတြင္ သံဃာေတာ္မ်ားအတြက္ ကြန္ပ်ဴတာႏွင့္ အဂၤလိပ္စာ ဘာသာရပ္မ်ားကို (၁) လသင္တန္းအျဖစ္ ႏွစ္စဥ္ျပဳလုပ္ေပးရန္လည္း အစီအစဥ္ထားရိွပါသည္။</p>\r\n<br>\r\n\r\n<b>ပဋိပတၱိလုပ္ငန္းစဥ္မ်ား</b>\r\n<br>\r\nတစ္ႏွစ္လွ်င္္ အနည္းဆံုး (၂) ၾကိမ္မွ (၃) ၾကိမ္အထိ တရားစခန္းမ်ားဖြင့္လွစ္၍ ဝိပႆ နာ အားထုတ္ေစမည္ ျဖစ္ပါသည္။ (အေဆာက္အဦးမ်ား မျပည့္စံုေသး၍ လက္ရိွအေျခအေနမွာ မလုပ္ေဆာင္ႏိုင္ေသးပါ။ ၀ါတြင္းဥပုသ္ႏွင့္ သၾကၤန္တြင္း ေန႕တိုင္း မနက္ (၁၀)နာရီမွ (၁၁)နာရီအထိ တရားေဟာ တရားျပ တရားအားထုတ္ပါသည္၊ ဆရာေတာ္ကိုယ္တိုင္ ေဟာေျပာ ျပသလွ်က္ရွိပါသည္။ (ေယာဂီေဆာင္မ်ားရိွပါက စခန္းပြဲမ်ားျဖစ္ေအာင္ စီစဥ္မွာ ျဖစ္သည့္အတြက္ ေယာဂီေဆာင္လွဴလိုေသာ အလွဴရွင္မ်ားလည္း ဆက္သြယ္လွဴဒါန္းႏို္င္ၾကပါၿပီ)\r\n<br>\r\n', '', '', '', '', '', '', '', '', '2017-12-04 09:09:45', '2017-12-05 03:03:21'),
(3, 'ပရဟိတလုပ္ငန္းစဥ္မ်ား', 12, 18, '<p>ပရဟိတလုပ္ငန္းစဥ္မ်ားအနက္ –</p>', '<p>ပရဟိတလုပ္ငန္းစဥ္မ်ားအနက္ –</p>\r\n<ol>\r\n<li><p align="justify">ပညာေရးက႑အတြက္ (၁၀) တန္း ေက်ာင္းသား/သူမ်ား အတြက္ဘာသာစံု အခမဲ့သင္တန္းဖြင့္လွစ္၍ တာ၀န္ယူသင္ၾကားေပးလွ်က္ ရိွပါသည္။ အထူးသျဖင့္ မိဘေတြက ေက်ာင္းၿပီးေအာင္ (၁၀-တန္းေအာင္ျမင္ေအာင္) မထားႏိုင္ေသာ ႏွစ္က်ေက်ာင္းသားမ်ား ျဖစ္ပါသည္။ အဂၤလိပ္သဒၵါ၊ စကားေျပာႏွင့္ ကြန္ျပဴတာတို႕ကိုလည္း သင္ၾကားေပးပါသည္၊ အျခားေသာ ႏိုင္ငံတကာဘာသာရပ္မ်ားကိုလည္း တိုးခ်ဲ႕သင္ၾကားေပးရန္ ရည္ရြယ္ထားပါသည္။</p>\r\n</li>\r\n<li><p align="justify">က်န္းမာေရးက႑အတြက္ – တစ္လလွ်င္ (၂) ၾကိမ္ (ဗုဒၶဟူးေန႕တစ္ပါတ္ျခား) က်န္းမာေရးအလွဴေတာ္အျဖစ္ အခမဲ့ ကုသေပးလွ်က္ ရိွေနပါသည္။ ေရႊျပည္ဟိန္းေဆးခန္းမွ ဆရာ၀န္မ်ား လာေရာက္၍ ကုသေပးၾကပါသည္။ ေရွ႕ဆက္၍ ကိုယ္ပိုင္ေဆးခန္းျဖင့္ အပါတ္စဥ္ ကုသေပးႏိုင္ေအာင္ ေဆာင္ရြက္သြားမည္ ျဖစ္ပါသည္။ (ဤလုပ္ငန္းစဥ္အတြက္ ေဆးခန္းတစ္ေဆာင္ မျဖစ္မေန ေဆာက္လုပ္ရန္ အလွဴမ်ားလိုအပ္ေနပါသည္)။</p>\r\n</li>\r\n<li><p align="justify">ဘာသာေရး က႑အတြက္ – ျမတ္စြာဘုရား၏ ျဖစ္ေတာ္စဥ္ႏွင့္ ေဟာၾကားေတာ္မူခဲ့ေသာ သုတ္ေတာ္ ေဒသနာေတာ္မ်ားကို ရြက္ဖတ္ပူေဇာ္ရာတြင္ အသံထြက္ မွန္မွန္ကန္ကန္ႏွင့္ ရြတ္ပြားႏိုင္ရပါမည္။ ထို႕အျပင္ သုတ္ေတာ္ ေဒသနာေတာ္တို့၏ အနက္အဓိပါၸယ္တို႕ကို သိရိွၿပီး ရြတ္ဖတ္ပါက ၾကည္ညိဳဖြယ္ ဂုဏ္ေတြကို ေတြ႕ျမင္ႏိုင္ၿပီး ပို၍အက်ိဳးႀကီးေစႏိုင္ပါသည္။ ထိုကဲ့သို႕ အက်ိဳးရိွေစမႈကို ရည္ရြယ္၍ လူပုဂိၢဳလ္မ်ားအတြက္ ၀တ္ရြက္စဥ္ႏွင့္ ပါ႒ိဖတ္နည္းသင္တန္းကို ဖြင့္လွစ္သင္ၾကားေပးပါသည္။ ေရွးဆက္၍လည္း အဘိဓမၼာသင္တန္း၊ ၀ိသုဒၶိမဂ္သင္တန္း စသည္တို႕ကိုလည္း သင္ၾကားျပသေပးမည္ ျဖစ္ပါသည္။</p></li>\r\n<li><p align="justify">လူမႈေရးက႑မ်ား – လူသားခ်င္း စာနာေထာက္ထားေသာအားျဖင့္ သဘာ၀ေဘးဒဏ္ စေသာအႏၱရာယ္မ်ား က်ေရာက္ေနေသာ ပုဂၢိဳလ္မ်ားအား စြမ္းႏိုင္သေလာက္ ကူညီေစာင့္ေရွာက္ေပးပါသည္။ အျခားအဆင္မေျပသည့္ ကိစၥရပ္မ်ားတြင္လည္း အမွန္တကယ္လိုအပ္ပါက ကူညီေဆာင္ရြက္ ေပးလွ်က္ရိွပါသည္။ ၿပီးခဲ့သည့္အခ်ိန္ေတြက နာဂစ္မုန္တိုင္းဒဏ္ခံစားေနရေသာ ဧရာ၀တီတိုင္းေဒသတြင္ နာဂစ္ေၾကာင့္ ၿပိဳက် ပ်က္စီးသြားေသာ ဘုန္းေတာ္ႀကီးေက်ာင္းမ်ားအား ျပဳျပင္ေပးျခင္း၊ စာသင္ေက်ာင္းမ်ားအား အသစ္တည္ေဆာက္ေပးျခင္း (၂၅-ေက်ာင္း ေဆာက္လုပ္ၿပီးပါၿပီ)၊ ေက်းလက္ေဆးခန္း တည္ေဆာက္ေပးျခင္း (၂- ေဆာင္ ေဆာက္လုပ္ၿပီး)၊ လမ္းတံတား တည္ေဆာက္ေပးျခင္း (တံတား႐ွည္ ၂-စင္း ေဆာက္ၿပီး)၊ အ၀ီစိေရတြင္း ေရကန္မ်ား တူးေဖာ္ေပးျခင္း (ေပ-၅၀၀ႏွင့္အထက္ တြင္း၊ စက္၊ ေရကန္အပါအ၀င္ ၆၀ တူးေဖာ္ေပးၿပီး) စေသာ အက်ိဳးျပဳလုပ္ငန္းမ်ားကို အလွဴ႐ွင္မ်ား၊ လွဴဒါန္းလိုသူမ်ားႏွင့္ ပူးေပါင္းေဆာင္႐ြက္ေပးလွ်က္ ႐ွိပါသည္။ ထို႔အျပင္ မဂၤလာဒံုၿမိဳ႕နယ္ နာေရးကူညီမႈအသင္းတြင္ အလုပ္အမႈေဆာင္အျဖစ္လည္းေကာင္း၊ တြံေတးၿမိဳ႕ ပရိယတၱိ သာသနာ့ဥပဌာကအဖြဲ႕၏ ဩ၀ါဒစရိယ အျဖစ္လည္းေကာင္း ေဆာင္႐ြက္ေပးလွ်က္႐ွိပါသည္ သို႔ပါ၍ ဆရာေတာ္၏ ဘာသာေရး၊ လူမႈေရး၊ က်န္းမာေရး၊ ပညာေရး စေသာပရဟိတလုပ္ငန္း/သာသနာျပဳ လုပ္ငန္းမ်ားကို စိတ္ပါ၀င္စားမႈ႐ွိပါက လာေရာက္ပူးေပါင္းေဆာင္႐ြက္ျခင္း၊ ပါ၀င္လွဴဒါန္းျခင္းမ်ား လုပ္ေဆာင္ႏိုင္ၾကပါသည္။ဆက္သြယ္လွဴဒါန္းႏိုင္ၾကပါၿပီ။</p>\r\n</li>\r\n</ol>\r\n<h4>ကေလးမ်ားသီးသန္႔</h4>\r\n<p align="justify">၁၃-ႏွစ္ေအာက္ ကေလးမ်ားအတြက္ ႏွစ္စဥ္ ေတာင္သူလယ္သမားေန႔ (မတ္လ ၂-ရက္)ေန႔တြင္ တစ္ေန႔တာ အာနာပါနတရားသင္တန္းကို က်င္းပေပးလွ်က္႐ိွပါသည္၊ ဆရာႀကီး ဦးဂုိအင္ကာ၏ ဓမၼေဇာတိရိပ္သာမွ တရားျပဆရာ/မ မ်ားလာေရာက္ျပသေပးပါသည္။</p>\r\n<p align="justify">ယေန႔ လူငယ္မ်ား လိမၼာယဥ္ေက်းေစရန္အတြက္ ယဥ္ေက်းမႈသင္တန္းမ်ား၊ ယဥ္ေက်းလိမၼာသင္ခန္းစာ သင္တန္းမ်ားႏွင့္ အဂၤလိပ္စာ သင္တန္းမ်ားကို ႏွစ္စဥ္ေႏြရာသီ ေက်ာင္းပိတ္ရက္မ်ားတြင္ ဖြင့္လွစ္ သင္ၾကား ေပးလွ်က္႐ွိပါသည္။ ေရွ႕ဆက္လက္၍လည္း အပတ္စဥ္ တနဂၤေႏြ သင္တန္းေက်ာင္း (Sunday School) ကို ဖြင့္လွစ္၍ ေက်ာင္းသား လူငယ္မ်ားအတြက္ ဗုဒၶဘာသာ ဗုဒၶ၀င္သမိုင္းႏွင့္ ဇာတ္ေတာ္နိပါတ္ေတာ္ မ်ားကို အဂၤလိပ္စာ အရည္အေသြးပါ ျပည့္မီေစရန္ ျမန္မာ-အဂၤလိပ္ (၂) ဘာသာျဖင့္ သင္ၾကားေပးရန္ ရည္႐ြယ္ထားပါသည္။</p>', '', '', '', '', '', '', '', '', '2017-12-04 09:45:21', '2017-12-05 03:27:10'),
(236, 'သာသနာျပဳစြမ္းရည္ ျမွင့္တင္ေရးသင္တန္း', 12, 14, '<h3>သံဃာမ်ားေက်ာင္းတိုက္ဝင္ေရာက္ျခင္း</h3>', '<h4>ေက်ာင္းတိုက္၌ ေနထိုင္လိုေသာသံဃာေတာ္မ်ား</h4>\r\n<p>ေက်ာင္းတိုက္၌ အတြင္းေနအျဖစ္ ေနထိုင္လိုေသာ သံဃာေတာ္မ်ားသည္ ႏွစ္စဥ္ သၾကၤန္ၿပီးခ်ိန္၌ သံဃာေတာ္မ်ား အတြက္ ၀င္ခြင့္ေဖါင္မ်ား စတင္လက္ခံပါမည္။ သံဃာလက္ခံရက္၊ ၀င္ခြင့္ေလွ်ာက္လြာ တင္သြင္းရမည့္ရက္မ်ားကို ေက်ာင္းတိုက္၌ လာေရာက္စံုစမ္းရပါမည္။ ဖုန္းျဖင့္လည္း စံုစမ္းႏိုင္ပါသည္။ အင္တာနက္ အသံုးျပဳသူမ်ားသည္ ေက်ာင္းတိုက္ ၀က္ဘ္ဆိုက္တြင္ ၾကည့္႐ႈႏိုင္ပါသည္၊ အင္တာနက္တြင္ ၀င္ခြင့္တင္ရမည့္ရက္၊ သံဃာလက္ခံမည့္ရက္၊ ေက်ာင္းတိုက္သို႕လာေရာက္ၾကရမည့္ရက္၊ ေက်ာင္းတိုက္၌ေနခြင့္ရေသာ သံဃာစာရင္းမ်ားကို ေၾကညာေပး သြားမည္ ျဖစ္ပါသည္။ ထို႕အျပင္ ၀င္ခြင့္္ေျဖဆိုျခင္း၊ လူေတြ႕စစ္ေဆးခံယူျခင္းမ်ားလိုအပ္ပါက ထည့္သြင္း ေၾကညာေပးပါမည္။</p>', 'saryartaw.png', '', 'saryartaw1.png', '', '', '', '', '', '2017-12-04 10:08:46', '2017-12-05 02:45:56'),
(237, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(238, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(239, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(240, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(241, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(242, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(243, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(244, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(245, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(246, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(247, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(248, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(249, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(250, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(251, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'Buddha_Shakyamuni_painting_tree_enlightenment_Bodghaya.jpg', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(252, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 4, 5, 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', 'ေဇတ၀န္စာစဥ္စာအုပ္မ်ား', '', 'ဦးကုလား.pdf', '', '', '', '', '', '', '2017-12-04 10:33:21', '2017-12-04 10:33:21'),
(253, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(254, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(255, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(256, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(257, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(258, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(259, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(260, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(261, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(262, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(263, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(264, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(265, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 4, 6, 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', 'ေဒါက္တာေသာပါက၏ ေနာက္ဆုံးေရးေဆာင္ပါးမ်ား', '၃၈.jpeg', '110 Android Secret Codes, Hidden Menu, and Dialler Codes.pdf', '', '', '', '', '', '', '2017-12-04 23:44:14', '2017-12-04 23:44:14'),
(266, 'ေဇတ၀န္ပရဟိတ အက်ိဳးေဆာင္အဖဲြ႕', 9, 11, 'ယေန႔ေခတ္တြင္“ပရဟိတ”ဟူေသာစကားလုံးေ၀ါဟာရကုိ ေနရာမ်ားစြာတြင္အသုံးၿပဳေနၾကသည္ကို ေတြ႔ရ သည္၊၊ မည္သုိ႔ေသာလုပ္ငန္းမ်ဳိးသည္ ပရဟိတအစစ္အမွန္ၿဖစ္သည္ႏွင့္၊ ပရဟိတေ၀ါဟာရ၏မူလရင္းၿမစ္အ ဓိပၸါယ္ကို စာဖတ္သူသုိ႔တင္ၿပေဆြးေႏြးလုိက္ရပါသည္၊၊', 'မန္မာစာေပႏွင့္ယဥ္ေက်းမႈသည္ ဗုဒၶဘာသာကိုအေၿခၿပဳထားသည့္အတြက္ ဗုဒၶဘာသာ၏မူလစာေပၿဖစ္သည့္ ပါဠိစာေပမွေ၀ါဟာရစကားလုံးမ်ားစြာကို ေန႔စဥ္ဘ၀လုပ္ငန္းစဥ္မ်ားတြင္အသုံးၿပဳထားသည္ကို ေတြ႔ရႏုိင္ပါ သည္၊၊\r\n\r\n“ပရဟိတ”ဟူေသာေ၀ါဟာရသည္ မူလအားၿဖင့္ ပါဠိစာေပေ၀ါဟာရတစ္ခုၿဖစ္သည္၊၊ သုိ႔ေသာ္ ဗုဒၶဘာသာ၀င္ တုိ႔သည္္ ၿမန္မာေ၀ါဟာရကိုထက္ ပါဠိစကားလုံးကိုပုိ၍ႏွစ္သက္စြာအသုံးၿပဳခဲ့ၾကရာမွ“ပရဟိတ”ဟုၾကားလိုက္ လ်င္ ‘အမ်ားအက်ဳိးၿပဳလုပ္ငန္း’ဟူ၍ ကေလးသူငယ္မ်ားအထိပင္ နားလည္သေဘာေပါက္လာခဲ့ၾကသည္၊၊\r\n\r\nပါဠိေ၀ါဟာရစကားလုံးမ်ားကို ၿမန္မာတုိ႔ကသာအေလးအနက္တန္ဖုိးထားၿပီး ေန႔စဥ္သုံးစကားမ်ားတြင္ထည့္ သြင္း၍ေၿပာဆုိၾကသည္ဟု အထင္ရွိခဲ့ဖူးသည္၊၊ သီရိလကၤာႏုိင္ငံသုိ႔ေရာက္ေသာအခါတြင္မွ ၿမန္မာတုိ႔ထက္သီရိ လကၤာလူမ်ဳိးတုိ႔က ပါဠိစာေပေ၀ါဟာရမ်ားကိုပိုမုိ၍ႏွစ္သစ္ၿပီး၊ အေလးအနက္ထား အသုံးၿပဳသည္ကို သတိၿပဳ မိေတာ့သည္၊၊\r\n\r\nသုိ႔ေသာ္ သီရိလကၤာလူမ်ဳိးတုိ႔သည္ ပါဠိေ၀ါဟာရမ်ားကိုအသုံးၿပဳရာတြင္ ၿမန္မာတုိ႔ကဲ့သုိ႔စကားလုံးတုိက္ရိုက္အ သုံးမၿပဳဘဲ ေဒသအသံထြက္မ်ားႏွင့္ေရာေႏွာၿပီး အသုံးၿပဳၾကေလသည္၊၊ ဥပမာ-ၿမန္မာတုိ႔သည္ တစ္စုံတစ္ ခုေသာအေၾကာင္းေၾကာင့္ အဆင္မေၿပၿဖစ္လ်င္“ဒုကၡ,ဒုကၡ”ဟုဆုိၾကသည္၊၊ သီရိလကၤာတုိ႔ကမူ“ဒုကၡဳိက္, ဒုကၡဳိက္”ဟု ဆုိၾကေလသည္၊၊\r\n\r\nပါဠိစကားလုံးေ၀ါဟာရအားၿဖင့္“တစ္နံပတ္=ဧက”ကို‘ဧကုိက္’၊“ႏွစ္နံပတ္=ေဒြ”ကို‘ေဒကိုက္’၊“သုံးနံပတ္=ေတ” ကုိ‘တူႏုိက္’စသည္အားၿဖင့္ ဂဏန္းေ၀ါဟာရမ်ားတြင္လည္း ပါဠိေ၀ါဟာရကိုပင္ ေဒသသံေရာလ်က္အသုံးၿပဳ ၾကေလသည္၊၊\r\n\r\nထုိ႔ၿပင္ ထမင္းစားသည္ကို ပါဠိေ၀ါဟာရအားၿဖင့္ ‘ခါဒတိ’ဟုေခၚသည္ကို သီရိလကၤာတုိ႔သည္ထမင္းစား ရန္ေၿပာေသာအခါ‘ခါန၀’ဟု၄င္း၊ ေရေသာက္သည္ကို‘ေဘာန၀’ဟု၄င္း၊ အိပ္သည္ကို‘နိတိ’ဟု၄င္း၊ သြား သည္ကို‘ယာန၀’၊ လာသည္ကို‘ဧန၀’ဟု၄င္း၊ ပါဠိစကားလုံးမ်ားကိုခ်ည္းအသုံးၿပဳထားၾကသည္ကို ေလ့လာရ သည္၊၊ \r\n\r\nလူနာမည္မ်ားကိုလည္း ပါဠိလိုအမည္မွည့္ေခၚၾကသည္ကို ေတြ႔ရသည္၊၊ ၿမန္မာတုိ႔သည္ ပါဠိစကားလုံးဆုိလ်င္ ဘုရားစကားေတာ္မ်ားၿဖစ္သည္ဟု တခ်ဳိ႔ေ၀ါဟာရမ်ားကို မသုံးရဲၾကေပ၊၊ သီရိလကၤာတုိ႔ကမူ ပါဠိစကားလုံးတုိင္း ကိုရဲရဲ၀ံ့၀ံ့ အသုံးၿပဳၾကေလသည္၊၊\r\n\r\nသီရိလကၤာႏုိင္ငံ၊ မကုဋာရာမၿမန္မာေက်ာင္းတြင္ကပ္ေနသည့္ အရက္သမားကပၸိယၾကီး၏ အမည္သည္“တဏွ ကၤရ”ဟူ၍မွည့္ထားပါသည္၊၊ ၿမန္မာစာသင္သားသံဃာေတာ္တုိ႔ ဘုရားဖူးႏွင့္ဟုိဟုိသည္သည္သြားရာတြင္ အသုံးၿပဳငွားရန္းသည့္ကားသမားေလး၏အမည္သည္“ဇနက”ဟူ၍ေခၚပါသည္၊၊\r\n\r\nအၿခား “သိဒၶတၳ”ဟူ၍နာမည္မွည့္ထားသူ၊ “ရာဟုလ”အမည္မွည့္ထားသူမ်ားကိုလည္းေတြ႔ရသည္၊၊ ထုိအမည္ မ်ားအားလုံးပင္ ႏွစ္က်ိပ္ရွစ္ဆူဘုရားအမည္ႏွင့္ ရဟႏၱာသာ၀ကၾကီးမ်ား၏အမည္မ်ားၿဖစ္ပါသည္၊၊ အမ်ဳိးသၼီး အမည္မ်ားသည္လည္း ပါဠိအမည္မ်ားၿဖစ္ပါသည္၊၊\r\n\r\nသီရိလကၤာ ဘာသာေဗဒပညာရွင္တုိ႔၏အဆုိအရ သီရိလကၤာ၏ေန႔စဥ္သုံးေ၀ါဟာရစကားလုံးတစ္ရာမွ ရွစ္ဆယ္ ရာခုိင္ႏႈံးသည္ ပါဠိသက္ေ၀ါဟာရမ်ားခ်ည္းသာၿဖစ္ေၾကာင္း သိရပါသည္၊၊ က်န္ႏွစ္ဆယ္ရာခုိင္ႏႈံးသည္ “တမီးလ္”ႏွင့္၊ “သကၠတ”ေ၀ါဟာရမ်ားၿဖစ္ေၾကာင္း ေလ့လာသိရွိရပါသည္၊၊\r\n\r\nသမုိင္းအေထာက္အထားမ်ားအရ ၿမန္မာတုိ႔သည္ေထရ၀ါဒဗုဒၶဘာသာကို သီရိလကၤာမ်ားအထံမွ ရရွိထားသည္ ၿဖစ္ရကား သီရိလကၤာလူမ်ဳိးတုိ႔၏အတုကိုလိုက္၍ ပါဠိေ၀ါဟာရစကားလုံးမ်ားကိုအေလးထားၿပီး၊ အသုံးၿပဳခဲ့ၾက ဟန္ရွိေၾကာင္း အကဲခပ္ရပါသည္၊၊\r\n\r\n“အလင္းစက္အရွင္”ႏွင့္ခင္မင္သည့္ သီရိလကၤာလွပ်ဳိၿဖဴေလး၏အမည္သည္“အဘယရတနာ”ဟုေခၚပါသည္၊၊ ပုဂံရာဇ၀င္အဆုိအရ ၿမန္မာတုိ႔ခ်စ္မၿငီးသည့္“က်န္စစ္သားမင္းၾကီး”တြင္ မိဗုရားအေခ်ာအလွေလးေယာက္ မွ်ရွိသည္ဟု ဆုိပါသည္၊၊\r\n\r\nအၾကီးဆုံးမိဗုရားေခါင္ၾကီးကို“အပါယ္ရတနာ”ဟုေခၚပါသည္၊၊ ၿမန္မာသမုိင္းပညာရွင္တစ္ဦးမွ“အပါယ္ရတ နာမိဖုရားၾကီး”ႏွင့္ပတ္သက္၍ ၿမဳပ္ကြယ္ေနသည့္သမုိင္းအခ်က္အလက္တစ္ခုကိုေဆြးေႏြးထားသည္ကို မဂၢ ဇင္းတစ္ေစာင္တြင္ဖတ္ရဖူးပါသည္၊၊\r\n\r\nအပါယ္ရတနာသည္ ၿမန္မာလူမ်ဳိးမဟုတ္ဘဲ၊ သီရိလကၤာႏုိင္ငံဟုယၡဳအခါေခၚသည့္၊ ေရွးေခတ္အေခၚ“တမ ၺဒီပ”ႏုိင္ငံေတာ္မွ သီရိလကၤာတုိ႔အေခၚအားၿဖင့္“ရာမညဘုရင္-က်င္စြတ္သား”အားဆက္သထားသည့္“တမၺ ဒီပ”လွပ်ဳိၿဖဴတစ္ပါးသာၿဖစ္ေၾကာင္း၊ အမည္စင္စစ္မွာ “အဘယရတနာ”ဟုေခၚတြင္ေၾကာင္း ေဆြးေႏြးတင္ၿပ ထားပါသည္၊၊\r\n\r\nအေၾကာင္းၿပခ်က္အေနအားၿဖင့္ အကုသိုလ္မ်ားသၿဖင့္ က်ေရာက္ခံစားရမည့္အပါယ္ေလးမ်ဳိးကို မည္သူကမွ\r\n“ရတနာ”တပ္၍ ေခၚဆုိမည္မဟုတ္ဘဲ၊ “အဘယရတနာ”ဟူေသာအမည္ကသာ ေခတ္မ်ားစြာေၿပာင္းလဲၿပီး၊ သဒၵေဗဒပုိင္းဆုိင္ရာအသံေၿပာင္းလဲရာမွ “အဘယ္ရတနာ”(သုိ႔မဟုတ္)“အပါယ္ရတနာ”ဟုေခၚတြင္ခဲ့ၾက ဟန္ ရွိေၾကာင္း ဆုိပါသည္၊၊\r\n\r\nသမုိင္းေၾကာင္းအရ အေနာ္ရထာေခတ္တြင္ သီရိလကၤာတုိ႔သည္ ၿမန္မာတုိ႔အထံမွစစ္ေရးအကူအညီ မ်ားစြာကို အကူအညီေတာင္းခဲ့ရေသာေၾကာင့္၄င္း၊ ေရွးေခတ္ဘုရင္မ်ားသည္သၼီးဆက္သ၍ အင္အားၾကီးသည့္တုိင္းၿခား ဘုရင္မ်ားကုိမိတ္ဖဲြ႔ေသာ အစဥ္အလာရွိခဲ့ေသာေၾကာင့္၄င္း ၿဖစ္ႏုိင္ေၿခရွိသည္ဟုဆုိပါသည္၊၊\r\n\r\nပါဠိေ၀ါဟာရမ်ားကို ေန႔စဥ္သုံးစကားတြင္ သီရိလကၤာႏုိင္ငံႏွင့္ၿမန္မာႏုိင္ငံတုိ႔အသုံးၿပဳၾကပုံၿခင္းတူပုံကို ထင္သာ သည့္အေၾကာင္းကိုတင္ၿပၿခင္းၿဖစ္ပါသည္၊၊ \r\n\r\n“အမ်ားအက်ဳိးၿပဳလုပ္ငန္း”ဟု ၿမန္မာလုိအသုံးၿပဳလ်င္ၿပည့္စုံေနပါလ်က္ႏွင့္“ပရဟိတ”ဟူ၍ပါဠိေ၀ါဟာရကုိအ သုံးၿပဳလိုက္သၿဖင့္ ပို၍ၿမင့္ၿမတ္သည့္လုပ္ငန္းတစ္ခု၊ ေလးနက္သည့္အလုပ္တစ္ခုဟူ၍ ၿမန္မာလူမ်ဳိးတုိ႔ယူဆၿပီး “ပရဟိတ”နာမည္တပ္၍ အသင္းၾကီးအသင္းငယ္မ်ား၊ အဖြဲ႔အစည္းမ်ား၊ လုပ္ငန္းမ်ားကို ေခၚဆုိေလ့ရွိၾကပါ သည္၊၊\r\n\r\n“အလင္းစက္၀က္ဆုိက္”၏ စာဖတ္ေလ့လာၾကသူမ်ားအထဲတြင္ ပရဟိတလုပ္ေနသူမ်ားစြာပင္ရွိ ေၾကာင္း သိရပါသည္၊၊ မည္သုိ႔ေသာအလုပ္ကို ပရဟိတဟူ၍ေခၚေၾကာင္းႏွင့္၊ ပရဟိတလုပ္လုိသူ တစ္ေယာက္တြင္ ရွိရမည့္စိတ္ဓာတ္ႏွင့္လုပ္ေဆာင္ခ်က္ကုိေမးၾကသူမ်ားလည္း ရွိပါသည္၊၊ \r\n\r\nအရွင္အေနၿဖင့္ “ပရဟိတ”အေၾကာင္းကို ပါဠိစာေပတြင္ေဖာ္ၿပထားသည့္အတုိင္း အေသးစိတ္တင္ၿပေဆြးေႏြး ပါမည္၊၊ “ပရဟိတ”ပါဠိေ၀ါဟာရကိုနားလည္ရန္အတြက္ “အတၱဟိတ”ေ၀ါဟာရႏွင့္ႏႈိင္းယွဥ္၍ ေလ့လာရပါ မည္၊၊\r\n\r\nအတၱဟိတပုဒ္ကို“ကုိယ္က်ဳိး”ဟူ၍ ေလ့လာရပါသည္၊၊ ပရဟိတပုဒ္ကုိ“အၿခားသူ၏အက်ဳိး”ဟူ၍ မူရင္းပါဠိ ပုဒ္၏အဓိပၸါယ္ဖြင့္ဆုိခ်က္ၿဖင့္ သိရပါသည္၊၊ စကားလုံး၏ရင္းၿမစ္ကိုေလ့လာၾကည့္လ်င္ “အတၱဟိတ”ကုိ မိမိ၏ ကိုယ္က်ဳိးၿပဳလုပ္ငန္းေဆာင္ရြက္ခ်က္ဟုဆုိလိုေၾကာင္း သိရပါသည္၊၊\r\n\r\n(အဂၤလိပ္လို အတၱဟိတကို Self Welfare, ပရဟိတကုိ Social Welfareဟု ဘာသာၿပန္ႏုိင္ပါသည္၊၊ တခ်ဳိ႔ ပါဠိစကားလုံးမ်ားကို အဂၤလိပ္လုိဘာသာၿပန္လိုက္လ်င္ ပို၍နားလည္ရလြယ္ကူေသာေၾကာင့္ အဂၤလိပ္လုိမွတ္ လုိသူမ်ား မွတ္သားႏုိင္ပါသည္၊၊)\r\n\r\n“ပရဟိတ”ဟူသည္မွာ အမ်ားအက်ဳိးၿပဳလုပ္ငန္းေဆာင္ရြက္ခ်က္ဟူ၍ ေယဘုယ်အဓိပၸါယ္သတ္ႏုိင္ေၾကာင္းေလ့ လာရပါသည္၊၊\r\n\r\nပရဟိတအေၾကာင္းကို ၿမတ္စြာဘုရားရွင္သင္ၿပထားသည့္ ေဟာေၿပာပို႔ခ်ခ်က္မ်ားအတုိင္းမေလ့လာမွီ “လူ တစ္ေယာက္၏ဘ၀တြင္ အတၱဟိတႏွင့္ပရဟိတမည္သည္က ပို၍အေရးပါေၾကာင္းကုိသုံးသပ္ရန္ အထူး လိုအပ္ပါသည္၊၊”\r\n\r\nသကၠတက်မ္းမ်ားတြင္ လူတစ္ေယာက္၏ဘ၀အတြက္ အတၱဟိတသည္ပို၍အေရးပါေၾကာင္းကုိ ေဖာ္ၿပထား သည္ကို ေလ့လာရပါသည္၊၊ အတၱဟိတကုိၿပည့္စုံလုံေလာက္သည္အထိက်ဳိးစားၿဖည့္ဆည္းၿပီးမွ ပရဟိတကို လုပ္သင့္ေၾကာင္း ဆုိထားပါသည္၊၊\r\n\r\nပါဠိစာေပတြင္ ထိုကဲ့သုိ႔ေဖာ္ၿပခ်က္တစ္စုံတစ္ရာကိုမေတြ႔ရေသာ္လည္း အတၱဟိတကုိၿပည့္စုံေစရန္ မၿဖည့္ ဆည္းဘဲ ပရဟိတကိုလုပ္သူထက္၊ အတၱဟိတကိုေအာင္ၿမင္တုိးတက္ရန္က်ဳိးစားသူကသာ ပုိ၍ၿမင့္ၿမတ္သည္ ဟု ေဖာ္ၿပထားသည္ကိုေတြ႔ရပါသည္၊၊\r\n\r\nအႏွစ္ခ်ဳပ္ေဆြးေႏြးရလ်င္ အတၱဟိတကိုခုိင္မာေအာင္ တည္ေဆာက္က်ဳိးစားၿပီးမွသာ ပရဟိတကိုက်ဳိးစားသင့္ သည္ဟု မွတ္ယူရပါမည္၊၊ အေၾကာင္းမွာ“အတၱဟိတ(ေခၚ)ကုိယ္တုိင္တြင္ၿပည့္စုံမႈမရွိဘဲ၊ ပရဟိတကိုေၿခ လွမ္းမိလ်င္ ထုိပရဟိတအထဲမွ ကိုယ္က်ဳိးရွာမိတတ္ေသာေၾကာင့္ ၿဖစ္ပါသည္၊၊”\r\n\r\nမွန္ပါသည္၊၊ မ်ားစြာေသာပရဟိတအဖြဲ႔အစည္းၾကီးမ်ားတြင္ ထုိကဲ့သုိ႔ကိုယ္က်ဳိးရွာမိၾကရာမွ ၿပႆနာမ်ားစြာ ၿဖစ္ေပၚၿပီး အဖြဲ႔အစည္းရည္ရြယ္ခ်က္မ်ားပ်က္ၿပားရုံမွ်မက၊ အဖြဲ႔ပ်က္ၿပားၾကသည္အထိၿပႆနာၾကီးမ်ားၿဖစ္ေလ့ ရွိၾကသည္ကို ေတြ႔ရပါသည္၊၊\r\n\r\nကမၻာေလာကအတြင္း ေပၚေပါက္ခဲ့ဖူးသမွ်ပရဟိတပါရမီရွင္မ်ားအထဲတြင္ ဗုဒၶရွင္ေတာ္သည္ စံနမူနာၿပဳရန္ အေကာင္းဆုံးပရဟိတသမားၿဖစ္ေၾကာင္း ဆုိၾကပါသည္၊၊ ဗုဒၶ၀င္က်မ္းမ်ားကုိ စနစ္တက်ေလ့လာၾကည့္လ်င္ ဗုဒၶရွင္ေတာ္သည္လည္း အတၱဟိတကိုအေကာင္းဆုံးၿပည့္စုံသည္အထိ ၿဖည့္ဆည္းက်ဳိးစားၿပီးမွ အဆုံး စြန္ေအာင္ၿမင္သည့္ပရဟိတလုပ္ငန္းကို ၿပဳလုပ္သြားသူၿဖစ္ေၾကာင္း ေတြ႔ရပါသည္၊၊\r\n\r\nအထက္ပါေဆြးေႏြးတင္ၿပခ်က္ႏွင့္သာဓကမ်ားကိုသုံးသပ္၍ တိက်သည့္အေၿဖကုိထုတ္ၾကည့္လ်င္ လူ တစ္ေယာက္၏ဘ၀တြင္ အတၱဟိတ(ေခၚ)မိမိဘ၀ၿပည့္စုံမႈကုိ ဦးစြာအေလးထားၿပီး၊ က်ဳိးစားၿဖည့္ဆည္း သင့္ေၾကာင္း မွတ္သားရပါမည္၊၊\r\n\r\nမိမိဘ၀တြင္ အေၿခခံလုိအပ္ခ်က္မ်ားကို ခုိင္မာၿပည့္စုံသည္အထိက်ဳိးစားၿပီးမွသာ ပရဟိတလုပ္သင့္ေၾကာင္းႏွင့္၊ သုိ႔မွသာလ်င္ ေအာင္ၿမင္ၿပီး၊ အမ်ားေလးစားအတုယူအားက်ရေလာက္သည့္ ေၿဖာင့္မတ္မွန္ကန္တိက်ေသာ ပရဟိတသမားေကာင္းတစ္ေယာက္ၿဖစ္ႏုိင္ေၾကာင္း ေဆြးေႏြးတင္ၿပလုိက္ရပါသည္၊၊   \r\n                   \r\nပရဟိတႏွင့္ဆက္စပ္၍ မူလေ၀ါဟာရမ်ားတည္ရွိရာ ပါဠိစာေပက်မ္းစာမ်ားတြင္ ေအာက္တြင္ေဆြးေႏြးတင္ၿပ ထားသည့္အတုိင္း ေတြ႔ရပါသည္၊၊\r\n\r\nကမၻာေလာကတြင္ လူအမ်ဳိးအစား(၄)မ်ဳိးရွိသည္ဟု “အတၱဟိတသုတ္”တြင္ ေဖာ္ၿပထားပါသည္၊၊ အတၱဟိတ သုတ္တြင္ အက်ဥ္းမွ်ေဖာ္ၿပထားသည္ကုိ “ရာဂ၀ိနယသုတ္”ႏွင့္အၿခားသုတ္ေပါင္းမ်ားစြာတြင္ အက်ယ္ဖြင့္ဆို ထားသည္ကို ေလ့လာရပါသည္၊၊\r\n\r\n“လူ(၄)မ်ဳိး”\r\n(၁) ကုိယ္က်ဳိးတစ္ခုတည္းကုိသာၿပဳလုပ္သူ၊ (အတၱဟိတသမား)\r\n(၂) အၿခားသူ၍၏အက်ဳိးကိုသာၿပဳလုပ္သူ၊ (ပရဟိတသမား)\r\n(၃) ကိုယ္က်ဳိးလည္းမၿပဳလုပ္၊ အမ်ားအက်ဳိးလည္းမၿပဳသူ၊ (လူမုိက္)\r\n(၄) ကိုယ္က်ဳိးၿပဳလုပ္၍၊ အမ်ားအက်ဳိးလည္းၿပဳသူ၊ (လူလိမၼာ)\r\n\r\nလူအမ်ဳိးအစား(၄)မ်ဳိးတြင္ ပရဟိတတစ္ခုတည္းကုိသာၿပဳသူသည္ ၿမတ္သည္ဟုဆုိပါသည္၊၊ အတၱဟိတတစ္ခု တည္းကိုၿပဳလုပ္သူသည္ ပရဟိတသီးသန္႔ၿပဳသူထက္ပုိ၍ ၿမတ္သည္ဟုဆိုပါသည္၊၊ \r\n\r\nအတၱဟိတလည္း မၿပဳလုပ္၊ ပရဟိတလည္းမၿပဳလုပ္သူသည္ ယုတ္မာသူ၊ လူမုိက္ဟုေခၚဆိုရၿပီး၊ အစြန္းႏွစ္ဘက္ တြင္မီးေတာက္ေနၿပီး၊ အလည္တြင္မစင္ေပက်ံေနသည့္ တုတ္ေၿခာင္းႏွင့္တူသည္ဟု ေဖာ္ၿပထားပါသည္၊၊\r\n\r\nအတၱဟိတကိုၿပည့္စုံေစၿပီး၊ပရဟိတကုိၿပဳသူသည္ လူေလးမ်ဳိးတုိ႔တြင္ အသာဆုံးအၿမတ္ဆုံးလူမ်ဳိးၿဖစ္သည္ဟု မွတ္ခ်က္ေပးထားသည္ကုိ ေတြ႔ရပါသည္၊၊ ထုိ႔ေၾကာင့္ ပရဟိတလုပ္ငန္းတြင္စိတ္၀င္စားသည့္ “အလင္းစက္” စာဖတ္သူမ်ား သင့္ေတာ္သည့္ေရြးခ်ယ္မႈကို ၿပဳႏုိင္ၿပီဟုယူဆပါသည္၊၊\r\n\r\nမူလပါဠိစာေပတစ္ရပ္လုံးတြင္ အသုံးၿပဳေဖာ္ၿပထားသည့္ “ပရဟိတ”စကားလုံးသည္ နယ္ပယ္မ်ားစြာ က်ယ္၀န္း သည္ကို ေတြ႔ရပါသည္၊၊ ဗုဒၶအဘိဓမၼာတြင္ “ငါ”ႏွင့္ “အၿခားသူ”ဟူ၍မရွိဘဲ ခႏၶာငါးမ်ဳိးတုိ႔အခ်ဳိးက်ဖြဲ႔စည္း တည္ေဆာက္ထားသည္ကုိ “လူ”ဟူ၍ေခၚဆုိသည္ၿဖစ္ရကား မိမိကုိယ္တုိင္ထမင္းဆာသၿဖင့္ ထမင္းစားသည္ ကိုပင္ ပရဟိတဟူ၍ေခၚႏုိင္ေၾကာင္း မွတ္သားရပါသည္၊၊\r\n\r\nအၿခားေသာမိမိဘ၀ၿပည့္စုံမႈအတြက္ ပညာသင္ယူၿခင္း၊ စီးပြားရွာေဖြၿခင္း၊ မိသားစုကုိၿပဳစုလုပ္ေကြ်း ၿခင္းမ်ားကို ပရဟိတဟူ၍ေခၚဆုိႏုိင္ေၾကာင္းကို သိသာလွပါေတာ့သည္၊၊ အဂၤလိပ္စာေပတြင္ Charity Begins at Home. ဟုဆုိပါသည္၊၊ “ဒါနဆုိတာ မိမိအိမ္မွစတင္ၿပဳလုပ္ရသည္ဟု ဆုိလိုပါသည္၊၊”\r\n\r\nထုိ႔ေၾကာင့္ ပရဟိတဟူသည္မွာ အဖြဲ႔အစည္းၾကီးမ်ားတည္ေထာင္၍ ဆုိင္းဘုတ္နာမည္ၾကီးၾကီးမ်ားခ်ိပ္ဆြဲၿပီး လုပ္ကိုင္မွ မဟုတ္ေပ၊ မိမိဘ၀အတြက္ ၿပည့္စုံေအာင္က်ဳိးစားၿခင္းမ်ား၊ မိသားစုကိုလုပ္ေကြ်းၿခင္းမ်ားအားလုံးပင္ ပရဟိတနယ္ပယ္တြင္ ပါ၀င္ေလသည္၊၊\r\n\r\nထုိ႔ထက္ပုိ၍အစြမ္းရွိခဲ့ပါလ်င္ လူသားအက်ဳိးၿပဳလုပ္ငန္းမ်ား၊ ပတ္၀န္းက်င္ထိမ္းသိမ္းေရးလုပ္ငန္းမ်ား၊ ပညာေရးေထာက္ပံ့မႈလုပ္ငန္းမ်ား၊ ဘာသာေရးအလွဴဒါနလုပ္ငန္းမ်ား၊ က်န္းမာေရးေစာင့္ေရွာင့္မႈလုပ္ ငန္းမ်ား တြင္ ကိုယ္စိတ္ႏွစ္၍လုပ္ကိုင္ႏုိင္သူၿဖစ္ပါမူ အတုိင္းထက္အလြန္ေလာကတာ၀န္ေက်ပြန္သူ၊ လူလိမၼာဟူ၍ေခၚ ဆုိထုိက္ပါေတာ့သည္၊၊\r\n\r\nဤတြင္ ပရဟိတအေၾကာင္း ေလ့လာတင္ၿပခ်က္စာတမ္းသည္ အတုိင္းအတာတစ္ခုမွ်ၿပည့္စုံၿပီဟု ယူဆပါသည္၊၊ အလင္းစက္အရွင္၏အၿမင္ကိုတင္ၿပပါပါမူ လူတုိင္းလူတုိင္းသည္မိမိဘ၀ၿပည့္စုံမႈကို ထိထိေရာက္ေရာက္က်ဳိးစား သင့္လွပါသည္၊၊ \r\n\r\nက်ဳိးစားေအာင္ၿမင္ၿပီးမွသာလ်င္ ပတ္၀န္းက်င္ႏွင့္ေလာကအက်ဳိးအမ်ားအက်ဳိး စြမ္းအားရွိသမွ်ၿပဳလုပ္သင့္သည္ ဟုယူဆပါသည္၊၊ ထုိသုိ႔မဟုတ္မူဘဲ ပညာေရးတစ္ပုိင္းတစ၊ စီးပြားေရးတစ္ပုိင္းတစမွ်ႏွင့္ ဘ၀တြင္ေယာင္၀ါး၀ါး ၿဖင့္အဆုံးမသတ္သင့္ဟု ၿမင္ပါသည္၊၊\r\n\r\n“အလင္းစက္”ေရးသားသမွ်စာတမ္းမ်ားသည္ ပညာရပ္သုေတသနဆန္စြာ ပညာေရးရႈေဒါင့္ၿဖင့္ခ်ည္းကပ္တင္ ၿပသည့္အတြက္ ဘာသာေရးႏွင့္ဘာသာေရးစာေပမ်ားအေပၚတြင္  ရုိးရာအစြဲရွိသူမ်ားအေနၿဖင့္ ၾကမ္းရွသည့္ေရး သားဟန္မ်ားအၿဖစ္ ၿမင္ရတတ္ပါသည္၊၊\r\n\r\nထုိ႔အၿပင္ ေရးသားမႈတြင္ အမွားၿပဳၿပင္ဖြယ္ရာမ်ားႏွင့္၊ မူလစာေပ၏အာေဘာ္ႏွင့္လြဲေခ်ာ္သည့္ေရးသားခ်က္ မ်ားေတြ႔ရွိလ်င္ အၾကံၿပဳေဆြးေႏြးၾကဖုိ႔ရုိးသားပြင့္လင္းစြာ ဖိတ္ေခၚအပ္ပါသည္၊၊ \r\n\r\n“အလင္းစက္”၀က္ဆုိက္တြင္ ဗုဒၶစာေပႏွင့္အေတြးအေခၚမ်ားကို ေလ့လာဖတ္ရႈၾကသူမ်ားအားလုံးတုိ႔သည္ ဗုဒၶစာေပၿဖင့္မိမိတို႔၏ဘ၀ကို အလင္းေပးႏုိင္သူမ်ားၿဖစ္ၾကၿပီး၊ ကမၻာ့လူအမ်ားကိုလည္း စာေပအလင္း၊ ဘ၀အ လင္းေပးႏုိင္သူမ်ားၿဖစ္ၾကပါေစေၾကာင္း ဆုေတာင္းေပးလ်က္စာတမ္းကို အဆုံးသတ္လုိက္ရပါသည္၊၊        ၊၊\r\n\r\n\r\n\r\n                                                                       အရွင္ေက၀လ(အလင္းစက္) \r\n                                                                          {မဟာ၀ိဇၨာ-သီရိလကၤာ} \r\n                                                                      မကုဋာရာမၿမန္မာေက်ာင္းတုိက္၊\r\n                                                                        ကုိလံဘုိၿမဳိ့၊ သီရိလကၤာႏုိင္ငံ၊၊\r\n\r\n\r\n\r\n{က်မ္းညြန္း/ အဂုၤတၱရနိကာယ္၊ စတုကၠနိပါတ-ဆ၀ါလာတသုတ္၊ ခိပၸသႏၱိသုတ္၊ အတၱဟိတသုတ္၊ သိကၡာပဒသုတ္ႏွင့္၊၊ ပဥၥကနိပါတ-ပ.ဒု.တ.စ.ပဥၥမဟိတသုတ္၊၊ အဌကနိပါတ-မဟာနာမသုတ္၊ ဇီ၀ကသုတ္တုိ႔ကိုကုိးကားလ်က္ ဤစာတမ္းကိုေရးသားအပ္ပါသည္၊၊}', '10.jpeg', '', '', '', '', '', '', '', '2017-12-05 00:05:23', '2017-12-05 00:05:23'),
(267, 'ေဇတ၀န္ပညာဒါန အခမဲ့ကြန္ပ်ဴတာသင္တန္းမ်ား', 9, 10, 'ေဇတဝန္အခမဲ့ကြန္ပ်ဴတာသင္တန္းမ်ားတြင္ လာေရာက္သင္ယူနိုင္ပါသည္။', 'သင္ၾကားေပးေသာ အရာမ်ား <br>\r\n၁.Computer basic <br>\r\n၂.Microsoft Office /Word using <br>\r\n၃.PhotoShop<br>\r\n၄.Autocat<br>', '10.jpeg', '', '', '', '', '', '', '', '2017-12-05 01:02:17', '2017-12-05 01:02:17'),
(268, 'သင္တန္းသားမ်ားလုိက္နာရန္ စည္မ်ဥ္း', 9, 19, 'ေဇတ၀န္ပညာဒါနသင္တန္းမွ တကၠသိုလ္၀င္တန္း.ေက်ာင္းသား/သူမ်ားအတြက္ ဘာသာစံုအခမဲ့သင္တန္းကို ၂၀၀၉-ခု.ႏွစ္ပညာသင္.ႏွစ္မွစ၍ ဖြင့္လွစ္ သင္.ၾကား.ေပးခဲ့ပါသည္၊ .ႏွစ္စဥ္သင္.ၾကား.ေပးသြားမည္.ျဖစ္ပါသည္။ တက္.ေရာက္လို.ေသာ .ေက်ာင္းသားမ်ားအ.ေန.ျဖင့္ ခ်မွတ္ထား.ေသာ စည္းမ်ဥ္းစည္းကမ္းမ်ားကို လိုက္နာ.ႏိုင္ရပါမည္။', '<p style="text-align: justify;">ေဇတ၀န္ပညာဒါနသင္တန္းမွ တကၠသိုလ္၀င္တန္းေက်ာင္းသား/သူမ်ားအတြက္ ဘာသာစံုအခမဲ့သင္တန္းကို ၂၀၀၉-ခုႏွစ္ပညာသင္ႏွစ္မွစ၍ ဖြင့္လွစ္ သင္ၾကားေပးခဲ့ပါသည္၊ ႏွစ္စဥ္သင္ၾကားေပးသြားမည္ျဖစ္ပါသည္။ တက္ေရာက္လိုေသာ ေက်ာင္းသားမ်ားအေနျဖင့္ ခ်မွတ္ထားေသာ စည္းမ်ဥ္းစည္းကမ္းမ်ားကို လိုက္နာႏိုင္ရပါမည္။</p>\r\n<p>ေက်ာင္းသား/သူမ်ားႏွင့္ ေက်ာင္းသားမိဘ အုပ္ထိန္းသူမ်ား သိေစထားရမည့္ သင္တန္းသား/သူမ်ား လိုက္နာရန္စည္းမ်ဥ္းမ်ားမွာ</p>\r\n<ol>\r\n<li>သင္တန္းဖြင့္သည္ေန႕မွစ၍ ပ်က္ရက္မရိွေစပဲ မွန္မွန္ သင္တန္းတတ္ၾကရမည္။</li>\r\n<li>အေၾကာင္းအားေလွ်ာ္စြာကိစၥရပ္မ်ားေပၚေပါက္လာပါက ေက်ာင္းသားႏွင့္ မိဘ (သို႕မဟုတ္) အုပ္ထိန္းသူ ကိုယ္တိုင္ သက္ဆိုင္ရာ သင္တန္းမွဴးး/အုပ္ခ်ဳပ္သူမ်ားထံသို႔ ခြင့္ေတာင္း ေလွ်ာက္ထားရမည္။</li>\r\n<li>သင္တန္းေက်ာင္းသို့ ေရာက္သည့္အခ်ိန္မွစ၍ အျခားမည့္သည့္ကိစၥရပ္ေၾကာင့္ပင္ျဖစ္ေစ (အားလပ္ခ်ိန္) ျပင္ပသို႕ ထြက္ခြာျခင္းမျပဳရ။ (သင္တန္းအခ်ိန္ၿပီးဆံုးမွ တစ္ခါတည္း အိမ္ျပန္ရပါမည္)</li>\r\n<li>သင္တန္းကာလအတြင္း အေၾကာင္းမဲ့ပ်က္ကြက္ျခင္းကို စစ္ေဆးေတြ႕႐ွိပါက (၃) ႀကိမ္ဆက္တိုက္ ပ်က္ကြက္ခဲ့လွ်င္ သင္တန္းမွ အၿပီးအပိုင္ ထုတ္ပယ္ျခင္း ခံရပါမည္။</li>\r\n<li>သင္တန္းသား/သူ အခ်င္းခ်င္း ခိုက္ရန္ေဒါသျဖစ္ပြားေစေသာ အျပဳအမူမ်ားကို ေ႐ွာင္႐ွားၾကၿပီး ညီအစ္ကို ေမာင္ႏွမသဖြယ္ ခင္မင္ရင္းႏွီးစြာ ပညာသင္ယူၾကရမည္။</li>\r\n<li>ပညာဒါန သင္တန္း၌ ဘာသာရပ္ဆိုင္ရာ သင္ၾကားေပးေသာ ပုဂၢိဳလ္မ်ား၏ စကားကို နာခံ ႏိုင္သူျဖစ္ၿပီး အျပစ္႐ွိ၍ ဆံုးမပါက ခံယူႏိုင္သူ ျဖစ္ရမည္။</li>\r\n<li>လစဥ္က်င္းပေသာ လပတ္အရည္အခ်င္းစစ္ စာေမးပြဲကို အေၾကာင္းမဲ့သက္သက္ မေျဖဆိုပဲပ်က္ကြက္ပါက သင္တန္းမွ ထုတ္ပယ္ျခင္း ခံရမည္။(ခြင့္တိုင္ၾကားထားသူျဖစ္ပါက သတ္မွတ္ရက္တြင္ သီးသန္႔ ျပန္ေျဖဆိုေပးရမည္)</li>\r\n<li>စည္းကမ္းေဖာက္ဖ်က္၍ ထုတ္ပယ္ျခင္းခံရသူမ်ားႏွင့္ (၂)ႏွစ္ဆက္တိုက္ က်႐ႈံးသူမ်ားကို ဤသင္တန္းေက်ာင္းတြင္ ျပန္လည္ တက္ေရာက္ျခင္း မ႐ွိေစရ။</li>\r\n<li>မိဘ (သို႔မဟုတ္) အုပ္ထိန္းသူမ်ား အေနျဖင့္ ေက်ာင္းသားေရးရာႏွင့္ ပတ္သက္ေသာ ကိစၥရပ္မ်ားေဆြေႏြးရန္ လိုအပ္၍ သင္တန္းေက်ာင္းမွ အစည္းအေ၀း ေခၚယူသည့္အခါတြင္ ကိုယ္တိုင္လာေရာက္ တက္ႏိုင္သူျဖစ္ရမည္။</li>\r\n</ol>\r\n<blockquote><p>စည္းမ်ဥ္းစည္းကမ္းႏွင့္မညီညြတ္သူမ်ားကို သတိေပးျခင္း၊ အသိေပးျခင္း၊ အျပစ္ေပးအေရးယူျခင္းမ်ား ဦးစြာျပဳလုပ္ပါသည္။ ဆက္က်ဴးလြန္ပါက သင္တန္းေက်ာင္းမွ အၿပီးပိုင္ ထုတ္ပယ္ပါသည္။ ပညာသင္ႏွစ္ၿပီးဆံုးေအာင္ မတက္သူမ်ားကလည္း မိမိမတက္ေတာ့လိုေၾကာင္း သက္ဆိုင္ရာ သင္တန္းမွဴးခ်ဳပ္ထံသို႔ မိဘႏွင့္တကြ ေက်ာင္းသားကိုယ္တိုင္ လာေရာက္ ခြင့္ေတာင္း ေလွ်ာက္ထားျခင္း မျပဳပါက ထုတ္ပယ္သည္ဟု သတ္မွတ္ပါသည္။</p></blockquote>', '', '', '', '', '', '', '', '', '2017-12-05 01:13:45', '2017-12-05 09:44:59'),
(269, 'ဓာတ္ပုံမွတ္တမ္းမ်ား', 7, 0, 'dgfrge', 'ဓာတ္ပုံမွတ္တမ္းမ်ား', '3.jpeg', '', '', '', '', '', '', '', '2017-12-05 01:30:40', '2017-12-05 01:30:40'),
(270, 'ဓာတ္ပုံမွတ္တမ္းမ်ား', 7, 0, 'dgfrge', 'ဓာတ္ပုံမွတ္တမ္းမ်ား', '3.jpeg', '', '', '', '', '', '', '', '2017-12-05 01:30:40', '2017-12-05 01:30:40'),
(271, 'ဓာတ္ပုံမွတ္တမ္းမ်ား', 7, 0, 'dgfrge', 'ဓာတ္ပုံမွတ္တမ္းမ်ား', '3.jpeg', '', '', '', '', '', '', '', '2017-12-05 01:30:40', '2017-12-05 01:30:40'),
(272, 'ဓာတ္ပုံမွတ္တမ္းမ်ား', 7, 0, 'dgfrge', 'ဓာတ္ပုံမွတ္တမ္းမ်ား', '3.jpeg', '', '', '', '', '', '', '', '2017-12-05 01:30:40', '2017-12-05 01:30:40'),
(273, 'မွန္ရင္ဆက္လုပ္ မွားရင္ေနာက္ဆုတ္(ေဇတ၀န္စာစဥ္ အမွတ္-၅)', 2, 0, '<p>ဘာသာေရးအခမ္းအနား၊ သာေရး နာေရးစေသာ အခမ္းအနားမ်ားတြင္ ကုသိုလ္ပြားေစရန္ ၎တို႔ႏွင့္သင့္ေလွ်ာ္ေသာ လက္ကမ္းစာအုပ္မ်ား ေ၀ငွႏိုင္ေအာင္ အိတ္ေဆာင္စာအုပ္ငယ္မ်ား ေရးသားထုတ္ေ၀ထားပါသည္။</p>', '<p>ေဒါက္တာအရွင္ေသာပါက ေရးသားထုတ္ေ၀ေသာ စာအုပ္မ်ားသည္ အက်ိဳးအျမတ္ကို မရည္ရြယ္ပဲ စာဖတ္သူ အက်ိဳးရိွေစမႈကိုသာ ရည္ရြယ္၍ ေရးသားထုတ္ေ၀ျခင္း ျဖစ္ပါသည္။ စာဖတ္သူ၏ ၀ယ္ယူအားေပးမႈသည္ ဆက္လက္ထြက္လာမည့္ စာအုပ္အတြက္ ဓမၼဒါနပင္ ျဖစ္သည္။ တစ္ဆင့္ ဓမၼဒါန လက္ဆင့္ကမ္းေ၀ငွ လွဴဒါန္းျခင္းသည္ အျမတ္ဆံုးအလွဴပင္ျဖစ္သည္။ လက္ကမ္းစာအုပ္ငယ္မ်ားကို ဓမၼဒါနအျဖစ္ ေ၀ငွလိုသူမ်ားအတြက္ အုပ္ေရ (၁၀၀)ႏွင့္အထက္ ၀ယ္ယူပါက (၁၂၀)က်ပ္ ႏႈန္းျဖင့္ ေရာင္းခ်ေပးပါသည္။</p>\r\n<blockquote><p>အလိုရိွပါက ေဇတ၀န္စာေပ၊ ေဇတ၀န္ဓမၼာရံုေက်ာင္းတိုက္၊ ျမသီတာရပ္ကြက္၊ မဂၤလာဒံု ၊ ဖုန္း-၀၁-၆၃၆၈၈၆/ ၀၉-၈၅၉၈၀၀၁သို႔ဆက္သြယ္ႏိုင္ပါသည္။ အီးေမးလ္ျဖင့္လည္း ဆက္သြယ္စံုစမ္းႏိုင္ပါသည္။</p></blockquote>', 'handbook3-150x150.jpg', '', 'handbook3-150x150.jpg', '', '', '', '', '', '2017-12-05 14:17:51', '2017-12-05 14:17:51'),
(274, 'ေဒါက္တာအရွင္ေသာပါက၏ အဆိုအမိန္႔မ်ား', 2, 0, '<blockquote><p>(၁) ဒီဘ၀ ဒီသံသရာမွာဒီခႏၶာ႐ွိေနသမွ်ေတာ့ဒီဒုကၡေတြနဲ႔ေတြ႕ေနရအံုးမွာပါပဲ<br>\r\nဒုကၡကို ဒုကၡလို႕ မ႐ႈျမင္ႏိုင္သမွ် ထိုဒုကၡေတြကဘယ္ေတာ့မွ မလြတ္ေျမာက္ႏိုင္ပါဘူး ။</p></blockquote>\r\n<blockquote><p>(၂) တရားေတာ္ဆိုတာရိွၿပီးသားပါသိေအာင္လုပ္ဖို႕ပဲလိုတယ္ ။<br>\r\nသိၿပီးရင္ က်င့္ႏိုင္ေအာင္လည္း အထူးႀကိဳးစားရပါမယ္ ။</p></blockquote>', '<h3>ေဒါက္တာအရွင္ေသာပါက၏ အဆိုအမိန္႔မ်ား</h3>\r\n<blockquote><p>(၁) ဒီဘ၀ ဒီသံသရာမွာဒီခႏၶာ႐ွိေနသမွ်ေတာ့ဒီဒုကၡေတြနဲ႔ေတြ႕ေနရအံုးမွာပါပဲ<br>\r\nဒုကၡကို ဒုကၡလို႕ မ႐ႈျမင္ႏိုင္သမွ် ထိုဒုကၡေတြကဘယ္ေတာ့မွ မလြတ္ေျမာက္ႏိုင္ပါဘူး ။</p></blockquote>\r\n<blockquote><p>(၂) တရားေတာ္ဆိုတာရိွၿပီးသားပါသိေအာင္လုပ္ဖို႕ပဲလိုတယ္ ။<br>\r\nသိၿပီးရင္ က်င့္ႏိုင္ေအာင္လည္း အထူးႀကိဳးစားရပါမယ္ ။</p></blockquote>\r\n<blockquote><p>(၃) ကိုယ့္အေပၚ မနာလို မလိုမုန္းထားပုဂိၢဳလ္မ်ားရဲ႕ စကားကို ဂ႐ုမစိုက္ပါနဲ႔ ။<br>\r\nသူတို႔ေတြ ေကာင္းတာလုပ္သည္ျဖစ္ေစ၊ မေကာင္းတာလုပ္သည္ျဖစ္ေစ ။<br>\r\nဂ႐ုတစိုက္ၾကည့္မေနပါနဲ႔။ မိမိကိုယ္တိုင္ ေကာင္းတာလုပ္ေနသလား<br>\r\nမေကာင္းတာလုပ္ေနသလားဆိုတာကိုသာ အစဥ္တစိုက္ဆင္ျခင္လိုက္ပါ ။</p></blockquote>\r\n<blockquote><p>(၄) သူမ်ားေတြက ငါ့အေပၚဘယ္ေလာက္ေကာင္းသလဲဆိုတာ မေတြးပါနဲ႔ ။<br>\r\nငါကသူမ်ားေတြအေပၚဘယ္ေလာက္ေကာင္းေအာင္<br>\r\nကူညီလုပ္ေဆာင္ေပးႏိုင္လဲဆိုတာကိုသာဆင္ျခင္ပါ ။</p></blockquote>\r\n<blockquote><p>(၅) အာမိသနဲ႔ ပူေဇာ္ ပူေဇာ္ ဓမၼနဲ႔ပဲ ပူေဇာ္ပူေဇာ္ႏွစ္မ်ိဳးလံုးဟာ ေကာင္းတဲ့ ပူေဇာ္ျခင္းပါပဲ ။<br>\r\nသို႔ေသာ္ဓမၼနဲ႔ ပူေဇာ္ျခင္းကိုသာဘုရားရွင္က ႏွစ္သက္ေတာ္မူတာျဖစ္လို႔<br>\r\nဘုရားႀကိဳက္တဲ့ ပူေဇာ္ျခင္းျဖစ္ဖို႔အတြက္ဓမၼနဲ႔သာ ပူေဇာ္လိုက္ပါ ။</p></blockquote>\r\n<blockquote><p>(၆) ေျပာခ်င္တာက နည္းနည္းေလးပင္ ျဖစ္ေနပါေစ<br>\r\nလုပ္မိတဲ့ကုသိုလ္ကို အထင္မေသးေစဖို႔ပါ ။<br>\r\nေရြးခ်ယ္၍ လွဴတတ္ဖို႔ပင္ အေရးႀကီး၏ ။ အနည္း အမ်ားသည္ ပဓာနမဟုတ္၊</p></blockquote>\r\n<blockquote><p>(၇) နဲနဲေလးလုပ္လိုက္တဲ့ကုသိုလ္ကို အထင္ မေသးသလို ၊<br>\r\nနဲနဲေလးလုပ္မိတဲ့ အကုသိုလ္ကိုလည္း အထင္မေသးမိၾကပါေစနဲ႔ ။</p></blockquote>\r\n<blockquote><p>(၈) လွဴတယ္ဆိုတာ မိမိ၏ပစၥည္းေပးလိုက္ရတာပါ ။<br>\r\nေပးတယ္ဆိုကတည္းက ကိုယ္႔ပစၥည္းကုန္သြားေတာ့၏ ။<br>\r\nလွဴလို႔ကုန္သြားတဲ့ ကိုယ့္ပစၥည္းရဲ႕အေပၚမွာ တြယ္တာမႈ ကင္းၿပီး<br>\r\nအၿမဲတမ္း၀မ္းေျမာက္ေနတတ္ဖို႔ အေရးႀကီးသည္။<br>\r\nအပရေစတနာ ပ်က္ကြက္ခဲ့ေသာ္ ကုန္ရက်ိဳးမနပ္ ျဖစ္တတ္၏ ။</p></blockquote>\r\n<blockquote><p>(၉) ေျပာလိုတာက အလွဴကို ေ႐ြးခ်ယ္တတ္ပါေစ ။<br>\r\nတကယ္လိုတာကို တကယ္လွဴျဖစ္သြားေအာင္လုပ္ ။<br>\r\nလွဴတယ္ဆိုတာ ကိုယ္ကေပးလိုက္ရတာျဖစ္လို႔<br>\r\nေပးတဲ့အခါ ေမွ်ာ္လင့္ခ်က္ႏွင့္ မေပးမိဖို႔ပါပဲ…။ ။</p></blockquote>', 'saryartaw.png', '', 'saryartaw1.png', '', '', '', '', '', '2017-12-05 14:26:58', '2017-12-05 14:26:58'),
(275, 'ဦးေမာင္ေမာင္+ေဒၚေအးၾကည္', 16, NULL, 'ႏွစ္စဥ္ရာသက္ပန္ေန႔ဆြမ္း အလွဴရွင္', 'ေဘာဇနဒါန = သံဃာေတာ္မ်ားအတြက္ ဆြမ္းပေဒသာပင္', 'received_482375572131624.jpeg', '', '', '', '', '', '', '', '2017-12-06 05:36:59', '2017-12-06 06:18:18'),
(276, 'ဦးျမ+ေဒၚလွ', 16, 0, 'ႏွစ္စဥ္ရာသက္ပန္ေန႔ဆြမ္း အလွဴရွင္', 'ႏွစ္စဥ္ရာသက္ပန္ေန႔ဆြမ္း အလွဴရွင္', 'received_482375595464955.jpeg', '', '', '', '', '', '', '', '2017-12-06 06:49:59', '2017-12-06 06:49:59'),
(277, 'ဦးေမာင္ေမာင္', 17, 0, 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', 'received_482375595464955.jpeg', '', '', '', '', '', '', '', '2017-12-06 07:20:25', '2017-12-06 07:20:25'),
(278, 'ဦးျမင့္ေအာင္', 17, NULL, 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', '', '', '', '', '', '', '', '', '2017-12-06 07:35:16', '2017-12-06 07:35:46'),
(279, 'ဦးမင္းေအာင္', 17, 0, 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', 'တရားပဲြပင့္ေလွ်ာက္လုိ သူမ်ား', 'featured_img3.jpg', '', '', '', '', '', '', '2017-12-21', '2017-12-06 07:41:10', '2017-12-06 07:41:10'),
(280, 'စာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာ', 15, 0, 'စာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာ', 'စာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာစာသင္တုိက္ စာသင္သား မ်ားဆုိင္ရာ', 'sag.jpg', '', '', '', '', '', '', '', '2017-12-07 07:49:51', '2017-12-07 07:49:51'),
(282, 'ေဇတ၀န္ဓမၼာရုံေက်ာင္းတုိက္', 1, 20, 'ေဒါက္တာအ႐ွင္ေသာပါက', 'ေဒါက္တာအ႐ွင္ေသာပါက', 'saryartaw1.png', '', '', '', '', '', '', '', '2017-12-07 08:22:45', '2017-12-07 08:22:45'),
(283, 'ေဒါက္တာအ႐ွင္ေသာပါက', 1, 20, 'ေဒါက္တာအ႐ွင္ေသာပါက', 'ေဒါက္တာအ႐ွင္ေသာပါက', 'saryartaw1.png', '', '', '', '', '', '', '', '2017-12-07 08:23:15', '2017-12-07 08:23:15'),
(284, 'ေဒါက္တာအ႐ွင္ေသာပါက', 1, 20, 'ေဒါက္တာအ႐ွင္ေသာပါက', 'ေဒါက္တာအ႐ွင္ေသာပါက', 'saryartaw.png', '', '', '', '', '', '', '', '2017-12-07 08:23:35', '2017-12-07 08:23:35'),
(285, 'slider', 1, 20, 'slider', 'slider', 'mdy.jpg', '', '', '', '', '', '', '', '2017-12-07 09:22:04', '2017-12-07 09:22:04'),
(286, 'slider1', 1, 20, 'slider', 'slider', 'ygn1.jpeg', '', '', '', '', '', '', '', '2017-12-07 09:23:52', '2017-12-07 09:23:52'),
(287, 'slider3', 1, 20, 'slider', 'slider', 'ygn.jpeg', '', '', '', '', '', '', '', '2017-12-07 09:25:59', '2017-12-07 09:25:59'),
(288, 'slider4', 1, 20, 'sss', 'dd', '', '', '', '', '', '', '', '', '2017-12-07 09:26:45', '2017-12-28 01:03:37'),
(292, 'dd', 12, 0, 'dsxfsd', '<p>dvfdgf</p>', '21yarsulumutwalharyamyar.jpg', '', '21yarsulumutwalharyamyar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postsmeta`
--

CREATE TABLE `postsmeta` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_registration_form`
--

CREATE TABLE `student_registration_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `nrc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passed_date_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_attend` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_registration_form`
--

INSERT INTO `student_registration_form` (`id`, `name`, `f_name`, `m_name`, `race`, `reg`, `birth_date`, `nrc`, `phone_no`, `address`, `passed_date_school`, `is_attend`, `created_at`, `updated_at`) VALUES
(2, 'ေမာင္ေမာင္', 'ဦးလွ', 'ေဒၚျမ', 'ဗမာ', 'ဗုဒၵၵ', '1998-10-20', '၁၂/မအပ(နိုင္)၁၂၃၄၅၆', '၀၉၃၈၇၄၈၃၄၇၃၈', 'ရန္ကုန္', '၂၀၁၄။မအူပင္၊အထက(၆)', 'မတက္ေရာက္ဖူးပါ', '2017-12-10 07:48:20', '2017-12-10 07:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$XfoY7Vweu.o0dKQrZUIeNuhwpyhVwmoID4jPPMgBnOBl3vJouXs2O', 1, 'hPSqNjuaE6NC6gAu5Nw6SpeCN1buey50Xqb9OHqJtj7EPv2AFSpwiTdcCE5L', NULL, NULL),
(2, 'Customer', 'customer@gmail.com', '$2y$10$njN15Jc4SNvTpALNNwhdZ.BKrNqnlxAd/qKOsZETXpPwxHc5M/Eq2', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cfl_group`
--
ALTER TABLE `cfl_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cfl_value`
--
ALTER TABLE `cfl_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cf_detail`
--
ALTER TABLE `cf_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_form_email_unique` (`email`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monk_entrance_form`
--
ALTER TABLE `monk_entrance_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monk_registration_form`
--
ALTER TABLE `monk_registration_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postsmeta`
--
ALTER TABLE `postsmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration_form`
--
ALTER TABLE `student_registration_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cfl_group`
--
ALTER TABLE `cfl_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cfl_value`
--
ALTER TABLE `cfl_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cf_detail`
--
ALTER TABLE `cf_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `monk_entrance_form`
--
ALTER TABLE `monk_entrance_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `monk_registration_form`
--
ALTER TABLE `monk_registration_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `postsmeta`
--
ALTER TABLE `postsmeta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_registration_form`
--
ALTER TABLE `student_registration_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
