-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 06:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ar5as`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(3, 'Category', 'updated', 'App\\Category', 137, 'App\\User', 9, '{\"attributes\":{\"id\":137,\"parent_id\":0,\"level\":0,\"name\":\"\\u0627\\u0632\\u064a\\u0627\\u0621 \\u062d\\u0631\\u064a\\u0645\\u064a\",\"commision_rate\":0,\"banner\":\"275\",\"icon\":\"275\",\"featured\":1,\"published\":1,\"refundable\":1,\"top\":0,\"digital\":0,\"slug\":\"--U02GI\",\"meta_title\":\"NEW ARRIVALS\",\"meta_description\":\"Premium True Wireless Earbuds\\r\\nSale up to 20% OFF\",\"created_at\":\"2022-02-24 16:09:40\",\"updated_at\":\"2022-02-24 16:09:40\"},\"old\":{\"id\":137,\"parent_id\":0,\"level\":0,\"name\":\"\\u0627\\u0632\\u064a\\u0627\\u0621 \\u062d\\u0631\\u064a\\u0645\\u064a\",\"commision_rate\":0,\"banner\":\"275\",\"icon\":\"275\",\"featured\":0,\"published\":1,\"refundable\":1,\"top\":0,\"digital\":0,\"slug\":\"--U02GI\",\"meta_title\":\"NEW ARRIVALS\",\"meta_description\":\"Premium True Wireless Earbuds\\r\\nSale up to 20% OFF\",\"created_at\":\"2022-01-09 14:40:56\",\"updated_at\":\"2022-01-09 14:40:56\"}}', '2022-02-22 14:09:40', '2022-02-24 14:09:40'),
(4, 'Category', 'updated', 'App\\Category', 137, 'App\\User', 9, '{\"attributes\":{\"id\":137,\"parent_id\":0,\"level\":0,\"name\":\"\\u0627\\u0632\\u064a\\u0627\\u0621 \\u062d\\u0631\\u064a\\u0645\\u064a\",\"commision_rate\":0,\"banner\":\"275\",\"icon\":\"275\",\"featured\":0,\"published\":1,\"refundable\":1,\"top\":0,\"digital\":0,\"slug\":\"--U02GI\",\"meta_title\":\"NEW ARRIVALS\",\"meta_description\":\"Premium True Wireless Earbuds\\r\\nSale up to 20% OFF\",\"created_at\":\"2022-02-24 16:09:46\",\"updated_at\":\"2022-02-24 16:09:46\"},\"old\":{\"id\":137,\"parent_id\":0,\"level\":0,\"name\":\"\\u0627\\u0632\\u064a\\u0627\\u0621 \\u062d\\u0631\\u064a\\u0645\\u064a\",\"commision_rate\":0,\"banner\":\"275\",\"icon\":\"275\",\"featured\":1,\"published\":1,\"refundable\":1,\"top\":0,\"digital\":0,\"slug\":\"--U02GI\",\"meta_title\":\"NEW ARRIVALS\",\"meta_description\":\"Premium True Wireless Earbuds\\r\\nSale up to 20% OFF\",\"created_at\":\"2022-02-24 16:09:40\",\"updated_at\":\"2022-02-24 16:09:40\"}}', '2022-02-22 14:09:46', '2022-02-24 14:09:46'),
(5, 'Product', 'updated', 'App\\Product', 122, 'App\\User', 9, '{\"attributes\":{\"id\":122,\"name\":\"test 22222\",\"added_by\":\"seller\",\"user_id\":75,\"category_id\":138,\"subcategory_id\":160,\"subsubcategory_id\":null,\"brand_id\":4,\"photos\":\"258,257\",\"length\":null,\"width\":null,\"height\":null,\"weight\":null,\"model_number\":null,\"warranty\":null,\"thumbnail_img\":\"258\",\"video_provider\":\"youtube\",\"video_link\":null,\"tags\":\"1,2,3\",\"description\":null,\"unit_price\":1000,\"purchase_price\":0,\"variant_product\":1,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"colors\":\"[\\\"#F0F8FF\\\",\\\"#FAEBD7\\\"]\",\"variations\":null,\"todays_deal\":0,\"published\":1,\"admin_approval\":1,\"featured\":1,\"seller_featured\":1,\"current_stock\":19,\"alert_qty\":1,\"unit\":\"pc\",\"min_qty\":1,\"discount\":10,\"discount_type\":\"percent\",\"discount_from\":1644962400,\"discount_to\":1645135140,\"tax\":14,\"tax_type\":\"percent\",\"shipping_type\":\"flat_rate\",\"shipping_cost\":0,\"num_of_sale\":2,\"meta_title\":\"test 22222\",\"meta_description\":null,\"meta_img\":null,\"pdf\":null,\"slug\":\"test-22222-mgcjb\",\"refundable\":1,\"rating\":0,\"barcode\":null,\"digital\":0,\"file_name\":null,\"file_path\":null,\"created_at\":\"2022-02-16 15:25:44\",\"updated_at\":\"2022-02-24 16:49:14\"},\"old\":{\"id\":122,\"name\":\"test 22222\",\"added_by\":\"seller\",\"user_id\":75,\"category_id\":138,\"subcategory_id\":160,\"subsubcategory_id\":null,\"brand_id\":4,\"photos\":\"258,257\",\"length\":null,\"width\":null,\"height\":null,\"weight\":null,\"model_number\":null,\"warranty\":null,\"thumbnail_img\":\"258\",\"video_provider\":\"youtube\",\"video_link\":null,\"tags\":\"1,2,3\",\"description\":null,\"unit_price\":1000,\"purchase_price\":0,\"variant_product\":1,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"colors\":\"[\\\"#F0F8FF\\\",\\\"#FAEBD7\\\"]\",\"variations\":null,\"todays_deal\":0,\"published\":1,\"admin_approval\":1,\"featured\":0,\"seller_featured\":1,\"current_stock\":19,\"alert_qty\":1,\"unit\":\"pc\",\"min_qty\":1,\"discount\":10,\"discount_type\":\"percent\",\"discount_from\":1644962400,\"discount_to\":1645135140,\"tax\":14,\"tax_type\":\"percent\",\"shipping_type\":\"flat_rate\",\"shipping_cost\":0,\"num_of_sale\":2,\"meta_title\":\"test 22222\",\"meta_description\":null,\"meta_img\":null,\"pdf\":null,\"slug\":\"test-22222-mgcjb\",\"refundable\":1,\"rating\":0,\"barcode\":null,\"digital\":0,\"file_name\":null,\"file_path\":null,\"created_at\":\"2022-02-16 15:25:44\",\"updated_at\":\"2022-02-23 14:26:58\"}}', '2022-02-24 14:49:15', '2022-02-24 14:49:15'),
(6, 'Product', 'updated', 'App\\Product', 122, 'App\\User', 9, '{\"attributes\":{\"id\":122,\"name\":\"test 22222\",\"added_by\":\"seller\",\"user_id\":75,\"category_id\":138,\"subcategory_id\":160,\"subsubcategory_id\":null,\"brand_id\":4,\"photos\":\"258,257\",\"length\":null,\"width\":null,\"height\":null,\"weight\":null,\"model_number\":null,\"warranty\":null,\"thumbnail_img\":\"258\",\"video_provider\":\"youtube\",\"video_link\":null,\"tags\":\"1,2,3\",\"description\":null,\"unit_price\":1000,\"purchase_price\":0,\"variant_product\":1,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"colors\":\"[\\\"#F0F8FF\\\",\\\"#FAEBD7\\\"]\",\"variations\":null,\"todays_deal\":0,\"published\":1,\"admin_approval\":1,\"featured\":0,\"seller_featured\":1,\"current_stock\":19,\"alert_qty\":1,\"unit\":\"pc\",\"min_qty\":1,\"discount\":10,\"discount_type\":\"percent\",\"discount_from\":1644962400,\"discount_to\":1645135140,\"tax\":14,\"tax_type\":\"percent\",\"shipping_type\":\"flat_rate\",\"shipping_cost\":0,\"num_of_sale\":2,\"meta_title\":\"test 22222\",\"meta_description\":null,\"meta_img\":null,\"pdf\":null,\"slug\":\"test-22222-mgcjb\",\"refundable\":1,\"rating\":0,\"barcode\":null,\"digital\":0,\"file_name\":null,\"file_path\":null,\"created_at\":\"2022-02-16 15:25:44\",\"updated_at\":\"2022-02-24 16:49:25\"},\"old\":{\"id\":122,\"name\":\"test 22222\",\"added_by\":\"seller\",\"user_id\":75,\"category_id\":138,\"subcategory_id\":160,\"subsubcategory_id\":null,\"brand_id\":4,\"photos\":\"258,257\",\"length\":null,\"width\":null,\"height\":null,\"weight\":null,\"model_number\":null,\"warranty\":null,\"thumbnail_img\":\"258\",\"video_provider\":\"youtube\",\"video_link\":null,\"tags\":\"1,2,3\",\"description\":null,\"unit_price\":1000,\"purchase_price\":0,\"variant_product\":1,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"colors\":\"[\\\"#F0F8FF\\\",\\\"#FAEBD7\\\"]\",\"variations\":null,\"todays_deal\":0,\"published\":1,\"admin_approval\":1,\"featured\":1,\"seller_featured\":1,\"current_stock\":19,\"alert_qty\":1,\"unit\":\"pc\",\"min_qty\":1,\"discount\":10,\"discount_type\":\"percent\",\"discount_from\":1644962400,\"discount_to\":1645135140,\"tax\":14,\"tax_type\":\"percent\",\"shipping_type\":\"flat_rate\",\"shipping_cost\":0,\"num_of_sale\":2,\"meta_title\":\"test 22222\",\"meta_description\":null,\"meta_img\":null,\"pdf\":null,\"slug\":\"test-22222-mgcjb\",\"refundable\":1,\"rating\":0,\"barcode\":null,\"digital\":0,\"file_name\":null,\"file_path\":null,\"created_at\":\"2022-02-16 15:25:44\",\"updated_at\":\"2022-02-24 16:49:14\"}}', '2022-02-24 14:49:26', '2022-02-24 14:49:26'),
(7, 'Translation', 'created', 'App\\Translation', 3675, 'App\\User', 9, '{\"attributes\":{\"id\":3675,\"lang\":\"eg\",\"lang_key\":\"activity log\",\"lang_value\":\"activity log\",\"created_at\":\"2022-02-24 17:02:15\",\"updated_at\":\"2022-02-24 17:02:15\"}}', '2022-02-24 15:02:15', '2022-02-24 15:02:15'),
(8, 'Translation', 'created', 'App\\Translation', 3676, 'App\\User', 9, '{\"attributes\":{\"id\":3676,\"lang\":\"eg\",\"lang_key\":\"Sort by Date\",\"lang_value\":\"Sort by Date\",\"created_at\":\"2022-02-24 17:14:16\",\"updated_at\":\"2022-02-24 17:14:16\"}}', '2022-02-24 15:14:16', '2022-02-24 15:14:16'),
(9, 'Translation', 'created', 'App\\Translation', 3677, 'App\\User', 9, '{\"attributes\":{\"id\":3677,\"lang\":\"eg\",\"lang_key\":\"Log Name\",\"lang_value\":\"Log Name\",\"created_at\":\"2022-02-24 17:14:16\",\"updated_at\":\"2022-02-24 17:14:16\"}}', '2022-02-24 15:14:16', '2022-02-24 15:14:16'),
(10, 'Translation', 'created', 'App\\Translation', 3678, 'App\\User', 9, '{\"attributes\":{\"id\":3678,\"lang\":\"eg\",\"lang_key\":\"Subjict\",\"lang_value\":\"Subjict\",\"created_at\":\"2022-02-24 17:14:17\",\"updated_at\":\"2022-02-24 17:14:17\"}}', '2022-02-24 15:14:17', '2022-02-24 15:14:17'),
(11, 'Category', 'created', 'App\\Category', 186, 'App\\User', 9, '{\"attributes\":{\"id\":186,\"parent_id\":0,\"level\":0,\"name\":\"dwqdwqwdq\",\"commision_rate\":0,\"banner\":null,\"icon\":null,\"featured\":0,\"published\":1,\"refundable\":0,\"top\":0,\"digital\":0,\"slug\":\"dwqdwqwdq-Xek1y\",\"meta_title\":null,\"meta_description\":null,\"created_at\":\"2022-02-24 17:23:44\",\"updated_at\":\"2022-02-24 17:23:44\"}}', '2022-02-23 15:23:44', '2022-02-24 15:23:44'),
(12, 'CategoryTranslation', 'created', 'App\\CategoryTranslation', 52, 'App\\User', 9, '{\"attributes\":{\"id\":52,\"category_id\":186,\"name\":\"dwqdwqwdq\",\"lang\":\"eg\",\"created_at\":\"2022-02-24 17:23:44\",\"updated_at\":\"2022-02-24 17:23:44\"}}', '2022-02-24 15:23:45', '2022-02-24 15:23:45'),
(13, 'CategoryTranslation', 'deleted', 'App\\CategoryTranslation', 52, 'App\\User', 9, '{\"attributes\":{\"id\":52,\"category_id\":186,\"name\":\"dwqdwqwdq\",\"lang\":\"eg\",\"created_at\":\"2022-02-24 17:23:44\",\"updated_at\":\"2022-02-24 17:23:44\"}}', '2022-02-24 15:23:50', '2022-02-24 15:23:50'),
(14, 'Category', 'deleted', 'App\\Category', 186, 'App\\User', 9, '{\"attributes\":{\"id\":186,\"parent_id\":0,\"level\":0,\"name\":\"dwqdwqwdq\",\"commision_rate\":0,\"banner\":null,\"icon\":null,\"featured\":0,\"published\":1,\"refundable\":0,\"top\":0,\"digital\":0,\"slug\":\"dwqdwqwdq-Xek1y\",\"meta_title\":null,\"meta_description\":null,\"created_at\":\"2022-02-24 17:23:44\",\"updated_at\":\"2022-02-24 17:23:44\"}}', '2022-02-24 15:23:51', '2022-02-24 15:23:51'),
(15, 'Translation', 'created', 'App\\Translation', 3679, 'App\\User', 9, '{\"attributes\":{\"id\":3679,\"lang\":\"eg\",\"lang_key\":\"Subject Activity\",\"lang_value\":\"Subject Activity\",\"created_at\":\"2022-02-24 17:23:59\",\"updated_at\":\"2022-02-24 17:23:59\"}}', '2022-02-24 15:24:00', '2022-02-24 15:24:00'),
(16, 'User', 'updated', 'App\\User', 9, 'App\\User', 9, '{\"attributes\":{\"id\":9,\"referred_by\":null,\"provider_id\":null,\"user_type\":\"admin\",\"name\":\"Super Admin\",\"email\":\"admin@admin.com\",\"email_verified_at\":\"2021-02-08 21:02:26\",\"verification_code\":null,\"new_email_verificiation_code\":null,\"password\":\"$2y$10$wabqRLBVCPdFG9PWvuavqO0gm39LcN\\/0v6sC9dssz8ptV.UcqWSzu\",\"remember_token\":\"s1gUR0GI0WmeXAr6XQ3gL0fWCeorM2NnbpgAIwuKf3IrBeT30ILRNmz7QwvS\",\"avatar\":null,\"avatar_original\":\"7\",\"address\":null,\"country\":null,\"city\":null,\"postal_code\":null,\"phone\":null,\"balance\":0,\"banned\":0,\"referral_code\":null,\"customer_package_id\":null,\"remaining_uploads\":0,\"created_at\":\"2021-02-08 21:25:26\",\"updated_at\":\"2022-02-19 16:58:25\"},\"old\":{\"id\":9,\"referred_by\":null,\"provider_id\":null,\"user_type\":\"admin\",\"name\":\"Super Admin\",\"email\":\"admin@admin.com\",\"email_verified_at\":\"2021-02-08 21:02:26\",\"verification_code\":null,\"new_email_verificiation_code\":null,\"password\":\"$2y$10$wabqRLBVCPdFG9PWvuavqO0gm39LcN\\/0v6sC9dssz8ptV.UcqWSzu\",\"remember_token\":\"3tOJUyub2xtbQNkvitpI9y8kcr3pOXBS1jyVacJEYUYe7empzH0Ku4dpFDtg\",\"avatar\":null,\"avatar_original\":\"7\",\"address\":null,\"country\":null,\"city\":null,\"postal_code\":null,\"phone\":null,\"balance\":0,\"banned\":0,\"referral_code\":null,\"customer_package_id\":null,\"remaining_uploads\":0,\"created_at\":\"2021-02-08 21:25:26\",\"updated_at\":\"2022-02-19 16:58:25\"}}', '2022-02-24 15:29:15', '2022-02-24 15:29:15'),
(17, 'Translation', 'created', 'App\\Translation', 3680, 'App\\User', 9, '{\"attributes\":{\"id\":3680,\"lang\":\"eg\",\"lang_key\":\"Select User\",\"lang_value\":\"Select User\",\"created_at\":\"2022-02-24 18:06:09\",\"updated_at\":\"2022-02-24 18:06:09\"}}', '2022-02-24 16:06:09', '2022-02-24 16:06:09'),
(18, 'Translation', 'updated', 'App\\Translation', 3677, 'App\\User', 9, '{\"attributes\":{\"id\":3677,\"lang\":\"eg\",\"lang_key\":\"Log Name\",\"lang_value\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637\",\"created_at\":\"2022-02-24 17:14:16\",\"updated_at\":\"2022-02-24 18:09:16\"},\"old\":{\"id\":3677,\"lang\":\"eg\",\"lang_key\":\"Log Name\",\"lang_value\":\"Log Name\",\"created_at\":\"2022-02-24 17:14:16\",\"updated_at\":\"2022-02-24 17:14:16\"}}', '2022-02-24 16:09:16', '2022-02-24 16:09:16'),
(19, 'Translation', 'updated', 'App\\Translation', 3675, 'App\\User', 9, '{\"attributes\":{\"id\":3675,\"lang\":\"eg\",\"lang_key\":\"activity log\",\"lang_value\":\"\\u0633\\u062c\\u0644 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637\\u0627\\u062a\",\"created_at\":\"2022-02-24 17:02:15\",\"updated_at\":\"2022-02-24 18:09:41\"},\"old\":{\"id\":3675,\"lang\":\"eg\",\"lang_key\":\"activity log\",\"lang_value\":\"activity log\",\"created_at\":\"2022-02-24 17:02:15\",\"updated_at\":\"2022-02-24 17:02:15\"}}', '2022-02-24 16:09:41', '2022-02-24 16:09:41'),
(20, 'Translation', 'updated', 'App\\Translation', 3517, 'App\\User', 9, '{\"attributes\":{\"id\":3517,\"lang\":\"eg\",\"lang_key\":\"User\",\"lang_value\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"created_at\":\"2021-12-14 08:25:20\",\"updated_at\":\"2022-02-24 18:10:26\"},\"old\":{\"id\":3517,\"lang\":\"eg\",\"lang_key\":\"User\",\"lang_value\":\"User\",\"created_at\":\"2021-12-14 08:25:20\",\"updated_at\":\"2021-12-14 08:25:20\"}}', '2022-02-24 16:10:27', '2022-02-24 16:10:27'),
(21, 'Translation', 'updated', 'App\\Translation', 3680, 'App\\User', 9, '{\"attributes\":{\"id\":3680,\"lang\":\"eg\",\"lang_key\":\"Select User\",\"lang_value\":\"\\u0627\\u062e\\u062a\\u0631 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"created_at\":\"2022-02-24 18:06:09\",\"updated_at\":\"2022-02-24 18:10:27\"},\"old\":{\"id\":3680,\"lang\":\"eg\",\"lang_key\":\"Select User\",\"lang_value\":\"Select User\",\"created_at\":\"2022-02-24 18:06:09\",\"updated_at\":\"2022-02-24 18:06:09\"}}', '2022-02-24 16:10:27', '2022-02-24 16:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(1, 'refund', 'refund_request', '1.1', 1, 'refund_request.png', '2021-02-10 23:44:59', '2021-02-10 23:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(27, 80, 'teste address', '3', '95', '1236', '01157809060', 0, '2021-07-10 12:22:26', '2021-07-10 12:22:26'),
(28, 77, 'العاشر من رمضان', '1', '54', '123456', '01145495144', 0, '2021-07-10 14:25:10', '2021-07-10 14:25:10'),
(29, 9, 'zxdasdas', '2', '60', '0000', '01021443985', 0, '2021-12-13 07:23:44', '2021-12-13 07:23:44'),
(30, 87, 'hehia', '20', '306', '0000', '012121394777', 0, '2021-12-13 09:00:56', '2021-12-13 09:00:56'),
(31, 91, '6 oqtober', '2', '59', '11242', '01094976280', 0, '2022-02-15 13:58:01', '2022-02-15 13:58:01'),
(32, 75, 'address', '2', '58', '11242', '0428723876', 0, '2022-02-16 13:15:48', '2022-02-16 13:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(4, 'types', '2021-02-17 12:04:33', '2021-02-17 12:04:33'),
(5, 'model', '2022-02-23 12:27:32', '2022-02-23 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(2, 4, 'types', 'en', '2021-02-17 12:04:33', '2021-02-17 12:04:33'),
(3, 5, 'model', 'eg', '2022-02-23 12:27:32', '2022-02-23 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `name_en`) VALUES
(1, 'بنك مصر ', 'بنك مصر '),
(2, 'البنك الاهلي المصري', 'البنك الاهلي المصري'),
(3, 'البنك العقاري المصري العربي', 'البنك العقاري المصري العربي'),
(4, 'البنك الزراعي المصري', 'البنك الزراعي المصري'),
(5, 'بنك التنمية الصناعية', 'بنك التنمية الصناعية'),
(6, 'بنك القاهرة', 'بنك القاهرة'),
(7, 'المصرف المتحد', 'المصرف المتحد'),
(8, 'بنك الاسكندرية', 'بنك الاسكندرية'),
(9, 'ميد بنك ', 'ميد بنك '),
(10, 'البنك التجاري الدولي', 'البنك التجاري الدولي'),
(11, 'البنك التجاري المغربي', 'البنك التجاري المغربي'),
(12, 'بنك الشركة المصرفية العربية الدولية', 'بنك الشركة المصرفية العربية الدولية'),
(13, 'بنك بلوم', 'بنك بلوم'),
(14, 'كريدي اجريكول', 'كريدي اجريكول'),
(15, 'بنك الامارات دبي الوطني', 'بنك الامارات دبي الوطني'),
(16, 'بنك قناة السويس', 'بنك قناة السويس'),
(17, 'بنك قطر الوطني الاهلي', 'بنك قطر الوطني الاهلي'),
(18, 'بنك الاستثمار العربي', 'بنك الاستثمار العربي'),
(19, 'البنك الاهلي الكويتي', 'البنك الاهلي الكويتي'),
(20, 'بنك عودة', 'بنك عودة'),
(21, 'البنك الاهلي المتحد', 'البنك الاهلي المتحد'),
(22, 'بنك فيصل الاسلامي المصري', 'بنك فيصل الاسلامي المصري'),
(23, 'بنك التعمير والاسكان', 'بنك التعمير والاسكان'),
(24, 'بنك البركة', 'بنك البركة'),
(25, 'بنك الكويت الوطني', 'بنك الكويت الوطني'),
(26, 'مصرف ابوظبي الاسلامي', 'مصرف ابوظبي الاسلامي'),
(27, 'بنك ابوظبي التجاري', 'بنك ابوظبي التجاري'),
(28, 'البنك المصري الخليجي', 'البنك المصري الخليجي'),
(29, 'البنك العربي الافريقي', 'البنك العربي الافريقي'),
(30, 'اتش اس بي سي', 'اتش اس بي سي'),
(31, 'abc بنك المؤسسة العربية المصرفية', 'abc بنك المؤسسة العربية المصرفية'),
(32, 'البنك المصري لتنمية الصادرات', 'البنك المصري لتنمية الصادرات'),
(33, 'المصرف العربي الدولي', 'المصرف العربي الدولي'),
(34, 'البنك العربي ', 'البنك العربي '),
(35, 'سيتي بنك', 'سيتي بنك'),
(36, 'بنك المشرق', 'بنك المشرق'),
(37, 'البنك الاهلي اليوناني', 'البنك الاهلي اليوناني');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(4, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:23', '2019-06-11 04:56:50'),
(5, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:41', '2019-03-12 05:58:57'),
(6, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-03-12 05:58:52', '2019-03-12 05:58:57'),
(7, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-05-26 05:16:38', '2019-05-26 05:17:34'),
(8, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-06-11 05:00:06', '2019-06-11 05:00:27'),
(9, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-06-11 05:00:15', '2019-06-11 05:00:29'),
(10, 'uploads/banners/banner.jpg', '#', 1, 0, '2019-06-11 05:00:24', '2019-06-11 05:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 'Puma', '293', 0, 'puma-5e6ss', NULL, NULL, '2021-06-15 18:05:07', '2022-01-09 14:39:20'),
(4, 'Adidas', '294', 0, 'adidas-7lhu3', 'adidas', NULL, '2022-01-09 14:39:46', '2022-01-09 14:40:21'),
(5, 'Red', '295', 0, 'Red-uVZTK', 'Red', NULL, '2022-01-09 14:40:04', '2022-01-09 14:40:04'),
(6, 'Strling', '296', 0, 'Strling-swEQM', NULL, NULL, '2022-01-09 14:40:42', '2022-01-09 14:40:42'),
(7, 'Sky Suit', '297', 0, 'skysuit-ygvle', NULL, NULL, '2022-01-09 14:41:04', '2022-01-09 14:42:10'),
(8, 'Galaxy', '298', 0, 'Galaxy-FBzUz', NULL, NULL, '2022-01-09 14:41:22', '2022-01-09 14:41:22'),
(9, 'Elgent', '299', 0, 'Elgent-1b9gR', NULL, NULL, '2022-01-09 14:41:36', '2022-01-09 14:41:36'),
(10, 'Right Chick', '300', 0, 'Right-Chick-gy1rg', NULL, NULL, '2022-01-09 14:41:59', '2022-01-09 14:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Puma', 'en', '2021-06-15 18:05:07', '2021-06-15 18:05:07'),
(2, 3, 'Puma', 'eg', '2022-01-09 14:39:20', '2022-01-09 14:39:20'),
(3, 4, 'Adidas', 'eg', '2022-01-09 14:39:46', '2022-01-09 14:40:21'),
(4, 5, 'Red', 'eg', '2022-01-09 14:40:04', '2022-01-09 14:40:04'),
(5, 6, 'Strling', 'eg', '2022-01-09 14:40:42', '2022-01-09 14:40:42'),
(6, 7, 'Sky Suit', 'eg', '2022-01-09 14:41:04', '2022-01-09 14:42:10'),
(7, 8, 'Galaxy', 'eg', '2022-01-09 14:41:22', '2022-01-09 14:41:22'),
(8, 9, 'Elgent', 'eg', '2022-01-09 14:41:36', '2022-01-09 14:41:36'),
(9, 10, 'Right Chick', 'eg', '2022-01-09 14:41:59', '2022-01-09 14:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', '2018-10-16 01:35:52', '2019-01-28 01:26:53'),
(2, 'system_default_currency', '29', '2018-10-16 01:36:58', '2021-02-08 22:07:28'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2021-02-08 22:05:48'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2021-02-08 21:58:46'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '20', '2019-01-31 06:18:04', '2019-04-13 06:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"},{\"type\":\"file\",\"label\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\\u0629\"},{\"type\":\"file\",\"label\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\"}]', '2019-02-03 11:36:58', '2021-02-13 05:18:10'),
(19, 'google_analytics', '0', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '1', '2019-02-07 12:51:59', '2021-04-17 11:20:59'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2021-04-17 11:20:53'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2021-04-17 11:20:54'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '1', '2019-04-30 07:30:07', '2021-04-17 09:12:24'),
(38, 'wallet_system', '1', '2019-05-19 08:05:44', '2021-02-08 21:58:03'),
(39, 'coupon_system', '1', '2019-06-11 09:46:18', '2021-02-08 21:58:05'),
(40, 'current_version', '3.9', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 07:22:47', '2021-06-21 01:11:57'),
(51, 'conversation_system', '0', '2020-01-21 07:23:21', '2021-03-10 21:06:41'),
(52, 'guest_checkout_active', '0', '2020-01-22 07:36:38', '2021-02-08 21:58:07'),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', '2020-05-13 13:01:05', '2020-05-13 13:01:05'),
(56, 'pos_activation_for_seller', '1', '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'area_wise_shipping', '2020-07-01 13:49:56', '2021-05-03 08:17:10'),
(58, 'flat_rate_shipping_cost', '0', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(59, 'shipping_cost_admin', '0', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(60, 'payhere_sandbox', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', '2020-08-17 07:13:37', '2021-03-03 18:35:07'),
(63, 'ngenius', '0', '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', '263', '2020-11-16 07:26:36', '2021-07-10 11:55:27'),
(65, 'show_language_switcher', NULL, '2020-11-16 07:26:36', '2021-07-10 11:55:27'),
(66, 'show_currency_switcher', NULL, '2020-11-16 07:26:36', '2021-02-08 22:22:48'),
(67, 'header_stikcy', 'on', '2020-11-16 07:26:36', '2021-05-09 23:58:36'),
(68, 'footer_logo', '2', '2020-11-16 07:26:36', '2021-02-08 22:30:10'),
(69, 'about_us_description', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"line-height: 115%; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">أرخص هو موقع تسوق الكتروني سهل الاستخدام عند</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">الحاجة إلي شراء ما تحتاجه من الملابس. نؤكد لك أنك ستعثر<span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">على شيء يعجبك في الكتالوج الخاص بنا عندالتصفح عبر الانترنت في أرخص.\r\nنوفر لكم كتالوج<span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ملابس اون لاين يحتوي علي جميع أنواع الملابس ولجميع<span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">الفئات العمرية يمكنك التسوق لأي شيء تحتاجه سواء كنت<span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">تبحث عن ملابس محجبات او ملابس الأطفال وغيرهم<span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 10pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-size: 10pt; line-height: 115%; font-family: Tahoma, sans-serif; color: rgb(208, 206, 206); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">واستمتع بالحصول علي احدث الازياء في مصر</span><span dir=\"LTR\" style=\"font-size:10.0pt;line-height:115%;font-family:&quot;Tahoma&quot;,sans-serif;\r\ncolor:#D0CECE;mso-themecolor:background2;mso-themeshade:230;mso-style-textfill-fill-color:\r\n#D0CECE;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:\r\n100.0%;mso-style-textfill-fill-colortransforms:lumm=90000\"><o:p></o:p></span></p>', '2020-11-16 07:26:36', '2021-06-20 06:25:09'),
(70, 'contact_address', 'مدينة العاشر من رمضا ن- الأردنية- مبنى المصرية سنتر 2 مدخل ب', '2020-11-16 07:26:36', '2021-06-20 06:16:02'),
(71, 'contact_phone', '01005434054', '2020-11-16 07:26:36', '2022-01-10 12:17:00'),
(72, 'contact_email', 'info@ar5as.net', '2020-11-16 07:26:36', '2021-02-08 22:29:48'),
(73, 'widget_one_labels', '[\"\\u0643\\u064a\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0639\\u0644\\u064a \\u0627\\u0631\\u062e\\u0635\",\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"\\u0643\\u064a\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0639 \\u0639\\u0644\\u0649 \\u0623\\u0631\\u062e\\u0635\"]', '2020-11-16 07:26:36', '2021-06-21 11:03:26'),
(74, 'widget_one_links', '[\"https:\\/\\/ar5as.net\\/demo\\/howtobuyfromar5as\",\"https:\\/\\/ar5as.net\\/demo\\/returnpolicy\",\"https:\\/\\/ar5as.net\\/demo\\/sellerpolicy\"]', '2020-11-16 07:26:36', '2021-06-21 18:11:34'),
(75, 'widget_one', 'روابط هامه', '2020-11-16 07:26:36', '2021-06-20 06:32:11'),
(76, 'frontend_copyright_text', 'جميع الحقوق محفوظة لدي شركة M.T.D', '2020-11-16 07:26:36', '2021-07-10 11:57:30'),
(77, 'show_social_links', 'on', '2020-11-16 07:26:36', '2021-06-20 07:29:18'),
(78, 'facebook_link', 'https://www.facebook.com', '2020-11-16 07:26:36', '2021-02-08 22:31:46'),
(79, 'twitter_link', 'https://twitter.com/', '2020-11-16 07:26:36', '2022-01-09 15:09:28'),
(80, 'instagram_link', 'https://www.instagram.com', '2020-11-16 07:26:36', '2022-01-09 15:09:29'),
(81, 'youtube_link', 'https://www.youtube.com/', '2020-11-16 07:26:36', '2022-01-09 15:09:29'),
(82, 'linkedin_link', 'https://www.linkedin.com', '2020-11-16 07:26:36', '2022-01-09 15:09:29'),
(83, 'payment_method_images', '221', '2020-11-16 07:26:36', '2021-06-20 06:29:08'),
(84, 'home_slider_images', '[\"277\",\"279\",\"278\"]', '2020-11-16 07:26:36', '2022-01-09 13:03:27'),
(85, 'home_slider_links', '[null,null,null]', '2020-11-16 07:26:36', '2021-06-14 19:10:14'),
(86, 'home_banner1_images', '[\"270\",\"273\",\"269\"]', '2020-11-16 07:26:36', '2022-01-09 12:25:04'),
(87, 'home_banner1_links', '[null,null,null]', '2020-11-16 07:26:36', '2022-01-09 12:10:42'),
(88, 'home_banner2_images', '[\"271\",\"272\"]', '2020-11-16 07:26:36', '2022-01-09 12:25:20'),
(89, 'home_banner2_links', '[\"http:\\/\\/localhost\\/ar5as\\/category\\/--U02GI\",\"http:\\/\\/localhost\\/ar5as\\/category\\/--aaknt\"]', '2020-11-16 07:26:36', '2022-01-09 12:20:34'),
(90, 'home_categories', '[\"57\",\"48\",\"47\"]', '2020-11-16 07:26:36', '2021-06-19 16:24:44'),
(91, 'top10_categories', '[\"137\",\"143\",\"138\",\"159\",\"160\",\"163\",\"167\",\"174\"]', '2020-11-16 07:26:36', '2022-01-09 12:05:49'),
(92, 'top10_brands', '[\"3\"]', '2020-11-16 07:26:36', '2022-01-09 11:59:47'),
(93, 'website_name', 'Ar5as', '2020-11-16 07:26:36', '2021-02-08 22:45:20'),
(94, 'site_motto', 'Best Ecommerce Website', '2020-11-16 07:26:36', '2021-02-08 22:45:20'),
(95, 'site_icon', '7', '2020-11-16 07:26:36', '2021-02-08 22:45:20'),
(96, 'base_color', '#2b378d', '2020-11-16 07:26:36', '2021-02-08 22:45:20'),
(97, 'base_hov_color', '#26a7de', '2020-11-16 07:26:36', '2021-02-08 22:45:20'),
(98, 'meta_title', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(99, 'meta_description', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(100, 'meta_keywords', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(101, 'meta_image', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(102, 'site_name', 'Ar5as', '2020-11-16 07:26:36', '2021-02-08 19:56:52'),
(103, 'system_logo_white', '2', '2020-11-16 07:26:36', '2021-02-08 19:56:52'),
(104, 'system_logo_black', '2', '2020-11-16 07:26:36', '2021-02-08 19:56:52'),
(105, 'timezone', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', '3', '2020-11-16 07:26:36', '2021-02-08 19:56:52'),
(107, 'iyzico_sandbox', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(108, 'iyzico', '0', '2020-12-30 16:45:56', '2021-02-12 00:12:02'),
(109, 'decimal_separator', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '0', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(111, 'bkash', '0', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(112, 'bkash_sandbox', '1', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'home_banner3_images', '[\"161\",\"160\",\"159\"]', '2021-02-08 22:38:01', '2021-06-15 16:22:38'),
(114, 'home_banner3_links', '[null,null,null]', '2021-02-08 22:38:01', '2021-06-15 16:22:38'),
(115, 'refund_request_time', '14', '2019-03-12 03:58:23', '2021-02-24 20:49:24'),
(116, 'nav_desc', 'WELCOME TO AR5AS STORE MESSAGE OR REMOVE IT!\r\n', '2022-01-09 14:23:49', '2022-01-09 14:23:49'),
(117, 'bunner_all_cat', '301', '2022-02-19 14:12:51', '2022-02-19 14:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `shipping_cost` double(20,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 1,
  `refundable` int(2) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `digital` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `published`, `refundable`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(137, 0, 0, 'ازياء حريمي', 0.00, '275', '275', 0, 1, 1, 0, 0, '--U02GI', 'NEW ARRIVALS', 'Premium True Wireless Earbuds\r\nSale up to 20% OFF', '2022-02-24 14:09:46', '2022-02-24 14:09:46'),
(138, 0, 0, 'ازياء رجالي', 0.00, '276', '276', 0, 1, 1, 0, 0, '--aaknt', 'WEEKEND SALE', 'New Fashion Collection\r\nFrom only $185.00', '2022-01-09 12:41:23', '2022-01-09 12:41:23'),
(139, 0, 0, 'ملابس اطفال', 0.00, '283', '283', 0, 1, 1, 0, 0, '--08dNf', NULL, NULL, '2022-01-09 13:05:53', '2022-01-09 13:05:53'),
(140, 0, 0, 'الصحه والجمال', 0.00, '281', '281', 0, 1, 1, 0, 0, '--c6bcS', NULL, NULL, '2022-01-09 13:05:34', '2022-01-09 13:05:34'),
(141, 137, 1, 'هوديز وسويت تشريت حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '----dlRAC', NULL, NULL, '2021-06-27 13:24:29', '2021-06-27 19:24:29'),
(143, 137, 1, 'تيشرتات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--p2QEk', NULL, NULL, '2021-06-27 13:33:05', '2021-06-27 19:33:05'),
(144, 137, 1, 'بناطيل حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--I0uEO', NULL, NULL, '2021-06-22 10:46:49', '2021-06-22 16:46:49'),
(145, 137, 1, 'قمصان و بلوزات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '----7eYGf', NULL, NULL, '2021-06-27 13:30:21', '2021-06-27 19:30:21'),
(146, 137, 1, 'ملابس رياضيه حريمي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '---W7eyy', NULL, NULL, '2021-06-22 10:49:55', '2021-06-22 16:49:55'),
(147, 137, 1, 'ملابس داخليه حريمي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '---UDtIl', NULL, NULL, '2021-06-27 13:30:50', '2021-06-27 19:30:50'),
(148, 137, 1, 'شرابات حريمي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--nTWXf', NULL, NULL, '2021-06-27 13:28:09', '2021-06-27 19:28:09'),
(149, 137, 1, 'لانجيري', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '-ejAjb', NULL, NULL, '2021-06-21 18:32:33', '2021-06-21 18:32:33'),
(150, 137, 1, 'بيجامات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--kpAtY', NULL, NULL, '2021-06-27 13:32:47', '2021-06-27 19:32:47'),
(151, 137, 1, 'احذيه كاجوال حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---R5r4s', NULL, NULL, '2021-06-27 13:32:11', '2021-06-27 19:32:11'),
(152, 137, 1, 'احذيه رياضيه حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---zuTAq', NULL, NULL, '2021-06-27 13:31:31', '2021-06-27 19:31:31'),
(153, 137, 1, 'صنادل حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--cGxgy', NULL, NULL, '2021-06-30 12:49:23', '2021-06-30 18:49:23'),
(154, 137, 1, 'احذيه كعب عالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---gccuR', NULL, NULL, '2021-06-21 12:36:06', '2021-06-21 18:36:06'),
(155, 137, 1, 'احذيه فلات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---0TbK3', NULL, NULL, '2021-06-27 13:31:52', '2021-06-27 19:31:52'),
(156, 137, 1, 'شنط ومحافظ حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---rmd2i', NULL, NULL, '2021-06-27 13:29:18', '2021-06-27 19:29:18'),
(157, 137, 1, 'ساعات واكسسوارات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---dzSBy', NULL, NULL, '2021-06-27 13:29:54', '2021-06-27 19:29:54'),
(158, 137, 1, 'نظارات حريمي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--gmmq4', NULL, NULL, '2021-06-27 13:31:10', '2021-06-27 19:31:10'),
(159, 138, 1, 'هوديز وسويت تشريت رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '----gXXM8', NULL, NULL, '2021-06-21 12:39:37', '2021-06-21 18:39:37'),
(160, 138, 1, 'تيشرتات رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--nZVDK', NULL, NULL, '2021-06-21 12:43:34', '2021-06-21 18:43:34'),
(161, 138, 1, 'قمصان رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--0vanO', NULL, NULL, '2021-06-21 12:48:48', '2021-06-21 18:48:48'),
(162, 138, 1, 'بناطيل رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--SWUDe', NULL, NULL, '2021-06-21 12:49:35', '2021-06-21 18:49:35'),
(163, 138, 1, 'جواكيت رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--Pimiw', NULL, NULL, '2021-06-21 12:50:31', '2021-06-21 18:50:31'),
(164, 138, 1, 'ملابس رياضيه رجالي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '---5cAwy', NULL, NULL, '2021-06-21 18:50:55', '2021-06-21 18:50:55'),
(165, 138, 1, 'ملابس داخليه رجالي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '---B66Ow', NULL, NULL, '2021-06-21 18:51:33', '2021-06-21 18:51:33'),
(166, 138, 1, 'شرابات رجالي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--OL0P1', NULL, NULL, '2021-06-27 13:28:43', '2021-06-27 19:28:43'),
(167, 138, 1, 'بيجامات رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--J89kB', NULL, NULL, '2021-06-21 12:53:03', '2021-06-21 18:53:03'),
(168, 138, 1, 'احذيه كاجوال رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---AtNP4', NULL, NULL, '2021-06-21 12:53:36', '2021-06-21 18:53:36'),
(169, 138, 1, 'احذيه كلاسيك رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---d7nJO', NULL, NULL, '2021-06-21 12:54:10', '2021-06-21 18:54:10'),
(170, 138, 1, 'احذيه رياضيه رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---6WhEv', NULL, NULL, '2021-06-21 12:54:54', '2021-06-21 18:54:54'),
(171, 138, 1, 'ساعات وشنط رجالي', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---iz0Mu', NULL, NULL, '2021-06-21 12:55:29', '2021-06-21 18:55:29'),
(172, 139, 1, 'ملابس اولاد', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--kQNd7', NULL, NULL, '2021-06-21 12:56:22', '2021-06-21 18:56:22'),
(173, 139, 1, 'ملابس بنات', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--BdadY', NULL, NULL, '2021-06-21 12:57:01', '2021-06-21 18:57:01'),
(174, 139, 1, 'احذيه اطفال', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '--J4ZJc', NULL, NULL, '2021-06-21 12:57:36', '2021-06-21 18:57:36'),
(175, 139, 1, 'شنط وساعات اطفال', 0.00, NULL, NULL, 0, 1, 1, 0, 0, '---FhMAR', NULL, NULL, '2021-06-21 12:58:15', '2021-06-21 18:58:15'),
(176, 140, 1, 'العنايه المتخصصه', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--AxqMM', NULL, NULL, '2021-06-21 18:58:44', '2021-06-21 18:58:44'),
(181, 140, 1, 'مستحضرات التجميل', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--EswDw', NULL, NULL, '2021-06-27 19:06:35', '2021-06-27 19:06:35'),
(182, 140, 1, 'العطور', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '-IRuYU', NULL, NULL, '2021-06-27 19:25:52', '2021-06-27 19:25:52'),
(183, 182, 2, 'العطور الحريمي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--JumrW', NULL, NULL, '2021-06-27 13:26:38', '2021-06-27 19:26:38'),
(184, 182, 2, 'العطور الرجالي', 0.00, NULL, NULL, 0, 1, 0, 0, 0, '--yjqPz', NULL, NULL, '2021-06-27 13:27:05', '2021-06-27 19:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(4, 56, 'احذية رياضية حريمي', 'en', '2021-03-03 19:52:06', '2021-03-03 19:52:06'),
(5, 54, 'احذية كاجوال حريمي', 'en', '2021-03-03 19:53:31', '2021-03-03 19:53:31'),
(6, 68, 'احذية كاجوال رجالي', 'en', '2021-03-03 19:54:42', '2021-03-03 19:54:42'),
(7, 67, 'احذية رياضية رجالي', 'en', '2021-03-03 19:55:29', '2021-03-03 19:55:29'),
(11, 32, 'الصحة والجمال', 'en', '2021-03-24 16:32:37', '2021-03-24 16:32:37'),
(13, 129, 'test category 2', 'en', '2021-05-01 12:47:17', '2021-05-01 12:47:17'),
(14, 130, 'sup test category', 'en', '2021-05-01 12:51:05', '2021-05-01 12:51:05'),
(16, 31, 'أزياء', 'en', '2021-05-29 19:51:47', '2021-05-29 19:51:47'),
(17, 57, 'توب', 'en', '2021-06-15 17:48:43', '2021-06-15 17:48:43'),
(20, 53, 'احذية حريمي رياضية', 'en', '2021-06-17 16:04:17', '2021-06-17 16:04:17'),
(24, 137, 'ازياء حريمي', 'eg', '2021-06-21 18:16:19', '2021-06-21 18:16:19'),
(25, 138, 'ازياء رجالي', 'eg', '2021-06-21 18:17:15', '2021-06-21 18:17:15'),
(26, 139, 'ملابس اطفال', 'eg', '2021-06-21 18:17:36', '2021-06-21 18:17:36'),
(27, 140, 'الصحه والجمال', 'eg', '2021-06-21 18:17:56', '2021-06-21 18:17:56'),
(30, 144, 'بناطيل حريمي', 'eg', '2021-06-22 16:46:49', '2021-06-22 16:46:49'),
(31, 146, 'ملابس رياضيه حريمي', 'eg', '2021-06-22 16:49:55', '2021-06-22 16:49:55'),
(33, 181, 'مستحضرات التجميل', 'eg', '2021-06-27 19:06:35', '2021-06-27 19:06:35'),
(34, 141, 'هوديز وسويت تشريت حريمي', 'eg', '2021-06-27 19:24:29', '2021-06-27 19:24:29'),
(35, 182, 'العطور', 'eg', '2021-06-27 19:25:52', '2021-06-27 19:25:52'),
(36, 183, 'العطور الحريمي', 'eg', '2021-06-27 19:26:31', '2021-06-27 19:26:31'),
(37, 184, 'العطور الرجالي', 'eg', '2021-06-27 19:27:01', '2021-06-27 19:27:01'),
(38, 148, 'شرابات حريمي', 'eg', '2021-06-27 19:28:09', '2021-06-27 19:28:09'),
(39, 166, 'شرابات رجالي', 'eg', '2021-06-27 19:28:43', '2021-06-27 19:28:43'),
(40, 156, 'شنط ومحافظ حريمي', 'eg', '2021-06-27 19:29:18', '2021-06-27 19:29:18'),
(41, 157, 'ساعات واكسسوارات حريمي', 'eg', '2021-06-27 19:29:54', '2021-06-27 19:29:54'),
(42, 145, 'قمصان و بلوزات حريمي', 'eg', '2021-06-27 19:30:21', '2021-06-27 19:30:21'),
(43, 147, 'ملابس داخليه حريمي', 'eg', '2021-06-27 19:30:50', '2021-06-27 19:30:50'),
(44, 158, 'نظارات حريمي', 'eg', '2021-06-27 19:31:10', '2021-06-27 19:31:10'),
(45, 152, 'احذيه رياضيه حريمي', 'eg', '2021-06-27 19:31:31', '2021-06-27 19:31:31'),
(46, 155, 'احذيه فلات حريمي', 'eg', '2021-06-27 19:31:52', '2021-06-27 19:31:52'),
(47, 151, 'احذيه كاجوال حريمي', 'eg', '2021-06-27 19:32:11', '2021-06-27 19:32:11'),
(48, 150, 'بيجامات حريمي', 'eg', '2021-06-27 19:32:47', '2021-06-27 19:32:47'),
(49, 143, 'تيشرتات حريمي', 'eg', '2021-06-27 19:33:05', '2021-06-27 19:33:05'),
(50, 153, 'صنادل حريمي', 'eg', '2021-06-30 18:49:23', '2021-06-30 18:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 62,
  `gov_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT 0.00,
  `arrival_days` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'في اقرب وقت ممكن ',
  `active` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `gov_id`, `name`, `cost`, `arrival_days`, `active`, `created_at`, `updated_at`) VALUES
(1, 62, 1, ' May 15 ', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(2, 62, 1, 'Al Azbakeyah', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(3, 62, 1, 'Al Basatin', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(4, 62, 1, 'Tebin', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(5, 62, 1, 'El-Khalifa', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(6, 62, 1, 'El darrasa', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(7, 62, 1, 'Aldarb Alahmar', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(8, 62, 1, 'Zawya al-Hamra', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(9, 62, 1, 'El-Zaytoun', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(10, 62, 1, 'Sahel', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(11, 62, 1, 'El Salam', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(12, 62, 1, 'Sayeda Zeinab', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(13, 62, 1, 'El Sharabeya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(14, 62, 1, 'Shorouk', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(15, 62, 1, 'El Daher', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(16, 62, 1, 'Ataba', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(17, 62, 1, 'New Cairo', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(18, 62, 1, 'El Marg', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(19, 62, 1, 'Ezbet el Nakhl', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(20, 62, 1, 'Matareya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(21, 62, 1, 'Maadi', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(22, 62, 1, 'Maasara', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(23, 62, 1, 'Mokattam', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(24, 62, 1, 'Manyal', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(25, 62, 1, 'Mosky', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(26, 62, 1, 'Nozha', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(27, 62, 1, 'Waily', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(28, 62, 1, 'Bab al-Shereia', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(29, 62, 1, 'Bolaq', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(30, 62, 1, 'Garden City', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(31, 62, 1, 'Hadayek El-Kobba', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(32, 62, 1, 'Helwan', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(33, 62, 1, 'Dar Al Salam', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(34, 62, 1, 'Shubra', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(35, 62, 1, 'Tura', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(36, 62, 1, 'Abdeen', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(37, 62, 1, 'Abaseya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(38, 62, 1, 'Ain Shams', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(39, 62, 1, 'Nasr City', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(40, 62, 1, 'New Heliopolis', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(41, 62, 1, 'Masr Al Qadima', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(42, 62, 1, 'Mansheya Nasir', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(43, 62, 1, 'Badr City', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(44, 62, 1, 'Obour City', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(45, 62, 1, 'Cairo Downtown', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(46, 62, 1, 'Zamalek', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(47, 62, 1, 'Kasr El Nile', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(48, 62, 1, 'Rehab', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(49, 62, 1, 'Katameya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(50, 62, 1, 'Madinty', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(51, 62, 1, 'Rod Alfarag', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(52, 62, 1, 'Sheraton', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(53, 62, 1, 'El-Gamaleya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(54, 62, 1, '10th of Ramadan City', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(55, 62, 1, 'Helmeyat Alzaytoun', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(56, 62, 1, 'New Nozha', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(57, 62, 1, 'Capital New', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(58, 62, 2, 'Giza', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(59, 62, 2, 'Sixth of October', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(60, 62, 2, 'Cheikh Zayed', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(61, 62, 2, 'Hawamdiyah', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(62, 62, 2, 'Al Badrasheen', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(63, 62, 2, 'Saf', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(64, 62, 2, 'Atfih', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(65, 62, 2, 'Al Ayat', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(66, 62, 2, 'Al-Bawaiti', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(67, 62, 2, 'ManshiyetAl Qanater', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(68, 62, 2, 'Oaseem', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(69, 62, 2, 'Kerdasa', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(70, 62, 2, 'Abu Nomros', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(71, 62, 2, 'Kafr Ghati', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(72, 62, 2, 'Manshiyet Al Bakari', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(73, 62, 2, 'Dokki', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(74, 62, 2, 'Agouza', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(75, 62, 2, 'Haram', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(76, 62, 2, 'Warraq', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(77, 62, 2, 'Imbaba', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(78, 62, 2, 'Boulaq Dakrour', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(79, 62, 2, 'Al Wahat Al Baharia', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(80, 62, 2, 'Omraneya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(81, 62, 2, 'Moneeb', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(82, 62, 2, 'Bin Alsarayat', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(83, 62, 2, 'Kit Kat', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(84, 62, 2, 'Mohandessin', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(85, 62, 2, 'Faisal', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(86, 62, 2, 'Abu Rawash', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(87, 62, 2, 'Hadayek Alahram', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(88, 62, 2, 'Haraneya', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(89, 62, 2, 'Hadayek October', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(90, 62, 2, 'Saft Allaban', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(91, 62, 2, 'Smart Village', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(92, 62, 2, 'Ard Ellwaa', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(93, 62, 3, 'Abu Qir', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(94, 62, 3, 'Al Ibrahimeyah', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(95, 62, 3, 'Azarita', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(96, 62, 3, 'Anfoushi', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(97, 62, 3, 'Dekheila', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(98, 62, 3, 'El Soyof', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(99, 62, 3, 'Ameria', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(100, 62, 3, 'El Labban', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(101, 62, 3, 'Al Mafrouza', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(102, 62, 3, 'El Montaza', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(103, 62, 3, 'Mansheya', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(104, 62, 3, 'Naseria', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(105, 62, 3, 'Ambrozo', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(106, 62, 3, 'Bab Sharq', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(107, 62, 3, 'Bourj Alarab', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(108, 62, 3, 'Stanley', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(109, 62, 3, 'Smouha', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(110, 62, 3, 'Sidi Bishr', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(111, 62, 3, 'Shads', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(112, 62, 3, 'Gheet Alenab', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(113, 62, 3, 'Fleming', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(114, 62, 3, 'Victoria', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(115, 62, 3, 'Camp Shizar', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(116, 62, 3, 'Karmooz', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(117, 62, 3, 'Mahta Alraml', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(118, 62, 3, 'Mina El-Basal', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(119, 62, 3, 'Asafra', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(120, 62, 3, 'Agamy', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(121, 62, 3, 'Bakos', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(122, 62, 3, 'Boulkly', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(123, 62, 3, 'Cleopatra', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(124, 62, 3, 'Glim', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(125, 62, 3, 'Al Mamurah', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(126, 62, 3, 'Al Mandara', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(127, 62, 3, 'Moharam Bek', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(128, 62, 3, 'Elshatby', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(129, 62, 3, 'Sidi Gaber', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(130, 62, 3, 'North Coast/sahel', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(131, 62, 3, 'Alhadra', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(132, 62, 3, 'Alattarin', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(133, 62, 3, 'Sidi Kerir', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(134, 62, 3, 'Elgomrok', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(135, 62, 3, 'Al Max', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(136, 62, 3, 'Marina', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(137, 62, 4, 'Mansoura', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(138, 62, 4, 'Talkha', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(139, 62, 4, 'Mitt Ghamr', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(140, 62, 4, 'Dekernes', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(141, 62, 4, 'Aga', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(142, 62, 4, 'Menia El Nasr', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(143, 62, 4, 'Sinbillawin', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(144, 62, 4, 'El Kurdi', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(145, 62, 4, 'Bani Ubaid', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(146, 62, 4, 'Al Manzala', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(147, 62, 4, 'tami al\'amdid', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(148, 62, 4, 'aljamalia', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(149, 62, 4, 'Sherbin', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(150, 62, 4, 'Mataria', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(151, 62, 4, 'Belqas', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(152, 62, 4, 'Meet Salsil', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(153, 62, 4, 'Gamasa', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(154, 62, 4, 'Mahalat Damana', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(155, 62, 4, 'Nabroh', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(156, 62, 5, 'Hurghada', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(157, 62, 5, 'Ras Ghareb', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(158, 62, 5, 'Safaga', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(159, 62, 5, 'El Qusiar', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(160, 62, 5, 'Marsa Alam', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(161, 62, 5, 'Shalatin', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(162, 62, 5, 'Halaib', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(163, 62, 5, 'Aldahar', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(164, 62, 6, 'Damanhour', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(165, 62, 6, 'Kafr El Dawar', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(166, 62, 6, 'Rashid', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(167, 62, 6, 'Edco', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(168, 62, 6, 'Abu al-Matamir', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(169, 62, 6, 'Abu Homs', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(170, 62, 6, 'Delengat', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(171, 62, 6, 'Mahmoudiyah', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(172, 62, 6, 'Rahmaniyah', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(173, 62, 6, 'Itai Baroud', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(174, 62, 6, 'Housh Eissa', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(175, 62, 6, 'Shubrakhit', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(176, 62, 6, 'Kom Hamada', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(177, 62, 6, 'Badr', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(178, 62, 6, 'Wadi Natrun', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(179, 62, 6, 'New Nubaria', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(180, 62, 6, 'Alnoubareya', 45.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(181, 62, 7, 'Fayoum', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(182, 62, 7, 'Fayoum El Gedida', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(183, 62, 7, 'Tamiya', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(184, 62, 7, 'Snores', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(185, 62, 7, 'Etsa', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(186, 62, 7, 'Epschway', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(187, 62, 7, 'Yusuf El Sediaq', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(188, 62, 7, 'Hadqa', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(189, 62, 7, 'Atsa', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(190, 62, 7, 'Algamaa', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(191, 62, 7, 'Sayala', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(192, 62, 8, 'Tanta', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(193, 62, 8, 'Al Mahalla Al Kobra', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(194, 62, 8, 'Kafr El Zayat', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(195, 62, 8, 'Zefta', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(196, 62, 8, 'El Santa', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(197, 62, 8, 'Qutour', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(198, 62, 8, 'Basion', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(199, 62, 8, 'Samannoud', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(200, 62, 9, 'Ismailia', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(201, 62, 9, 'Fayed', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(202, 62, 9, 'Qantara Sharq', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(203, 62, 9, 'Qantara Gharb', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(204, 62, 9, 'El Tal El Kabier', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(205, 62, 9, 'Abu Sawir', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(206, 62, 9, 'Kasasien El Gedida', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(207, 62, 9, 'Nefesha', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(208, 62, 9, 'Sheikh Zayed', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(209, 62, 10, 'Shbeen El Koom', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(210, 62, 10, 'Sadat City', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(211, 62, 10, 'Menouf', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(212, 62, 10, 'Sars El-Layan', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(213, 62, 10, 'Ashmon', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(214, 62, 10, 'Al Bagor', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(215, 62, 10, 'Quesna', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(216, 62, 10, 'Berkat El Saba', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(217, 62, 10, 'Tala', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(218, 62, 10, 'Al Shohada', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(219, 62, 11, 'Minya', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(220, 62, 11, 'Minya El Gedida', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(221, 62, 11, 'El Adwa', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(222, 62, 11, 'Magagha', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(223, 62, 11, 'Bani Mazar', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(224, 62, 11, 'Mattay', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(225, 62, 11, 'Samalut', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(226, 62, 11, 'Madinat El Fekria', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(227, 62, 11, 'Meloy', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(228, 62, 11, 'Deir Mawas', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(229, 62, 11, 'Abu Qurqas', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(230, 62, 11, 'Ard Sultan', 60.00, '5-6', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(231, 62, 12, 'Banha', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(232, 62, 12, 'Qalyub', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(233, 62, 12, 'Shubra Al Khaimah', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(234, 62, 12, 'Al Qanater Charity', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(235, 62, 12, 'Khanka', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(236, 62, 12, 'Kafr Shukr', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(237, 62, 12, 'Tukh', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(238, 62, 12, 'Qaha', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(239, 62, 12, 'Obour', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(240, 62, 12, 'Khosous', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(241, 62, 12, 'Shibin Al Qanater', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(242, 62, 12, 'Mostorod', 40.00, '3-4', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(243, 62, 13, 'El Kharga', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(244, 62, 13, 'Paris', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(245, 62, 13, 'Mout', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(246, 62, 13, 'Farafra', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(247, 62, 13, 'Balat', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(248, 62, 13, 'Dakhla', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(249, 62, 14, 'Suez', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(250, 62, 14, 'Alganayen', 50.00, '4-5', 1, '2021-06-28 07:29:51', '2021-06-28 07:29:51'),
(251, 62, 14, 'Ataqah', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(252, 62, 14, 'Ain Sokhna', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(253, 62, 14, 'Faysal', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(254, 62, 15, 'Aswan', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(255, 62, 15, 'Aswan El Gedida', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(256, 62, 15, 'Drau', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(257, 62, 15, 'Kom Ombo', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(258, 62, 15, 'Nasr Al Nuba', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(259, 62, 15, 'Kalabsha', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(260, 62, 15, 'Edfu', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(261, 62, 15, 'Al-Radisiyah', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(262, 62, 15, 'Al Basilia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(263, 62, 15, 'Al Sibaeia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(264, 62, 15, 'Abo Simbl Al Siyahia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(265, 62, 15, 'Marsa Alam', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(266, 62, 16, 'Assiut', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(267, 62, 16, 'Assiut El Gedida', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(268, 62, 16, 'Dayrout', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(269, 62, 16, 'Manfalut', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(270, 62, 16, 'Qusiya', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(271, 62, 16, 'Abnoub', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(272, 62, 16, 'Abu Tig', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(273, 62, 16, 'El Ghanaim', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(274, 62, 16, 'Sahel Selim', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(275, 62, 16, 'El Badari', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(276, 62, 16, 'Sidfa', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(277, 62, 17, 'Bani Sweif', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(278, 62, 17, 'Beni Suef El Gedida', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(279, 62, 17, 'Al Wasta', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(280, 62, 17, 'Naser', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(281, 62, 17, 'Ehnasia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(282, 62, 17, 'beba', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(283, 62, 17, 'Fashn', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(284, 62, 17, 'Somasta', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(285, 62, 17, 'Alabbaseri', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(286, 62, 17, 'Mokbel', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(287, 62, 18, 'PorSaid', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(288, 62, 18, 'Port Fouad', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(289, 62, 18, 'Alarab', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(290, 62, 18, 'Zohour', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(291, 62, 18, 'Alsharq', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(292, 62, 18, 'Aldawahi', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(293, 62, 18, 'Almanakh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(294, 62, 18, 'Mubarak', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(295, 62, 19, 'Damietta', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(296, 62, 19, 'New Damietta', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(297, 62, 19, 'Ras El Bar', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(298, 62, 19, 'Faraskour', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(299, 62, 19, 'Zarqa', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(300, 62, 19, 'alsaru', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(301, 62, 19, 'alruwda', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(302, 62, 19, 'Kafr El-Batikh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(303, 62, 19, 'Azbet Al Burg', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(304, 62, 19, 'Meet Abou Ghalib', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(305, 62, 19, 'Kafr Saad', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(306, 62, 20, 'Zagazig', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(307, 62, 20, 'Al Ashr Men Ramadan', 40.00, '3-4', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(308, 62, 20, 'Minya Al Qamh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(309, 62, 20, 'Belbeis', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(310, 62, 20, 'Mashtoul El Souq', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(311, 62, 20, 'Qenaiat', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(312, 62, 20, 'Abu Hammad', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(313, 62, 20, 'El Qurain', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(314, 62, 20, 'Hehia', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(315, 62, 20, 'Abu Kabir', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(316, 62, 20, 'Faccus', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(317, 62, 20, 'El Salihia El Gedida', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(318, 62, 20, 'Al Ibrahimiyah', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(319, 62, 20, 'Deirb Negm', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(320, 62, 20, 'Kafr Saqr', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(321, 62, 20, 'Awlad Saqr', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(322, 62, 20, 'Husseiniya', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(323, 62, 20, 'san alhajar alqablia', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(324, 62, 20, 'Manshayat Abu Omar', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(325, 62, 21, 'Al Toor', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(326, 62, 21, 'Sharm El-Shaikh', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(327, 62, 21, 'Dahab', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(328, 62, 21, 'Nuweiba', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(329, 62, 21, 'Taba', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(330, 62, 21, 'Saint Catherine', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(331, 62, 21, 'Abu Redis', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(332, 62, 21, 'Abu Zenaima', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(333, 62, 21, 'Ras Sidr', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(334, 62, 22, 'Kafr El Sheikh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(335, 62, 22, 'Kafr El Sheikh Downtown', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(336, 62, 22, 'Desouq', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(337, 62, 22, 'Fooh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(338, 62, 22, 'Metobas', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(339, 62, 22, 'Burg Al Burullus', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(340, 62, 22, 'Baltim', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(341, 62, 22, 'Masief Baltim', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(342, 62, 22, 'Hamol', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(343, 62, 22, 'Bella', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(344, 62, 22, 'Riyadh', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(345, 62, 22, 'Sidi Salm', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(346, 62, 22, 'Qellen', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(347, 62, 22, 'Sidi Ghazi', 50.00, '4-5', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(348, 62, 23, 'Marsa Matrouh', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(349, 62, 23, 'El Hamam', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(350, 62, 23, 'Alamein', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(351, 62, 23, 'Dabaa', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(352, 62, 23, 'Al-Nagila', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(353, 62, 23, 'Sidi Brani', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(354, 62, 23, 'Salloum', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(355, 62, 23, 'Siwa', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(356, 62, 23, 'Marina', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(357, 62, 23, 'North Coast', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(358, 62, 24, 'Luxor', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(359, 62, 24, 'New Luxor', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(360, 62, 24, 'Esna', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(361, 62, 24, 'New Tiba', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(362, 62, 24, 'Al ziynia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(363, 62, 24, 'Al Bayadieh', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(364, 62, 24, 'Al Qarna', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(365, 62, 24, 'Armant', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(366, 62, 24, 'Al Tud', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(367, 62, 25, 'Qena', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(368, 62, 25, 'New Qena', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(369, 62, 25, 'Abu Tesht', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(370, 62, 25, 'Nag Hammadi', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(371, 62, 25, 'Deshna', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(372, 62, 25, 'Alwaqf', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(373, 62, 25, 'Qaft', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(374, 62, 25, 'Naqada', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(375, 62, 25, 'Farshout', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(376, 62, 25, 'Quos', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(377, 62, 26, 'Arish', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(378, 62, 26, 'Sheikh Zowaid', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(379, 62, 26, 'Nakhl', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(380, 62, 26, 'Rafah', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(381, 62, 26, 'Bir al-Abed', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(382, 62, 26, 'Al Hasana', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(383, 62, 27, 'Sohag', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(384, 62, 27, 'Sohag El Gedida', 0.00, 'يتعذر الوصول', 0, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(385, 62, 27, 'Akhmeem', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(386, 62, 27, 'Akhmim El Gedida', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(387, 62, 27, 'Albalina', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(388, 62, 27, 'El Maragha', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(389, 62, 27, 'almunsha\'a', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(390, 62, 27, 'Dar AISalaam', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(391, 62, 27, 'Gerga', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(392, 62, 27, 'Jahina Al Gharbia', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(393, 62, 27, 'Saqilatuh', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(394, 62, 27, 'Tama', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(395, 62, 27, 'Tahta', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50'),
(396, 62, 27, 'Alkawthar', 60.00, '5-6', 1, '2021-06-28 07:30:50', '2021-06-28 07:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'القاهرة', 'eg', '2021-02-12 00:02:02', '2021-02-12 00:02:02'),
(2, 2, 'الأسكندرية', 'eg', '2021-02-12 00:15:18', '2021-02-12 00:15:18'),
(3, 2, 'Alexandria', 'en', '2021-02-16 01:12:07', '2021-02-16 01:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(1, 12, 3, 'test admin approval seller', 1, 1, '2021-02-17 00:19:35', '2021-02-17 00:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 0, NULL, NULL),
(2, 'AL', 'Albania', 0, NULL, NULL),
(3, 'DZ', 'Algeria', 0, NULL, NULL),
(4, 'DS', 'American Samoa', 0, NULL, NULL),
(5, 'AD', 'Andorra', 0, NULL, NULL),
(6, 'AO', 'Angola', 0, NULL, NULL),
(7, 'AI', 'Anguilla', 0, NULL, NULL),
(8, 'AQ', 'Antarctica', 0, NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 0, NULL, NULL),
(10, 'AR', 'Argentina', 0, NULL, NULL),
(11, 'AM', 'Armenia', 0, NULL, NULL),
(12, 'AW', 'Aruba', 0, NULL, NULL),
(13, 'AU', 'Australia', 0, NULL, NULL),
(14, 'AT', 'Austria', 0, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 0, NULL, NULL),
(16, 'BS', 'Bahamas', 0, NULL, NULL),
(17, 'BH', 'Bahrain', 0, NULL, NULL),
(18, 'BD', 'Bangladesh', 0, NULL, NULL),
(19, 'BB', 'Barbados', 0, NULL, NULL),
(20, 'BY', 'Belarus', 0, NULL, NULL),
(21, 'BE', 'Belgium', 0, NULL, NULL),
(22, 'BZ', 'Belize', 0, NULL, NULL),
(23, 'BJ', 'Benin', 0, NULL, NULL),
(24, 'BM', 'Bermuda', 0, NULL, NULL),
(25, 'BT', 'Bhutan', 0, NULL, NULL),
(26, 'BO', 'Bolivia', 0, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 0, NULL, NULL),
(28, 'BW', 'Botswana', 0, NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, NULL, NULL),
(30, 'BR', 'Brazil', 0, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 0, NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 0, NULL, NULL),
(33, 'BG', 'Bulgaria', 0, NULL, NULL),
(34, 'BF', 'Burkina Faso', 0, NULL, NULL),
(35, 'BI', 'Burundi', 0, NULL, NULL),
(36, 'KH', 'Cambodia', 0, NULL, NULL),
(37, 'CM', 'Cameroon', 0, NULL, NULL),
(38, 'CA', 'Canada', 0, NULL, NULL),
(39, 'CV', 'Cape Verde', 0, NULL, NULL),
(40, 'KY', 'Cayman Islands', 0, NULL, NULL),
(41, 'CF', 'Central African Republic', 0, NULL, NULL),
(42, 'TD', 'Chad', 0, NULL, NULL),
(43, 'CL', 'Chile', 0, NULL, NULL),
(44, 'CN', 'China', 0, NULL, NULL),
(45, 'CX', 'Christmas Island', 0, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 0, NULL, NULL),
(47, 'CO', 'Colombia', 0, NULL, NULL),
(48, 'KM', 'Comoros', 0, NULL, NULL),
(49, 'CG', 'Congo', 0, NULL, NULL),
(50, 'CK', 'Cook Islands', 0, NULL, NULL),
(51, 'CR', 'Costa Rica', 0, NULL, NULL),
(52, 'HR', 'Croatia (Hrvatska)', 0, NULL, NULL),
(53, 'CU', 'Cuba', 0, NULL, NULL),
(54, 'CY', 'Cyprus', 0, NULL, NULL),
(55, 'CZ', 'Czech Republic', 0, NULL, NULL),
(56, 'DK', 'Denmark', 0, NULL, NULL),
(57, 'DJ', 'Djibouti', 0, NULL, NULL),
(58, 'DM', 'Dominica', 0, NULL, NULL),
(59, 'DO', 'Dominican Republic', 0, NULL, NULL),
(60, 'TP', 'East Timor', 0, NULL, NULL),
(61, 'EC', 'Ecuador', 0, NULL, NULL),
(62, 'EG', 'Egypt', 1, NULL, '2021-02-08 22:21:09'),
(63, 'SV', 'El Salvador', 0, NULL, NULL),
(64, 'GQ', 'Equatorial Guinea', 0, NULL, NULL),
(65, 'ER', 'Eritrea', 0, NULL, NULL),
(66, 'EE', 'Estonia', 0, NULL, NULL),
(67, 'ET', 'Ethiopia', 0, NULL, NULL),
(68, 'FK', 'Falkland Islands (Malvinas)', 0, NULL, NULL),
(69, 'FO', 'Faroe Islands', 0, NULL, NULL),
(70, 'FJ', 'Fiji', 0, NULL, NULL),
(71, 'FI', 'Finland', 0, NULL, NULL),
(72, 'FR', 'France', 0, NULL, NULL),
(73, 'FX', 'France, Metropolitan', 0, NULL, NULL),
(74, 'GF', 'French Guiana', 0, NULL, NULL),
(75, 'PF', 'French Polynesia', 0, NULL, NULL),
(76, 'TF', 'French Southern Territories', 0, NULL, NULL),
(77, 'GA', 'Gabon', 0, NULL, NULL),
(78, 'GM', 'Gambia', 0, NULL, NULL),
(79, 'GE', 'Georgia', 0, NULL, NULL),
(80, 'DE', 'Germany', 0, NULL, NULL),
(81, 'GH', 'Ghana', 0, NULL, NULL),
(82, 'GI', 'Gibraltar', 0, NULL, NULL),
(83, 'GK', 'Guernsey', 0, NULL, NULL),
(84, 'GR', 'Greece', 0, NULL, NULL),
(85, 'GL', 'Greenland', 0, NULL, NULL),
(86, 'GD', 'Grenada', 0, NULL, NULL),
(87, 'GP', 'Guadeloupe', 0, NULL, NULL),
(88, 'GU', 'Guam', 0, NULL, NULL),
(89, 'GT', 'Guatemala', 0, NULL, NULL),
(90, 'GN', 'Guinea', 0, NULL, NULL),
(91, 'GW', 'Guinea-Bissau', 0, NULL, NULL),
(92, 'GY', 'Guyana', 0, NULL, NULL),
(93, 'HT', 'Haiti', 0, NULL, NULL),
(94, 'HM', 'Heard and Mc Donald Islands', 0, NULL, NULL),
(95, 'HN', 'Honduras', 0, NULL, NULL),
(96, 'HK', 'Hong Kong', 0, NULL, NULL),
(97, 'HU', 'Hungary', 0, NULL, NULL),
(98, 'IS', 'Iceland', 0, NULL, NULL),
(99, 'IN', 'India', 0, NULL, NULL),
(100, 'IM', 'Isle of Man', 0, NULL, NULL),
(101, 'ID', 'Indonesia', 0, NULL, NULL),
(102, 'IR', 'Iran (Islamic Republic of)', 0, NULL, NULL),
(103, 'IQ', 'Iraq', 0, NULL, NULL),
(104, 'IE', 'Ireland', 0, NULL, NULL),
(105, 'IL', 'Israel', 0, NULL, NULL),
(106, 'IT', 'Italy', 0, NULL, NULL),
(107, 'CI', 'Ivory Coast', 0, NULL, NULL),
(108, 'JE', 'Jersey', 0, NULL, NULL),
(109, 'JM', 'Jamaica', 0, NULL, NULL),
(110, 'JP', 'Japan', 0, NULL, NULL),
(111, 'JO', 'Jordan', 0, NULL, NULL),
(112, 'KZ', 'Kazakhstan', 0, NULL, NULL),
(113, 'KE', 'Kenya', 0, NULL, NULL),
(114, 'KI', 'Kiribati', 0, NULL, NULL),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 0, NULL, NULL),
(116, 'KR', 'Korea, Republic of', 0, NULL, NULL),
(117, 'XK', 'Kosovo', 0, NULL, NULL),
(118, 'KW', 'Kuwait', 0, NULL, NULL),
(119, 'KG', 'Kyrgyzstan', 0, NULL, NULL),
(120, 'LA', 'Lao People\'s Democratic Republic', 0, NULL, NULL),
(121, 'LV', 'Latvia', 0, NULL, NULL),
(122, 'LB', 'Lebanon', 0, NULL, NULL),
(123, 'LS', 'Lesotho', 0, NULL, NULL),
(124, 'LR', 'Liberia', 0, NULL, NULL),
(125, 'LY', 'Libyan Arab Jamahiriya', 0, NULL, NULL),
(126, 'LI', 'Liechtenstein', 0, NULL, NULL),
(127, 'LT', 'Lithuania', 0, NULL, NULL),
(128, 'LU', 'Luxembourg', 0, NULL, NULL),
(129, 'MO', 'Macau', 0, NULL, NULL),
(130, 'MK', 'Macedonia', 0, NULL, NULL),
(131, 'MG', 'Madagascar', 0, NULL, NULL),
(132, 'MW', 'Malawi', 0, NULL, NULL),
(133, 'MY', 'Malaysia', 0, NULL, NULL),
(134, 'MV', 'Maldives', 0, NULL, NULL),
(135, 'ML', 'Mali', 0, NULL, NULL),
(136, 'MT', 'Malta', 0, NULL, NULL),
(137, 'MH', 'Marshall Islands', 0, NULL, NULL),
(138, 'MQ', 'Martinique', 0, NULL, NULL),
(139, 'MR', 'Mauritania', 0, NULL, NULL),
(140, 'MU', 'Mauritius', 0, NULL, NULL),
(141, 'TY', 'Mayotte', 0, NULL, NULL),
(142, 'MX', 'Mexico', 0, NULL, NULL),
(143, 'FM', 'Micronesia, Federated States of', 0, NULL, NULL),
(144, 'MD', 'Moldova, Republic of', 0, NULL, NULL),
(145, 'MC', 'Monaco', 0, NULL, NULL),
(146, 'MN', 'Mongolia', 0, NULL, NULL),
(147, 'ME', 'Montenegro', 0, NULL, NULL),
(148, 'MS', 'Montserrat', 0, NULL, NULL),
(149, 'MA', 'Morocco', 0, NULL, NULL),
(150, 'MZ', 'Mozambique', 0, NULL, NULL),
(151, 'MM', 'Myanmar', 0, NULL, NULL),
(152, 'NA', 'Namibia', 0, NULL, NULL),
(153, 'NR', 'Nauru', 0, NULL, NULL),
(154, 'NP', 'Nepal', 0, NULL, NULL),
(155, 'NL', 'Netherlands', 0, NULL, NULL),
(156, 'AN', 'Netherlands Antilles', 0, NULL, NULL),
(157, 'NC', 'New Caledonia', 0, NULL, NULL),
(158, 'NZ', 'New Zealand', 0, NULL, NULL),
(159, 'NI', 'Nicaragua', 0, NULL, NULL),
(160, 'NE', 'Niger', 0, NULL, NULL),
(161, 'NG', 'Nigeria', 0, NULL, NULL),
(162, 'NU', 'Niue', 0, NULL, NULL),
(163, 'NF', 'Norfolk Island', 0, NULL, NULL),
(164, 'MP', 'Northern Mariana Islands', 0, NULL, NULL),
(165, 'NO', 'Norway', 0, NULL, NULL),
(166, 'OM', 'Oman', 0, NULL, NULL),
(167, 'PK', 'Pakistan', 0, NULL, NULL),
(168, 'PW', 'Palau', 0, NULL, NULL),
(169, 'PS', 'Palestine', 0, NULL, NULL),
(170, 'PA', 'Panama', 0, NULL, NULL),
(171, 'PG', 'Papua New Guinea', 0, NULL, NULL),
(172, 'PY', 'Paraguay', 0, NULL, NULL),
(173, 'PE', 'Peru', 0, NULL, NULL),
(174, 'PH', 'Philippines', 0, NULL, NULL),
(175, 'PN', 'Pitcairn', 0, NULL, NULL),
(176, 'PL', 'Poland', 0, NULL, NULL),
(177, 'PT', 'Portugal', 0, NULL, NULL),
(178, 'PR', 'Puerto Rico', 0, NULL, NULL),
(179, 'QA', 'Qatar', 0, NULL, NULL),
(180, 'RE', 'Reunion', 0, NULL, NULL),
(181, 'RO', 'Romania', 0, NULL, NULL),
(182, 'RU', 'Russian Federation', 0, NULL, NULL),
(183, 'RW', 'Rwanda', 0, NULL, NULL),
(184, 'KN', 'Saint Kitts and Nevis', 0, NULL, NULL),
(185, 'LC', 'Saint Lucia', 0, NULL, NULL),
(186, 'VC', 'Saint Vincent and the Grenadines', 0, NULL, NULL),
(187, 'WS', 'Samoa', 0, NULL, NULL),
(188, 'SM', 'San Marino', 0, NULL, NULL),
(189, 'ST', 'Sao Tome and Principe', 0, NULL, NULL),
(190, 'SA', 'Saudi Arabia', 0, NULL, NULL),
(191, 'SN', 'Senegal', 0, NULL, NULL),
(192, 'RS', 'Serbia', 0, NULL, NULL),
(193, 'SC', 'Seychelles', 0, NULL, NULL),
(194, 'SL', 'Sierra Leone', 0, NULL, NULL),
(195, 'SG', 'Singapore', 0, NULL, NULL),
(196, 'SK', 'Slovakia', 0, NULL, NULL),
(197, 'SI', 'Slovenia', 0, NULL, NULL),
(198, 'SB', 'Solomon Islands', 0, NULL, NULL),
(199, 'SO', 'Somalia', 0, NULL, NULL),
(200, 'ZA', 'South Africa', 0, NULL, NULL),
(201, 'GS', 'South Georgia South Sandwich Islands', 0, NULL, NULL),
(202, 'SS', 'South Sudan', 0, NULL, NULL),
(203, 'ES', 'Spain', 0, NULL, NULL),
(204, 'LK', 'Sri Lanka', 0, NULL, NULL),
(205, 'SH', 'St. Helena', 0, NULL, NULL),
(206, 'PM', 'St. Pierre and Miquelon', 0, NULL, NULL),
(207, 'SD', 'Sudan', 0, NULL, NULL),
(208, 'SR', 'Suriname', 0, NULL, NULL),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', 0, NULL, NULL),
(210, 'SZ', 'Swaziland', 0, NULL, NULL),
(211, 'SE', 'Sweden', 0, NULL, NULL),
(212, 'CH', 'Switzerland', 0, NULL, NULL),
(213, 'SY', 'Syrian Arab Republic', 0, NULL, NULL),
(214, 'TW', 'Taiwan', 0, NULL, NULL),
(215, 'TJ', 'Tajikistan', 0, NULL, NULL),
(216, 'TZ', 'Tanzania, United Republic of', 0, NULL, NULL),
(217, 'TH', 'Thailand', 0, NULL, NULL),
(218, 'TG', 'Togo', 0, NULL, NULL),
(219, 'TK', 'Tokelau', 0, NULL, NULL),
(220, 'TO', 'Tonga', 0, NULL, NULL),
(221, 'TT', 'Trinidad and Tobago', 0, NULL, NULL),
(222, 'TN', 'Tunisia', 0, NULL, NULL),
(223, 'TR', 'Turkey', 0, NULL, NULL),
(224, 'TM', 'Turkmenistan', 0, NULL, NULL),
(225, 'TC', 'Turks and Caicos Islands', 0, NULL, NULL),
(226, 'TV', 'Tuvalu', 0, NULL, NULL),
(227, 'UG', 'Uganda', 0, NULL, NULL),
(228, 'UA', 'Ukraine', 0, NULL, NULL),
(229, 'AE', 'United Arab Emirates', 0, NULL, NULL),
(230, 'GB', 'United Kingdom', 0, NULL, NULL),
(231, 'US', 'United States', 0, NULL, NULL),
(232, 'UM', 'United States minor outlying islands', 0, NULL, NULL),
(233, 'UY', 'Uruguay', 0, NULL, NULL),
(234, 'UZ', 'Uzbekistan', 0, NULL, NULL),
(235, 'VU', 'Vanuatu', 0, NULL, NULL),
(236, 'VA', 'Vatican City State', 0, NULL, NULL),
(237, 'VE', 'Venezuela', 0, NULL, NULL),
(238, 'VN', 'Vietnam', 0, NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 0, NULL, NULL),
(240, 'VI', 'Virgin Islands (U.S.)', 0, NULL, NULL),
(241, 'WF', 'Wallis and Futuna Islands', 0, NULL, NULL),
(242, 'EH', 'Western Sahara', 0, NULL, NULL),
(243, 'YE', 'Yemen', 0, NULL, NULL),
(244, 'ZR', 'Zaire', 0, NULL, NULL),
(245, 'ZM', 'Zambia', 0, NULL, NULL),
(246, 'ZW', 'Zimbabwe', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'cart_base', 'K105', '{\"min_buy\":\"900\",\"max_discount\":\"1000\"}', 10.00, 'percent', 1645567200, 1648677600, '2022-02-23 12:36:12', '2022-02-23 12:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 0, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2019-02-04 05:51:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2018-10-17 05:51:00'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(27, 'Taka', '৳', 84.00000, 0, 'BDT', '2018-10-09 11:35:08', '2018-12-02 05:16:13'),
(28, 'Indian Rupee', 'Rs', 68.45000, 0, 'Rupee', '2019-07-07 10:33:46', '2019-07-07 10:33:46'),
(29, 'Egyptian Pound', 'EGP', 15.66000, 1, 'EGP', '2021-02-08 22:07:08', '2021-02-10 22:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 12, '2021-02-11 00:34:02', '2021-02-11 00:34:02'),
(6, 14, '2021-02-13 19:19:12', '2021-02-13 19:19:12'),
(7, 15, '2021-02-13 19:25:17', '2021-02-13 19:25:17'),
(8, 21, '2021-02-17 12:44:56', '2021-02-17 12:44:56'),
(22, 77, '2021-06-13 15:35:27', '2021-06-13 15:35:27'),
(23, 80, '2021-07-10 12:18:01', '2021-07-10 12:18:01'),
(24, 81, '2021-12-11 12:19:23', '2021-12-11 12:19:23'),
(25, 86, '2021-12-12 14:56:06', '2021-12-12 14:56:06'),
(26, 87, '2021-12-13 07:36:04', '2021-12-13 07:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_translations`
--

CREATE TABLE `customer_package_translations` (
  `id` bigint(20) NOT NULL,
  `customer_package_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(20,2) DEFAULT 0.00,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_translations`
--

CREATE TABLE `customer_product_translations` (
  `id` bigint(20) NOT NULL,
  `customer_product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'trttttttt', 1613512800, 1614290340, 1, 0, '#c5c5c5', 'dark', NULL, 'trttttttt-c3awh', '2021-02-17 12:13:25', '2021-12-18 15:19:28'),
(2, 'Peter', 1639605600, 1643579940, 1, 0, '#00000', 'white', '159', 'peter-zcaum', '2021-12-18 11:58:46', '2021-12-19 07:39:57'),
(3, 'new', 1638741600, 1642975140, 1, 1, '#00000', 'dark', '263', 'new-0jet4', '2021-12-19 07:38:57', '2021-12-19 07:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(20,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 20.00, 'percent', '2021-02-17 12:14:13', '2021-02-17 12:14:13'),
(4, 1, 4, 5.00, 'amount', '2021-02-17 12:14:13', '2021-02-17 12:14:13'),
(5, 1, 11, 10.00, 'percent', '2021-02-17 12:14:13', '2021-02-17 12:14:13'),
(6, 1, 13, 10.00, 'percent', '2021-02-17 12:14:13', '2021-02-17 12:14:13'),
(7, 2, 113, 10.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(8, 2, 110, 10.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(9, 2, 103, 0.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(10, 2, 102, 0.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(11, 2, 101, 0.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(12, 2, 97, 0.00, 'amount', '2021-12-18 11:58:46', '2021-12-18 11:58:46'),
(38, 3, 68, 15.00, 'percent', '2022-01-08 16:23:06', '2022-01-08 16:23:06'),
(39, 3, 69, 15.00, 'amount', '2022-01-08 16:23:06', '2022-01-08 16:23:06'),
(40, 3, 70, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(41, 3, 71, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(42, 3, 72, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(43, 3, 73, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(44, 3, 74, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(45, 3, 75, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(46, 3, 76, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(47, 3, 77, 100.00, 'amount', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(48, 3, 82, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(49, 3, 83, 15.00, 'percent', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(50, 3, 84, 15.00, 'amount', '2022-01-08 16:23:07', '2022-01-08 16:23:07'),
(51, 3, 102, 0.00, 'amount', '2022-01-08 16:23:08', '2022-01-08 16:23:08'),
(52, 3, 103, 0.00, 'amount', '2022-01-08 16:23:08', '2022-01-08 16:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_translations`
--

CREATE TABLE `flash_deal_translations` (
  `id` bigint(20) NOT NULL,
  `flash_deal_id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_translations`
--

INSERT INTO `flash_deal_translations` (`id`, `flash_deal_id`, `title`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'trttttttt', 'en', '2021-02-17 12:13:25', '2021-02-17 12:13:25'),
(2, 2, 'Peter', 'eg', '2021-12-18 11:58:47', '2021-12-18 11:58:47'),
(3, 3, 'new', 'eg', '2021-12-19 07:38:58', '2021-12-19 07:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `footer_logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/pfdIuiMeXGkDAIpPEUrvUCbQrOHu484nbGfz77zB.png', NULL, 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/uHdGidSaRVzvPgDj6JFtntMqzJkwDk9659233jrb.png', 'Active Ecommerce CMS', 'Demo Address', 'Active eCommerce CMS is a Multi vendor system is such a platform to build a border less marketplace.', '1234567890', 'admin@example.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2019-03-13 08:01:06', '2019-03-13 02:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `cost` double NOT NULL,
  `arrival_days` varchar(250) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `name`, `name_en`, `cost`, `arrival_days`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 'Cairo', 40, '3-4', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(2, 'الجيزة', 'Giza', 40, '3-4', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(3, 'الأسكندرية', 'Alexandria', 45, '3-4', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(4, 'الدقهلية', 'Dakahlia', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(5, 'البحر الأحمر', 'Red Sea', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(6, 'البحيرة', 'Beheira', 45, '3-4', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(7, 'الفيوم', 'Fayoum', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(8, 'الغربية', 'Gharbiya', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(9, 'الإسماعلية', 'Ismailia', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(10, 'المنوفية', 'Menofia', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(11, 'المنيا', 'Minya', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(12, 'القليوبية', 'Qaliubiya', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(13, 'الوادي الجديد', 'New Valley', 0, 'يتعذر الوصول', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(14, 'السويس', 'Suez', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(15, 'اسوان', 'Aswan', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(16, 'اسيوط', 'Assiut', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(17, 'بني سويف', 'Beni Suef', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(18, 'بورسعيد', 'Port Said', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(19, 'دمياط', 'Damietta', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(20, 'الشرقية', 'Sharkia', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(21, 'جنوب سيناء', 'South Sinai', 0, 'يتعذر الوصول', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(22, 'كفر الشيخ', 'Kafr Al sheikh', 50, '4-5', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(23, 'مطروح', 'Matrouh', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(24, 'الأقصر', 'Luxor', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(25, 'قنا', 'Qena', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(26, 'شمال سيناء', 'North Sinai', 0, 'يتعذر الوصول', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34'),
(27, 'سوهاج', 'Sohag', 60, '5-6', 1, 1, '2021-06-28 06:44:34', '2021-06-28 06:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(4, 'Arabic', 'eg', 1, '2019-04-28 18:34:12', '2021-02-08 22:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'http://localhost/ar5as/product/test-admin-approval-seller-EnpGp', '2021-02-17 00:19:35', '2021-02-17 00:19:35'),
(2, 1, 3, 'helloo jjjj', '2021-02-17 00:20:08', '2021-02-17 00:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2022_02_24_160129_create_activity_log_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `delivery_viewed` int(1) NOT NULL DEFAULT 1,
  `payment_status_viewed` int(1) DEFAULT 1,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `shipping_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(20,2) DEFAULT NULL,
  `shipping_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `order_status`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `shipping_type`, `shipping_cost`, `shipping_by`, `created_at`, `updated_at`) VALUES
(61, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 4446.00, 0.00, '20210613-11374175', 1623577061, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-13 15:37:41', '2021-06-13 17:57:03'),
(62, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'cancelled', 3192.00, 0.00, '20210613-11505036', 1623577850, 1, 1, 1, 0, 'home_delivery', 0.00, NULL, '2021-06-13 15:50:50', '2021-06-13 15:54:30'),
(63, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 1778.40, 0.00, '20210613-12470174', 1623581221, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-13 16:47:01', '2021-06-13 16:56:34'),
(64, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 1778.40, 0.00, '20210613-12573971', 1623581859, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-13 16:57:39', '2021-06-13 17:03:56'),
(65, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 3192.00, 0.00, '20210613-13371344', 1623584233, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-13 17:37:13', '2021-06-13 17:41:34'),
(66, 75, NULL, '{\"name\":\"Ismail Elbahrawy\",\"email\":\"ismail@mtd-llc.com\",\"address\":\"test address\",\"country\":\"Egypt\",\"city\":\"Alexandria\",\"postal_code\":\"1255\",\"phone\":\"01236577777777\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 296.40, 0.00, '20210613-13440851', 1623584648, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-13 17:44:08', '2021-06-13 17:45:15'),
(67, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 6156.00, 0.00, '20210614-13335745', 1623670437, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-06-14 17:33:57', '2021-06-14 17:38:43'),
(68, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'picked', 1482.00, 0.00, '20210614-13491975', 1623671359, 1, 1, 1, 0, 'home_delivery', 0.00, NULL, '2021-06-14 17:49:19', '2021-06-19 13:25:39'),
(69, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'cancelled', 1482.00, 0.00, '20210630-15324360', 1625059963, 1, 1, 1, 0, 'home_delivery', 0.00, NULL, '2021-06-30 19:32:43', '2021-07-03 16:47:46'),
(70, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 2964.00, 0.00, '20210703-12471282', 1625309232, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-07-03 16:47:12', '2021-07-03 17:12:14'),
(71, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'customer_not_found', 1482.00, 0.00, '20210703-12583647', 1625309916, 1, 1, 1, 0, 'home_delivery', 0.00, NULL, '2021-07-03 16:58:36', '2021-07-03 17:02:31'),
(72, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"Cairo\",\"country\":\"Egypt\",\"city\":\"cairo\",\"postal_code\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 36\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 1482.00, 0.00, '20210706-10412010', 1625560880, 1, 1, 1, 1, 'home_delivery', 0.00, NULL, '2021-07-06 14:41:20', '2021-07-06 14:43:22'),
(73, 80, NULL, '{\"name\":\"mohamed hussein\",\"email\":\"m.hussain.waritex@gmail.com\",\"address\":\"teste address\",\"country\":\"3\",\"city\":\"95\",\"postal_code\":\"1236\",\"phone\":\"01157809060\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1527.00, 0.00, '20210710-08224588', 1625898165, 1, 0, 0, 0, 'home_delivery', 45.00, NULL, '2021-07-10 12:22:45', '2021-07-10 14:26:40'),
(74, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1522.00, 0.00, '20210710-10252763', 1625905527, 1, 1, 1, 0, 'home_delivery', 40.00, 1, '2021-07-10 14:25:27', '2021-07-10 17:46:11'),
(75, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 3232.00, 0.00, '20210710-10473328', 1625906853, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2021-07-10 14:47:33', '2021-07-10 14:56:27'),
(76, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'unpaid', NULL, 'pending', 1522.00, 0.00, '20210710-10484390', 1625906923, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2021-07-10 14:48:43', '2021-07-10 17:46:05'),
(77, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'unpaid', NULL, 'pending', 1522.00, 0.00, '20210710-10485996', 1625906939, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2021-07-10 14:48:59', '2021-07-10 17:45:54'),
(78, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'paid', NULL, 'delivered', 1522.00, 0.00, '20210710-10492911', 1625906969, 1, 1, 1, 1, 'home_delivery', 40.00, NULL, '2021-07-10 14:49:29', '2021-07-10 15:39:55'),
(79, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'paid', NULL, 'pending', 1522.00, 0.00, '20210710-14424021', 1625920960, 1, 0, 0, 1, 'home_delivery', 40.00, NULL, '2021-07-10 18:42:40', '2021-07-10 18:43:12'),
(80, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'unpaid', NULL, 'pending', 1522.00, 0.00, '20210710-14503258', 1625921432, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2021-07-10 18:50:32', '2021-07-10 20:49:30'),
(81, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'paid', NULL, 'delivered', 1522.00, 0.00, '20210710-14504766', 1625921447, 1, 0, 0, 1, 'home_delivery', 40.00, NULL, '2021-07-10 18:50:47', '2021-07-10 20:53:04'),
(82, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 3232.00, 0.00, '20210711-10394283', 1625992782, 1, 1, 1, 1, 'home_delivery', 40.00, NULL, '2021-07-11 14:39:42', '2021-07-11 14:42:46'),
(83, 9, NULL, '{\"name\":\"Super Admin\",\"email\":\"mohamed.hussain@waritex.org\",\"address\":\"zxdasdas\",\"country\":\"2\",\"city\":\"60\",\"postal_code\":\"0000\",\"phone\":\"01021443985\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20211213-09244381', 1639380283, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2021-12-13 07:24:43', '2021-12-13 07:24:43'),
(84, 9, NULL, '{\"name\":\"Super Admin\",\"email\":\"mohamed.hussain@waritex.org\",\"address\":\"zxdasdas\",\"country\":\"2\",\"city\":\"60\",\"postal_code\":\"0000\",\"phone\":\"01021443985\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20211213-09263573', 1639380395, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2021-12-13 07:26:35', '2021-12-13 07:26:35'),
(85, 9, NULL, '{\"name\":\"Super Admin\",\"email\":\"mohamed.hussain@waritex.org\",\"address\":\"zxdasdas\",\"country\":\"2\",\"city\":\"60\",\"postal_code\":\"0000\",\"phone\":\"01021443985\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1066.00, 0.00, '20211213-09270638', 1639380426, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2021-12-13 07:27:06', '2021-12-13 07:28:01'),
(86, 87, NULL, '{\"name\":\"Alaa Mahmoud\",\"email\":\"alaa.alshafey123@gmail.com\",\"address\":\"hehia\",\"country\":\"20\",\"city\":\"306\",\"postal_code\":\"0000\",\"phone\":\"012121394777\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 734.00, 0.00, '20211213-11013084', 1639386090, 1, 1, 1, 1, 'home_delivery', 50.00, 1, '2021-12-13 09:01:30', '2021-12-13 12:47:45'),
(87, 87, NULL, '{\"name\":\"Alaa Mahmoud\",\"email\":\"alaa.alshafey123@gmail.com\",\"address\":\"hehia\",\"country\":\"20\",\"city\":\"306\",\"postal_code\":\"0000\",\"phone\":\"012121394777\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 357.80, 0.00, '20211218-13415876', 1639827718, 1, 0, 0, 1, 'home_delivery', 50.00, NULL, '2021-12-18 11:41:58', '2021-12-18 12:10:01'),
(88, 87, NULL, '{\"name\":\"Alaa Mahmoud\",\"email\":\"alaa.alshafey123@gmail.com\",\"address\":\"hehia\",\"country\":\"20\",\"city\":\"306\",\"postal_code\":\"0000\",\"phone\":\"012121394777\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 209.60, 0.00, '20211219-09131998', 1639897999, 0, 0, 0, 0, 'home_delivery', 50.00, NULL, '2021-12-19 07:13:19', '2021-12-19 07:13:19'),
(89, 87, NULL, '{\"name\":\"Alaa Mahmoud\",\"email\":\"alaa.alshafey123@gmail.com\",\"address\":\"hehia\",\"country\":\"20\",\"city\":\"306\",\"postal_code\":\"0000\",\"phone\":\"012121394777\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 209.60, 0.00, '20211219-09145251', 1639898092, 0, 0, 0, 0, 'home_delivery', 50.00, NULL, '2021-12-19 07:14:52', '2021-12-19 07:14:52'),
(90, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'wallet', 'paid', NULL, 'pending', 1408.00, 0.00, '20220109-17325636', 1641742376, 1, 1, 1, 1, 'home_delivery', 40.00, NULL, '2022-01-09 15:32:56', '2022-01-10 13:07:03'),
(91, 80, NULL, '{\"name\":\"mohamed hussein\",\"email\":\"m.hussain.waritex@gmail.com\",\"address\":\"teste address\",\"country\":\"3\",\"city\":\"95\",\"postal_code\":\"1236\",\"phone\":\"01157809060\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'picked', 1304.70, 0.00, '20220110-15042390', 1641819863, 1, 0, 0, 0, 'home_delivery', 45.00, NULL, '2022-01-10 13:04:23', '2022-01-10 13:07:03'),
(92, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 3004.00, 0.00, '20220127-14141929', 1643285659, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-01-27 12:14:19', '2022-01-27 12:15:26'),
(93, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1522.00, 0.00, '20220127-14171198', 1643285831, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-01-27 12:17:11', '2022-01-27 12:17:28'),
(94, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 2548.00, 0.00, '20220208-15290583', 1644326945, 1, 1, 1, 1, 'home_delivery', 40.00, NULL, '2022-02-08 13:29:05', '2022-02-08 13:57:56'),
(99, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220208-15453694', 1644327936, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:45:36', '2022-02-08 13:45:36'),
(100, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220208-15461677', 1644327976, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:46:16', '2022-02-08 13:46:16'),
(101, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220208-15470461', 1644328024, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:47:04', '2022-02-08 13:47:04'),
(102, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220208-15475035', 1644328070, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:47:50', '2022-02-08 13:47:50'),
(103, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220208-15492026', 1644328160, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:49:20', '2022-02-08 13:49:20'),
(104, 77, NULL, '{\"name\":\"Eman Elsoudi\",\"email\":\"emanelsoudi12322@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\",\"country\":\"1\",\"city\":\"54\",\"postal_code\":\"123456\",\"phone\":\"01145495144\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'customer_not_found', 3232.00, 0.00, '20220208-15492974', 1644328169, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2022-02-08 13:49:29', '2022-02-08 13:58:03'),
(107, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16025279', 1644933772, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:02:52', '2022-02-15 14:02:52'),
(108, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16030841', 1644933788, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:03:08', '2022-02-15 14:03:08'),
(109, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16033956', 1644933819, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:03:39', '2022-02-15 14:03:39'),
(110, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16044447', 1644933884, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:04:44', '2022-02-15 14:04:44'),
(111, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'cancelled', 4486.00, 0.00, '20220215-16055460', 1644933954, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:05:54', '2022-02-19 19:26:35'),
(112, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16071371', 1644934033, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:07:13', '2022-02-15 14:07:13'),
(113, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16074264', 1644934062, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:07:42', '2022-02-15 14:07:42'),
(114, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', NULL, 0.00, '20220215-16294845', 1644935388, 0, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-15 14:29:48', '2022-02-15 14:29:48'),
(115, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 1066.00, 0.00, '20220215-16392537', 1644935965, 1, 0, 0, 1, 'home_delivery', 40.00, NULL, '2022-02-15 14:39:25', '2022-02-19 15:31:08'),
(116, 75, NULL, '{\"name\":\"Ismail Elbahrawy\",\"email\":\"ismail@mtd-llc.com\",\"address\":\"address\",\"country\":\"2\",\"city\":\"58\",\"postal_code\":\"11242\",\"phone\":\"0428723876\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 3232.00, 0.00, '20220216-15401779', 1645018817, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-16 13:40:17', '2022-02-16 13:50:15'),
(117, 75, NULL, '{\"name\":\"Ismail Elbahrawy\",\"email\":\"ismail@mtd-llc.com\",\"address\":\"address\",\"country\":\"2\",\"city\":\"58\",\"postal_code\":\"11242\",\"phone\":\"0428723876\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1066.00, 0.00, '20220216-16184190', 1645021121, 1, 1, 1, 0, 'home_delivery', 40.00, NULL, '2022-02-16 14:18:41', '2022-02-16 14:21:33'),
(118, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 2662.00, 0.00, '20220219-20494476', 1645296584, 1, 0, 0, 1, 'home_delivery', 40.00, NULL, '2022-02-19 18:49:44', '2022-02-19 18:54:56'),
(119, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 'delivered', 2320.00, 0.00, '20220219-20560488', 1645296964, 1, 0, 0, 1, 'home_delivery', 40.00, NULL, '2022-02-19 18:56:04', '2022-02-19 18:57:00'),
(120, 91, NULL, '{\"name\":\"kareem omar\",\"email\":\"kareem@gmail.com\",\"address\":\"6 oqtober\",\"country\":\"2\",\"city\":\"59\",\"postal_code\":\"11242\",\"phone\":\"01094976280\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 'pending', 1180.00, 0.00, '20220221-14172621', 1645445846, 1, 0, 0, 0, 'home_delivery', 40.00, NULL, '2022-02-21 12:17:26', '2022-02-21 12:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20,2) DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `item_status` varchar(15) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `at_stock` int(3) NOT NULL DEFAULT 0,
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0,
  `is_refunded` tinyint(3) NOT NULL DEFAULT 0,
  `refund_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `bank_acc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `item_status`, `at_stock`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `is_deleted`, `is_refunded`, `refund_type`, `bank_id`, `bank_acc`, `created_at`, `updated_at`) VALUES
(79, 61, 75, 78, 'OrangeRed-M', 3900.00, 546.00, 0.00, 3, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-13 15:37:41', '2021-06-13 16:02:01'),
(80, 62, 75, 75, 'Black-S', 2800.00, 392.00, 0.00, 1, 'unpaid', 'cancelled', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-13 15:50:50', '2021-06-13 15:55:56'),
(82, 63, 75, 73, 'Gray-S', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'not_available', 0, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-06-13 16:47:01', '2021-06-13 16:56:27'),
(84, 64, 75, 73, 'Gray-S', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-13 16:57:39', '2021-06-13 17:03:53'),
(85, 65, 75, 75, 'Black-S', 2800.00, 392.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-13 17:37:13', '2021-06-13 17:41:29'),
(87, 67, 75, 74, 'OrangeRed-S', 2600.00, 364.00, 0.00, 2, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-14 17:33:57', '2021-06-14 17:37:58'),
(88, 67, 75, 75, 'Black-S', 2800.00, 392.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-14 17:33:57', '2021-06-14 17:37:58'),
(89, 68, 75, 73, 'Gray-S', 1300.00, 182.00, 0.00, 1, 'unpaid', 'picked', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-14 17:49:19', '2021-06-14 17:52:17'),
(90, 69, 75, 73, 'Gray-M', 1300.00, 182.00, 0.00, 1, 'unpaid', 'cancelled', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-06-30 19:32:43', '2021-07-03 16:44:14'),
(91, 70, 75, 76, 'OrangeRed-M', 2600.00, 364.00, 0.00, 2, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-03 16:47:12', '2021-07-03 16:52:58'),
(92, 71, 75, 76, 'OrangeRed-M', 1300.00, 182.00, 0.00, 1, 'unpaid', 'customer_not_found', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-03 16:58:36', '2021-07-03 17:02:31'),
(93, 72, 75, 76, 'OrangeRed-M', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-06 14:41:20', '2021-07-06 14:43:03'),
(94, 73, 75, 87, 'S', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'not_available', 0, NULL, NULL, NULL, 0, 1, '1', NULL, NULL, '2021-07-10 12:22:45', '2022-02-08 14:19:55'),
(95, 74, 75, 88, 'OrangeRed-S', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 14:25:27', '2021-07-10 14:28:59'),
(96, 75, 75, 75, 'Black-S', 2800.00, 392.00, 0.00, 1, 'unpaid', 'pending', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 14:47:33', '2021-07-10 14:47:33'),
(97, 76, 75, 77, 'White-M', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 14:48:43', '2021-07-10 14:48:43'),
(98, 77, 75, 77, 'White-M', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 14:48:59', '2021-07-10 16:55:55'),
(99, 78, 75, 77, 'White-M', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '2021-07-10 14:49:29', '2021-07-10 15:38:07'),
(100, 79, 75, 78, 'OrangeRed-M', 1300.00, 182.00, 0.00, 1, 'paid', 'pending', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 18:42:40', '2021-07-10 18:44:15'),
(101, 80, 75, 76, 'OrangeRed-M', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 18:50:32', '2021-07-10 18:50:32'),
(102, 81, 75, 76, 'OrangeRed-M', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-10 18:50:47', '2021-07-10 20:53:04'),
(103, 82, 75, 75, 'Black-S', 2800.00, 392.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-07-11 14:39:42', '2021-07-11 14:42:01'),
(104, 85, 85, 108, 'AntiqueWhite', 900.00, 126.00, 0.00, 6, 'unpaid', 'pending', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-13 07:27:06', '2021-12-13 07:27:06'),
(105, 86, 85, 110, 'AliceBlue', 600.00, 84.00, 0.00, 4, 'paid', 'delivered', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-13 09:01:30', '2021-12-13 12:39:52'),
(106, 87, 85, 110, 'AliceBlue', 270.00, 37.80, 0.00, 2, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-18 11:41:58', '2021-12-18 12:10:01'),
(107, 88, 85, 110, 'AliceBlue', 140.00, 19.60, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-19 07:13:19', '2021-12-19 07:13:19'),
(108, 89, 85, 110, 'AliceBlue', 140.00, 19.60, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-19 07:14:52', '2021-12-19 07:14:52'),
(109, 90, 75, 81, 'DarkRed-M', 1200.00, 168.00, 0.00, 1, 'paid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-09 15:32:56', '2022-01-09 15:33:04'),
(110, 91, 75, 74, 'OrangeRed-S', 1105.00, 154.70, 0.00, 1, 'unpaid', 'picked', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-10 13:04:23', '2022-01-10 13:05:43'),
(111, 92, 75, 77, '', 2600.00, 364.00, 0.00, 2, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-27 12:14:20', '2022-01-27 12:14:20'),
(112, 93, 75, 77, 'White-XL', 1300.00, 182.00, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-27 12:17:11', '2022-01-27 12:17:11'),
(113, 94, 75, 77, '', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 1, '1', NULL, NULL, '2022-02-08 13:29:05', '2022-02-08 14:26:14'),
(114, 94, 91, 117, '', 900.00, 126.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-08 13:29:06', '2022-02-08 13:36:26'),
(115, 104, 75, 71, '', 2800.00, 392.00, 0.00, 1, 'unpaid', 'customer_not_found', 'not_available', 0, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2022-02-08 13:49:29', '2022-02-08 13:54:45'),
(116, 111, 75, 73, '', 3900.00, 546.00, 0.00, 3, 'unpaid', 'cancelled', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-15 14:05:54', '2022-02-19 19:25:28'),
(117, 115, 91, 116, '', 900.00, 126.00, 0.00, 1, 'paid', 'delivered', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-15 14:39:26', '2022-02-19 15:31:07'),
(118, 116, 75, 121, '', 1000.00, 140.00, 0.00, 2, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-16 13:40:17', '2022-02-16 13:40:17'),
(119, 116, 75, 122, '', 1800.00, 252.00, 0.00, 2, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-16 13:40:18', '2022-02-16 13:40:18'),
(120, 117, 75, 122, 'AliceBlue', 900.00, 126.00, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-16 14:18:41', '2022-02-16 14:18:41'),
(121, 118, 91, 117, '', 1000.00, 140.00, 0.00, 1, 'paid', 'delivered', 'available', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-19 18:49:44', '2022-02-19 18:54:55'),
(122, 118, 75, 77, '', 1300.00, 182.00, 0.00, 1, 'paid', 'delivered', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-19 18:49:44', '2022-02-19 18:54:55'),
(123, 119, 91, 115, '', 2000.00, 280.00, 0.00, 2, 'paid', 'delivered', 'available', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-19 18:56:04', '2022-02-19 18:57:00'),
(124, 120, 91, 116, '', 1000.00, 140.00, 0.00, 1, 'unpaid', 'pending', 'pending', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-21 12:17:26', '2022-02-21 12:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20');
INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(2, 'seller_policy_page', 'كيفية البيع على أرخص', 'sellerpolicy', '<p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p><p class=\"MsoNormal\" align=\"right\"><span style=\"font-size:\r\n20.0pt;line-height:107%\"> </span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-size:20.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;=\"\" mso-bidi-language:ar-eg\"=\"\">الاشتراطات والسياسات العامة للبيع علي ارخص<o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أولا المعلومات\r\nاللازمة لإنشاء حسابك:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">عنوان\r\nالبريد الإلكتروني ورقم الهاتف</span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بيانات\r\nتفصيلية لشركتك (العنوان، الاسم القانوني, اسم المتجر باللغة الانجليزية وغيرهم)<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> بيانات\r\nتفصيلية للحساب البنكي<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سيتوجب\r\nعليك إمضاء </span><span dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%\"><a href=\"https://drive.google.com/uc?export=download&id=1onpfCnk6fkuKgSb8sovfJ98m-B-Hpyhf\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">العقد الخاص أرخص</span></a></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> في\r\nنسختيه “<b>الورقيه والإلكترونية</b>” خلال 30 يوم من بدأ البيع على أرخص لتجنب\r\nإيقاف الحساب<br>\r\n-العقد يجب أن يكون نسخة ورقية يتم تسليمها في مقر الشركة او لمندوب  أرخص<br>\r\n– يجب الإمضاء على كل الصفحات<br>\r\n– في حالة كون المتجر خاص بمنشأة تجارية يجب الإمضاء بالإضافة لختم المنشأة، بينما\r\nيكون الإمضاء كافي في حالة الحساب الفردي<br>\r\n– يجب أن يكون السجل التجاري والبطاقة الضريبية هم أحدث نسخة<br>\r\n– يجب ان يكون الموقع على العقد اسمه موجود في السجل التجاري و له حق التوقيع<br>\r\n– يرجى كتابة اسم الشخص (ممثل الشركة/ او صاحب الحساب على أرخص) رباعي بوضوح وبدون\r\nصيغة امضاء<br>\r\n– يرجى كتابة الاسم رباعى في نهاية كل صفحة من العقد بوضوح دون صيغة امضاء<br>\r\n– التوقيع هو البند الوحيد المسموح فيه بصيغة امضاء<br>\r\n– يرجى الحرص على عدم وجود اي علامات شطب او تصليح اخطاء كتابية تماماً في اي جزء\r\nاو مكان في العقد.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثانيا\r\nتكلفة البيع على أرخص:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ا</span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لتسجيل\r\nعلى أرخص مجاني لجميع البائعين على المتجر<o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثالثا\r\nادارة البائع لمتجره على أرخص:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالمخزون وتحديث قوائم المنتجات.</span></b><b><span style=\"font-size:16.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالمنتجات المباعة من على المتجر وخط سيرها الى العميل والعكس في حالة المرتجعات.</span><span style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالتاجر لتقييم العملاء لمنتجره.</span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ا</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لأشتراك\r\nبحملات دعائية مع أرخص</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.<b><u><o:p></o:p></u></b></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">رابعا\r\nكيفيةادراج المنتجات بالقائمة:</span></u></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><u><span lang=\"AR-SA\" style=\"font-size:14.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span></u></b><b><u><span style=\"font-size:14.0pt;line-height:\r\n107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لكل\r\nتاجر على موقع أرخص صفحة يتحم من خلالها على المنتجات التي يتم عرضها , يتم اضافة\r\nالمنتجات بصورة فردية او من خلال الملف المجمع :<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بصورة فردية:</span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">يتم ذلك بالدخول على قائمة المنتجات\r\nوالضغط على إضافة منتج جديد ثم إدخال جميع بيانات المنتج مع التأكد من صحتها\r\nوإستيفاء كامل البيانات.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بصورة مجمعة:</span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ويتم ذلك م خلال قائمة تحميل مجمع\r\nللمنتج وذلك بتجميل ملف الاكسيل للمنتجات المجمعه ثم ادخال البيانات المذكورة في\r\nملف الاكسيل لكل منتج على حدى ثم رفع الملف مرة اخرى على الموقع ويتبقى فقط ادخال\r\nصور المنتجات بالدخول على كل منتج على حدى وإضافة الصورة الخاصة بها.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:\r\n16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">خامسا\r\nكيفية معالجة الطلب:</span></u></b></p><p class=\"MsoListParagraph\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بمجرد طلب العميل للمنتج الخاص بك امامك 24 ساعة\r\nلتجهيز الطلب لمندوب موقع أرخص لاستلام المنتج المطلوب من العنوان المسجل في\r\nبيانات الحساب على أرخص والتأكد من مطابقة المنتج من حيث النوع والمقاس واللون\r\nوالكمية كما ورد في بيانات الطلب.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سادسا\r\nفحص المنتج قبل عرضه على أرخص<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قبل عرض المنتج على الموقع يقوم فريق\r\nالجودة من التأكد من موافاة منتج البائع للشروط الخاصة بأرخص وتنحصرأسباب الرفض في\r\nالأتي:<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– معلومات ممنوع وجودها في الصورة (السعر –\r\nالعلامة – أرقام للإتصال)</span><span dir=\"LTR\" style=\"font-size:16.0pt;\r\nline-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span dir=\"RTL\"></span><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      \r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nصورة غير متوافقة مع التعليمات<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– تفاصيل تقنية غير كافية<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– صورة مشوشة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج مُكرر<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج بنقاط محتوى قليلة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– سعر غير مُصرح به<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– إنشاء ملف جديد للمنتجات<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– وصف غير مُطابق<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لم يتم الخضوع إلى قياسات وصف المنتج<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لا يوجد وصف<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– تم إدخال العلامة التجارية مرتين في العنوان<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لا توجد صورة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– علامة تجارية غير مُطابقة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج/ علامة تجارية مُزيفة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– فئة خاطئة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج غير مُصرح به<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سابعا\r\nكيفية شحن الطلب:<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">على البائع ان يقوم بتجهيز الطلب في عبوات جاهزة\r\nللشحن على ان يتوقف دور فريق أرخص بمراجعة الشحنة مع فاتورة البيع المصدرة من\r\nالموقع ووضع الشحنة في الفلاير الخاص بمتجر أرخص ان امكن وإرفاق </span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size:16.0pt;\r\nline-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>   <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بوليصة الشحن والفاتورة.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثامنا\r\nالمرتجعات<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -27pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:\r\n16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;\r\nmso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>  </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لزيادة رضا العميل، تقبل أرخص\r\nالمنتجات المُرتجعة فى الحالات الآتية:</span><span dir=\"LTR\" style=\"font-size:\r\n16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -22.5pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span dir=\"RTL\"></span><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">    </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\">   </span><span lang=\"AR-SA\" style=\"font-size:\r\n16.0pt;line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">المنتج ليس هو\r\nالذى تم طلبه<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -22.5pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">         \r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:\r\n107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">المنتج به عيب يتم استرداد العميل\r\nالمبلغ ومصاريف الشحن خلال مدة تصل إلى 30 يوم مع تحمل البائع مصاريف الشحن<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; text-indent: -9pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\"> </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\">  </span><span lang=\"AR-SA\" style=\"font-size:\r\n16.0pt;line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بالإضافة إلى\r\nأن أرخص لديها التزام قانوني مما يوفر للعميل 14 يوم يحق له فيه تغيير رأيه دون\r\nالحاجة لإبداء أسباب</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p> </o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ومع\r\nذلك لا يمكن للعميل أن يرجع المنتجات من هذه الفئات:<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nالملابس الداخلية وملابس السباحة والجيم والنوم والجوارب<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nالعطور والكسسوارات ومستحضرات التجميل<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">فى\r\nحالة تغيير العميل رأيه بشأن المنتج، يجب أن يتم إرجاعه بنفس حالته الأصلية..<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تاسعا\r\nالمدفوعات:</span></u></b><b><u><span style=\"font-size:18.0pt;line-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قبل ان\r\nنعرف كيف تستلم مدفوعاتك, عليك ان تتأكد انك قد قمت بتسليم العقد الخاص بالبائع\r\nوقمت بملء البيانات وفقا للجدول التالي:</span></u></b><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></b></p><div align=\"right\">\r\n\r\n<table class=\"MsoTableGrid\" dir=\"rtl\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"773\" style=\"width: 579.45pt; border: none;\">\r\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البيانات المطلوبة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border:solid windowtext 1.0pt;\r\n  border-right:none;mso-border-right-alt:solid windowtext .5pt;mso-border-alt:\r\n  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">التوضيح المطلوب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:1;height:20.6pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم الشركة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">يجب التسجيل بإسم الشركة المسجل\r\n  بالسجل التجاري(لن يقبل العقد في حالة عدم توافق الإسمين)<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:2;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البطاقة الضريبية<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">موضح بها رقم البطاقة الضريبية<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:3;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">السجل التجاري <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">موضح بها رقم السجل التجاري <o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:4;height:41.8pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:41.8pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم ممثل الشركة أو صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:41.8pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم ممثل الشركة لإدارة الحساب او\r\n  اسم صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:5;height:42.4pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البطاقة الشخصية لصاحب الحساب او\r\n  مثل الشركة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">رقم بطاقة الشخص الموقع على العقد\r\n  او صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:6;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم الحساب على الموقع <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم المتجر المراد انشائه عل متجر\r\n  أرخص<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:7;height:20.6pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البريد الالكتروني <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">عنوان البريد الالكتروني المراد\r\n  تفعيل الحساب على أرخص من خلاله<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:8;mso-yfti-lastrow:yes;height:42.4pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تفويض الشركات <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">على الشركات تقديم تفويض للشخص\r\n  المخول بإدارة الحساب على متجر أرخص مختوم من الشركة<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div><p class=\"MsoNormal\"><b><u><span style=\"font-size:18.0pt;line-height:107%\"> </span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>1.\r\nاضف بياناتك البنكية</span></u></b><b><u><span style=\"font-size:18.0pt;\r\nline-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nإدخال بياناتك البنكية أمر إلزامي بالنسبة لنا حتى نتمكن من تحويل أموالك.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">– يجب\r\nعليك إضافة البيانات من خلال الدخول على لوحة التحكم --- إعدادات المتجر ---بيانات\r\nالحساب البنكي</span><span style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nجميع البيانات التالية مطلوبة:<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم\r\nالبنك - إسم صاحب الحساب - رقم الحساب - \r\nرقم الاي بان <o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">2</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">. تلقي\r\nطلب شراء</span></u></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سيضيف\r\nكل طلب شراء جديد مبلغ مالي إلى كشف حسابك ، مع خصم الرسوم المُطبقة.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">3</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.\r\nانتظر حتى توافر المال</span></u></b><b><u><span style=\"font-size:18.0pt;\r\nline-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>– يتم\r\nتحويل عائدات البيع على أرخص بعد اول شهر من فتح الحساب على أرخص ثم يتم التحويل\r\nإسبوعيا أو في حالة وصول الرصيد إلى 2500 جنيه مصري أيهما أقرب.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">– سوف\r\nتتلقي المبلغ في خلال الإطار الزمني المُحدد خلال أول شهرفقط ستكون المدفوعات\r\nشهرية <o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nيمكنك رؤية المبالغ المُعلقة في أقسام “قيد التنفيذ” و”فتح بيان حساب” في كشف\r\nالحساب.</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">4</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">. تلقى\r\nالأموال تلقائيًا على حسابك البنكي</span></u></b><b><u><span style=\"font-size:\r\n18.0pt;line-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"text-indent: 9pt;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span> </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سنقوم\r\nبتحويل المبلغ المستحق الدفع الى الحساب البنكي المذكور في حسابك على أرخص مع رفع\r\nصورة اشعار التحويل</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البنكي كدليل على التحويل </span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>- </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nيمكنك إيجاد تفاصيل المدفوعات المُضافة (الرصيد) أو المخصوم (الرسوم) على “كشف\r\nالحساب” في الحساب الخاص بك.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p> </o:p></span></p><p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p>', NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2022-02-09 10:49:14');
INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(3, 'return_policy_page', 'سياسة الإسترجاع', 'returnpolicy', '<p class=\"MsoNormal\"><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;\r\nmso-bidi-language:AR-EG\"><o:p>&nbsp;</o:p></span><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">سياسة الاسترجاع للمشتري</span></u></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">:</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">يمكنك عمل طلب استرجاع لمنتجات أرخص خلال(&nbsp; </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:red;background:\r\nwhite\">14يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">) يوم فى حالات\r\nعيوب الصناعة من وقت وصول الطلب</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">عند إرجاع المنتج, تأكد من\r\nوجود جميع الملحقات الخاصة بالطلب بحالتها السليمة و ان المنج فى عبوته الاصلية.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"background:white\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">كما موضح فى الجدول الاتى\r\nالفئات الغير القابلة للارتجاع:- <o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">1-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الملابس&nbsp; الداخلية</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">2-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الجوارب الرجالي والحريمي</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">3-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">مستحضرات التجميل والعطور</span><span lang=\"AR-SA\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:6.4pt;margin-right:0in;margin-bottom:6.4pt;\r\nmargin-left:0in;line-height:normal;mso-outline-level:4;background:#FFF7E9\"><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرجاع منتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">يمكنكم اللآن إرجاع المنتج الخاص بكم من خلال الموقع باتباع الخطوات\r\nالآت</span><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">ي</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">تسجيل الدخول والضغط على الطلبات ثم الضغط على الطلب\r\nالذي يشمل المنتجات التي تريد ارجاعها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختارعدد المنتجات التي تريد ارجاعها , و تحديد سبب\r\nالارتجاع بالتفصيل لمساعدتنا في حل مشكلة المنتج (يفضل الحاق صورة بالسبب ان وجد)</span><br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختار طريقة الاسترداد التي تفضلها (مثال: فى حالة الدفع\r\nمسبقا, برجاء اختيار نفس الطريقة لاسترداد المبلغ)اختار كيفية تسليم المنتج\r\nالمطلوب استرجاعه</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">راجع بياناتك و قدم طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الاتصال بخدمة العملاء على ( </span></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">متى يمكن إرجاع المنتجات إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">جميع المنتجات المباعة على أرخص، في حالات معينة، يمكن استرجاعها في\r\nخلال( </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">14 يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">) </span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يمكن استرجاع المنتج فى أى حالة؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا&nbsp;&nbsp;&nbsp; , يجب ارجاع المنتج فى\r\nحالته الأصلية التى تم الاستلام بها, فى حالة استلام شحنة تالفة برجاء التأكد من\r\nذكر هذا عند طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرسال المنتج إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بعد تأكيد طلب الاسترجاع, سوف يتم استلام المرتجع من العنوان المسجل\r\nلدينا<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">تم تسجيل طلب الاسترجاع ، لكن لم يأت أحد وقد مضى\r\nوقت طويل ، فماذا أفعل؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعتذر عن هذا. يرجى تقديم طلبك على تواصل معنا من خلال صفحة دعم\r\nالعميل على الحساب الخاص بك او من خلال التواصل تليفونيا على </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">(</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"> </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">إذا تم تأكيد طلب استرداد قيمة المشتريات الخاص\r\nبي، كيف ومتى يتم رد قيمة المشتريات؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تبدأ عملية رد قيمة المنتج إلى العميل بعد نتيجة فحص جودة المنتج\r\nالمرتجع و قبوله. تستغرق عملية فحص الجودة مدة أقصاها4&nbsp; أيام عمل من تاريخ استلام (أرخص) للمنتج\r\nالمرتجع. بعد الإنتهاء من عملية الفحص, نقوم باخطارك من خلال رسالة عبر البريد\r\nالإلكتروني</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الحصول على المبلغ المدفوع في شكل قسيمة شراء خلال\r\n24 ساعة و استخدامها لاحقاً للشراء من أرخص. اختيار تلك الوسيلة متاح أثناء تقديم\r\nطلب على الإنترنت أو من خلال الإتصال بخدمة العملاء، و تعتبر هي الأسرع لاسترداد\r\nقيمة المنتج المرتجع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">بخلاف ذلك، يتم رد المبلغ المدفوع وفقًا للجدول التالي.\r\nو تختلف طرق استرداد قيمة المشتريات وفقًا لطريقة الدفع<o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">علما بأنه في حالة اختيار قسيمة للشراء لا يمكننا اعاده استبدال\r\nالقسيمة بالمبلغ نقدي مرة أخرى</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>,<b>&nbsp;.</b><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق استرداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق الدفع المستخدمة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء (محفظتي)</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الدفع عند الاستلام</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة إئتمان خلال 7-14 يوم </span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بطاقة إئتمان</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal;background:#FFF7E9\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الوقت المستغرق بعد انتهاء فحص الجودة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طريقة إسترداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>24\r\n  ساعة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء(محفظتي)</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>7-14\r\n  يوم عمل</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة\r\n  ائتمانية</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:6.4pt;line-height:normal;background:\r\n#FFF7E9\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ارجاع الهدية المجانية فى حالة طلب استرجاع\r\nالمنتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعم. يجب استرجاع الهدية المجانية</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ان ادفع مصاريف شحن فى حالة ارجاع الطلب ؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا يوجد اى مصاريف شحن يتحملها المشتري فى حالة ارجاع الطلب اذا كان\r\nالطلب به عيوب او غير متوافق مع ما هو متفق عليه في عملية البيع, اما في حالة\r\nتغيير العميل لرأيه في تلك الحالة يتحمل المشتري تكلفة الشحن.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;اذا قمت\r\nبشراء منتج أثناء التخفيضات أو باستخدام قسيمة شراء. ما هي القيمة التي يتم\r\nإعادتها لي؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">للمنتجات التي يتم شرائها أثناء التخفيضات، سيتم رد نفس القيمة\r\nالمدفوعة إليك وليس القيمة الأصلية للمنتج</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">على سبيل المثال: إذا قمت بشراء منتجًا أثناء التخفيضات\r\nبقيمة 20 جنيهاً وقيمته الأساسية كانت 40 جنيهاً، سيتم رد قيمة 20 جنيهاً إليك.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\"><o:p>&nbsp;</o:p></p>', NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2021-06-21 11:02:29'),
(4, 'support_policy_page', 'Support Policy Page', 'supportpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2020-11-04 10:15:29'),
(6, 'privacy_policy_page', 'Privacy Policy Page', 'privacypolicy', '<p>testtetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetet</p>', NULL, NULL, NULL, NULL, '2020-11-04 10:15:55', '2021-05-29 19:54:43'),
(7, 'custom_page', 'كيفية الشراء علي ارخص', 'howtobuyfromar5as', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">&nbsp;</span></b><b><u><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">ابحث وتصفح المنتجات</span></u></b><b><u><span dir=\"LTR\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لدينا مجموعة\r\nكبيرة من المنتجات الرائعة للاختيار من بينها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     تبحث عن منتج معين، استخدم صندوق البحث الذي يقع في الجزء العلوي من الموقع.\r\n     ببساطة أدخل ما تريد البحث عنه، و ستحصل على نتائج مدهشة</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>!<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     ترغب في تصفح فئة منتجات معينة، استخدم قائمة \"تصفح جميع الفئات\"،\r\n     وتنقل بين الفئات المفضلة لديك و نحن سنقدم لك أفضل المنتجات في كل منها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أو فقط قم\r\n     بالتصفح من خلال الصفحة الرئيسية لدينا و استعد للمفاجآت من أحدث وأفضل\r\n     الصفقات في مدينتك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     4</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أثناء\r\n     التصفح و البحث، تحقق من المعلومات الأساسية التي نعرضها تحت كل منتج. يمكنك\r\n     أيضاً استخدام خيارات التصنيف المختلفة على اليسار لتحديد النتائج التي تناسب\r\n     احتياجاتك - وفقاً لميزات المنتج و السعر. انقر على المنتج إذا كنت ترغب في\r\n     معرفة المزيد و الأضافه إلى عربة التسوق</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"2\"></a><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">2&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتعرف على المنتج، و قم بإضافته إلى العربة</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تحقق من تفاصيل\r\nالمنتج، الصور، المواصفات و تقييمات العملاء. نحن نقدم أفضل البائعين لذلك انقر\r\nعلى زر \"أضف إلى العربة\" إذا كان سعر و تقييم البائع يناسبك، أو اكتشف\r\nالمزيد من العروض لمزيد من الباعة و حالة منتجات مختلفة تناسب جميع احتياجاتك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"3\"></a><o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">3&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nمراجعة عربة التسوق الخاصة بك، و تسجيل الدخول للشراْ</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">استعرض\r\n     عربة التسوق و انقر على زر \"تابع عملية الشراء\". فقط تأكد من أن\r\n     جميع المنتجات التي ترغب في شرائها الآن موجودة في عربة التسوق، وتلك التي\r\n     ترغب في شرائها في وقت لاحق، إن وجدت، انتقلت إلى عربة \"السلع المحفوظة\r\n     لوقت لاحق</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     مستخدم حالي فقط قم بالدخول إلى حسابك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا لم\r\n     تسجل بعد يمكنك بكل سهولة القيام بذلك عن طريق تعبئة النموذج، أو مجرد\r\n     الاتصال عبر حساب الفيسبوك الخاص بك بنقرة زر واحدة بسيطة</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"4\"></a><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">4&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتأكيد طلبك</span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><br></span></b><b><span lang=\"AR-SA\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قم بتقديم\r\n     تفاصيل العنوان الخاص بك، حيث تريد توصيل طلبك، و انقر على زر \"حفظ</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".</span></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n</ul><p style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;نصيحة 2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">راجع العنوان المختار وفترة التسليم. انقر على زر\r\n\"تابع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".&nbsp;</span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; نصيحة 3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">اختر\r\nطريقة الدفع المفضلة لديك من خيارات الدفع المريحة الي نقدمها لك بما في ذلك الدفع\r\nعبر الإنترنت، أو دفع نقداً عند&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; الاستلام، وانقر على زر \"تابع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".&nbsp;</span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp;نصيحة\r\n4</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">راجع عربة التسوق، خيارات الشحن،\r\nوطريقة الدفع. انقر دفع لتأكيد الطلب</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">5&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتابع طلبك حتى يتم تسليمه على بابك</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تتساءل ماذا\r\nحدث لطلبك؟ لا تقلق، مع <b>أرخص</b> &nbsp;سيكون\r\nلديك خيار التحقق من عملية وصول الشحنة، لذلك يمكنك دائماً متابعة طلبك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أرخص </span></b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تعمل مع خدمات شحن موثوقة لتقديم\r\nمنتجاتك إلى بابك في أسرع وقت ممكن،</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span dir=\"LTR\"><o:p>&nbsp;</o:p></span></p>', NULL, NULL, NULL, NULL, '2021-06-21 10:17:03', '2021-06-21 10:20:52');
INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(8, 'custom_page', 'عقد البيع علي أرخص', 'ar5as-cotract', '<p>&nbsp;contract<a href=\"http://localhost/demo/files/contract.pdf\" target=\"_blank\">contrac</a></p>', NULL, NULL, NULL, NULL, '2021-06-21 11:36:44', '2021-06-21 11:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(1, 6, 'Privacy Policy Page', '<p>testtetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetettesttetteteetet</p>', 'en', '2021-05-29 19:54:43', '2021-05-29 19:54:43'),
(2, 2, 'سياسة الإسترجاع على أرخص', '<p>test copy</p>', 'en', '2021-06-14 18:35:07', '2021-06-21 10:47:29'),
(3, 7, 'كيفية الشراء علي ارخص', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">&nbsp;</span></b><b><u><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">ابحث وتصفح المنتجات</span></u></b><b><u><span dir=\"LTR\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لدينا مجموعة\r\nكبيرة من المنتجات الرائعة للاختيار من بينها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     تبحث عن منتج معين، استخدم صندوق البحث الذي يقع في الجزء العلوي من الموقع.\r\n     ببساطة أدخل ما تريد البحث عنه، و ستحصل على نتائج مدهشة</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>!<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     ترغب في تصفح فئة منتجات معينة، استخدم قائمة \"تصفح جميع الفئات\"،\r\n     وتنقل بين الفئات المفضلة لديك و نحن سنقدم لك أفضل المنتجات في كل منها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أو فقط قم\r\n     بالتصفح من خلال الصفحة الرئيسية لدينا و استعد للمفاجآت من أحدث وأفضل\r\n     الصفقات في مدينتك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l2 level1 lfo1;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     4</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أثناء\r\n     التصفح و البحث، تحقق من المعلومات الأساسية التي نعرضها تحت كل منتج. يمكنك\r\n     أيضاً استخدام خيارات التصنيف المختلفة على اليسار لتحديد النتائج التي تناسب\r\n     احتياجاتك - وفقاً لميزات المنتج و السعر. انقر على المنتج إذا كنت ترغب في\r\n     معرفة المزيد و الأضافه إلى عربة التسوق</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"2\"></a><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">2&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتعرف على المنتج، و قم بإضافته إلى العربة</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تحقق من تفاصيل\r\nالمنتج، الصور، المواصفات و تقييمات العملاء. نحن نقدم أفضل البائعين لذلك انقر\r\nعلى زر \"أضف إلى العربة\" إذا كان سعر و تقييم البائع يناسبك، أو اكتشف\r\nالمزيد من العروض لمزيد من الباعة و حالة منتجات مختلفة تناسب جميع احتياجاتك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"3\"></a><o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">3&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nمراجعة عربة التسوق الخاصة بك، و تسجيل الدخول للشراْ</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">استعرض\r\n     عربة التسوق و انقر على زر \"تابع عملية الشراء\". فقط تأكد من أن\r\n     جميع المنتجات التي ترغب في شرائها الآن موجودة في عربة التسوق، وتلك التي\r\n     ترغب في شرائها في وقت لاحق، إن وجدت، انتقلت إلى عربة \"السلع المحفوظة\r\n     لوقت لاحق</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا كنت\r\n     مستخدم حالي فقط قم بالدخول إلى حسابك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:.5in;margin-left:0in;\r\n     text-align:right;mso-list:l1 level1 lfo2;tab-stops:list .5in;direction:\r\n     rtl;unicode-bidi:embed\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">نصيحة\r\n     3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إذا لم\r\n     تسجل بعد يمكنك بكل سهولة القيام بذلك عن طريق تعبئة النموذج، أو مجرد\r\n     الاتصال عبر حساب الفيسبوك الخاص بك بنقرة زر واحدة بسيطة</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<a name=\"4\"></a><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">4&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتأكيد طلبك</span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><br></span></b><b><span lang=\"AR-SA\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نصيحة\r\n     1</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قم بتقديم\r\n     تفاصيل العنوان الخاص بك، حيث تريد توصيل طلبك، و انقر على زر \"حفظ</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".</span></p><ul style=\"margin-top:0in\" type=\"disc\">\r\n</ul><p style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;نصيحة 2</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">راجع العنوان المختار وفترة التسليم. انقر على زر\r\n\"تابع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".&nbsp;</span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; نصيحة 3</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">اختر\r\nطريقة الدفع المفضلة لديك من خيارات الدفع المريحة الي نقدمها لك بما في ذلك الدفع\r\nعبر الإنترنت، أو دفع نقداً عند&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; الاستلام، وانقر على زر \"تابع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>\".&nbsp;</span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp;نصيحة\r\n4</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:</span></b><span dir=\"LTR\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">راجع عربة التسوق، خيارات الشحن،\r\nوطريقة الدفع. انقر دفع لتأكيد الطلب</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span dir=\"LTR\">5&nbsp;</span></b><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>-\r\nتابع طلبك حتى يتم تسليمه على بابك</span></b><b><span dir=\"LTR\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تتساءل ماذا\r\nحدث لطلبك؟ لا تقلق، مع <b>أرخص</b> &nbsp;سيكون\r\nلديك خيار التحقق من عملية وصول الشحنة، لذلك يمكنك دائماً متابعة طلبك</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أرخص </span></b><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تعمل مع خدمات شحن موثوقة لتقديم\r\nمنتجاتك إلى بابك في أسرع وقت ممكن،</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" dir=\"RTL\" style=\"direction: rtl; unicode-bidi: embed;\"><span dir=\"LTR\"><o:p>&nbsp;</o:p></span></p>', 'eg', '2021-06-21 10:17:03', '2021-06-21 10:20:52'),
(4, 3, 'سياسة الإسترجاع', '<p class=\"MsoNormal\"><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;\r\nmso-bidi-language:AR-EG\"><o:p>&nbsp;</o:p></span><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">سياسة الاسترجاع للمشتري</span></u></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">:</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">يمكنك عمل طلب استرجاع لمنتجات أرخص خلال(&nbsp; </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:red;background:\r\nwhite\">14يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">) يوم فى حالات\r\nعيوب الصناعة من وقت وصول الطلب</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">عند إرجاع المنتج, تأكد من\r\nوجود جميع الملحقات الخاصة بالطلب بحالتها السليمة و ان المنج فى عبوته الاصلية.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"background:white\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">كما موضح فى الجدول الاتى\r\nالفئات الغير القابلة للارتجاع:- <o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">1-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الملابس&nbsp; الداخلية</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">2-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الجوارب الرجالي والحريمي</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">3-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">مستحضرات التجميل والعطور</span><span lang=\"AR-SA\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:6.4pt;margin-right:0in;margin-bottom:6.4pt;\r\nmargin-left:0in;line-height:normal;mso-outline-level:4;background:#FFF7E9\"><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرجاع منتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">يمكنكم اللآن إرجاع المنتج الخاص بكم من خلال الموقع باتباع الخطوات\r\nالآت</span><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">ي</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">تسجيل الدخول والضغط على الطلبات ثم الضغط على الطلب\r\nالذي يشمل المنتجات التي تريد ارجاعها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختارعدد المنتجات التي تريد ارجاعها , و تحديد سبب\r\nالارتجاع بالتفصيل لمساعدتنا في حل مشكلة المنتج (يفضل الحاق صورة بالسبب ان وجد)</span><br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختار طريقة الاسترداد التي تفضلها (مثال: فى حالة الدفع\r\nمسبقا, برجاء اختيار نفس الطريقة لاسترداد المبلغ)اختار كيفية تسليم المنتج\r\nالمطلوب استرجاعه</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">راجع بياناتك و قدم طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الاتصال بخدمة العملاء على ( </span></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">متى يمكن إرجاع المنتجات إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">جميع المنتجات المباعة على أرخص، في حالات معينة، يمكن استرجاعها في\r\nخلال( </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">14 يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">) </span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يمكن استرجاع المنتج فى أى حالة؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا&nbsp;&nbsp;&nbsp; , يجب ارجاع المنتج فى\r\nحالته الأصلية التى تم الاستلام بها, فى حالة استلام شحنة تالفة برجاء التأكد من\r\nذكر هذا عند طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرسال المنتج إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بعد تأكيد طلب الاسترجاع, سوف يتم استلام المرتجع من العنوان المسجل\r\nلدينا<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">تم تسجيل طلب الاسترجاع ، لكن لم يأت أحد وقد مضى\r\nوقت طويل ، فماذا أفعل؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعتذر عن هذا. يرجى تقديم طلبك على تواصل معنا من خلال صفحة دعم\r\nالعميل على الحساب الخاص بك او من خلال التواصل تليفونيا على </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">(</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"> </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">إذا تم تأكيد طلب استرداد قيمة المشتريات الخاص\r\nبي، كيف ومتى يتم رد قيمة المشتريات؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تبدأ عملية رد قيمة المنتج إلى العميل بعد نتيجة فحص جودة المنتج\r\nالمرتجع و قبوله. تستغرق عملية فحص الجودة مدة أقصاها4&nbsp; أيام عمل من تاريخ استلام (أرخص) للمنتج\r\nالمرتجع. بعد الإنتهاء من عملية الفحص, نقوم باخطارك من خلال رسالة عبر البريد\r\nالإلكتروني</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الحصول على المبلغ المدفوع في شكل قسيمة شراء خلال\r\n24 ساعة و استخدامها لاحقاً للشراء من أرخص. اختيار تلك الوسيلة متاح أثناء تقديم\r\nطلب على الإنترنت أو من خلال الإتصال بخدمة العملاء، و تعتبر هي الأسرع لاسترداد\r\nقيمة المنتج المرتجع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">بخلاف ذلك، يتم رد المبلغ المدفوع وفقًا للجدول التالي.\r\nو تختلف طرق استرداد قيمة المشتريات وفقًا لطريقة الدفع<o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">علما بأنه في حالة اختيار قسيمة للشراء لا يمكننا اعاده استبدال\r\nالقسيمة بالمبلغ نقدي مرة أخرى</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>,<b>&nbsp;.</b><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق استرداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق الدفع المستخدمة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء (محفظتي)</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الدفع عند الاستلام</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة إئتمان خلال 7-14 يوم </span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بطاقة إئتمان</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal;background:#FFF7E9\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الوقت المستغرق بعد انتهاء فحص الجودة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طريقة إسترداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>24\r\n  ساعة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء(محفظتي)</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>7-14\r\n  يوم عمل</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة\r\n  ائتمانية</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:6.4pt;line-height:normal;background:\r\n#FFF7E9\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ارجاع الهدية المجانية فى حالة طلب استرجاع\r\nالمنتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعم. يجب استرجاع الهدية المجانية</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ان ادفع مصاريف شحن فى حالة ارجاع الطلب ؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا يوجد اى مصاريف شحن يتحملها المشتري فى حالة ارجاع الطلب اذا كان\r\nالطلب به عيوب او غير متوافق مع ما هو متفق عليه في عملية البيع, اما في حالة\r\nتغيير العميل لرأيه في تلك الحالة يتحمل المشتري تكلفة الشحن.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;اذا قمت\r\nبشراء منتج أثناء التخفيضات أو باستخدام قسيمة شراء. ما هي القيمة التي يتم\r\nإعادتها لي؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">للمنتجات التي يتم شرائها أثناء التخفيضات، سيتم رد نفس القيمة\r\nالمدفوعة إليك وليس القيمة الأصلية للمنتج</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">على سبيل المثال: إذا قمت بشراء منتجًا أثناء التخفيضات\r\nبقيمة 20 جنيهاً وقيمته الأساسية كانت 40 جنيهاً، سيتم رد قيمة 20 جنيهاً إليك.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\"><o:p>&nbsp;</o:p></p>', 'en', '2021-06-21 10:40:18', '2021-06-21 10:40:18');
INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(5, 2, 'كيفية البيع على أرخص', '<p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p><p class=\"MsoNormal\" align=\"right\"><span style=\"font-size:\r\n20.0pt;line-height:107%\"> </span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-size:20.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;=\"\" mso-bidi-language:ar-eg\"=\"\">الاشتراطات والسياسات العامة للبيع علي ارخص<o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">أولا المعلومات\r\nاللازمة لإنشاء حسابك:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">عنوان\r\nالبريد الإلكتروني ورقم الهاتف</span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بيانات\r\nتفصيلية لشركتك (العنوان، الاسم القانوني, اسم المتجر باللغة الانجليزية وغيرهم)<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> بيانات\r\nتفصيلية للحساب البنكي<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سيتوجب\r\nعليك إمضاء </span><span dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%\"><a href=\"https://drive.google.com/uc?export=download&id=1onpfCnk6fkuKgSb8sovfJ98m-B-Hpyhf\"><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">العقد الخاص أرخص</span></a></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> في\r\nنسختيه “<b>الورقيه والإلكترونية</b>” خلال 30 يوم من بدأ البيع على أرخص لتجنب\r\nإيقاف الحساب<br>\r\n-العقد يجب أن يكون نسخة ورقية يتم تسليمها في مقر الشركة او لمندوب  أرخص<br>\r\n– يجب الإمضاء على كل الصفحات<br>\r\n– في حالة كون المتجر خاص بمنشأة تجارية يجب الإمضاء بالإضافة لختم المنشأة، بينما\r\nيكون الإمضاء كافي في حالة الحساب الفردي<br>\r\n– يجب أن يكون السجل التجاري والبطاقة الضريبية هم أحدث نسخة<br>\r\n– يجب ان يكون الموقع على العقد اسمه موجود في السجل التجاري و له حق التوقيع<br>\r\n– يرجى كتابة اسم الشخص (ممثل الشركة/ او صاحب الحساب على أرخص) رباعي بوضوح وبدون\r\nصيغة امضاء<br>\r\n– يرجى كتابة الاسم رباعى في نهاية كل صفحة من العقد بوضوح دون صيغة امضاء<br>\r\n– التوقيع هو البند الوحيد المسموح فيه بصيغة امضاء<br>\r\n– يرجى الحرص على عدم وجود اي علامات شطب او تصليح اخطاء كتابية تماماً في اي جزء\r\nاو مكان في العقد.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثانيا\r\nتكلفة البيع على أرخص:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ا</span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لتسجيل\r\nعلى أرخص مجاني لجميع البائعين على المتجر<o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثالثا\r\nادارة البائع لمتجره على أرخص:<o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-left: 0.75in;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالمخزون وتحديث قوائم المنتجات.</span></b><b><span style=\"font-size:16.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالمنتجات المباعة من على المتجر وخط سيرها الى العميل والعكس في حالة المرتجعات.</span><span style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">متابعة\r\nالتاجر لتقييم العملاء لمنتجره.</span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ا</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لأشتراك\r\nبحملات دعائية مع أرخص</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.<b><u><o:p></o:p></u></b></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">رابعا\r\nكيفيةادراج المنتجات بالقائمة:</span></u></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><b><u><span lang=\"AR-SA\" style=\"font-size:14.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span></u></b><b><u><span style=\"font-size:14.0pt;line-height:\r\n107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لكل\r\nتاجر على موقع أرخص صفحة يتحم من خلالها على المنتجات التي يتم عرضها , يتم اضافة\r\nالمنتجات بصورة فردية او من خلال الملف المجمع :<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بصورة فردية:</span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">يتم ذلك بالدخول على قائمة المنتجات\r\nوالضغط على إضافة منتج جديد ثم إدخال جميع بيانات المنتج مع التأكد من صحتها\r\nوإستيفاء كامل البيانات.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بصورة مجمعة:</span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ويتم ذلك م خلال قائمة تحميل مجمع\r\nللمنتج وذلك بتجميل ملف الاكسيل للمنتجات المجمعه ثم ادخال البيانات المذكورة في\r\nملف الاكسيل لكل منتج على حدى ثم رفع الملف مرة اخرى على الموقع ويتبقى فقط ادخال\r\nصور المنتجات بالدخول على كل منتج على حدى وإضافة الصورة الخاصة بها.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:\r\n16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">خامسا\r\nكيفية معالجة الطلب:</span></u></b></p><p class=\"MsoListParagraph\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">بمجرد طلب العميل للمنتج الخاص بك امامك 24 ساعة\r\nلتجهيز الطلب لمندوب موقع أرخص لاستلام المنتج المطلوب من العنوان المسجل في\r\nبيانات الحساب على أرخص والتأكد من مطابقة المنتج من حيث النوع والمقاس واللون\r\nوالكمية كما ورد في بيانات الطلب.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سادسا\r\nفحص المنتج قبل عرضه على أرخص<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قبل عرض المنتج على الموقع يقوم فريق\r\nالجودة من التأكد من موافاة منتج البائع للشروط الخاصة بأرخص وتنحصرأسباب الرفض في\r\nالأتي:<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– معلومات ممنوع وجودها في الصورة (السعر –\r\nالعلامة – أرقام للإتصال)</span><span dir=\"LTR\" style=\"font-size:16.0pt;\r\nline-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span dir=\"RTL\"></span><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      \r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nصورة غير متوافقة مع التعليمات<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– تفاصيل تقنية غير كافية<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– صورة مشوشة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج مُكرر<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج بنقاط محتوى قليلة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– سعر غير مُصرح به<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– إنشاء ملف جديد للمنتجات<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– وصف غير مُطابق<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لم يتم الخضوع إلى قياسات وصف المنتج<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لا يوجد وصف<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– تم إدخال العلامة التجارية مرتين في العنوان<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– لا توجد صورة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– علامة تجارية غير مُطابقة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج/ علامة تجارية مُزيفة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– فئة خاطئة<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">– منتج غير مُصرح به<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سابعا\r\nكيفية شحن الطلب:<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -0.25in; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">على البائع ان يقوم بتجهيز الطلب في عبوات جاهزة\r\nللشحن على ان يتوقف دور فريق أرخص بمراجعة الشحنة مع فاتورة البيع المصدرة من\r\nالموقع ووضع الشحنة في الفلاير الخاص بمتجر أرخص ان امكن وإرفاق </span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size:16.0pt;\r\nline-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>   <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بوليصة الشحن والفاتورة.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ثامنا\r\nالمرتجعات<o:p></o:p></span></u></b></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 0in 49.5pt 8pt 0in; text-indent: -27pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:\r\n16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;\r\nmso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">       </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>  </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">لزيادة رضا العميل، تقبل أرخص\r\nالمنتجات المُرتجعة فى الحالات الآتية:</span><span dir=\"LTR\" style=\"font-size:\r\n16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -22.5pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span dir=\"RTL\"></span><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">    </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\">   </span><span lang=\"AR-SA\" style=\"font-size:\r\n16.0pt;line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">المنتج ليس هو\r\nالذى تم طلبه<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 0in 45pt 8pt 0in; text-indent: -22.5pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">         \r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:\r\n107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">المنتج به عيب يتم استرداد العميل\r\nالمبلغ ومصاريف الشحن خلال مدة تصل إلى 30 يوم مع تحمل البائع مصاريف الشحن<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 0in 0.5in 8pt 0in; text-indent: -9pt; direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\"> </span></span><!--[endif]--><span dir=\"RTL\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span dir=\"LTR\" style=\"font-size:16.0pt;line-height:107%\">  </span><span lang=\"AR-SA\" style=\"font-size:\r\n16.0pt;line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:=\"\" calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">بالإضافة إلى\r\nأن أرخص لديها التزام قانوني مما يوفر للعميل 14 يوم يحق له فيه تغيير رأيه دون\r\nالحاجة لإبداء أسباب</span><span lang=\"AR-SA\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p> </o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">ومع\r\nذلك لا يمكن للعميل أن يرجع المنتجات من هذه الفئات:<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nالملابس الداخلية وملابس السباحة والجيم والنوم والجوارب<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nالعطور والكسسوارات ومستحضرات التجميل<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">فى\r\nحالة تغيير العميل رأيه بشأن المنتج، يجب أن يتم إرجاعه بنفس حالته الأصلية..<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تاسعا\r\nالمدفوعات:</span></u></b><b><u><span style=\"font-size:18.0pt;line-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">قبل ان\r\nنعرف كيف تستلم مدفوعاتك, عليك ان تتأكد انك قد قمت بتسليم العقد الخاص بالبائع\r\nوقمت بملء البيانات وفقا للجدول التالي:</span></u></b><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></b></p><div align=\"right\">\r\n\r\n<table class=\"MsoTableGrid\" dir=\"rtl\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"773\" style=\"width: 579.45pt; border: none;\">\r\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البيانات المطلوبة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border:solid windowtext 1.0pt;\r\n  border-right:none;mso-border-right-alt:solid windowtext .5pt;mso-border-alt:\r\n  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">التوضيح المطلوب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:1;height:20.6pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم الشركة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">يجب التسجيل بإسم الشركة المسجل\r\n  بالسجل التجاري(لن يقبل العقد في حالة عدم توافق الإسمين)<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:2;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البطاقة الضريبية<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">موضح بها رقم البطاقة الضريبية<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:3;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">السجل التجاري <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">موضح بها رقم السجل التجاري <o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:4;height:41.8pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:41.8pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم ممثل الشركة أو صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:41.8pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم ممثل الشركة لإدارة الحساب او\r\n  اسم صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:5;height:42.4pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البطاقة الشخصية لصاحب الحساب او\r\n  مثل الشركة<o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">رقم بطاقة الشخص الموقع على العقد\r\n  او صاحب الحساب<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:6;height:21.15pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم الحساب على الموقع <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:21.15pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم المتجر المراد انشائه عل متجر\r\n  أرخص<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:7;height:20.6pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البريد الالكتروني <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">عنوان البريد الالكتروني المراد\r\n  تفعيل الحساب على أرخص من خلاله<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr style=\"mso-yfti-irow:8;mso-yfti-lastrow:yes;height:42.4pt\">\r\n  <td width=\"182\" valign=\"top\" style=\"width:136.85pt;border:solid windowtext 1.0pt;\r\n  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;\r\n  padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">تفويض الشركات <o:p></o:p></span></p>\r\n  </td>\r\n  <td width=\"590\" valign=\"top\" style=\"width:442.6pt;border-top:none;border-left:\r\n  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:\r\n  none;mso-border-top-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;\r\n  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;height:42.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" dir=\"LTR\" style=\"margin-bottom:8.0pt;text-align:\r\n  right;line-height:107%\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\n  line-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">على الشركات تقديم تفويض للشخص\r\n  المخول بإدارة الحساب على متجر أرخص مختوم من الشركة<o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div><p class=\"MsoNormal\"><b><u><span style=\"font-size:18.0pt;line-height:107%\"> </span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>1.\r\nاضف بياناتك البنكية</span></u></b><b><u><span style=\"font-size:18.0pt;\r\nline-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nإدخال بياناتك البنكية أمر إلزامي بالنسبة لنا حتى نتمكن من تحويل أموالك.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">– يجب\r\nعليك إضافة البيانات من خلال الدخول على لوحة التحكم --- إعدادات المتجر ---بيانات\r\nالحساب البنكي</span><span style=\"font-size:16.0pt;line-height:107%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>–\r\nجميع البيانات التالية مطلوبة:<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">إسم\r\nالبنك - إسم صاحب الحساب - رقم الحساب - \r\nرقم الاي بان <o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">2</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">. تلقي\r\nطلب شراء</span></u></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سيضيف\r\nكل طلب شراء جديد مبلغ مالي إلى كشف حسابك ، مع خصم الرسوم المُطبقة.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">3</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">.\r\nانتظر حتى توافر المال</span></u></b><b><u><span style=\"font-size:18.0pt;\r\nline-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:\r\n107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>– يتم\r\nتحويل عائدات البيع على أرخص بعد اول شهر من فتح الحساب على أرخص ثم يتم التحويل\r\nإسبوعيا أو في حالة وصول الرصيد إلى 2500 جنيه مصري أيهما أقرب.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">– سوف\r\nتتلقي المبلغ في خلال الإطار الزمني المُحدد خلال أول شهرفقط ستكون المدفوعات\r\nشهرية <o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nيمكنك رؤية المبالغ المُعلقة في أقسام “قيد التنفيذ” و”فتح بيان حساب” في كشف\r\nالحساب.</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">4</span></b><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:18.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">. تلقى\r\nالأموال تلقائيًا على حسابك البنكي</span></u></b><b><u><span style=\"font-size:\r\n18.0pt;line-height:107%\"><o:p></o:p></span></u></b></p><p class=\"MsoNormal\" align=\"right\" style=\"text-indent: 9pt;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><span dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span> </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">سنقوم\r\nبتحويل المبلغ المستحق الدفع الى الحساب البنكي المذكور في حسابك على أرخص مع رفع\r\nصورة اشعار التحويل</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span lang=\"AR-SA\" style=\"font-size:16.0pt;line-height:107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">البنكي كدليل على التحويل </span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size:16.0pt;line-height:\r\n107%\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>- </span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:16.0pt;line-height:107%;font-family:\" arial\",sans-serif;=\"\" mso-ascii-font-family:calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:=\"\" calibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">–\r\nيمكنك إيجاد تفاصيل المدفوعات المُضافة (الرصيد) أو المخصوم (الرسوم) على “كشف\r\nالحساب” في الحساب الخاص بك.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:\" arial\",sans-serif;mso-ascii-font-family:calibri;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:calibri;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\"><o:p> </o:p></span></p><p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\"><o:p> </o:p></p>', 'eg', '2021-06-21 10:46:48', '2022-02-09 10:49:14');
INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(6, 3, 'سياسة الإسترجاع', '<p class=\"MsoNormal\"><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;\r\nmso-bidi-language:AR-EG\"><o:p>&nbsp;</o:p></span><b><u><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">سياسة الاسترجاع للمشتري</span></u></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">:</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">يمكنك عمل طلب استرجاع لمنتجات أرخص خلال(&nbsp; </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:red;background:\r\nwhite\">14يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">) يوم فى حالات\r\nعيوب الصناعة من وقت وصول الطلب</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">عند إرجاع المنتج, تأكد من\r\nوجود جميع الملحقات الخاصة بالطلب بحالتها السليمة و ان المنج فى عبوته الاصلية.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"background:white\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.</span><br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"background:white\">كما موضح فى الجدول الاتى\r\nالفئات الغير القابلة للارتجاع:- <o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpFirst\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">1-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الملابس&nbsp; الداخلية</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">2-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">الجوارب الرجالي والحريمي</span><span dir=\"LTR\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" dir=\"RTL\" style=\"margin: 6.4pt 1in 6.4pt 0in; text-indent: -0.25in; line-height: normal; background: rgb(255, 247, 233); direction: rtl; unicode-bidi: embed;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">3-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"RTL\"></span><span lang=\"AR-EG\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">مستحضرات التجميل والعطور</span><span lang=\"AR-SA\" style=\"font-size: 10pt; font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:6.4pt;margin-right:0in;margin-bottom:6.4pt;\r\nmargin-left:0in;line-height:normal;mso-outline-level:4;background:#FFF7E9\"><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرجاع منتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">يمكنكم اللآن إرجاع المنتج الخاص بكم من خلال الموقع باتباع الخطوات\r\nالآت</span><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">ي</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>:<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">تسجيل الدخول والضغط على الطلبات ثم الضغط على الطلب\r\nالذي يشمل المنتجات التي تريد ارجاعها</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختارعدد المنتجات التي تريد ارجاعها , و تحديد سبب\r\nالارتجاع بالتفصيل لمساعدتنا في حل مشكلة المنتج (يفضل الحاق صورة بالسبب ان وجد)</span><br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">اختار طريقة الاسترداد التي تفضلها (مثال: فى حالة الدفع\r\nمسبقا, برجاء اختيار نفس الطريقة لاسترداد المبلغ)اختار كيفية تسليم المنتج\r\nالمطلوب استرجاعه</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">راجع بياناتك و قدم طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الاتصال بخدمة العملاء على ( </span></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">متى يمكن إرجاع المنتجات إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">جميع المنتجات المباعة على أرخص، في حالات معينة، يمكن استرجاعها في\r\nخلال( </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">14 يوم </span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">) </span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يمكن استرجاع المنتج فى أى حالة؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا&nbsp;&nbsp;&nbsp; , يجب ارجاع المنتج فى\r\nحالته الأصلية التى تم الاستلام بها, فى حالة استلام شحنة تالفة برجاء التأكد من\r\nذكر هذا عند طلب الاسترجاع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">كيفية إرسال المنتج إلى أرخص؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بعد تأكيد طلب الاسترجاع, سوف يتم استلام المرتجع من العنوان المسجل\r\nلدينا<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">تم تسجيل طلب الاسترجاع ، لكن لم يأت أحد وقد مضى\r\nوقت طويل ، فماذا أفعل؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعتذر عن هذا. يرجى تقديم طلبك على تواصل معنا من خلال صفحة دعم\r\nالعميل على الحساب الخاص بك او من خلال التواصل تليفونيا على </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:red\">(</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"> </span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:red\">01005434054)</span></b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">إذا تم تأكيد طلب استرداد قيمة المشتريات الخاص\r\nبي، كيف ومتى يتم رد قيمة المشتريات؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تبدأ عملية رد قيمة المنتج إلى العميل بعد نتيجة فحص جودة المنتج\r\nالمرتجع و قبوله. تستغرق عملية فحص الجودة مدة أقصاها4&nbsp; أيام عمل من تاريخ استلام (أرخص) للمنتج\r\nالمرتجع. بعد الإنتهاء من عملية الفحص, نقوم باخطارك من خلال رسالة عبر البريد\r\nالإلكتروني</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">يمكنك الحصول على المبلغ المدفوع في شكل قسيمة شراء خلال\r\n24 ساعة و استخدامها لاحقاً للشراء من أرخص. اختيار تلك الوسيلة متاح أثناء تقديم\r\nطلب على الإنترنت أو من خلال الإتصال بخدمة العملاء، و تعتبر هي الأسرع لاسترداد\r\nقيمة المنتج المرتجع</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">بخلاف ذلك، يتم رد المبلغ المدفوع وفقًا للجدول التالي.\r\nو تختلف طرق استرداد قيمة المشتريات وفقًا لطريقة الدفع<o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">علما بأنه في حالة اختيار قسيمة للشراء لا يمكننا اعاده استبدال\r\nالقسيمة بالمبلغ نقدي مرة أخرى</span></b><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>,<b>&nbsp;.</b><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق استرداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طرق الدفع المستخدمة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء (محفظتي)</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الدفع عند الاستلام</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"349\" valign=\"top\" style=\"width:261.95pt;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة إئتمان خلال 7-14 يوم </span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"170\" valign=\"top\" style=\"width:127.55pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">بطاقة إئتمان</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal;background:#FFF7E9\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><table class=\"MsoTable15Grid4Accent3\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 77.75pt; border: none;\">\r\n <tbody><tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-right:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-left-alt:solid #A5A5A5 .5pt;\r\n  mso-border-left-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">الوقت المستغرق بعد انتهاء فحص الجودة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border:solid #A5A5A5 1.0pt;\r\n  mso-border-themecolor:accent3;border-left:none;mso-border-top-alt:solid #A5A5A5 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-bottom-alt:solid #A5A5A5 .5pt;\r\n  mso-border-bottom-themecolor:accent3;mso-border-right-alt:solid #A5A5A5 .5pt;\r\n  mso-border-right-themecolor:accent3;background:#A5A5A5;mso-background-themecolor:\r\n  accent3;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">طريقة إسترداد قيمة المشتريات</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:\r\n  accent3;mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>24\r\n  ساعة</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;background:#EDEDED;mso-background-themecolor:accent3;\r\n  mso-background-themetint:51;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">قسيمة شراء(محفظتي)</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td width=\"302\" valign=\"top\" style=\"width:3.15in;border:solid #C9C9C9 1.0pt;\r\n  mso-border-themecolor:accent3;mso-border-themetint:153;border-top:none;\r\n  mso-border-top-alt:solid #C9C9C9 .5pt;mso-border-top-themecolor:accent3;\r\n  mso-border-top-themetint:153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:\r\n  accent3;mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span><b><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>7-14\r\n  يوم عمل</span></b><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  <td width=\"217\" valign=\"top\" style=\"width:162.95pt;border-top:none;border-left:\r\n  none;border-bottom:solid #C9C9C9 1.0pt;mso-border-bottom-themecolor:accent3;\r\n  mso-border-bottom-themetint:153;border-right:solid #C9C9C9 1.0pt;mso-border-right-themecolor:\r\n  accent3;mso-border-right-themetint:153;mso-border-top-alt:solid #C9C9C9 .5pt;\r\n  mso-border-top-themecolor:accent3;mso-border-top-themetint:153;mso-border-left-alt:\r\n  solid #C9C9C9 .5pt;mso-border-left-themecolor:accent3;mso-border-left-themetint:\r\n  153;mso-border-alt:solid #C9C9C9 .5pt;mso-border-themecolor:accent3;\r\n  mso-border-themetint:153;padding:0in 5.4pt 0in 5.4pt\">\r\n  <p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">تحويل على بطاقة\r\n  ائتمانية</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><p class=\"MsoNormal\" style=\"margin-bottom:6.4pt;line-height:normal;background:\r\n#FFF7E9\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ارجاع الهدية المجانية فى حالة طلب استرجاع\r\nالمنتج؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">نعم. يجب استرجاع الهدية المجانية</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<span lang=\"AR-SA\" dir=\"RTL\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">هل يجب ان ادفع مصاريف شحن فى حالة ارجاع الطلب ؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">لا يوجد اى مصاريف شحن يتحملها المشتري فى حالة ارجاع الطلب اذا كان\r\nالطلب به عيوب او غير متوافق مع ما هو متفق عليه في عملية البيع, اما في حالة\r\nتغيير العميل لرأيه في تلك الحالة يتحمل المشتري تكلفة الشحن.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin: 6.4pt 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;اذا قمت\r\nبشراء منتج أثناء التخفيضات أو باستخدام قسيمة شراء. ما هي القيمة التي يتم\r\nإعادتها لي؟</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 0in; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">للمنتجات التي يتم شرائها أثناء التخفيضات، سيتم رد نفس القيمة\r\nالمدفوعة إليك وليس القيمة الأصلية للمنتج</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<br>\r\n<span lang=\"AR-SA\" dir=\"RTL\">على سبيل المثال: إذا قمت بشراء منتجًا أثناء التخفيضات\r\nبقيمة 20 جنيهاً وقيمته الأساسية كانت 40 جنيهاً، سيتم رد قيمة 20 جنيهاً إليك.</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" align=\"right\" style=\"margin-bottom: 6.4pt; line-height: normal; background: rgb(255, 247, 233);\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\"><o:p>&nbsp;</o:p></p>', 'eg', '2021-06-21 11:02:29', '2021-06-21 11:02:29'),
(7, 8, 'عقد البيع علي أرخص', '<p>&nbsp;contract<a href=\"http://localhost/demo/files/contract.pdf\" target=\"_blank\">contrac</a></p>', 'eg', '2021-06-21 11:36:44', '2021-06-21 11:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `seller_id`, `amount`, `payment_details`, `payment_method`, `txn_code`, `created_at`, `updated_at`) VALUES
(1, 1, 70.00, NULL, 'cash', NULL, '2021-02-14 06:48:04', '2021-02-14 06:48:04'),
(2, 46, 16750.00, NULL, 'bank_payment', NULL, '2021-06-28 16:38:28', '2021-06-28 16:38:28'),
(3, 46, 8.00, NULL, 'bank_payment', NULL, '2021-06-28 18:15:05', '2021-06-28 18:15:05'),
(4, 46, 3666.00, NULL, 'bank_payment', NULL, '2021-07-06 14:48:08', '2021-07-06 14:48:08'),
(5, 56, 54.00, NULL, 'Seller paid to admin', NULL, '2022-02-14 13:37:52', '2022-02-14 13:37:52'),
(6, 53, 17.00, NULL, 'bank_payment', NULL, '2022-02-14 13:38:25', '2022-02-14 13:38:25'),
(7, 56, 10.00, NULL, 'Seller paid to admin', NULL, '2022-02-19 15:28:44', '2022-02-19 15:28:44'),
(8, 56, 100.00, NULL, 'bank_payment', '2548763873687638', '2022-02-19 16:00:48', '2022-02-19 16:00:48'),
(9, 56, 200.00, NULL, 'bank_payment', NULL, '2022-02-19 19:10:11', '2022-02-19 19:10:11'),
(10, 56, 1500.00, NULL, 'bank_payment', NULL, '2022-02-19 19:12:02', '2022-02-19 19:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point_translations`
--

CREATE TABLE `pickup_point_translations` (
  `id` bigint(20) NOT NULL,
  `pickup_point_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 12:54:45', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2019-10-29 12:54:47', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 12:54:49', '2019-02-04 17:50:15'),
(5, 'terms', NULL, '2019-10-29 12:54:51', '2019-10-28 18:00:00'),
(6, 'privacy_policy', NULL, '2019-10-29 12:54:54', '2019-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_number` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) NOT NULL DEFAULT 0.00,
  `variant_product` int(1) NOT NULL DEFAULT 0,
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `admin_approval` tinyint(3) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `seller_featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `alert_qty` int(11) NOT NULL DEFAULT 1,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_from` int(20) DEFAULT NULL,
  `discount_to` int(20) DEFAULT NULL,
  `tax` double(20,2) DEFAULT 14.00,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'percent',
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` double(20,2) DEFAULT 0.00,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `refundable` int(1) NOT NULL DEFAULT 0,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `length`, `width`, `height`, `weight`, `model_number`, `warranty`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `admin_approval`, `featured`, `seller_featured`, `current_stock`, `alert_qty`, `unit`, `min_qty`, `discount`, `discount_type`, `discount_from`, `discount_to`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(68, 'Puma F116 Skin SF Ferrari Scuderia', 'seller', 75, 170, NULL, NULL, 3, '57', NULL, NULL, NULL, NULL, NULL, NULL, '238', NULL, NULL, '', '<p>Refined Puma men\'s sneakers, racing inspiration. Made in collaboration with the Ferrari style centre. Dedicated to German brand lovers, it is ideal for free time and for a sought after look. Made of leather with great attention to detail and features the official Ferrari Scuderia logos. Lightweight and functional, ensures maximum comfort. New collection<br></p>', 3600.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"41\",\"42\",\"43\",\"44\",\"45\",\"46\"]}]', '[]', NULL, 0, 1, 1, 1, 0, 10, 3, 'pc', 1, 15.00, 'percent', 1622498400, 1625090340, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  shoes', 'Refined Puma men\'s sneakers, racing inspiration. Made in collaboration with the Ferrari style centre. Dedicated to German brand lovers, it is ideal for free time and for a sought after look. Made of leather with great attention to detail and features the official Ferrari Scuderia logos. Lightweight and functional, ensures maximum comfort. New collection', NULL, NULL, 'puma-f116-skin-sf-ferrari-scuderia-qhcvw', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-25 18:16:56', '2022-01-09 12:55:08'),
(69, 'Sepatu Running PUMA DESCENDANT', 'seller', 75, 170, NULL, NULL, 3, '63,64,65,61,62,60,59', NULL, NULL, NULL, NULL, NULL, NULL, '236', NULL, NULL, '', '<p>Puma Descendant V3 tennis shoes. Gray tennis shoes, textured surface, phosphorescent contrasting edges, printed appliqué with the brand\'s logo. Platform 3 cm.; Outer Material: Synthetic Inner Material: Textile Sole Material: Synthetic Closure: Lace; Weight: 288g<br></p>', 2800.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"41\",\"42\",\"43\",\"44\",\"45\",\"46\"]}]', '[]', NULL, 0, 1, 1, 1, 0, 10, 0, 'pc', 1, 15.00, 'amount', 1622498400, 1625090340, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  shoes', 'Puma Descendant V3 tennis shoes. Gray tennis shoes, textured surface, phosphorescent contrasting edges, printed appliqué with the brand\'s logo. Platform 3 cm.; Outer Material: Synthetic Inner Material: Textile Sole Material: Synthetic Closure: Lace; Weight: 288g', NULL, NULL, 'sepatu-running-puma-descendant-jykns', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-25 18:59:27', '2022-01-09 12:55:08'),
(70, 'PUMA Descendant V 3 18816510, Chaussures Running', 'seller', 75, 170, NULL, NULL, 3, '223,224,225', NULL, NULL, NULL, NULL, NULL, NULL, '235', NULL, NULL, '', '<p>Certainly the flagship of the summer, discover this model Puma Descendant V 3 18816510, Running shoes.<br></p>', 2800.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"41\",\"42\",\"43\",\"44\",\"45\",\"46\"]}]', '[\"#0000FF\"]', NULL, 0, 1, 1, 1, 0, 10, 0, 'pc', 1, 15.00, 'percent', 1622498400, 1625090340, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  shoes', 'Certainly the flagship of the summer, discover this model Puma Descendant V 3 18816510, Running shoes.', NULL, NULL, 'puma-descendant-v-3-18816510-chaussures-running-kvq5e', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-25 19:14:31', '2022-01-09 12:55:09'),
(71, 'PUMA 18816508 DESCENDANT ERKEK SPOR AYAKKABI', 'seller', 75, 170, NULL, NULL, 3, '75,70,71,72,73', NULL, NULL, NULL, NULL, NULL, NULL, '237', NULL, NULL, '', '<p>Step out with pride in these stylish Sneakers with an inspirational message,&nbsp; These shoes are all about accentuating the positive – just like the bold graphic&nbsp; Slip on a pair and feel proud of yourself. You should be.<br></p>', 2800.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"41\",\"42\",\"43\",\"44\",\"45\",\"46\"]}]', '[\"#0000FF\"]', NULL, 0, 1, 1, 1, 0, 9, 0, 'pc', 1, 15.00, 'percent', 1622498400, 1625090340, 14.00, 'percent', 'flat_rate', 0.00, 1, 'Puma  shoes', 'Step out with pride in these stylish Sneakers with an inspirational message,  These shoes are all about accentuating the positive – just like the bold graphic  Slip on a pair and feel proud of yourself. You should be.', NULL, NULL, 'puma-18816508-descendant-erkek-spor-ayakkabi-hewtv', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-25 19:31:32', '2022-02-08 13:49:29'),
(72, 'PUMA - SF Drift Cat 5 Ultra PUM - 30592102', 'seller', 75, 170, NULL, NULL, 3, '81,79,80,77,78', NULL, NULL, NULL, NULL, NULL, NULL, '76', NULL, NULL, '', '<p>Ferrari Drift Cat 5 NM Trainers</p><p>100% Synthetic</p><p>Fabric sole</p><p>Upper material: synthetic</p>', 3850.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"41\",\"42\",\"43\",\"44\",\"45\",\"46\"]}]', '[\"#000000\"]', NULL, 0, 1, 0, 1, 0, 10, 10, 'pc', 1, 15.00, 'percent', 1622498400, 1625090340, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  shoes', 'Ferrari Drift Cat 5 NM Trainers\r\n100% Synthetic\r\nFabric sole\r\nUpper material: synthetic', NULL, NULL, 'puma---sf-drift-cat-5-ultra-pum---30592102-rkqcl', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-25 19:52:57', '2022-01-09 12:55:12'),
(73, 'Puma Scuderia Ferrari Men\'s Long Sleeve Top', 'seller', 75, 159, NULL, NULL, 3, '83', NULL, NULL, NULL, NULL, NULL, NULL, '260', NULL, NULL, '', '<p>Long sleeve top Ferrari racing team. Colour blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari<br></p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#808080\"]', '[]', 0, 1, 1, 0, 0, 7, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 5, 'Puma  long sleeve', 'Long sleeve top Ferrari racing team', NULL, NULL, 'pum_scuderia', 1, 1.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-02-15 14:05:54'),
(74, 'PUMA Men\'s T-Shirt', 'seller', 75, 159, NULL, NULL, 3, '86,85', NULL, NULL, NULL, NULL, NULL, NULL, '259', NULL, NULL, '', '<p>Ferrari shield polyurethane badge</p><p>PUMA cat on sleeve</p><p>Main Material 1: 100% Cotton</p><p>Machine Wash</p><p>Scuderia Ferrari Long sleeve Ferrari top. Color blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#FF4500\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 2, 'Puma  long sleeve', 'Scuderia Ferrari Long sleeve Ferrari top. Color blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari', NULL, NULL, 'puma-men\'s-t-shirt', 1, 5.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-10 13:04:23'),
(75, 'Puma Men\'s PANT Cargos', 'seller', 75, 162, NULL, NULL, 3, '91,89,243,245', NULL, NULL, NULL, NULL, NULL, NULL, '242', NULL, NULL, '', '<p>&nbsp;Care Instructions: Machine Wash</p><p>100% Cotton</p><p>Elastic closure</p><p>Regular machine wash</p><p>Made in India</p><p>Performance on all levels - This is PUMA.</p><p>As one of the world’s leading sports brands, PUMA believes in standing on the same playing field as the fastest athletes on the planet. With a mission of Forever Faster, PUMA shares excitement in Teams ports, innovates Golf, brings style into Running and Training and performance into Motorsports. PUMA has associations with some of the most elite athletes, such as sprint legend Usain Bolt, star striker Antoine Griezmann, Indian Cricket Captain Virat Kohli, fashion icons like Cara Delevingne, Selena Gomez, and many more.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 2800.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#000000\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 5, 'Puma Men\'s Cargos', '<p> Care Instructions: Machine Wash</p><p>100% Cotton</p><p>Elastic closure</p><p>Regular machine wash</p><p>Made in India</p><p>Performance on all levels - This is PUMA.</p><p>As one of the world’s leading sports brands, PUMA believes in standing on the same playing field as the fastest athletes on the planet. With a mission of Forever Faster, PUMA shares excitement in Teams ports, innovates Golf, brings style into Running and Training and performance into Motorsports. PUMA has associations with some of the most elite athletes, such as sprint legend Usain Bolt, star striker Antoine Griezmann, Indian Cricket Captain Virat Kohli, fashion icons like Cara Delevingne, Selena Gomez, and many more.                                                                                                     </p>', NULL, NULL, '-qnibx', 1, 4.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-11 11:50:08'),
(76, 'PUMA Men\'s Scuderia Ferrari Polo', 'seller', 75, 160, NULL, NULL, 3, '95,93,94', NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, NULL, '', '<p>Ferrari shield polyurethane badge; PUMA cat logo high density print; scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>100% Cotton</p><p>Imported</p><p>Machine Wash</p><p>Ferrari shield polyurethane badge</p><p>Scuderia ferrari wording high density print</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#FF4500\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 5, 'Puma  Polo shirt', 'Ferrari shield polyurethane badge; PUMA cat logo high density print; scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label', NULL, NULL, '-djclg', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-09 12:55:44'),
(77, 'PUMA Men\'s Sf Polo White', 'seller', 75, 160, NULL, NULL, 3, '98,96', NULL, NULL, NULL, NULL, NULL, NULL, '249', NULL, NULL, '', '<p>Ferrari shield PU badge; PUMA cat logo high density print; Scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#FFFFFF\"]', '[]', 0, 1, 1, 1, 0, 6, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 7, 'PUMA Ferrari shield PU badge', 'PUMA cat logo high density print; Scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label', NULL, NULL, '-txedg', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-02-19 18:49:44'),
(78, 'Solid Men Polo Neck Red T-Shirt', 'seller', 75, 160, NULL, NULL, 3, '100,101,103,102,104', NULL, NULL, NULL, NULL, NULL, NULL, '246', NULL, NULL, '', '<p>Ferrari emblem in polyurethane; high density Puma Cat logo; Scuderia Ferrari high-density print; original print, applied by high density printing; Puma and Ferrari 10th Anniversary Thermal emblem<br></p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#FF4500\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 0.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 2, 'PUMA Ferrari Polo shirt', 'Ferrari emblem in polyurethane; high density Puma Cat logo; Scuderia Ferrari high-density print; original print, applied by high density printing; Puma and Ferrari 10th Anniversary Thermal emblem', NULL, NULL, '-ggjqh', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-09 12:55:42'),
(79, 'PUMA Men\'s Sf Polo', 'seller', 75, 160, NULL, NULL, 3, '109,110,106,107,108', NULL, NULL, NULL, NULL, NULL, NULL, '247', NULL, NULL, '', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#000000\"]', '[]', 0, 1, 1, 1, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  Polo shirt', 'Sf Polo Shirt-Short Sleeve', NULL, NULL, '-2gsi3', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-09 12:56:10'),
(80, 'Puma men\'s Scuderia Ferrari Polo shirt-dress blues-large', 'seller', 75, 160, NULL, NULL, 3, '113,262', NULL, NULL, NULL, NULL, NULL, NULL, '248', NULL, NULL, '', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#483D8B\"]', '[]', 0, 1, 1, 1, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  Polo shirt', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', NULL, NULL, '-3k5gm', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-09 12:56:09'),
(81, 'PUMA Men\'s Sf Short Sleeve Tee', 'seller', 75, 160, NULL, NULL, 3, '114', NULL, NULL, NULL, NULL, NULL, NULL, '253', NULL, NULL, '', '<p>Puma Ferrari Men\'s Scuderia Ferrari Tee, Red</p><p>Perfect item for any Ferrari Fan</p><p>Mesh paneling at shoulders</p><p>Contrast color side panels</p><p>Ferrari Shield Logo at left chest; PUMA Cat Logo at left shoulder</p>', 1200.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#8B0000\"]', '[]', 0, 1, 1, 1, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 1, 'Puma  Polo shirt', '<p>Puma Ferrari Men\'s Scuderia Ferrari Tee, Red</p><p>Perfect item for any Ferrari Fan</p><p>Mesh paneling at shoulders</p><p>Contrast color side panels</p><p>Ferrari Shield Logo at left chest; PUMA Cat Logo at left shoulder</p>', NULL, NULL, '-uwqs8', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2022-01-09 15:32:56'),
(82, 'PUMA SF T-Shirt, men', 'seller', 75, 160, NULL, NULL, 3, '118,120,119,117', NULL, NULL, NULL, NULL, NULL, NULL, '252', NULL, NULL, '', '<p>Tea T-shirt THE Colors of the stable Ferrari logo Ferrari<br></p>', 1200.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#000000\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  Polo shirt', 'Tea T-shirt THE Colors of the stable Ferrari logo Ferrari', NULL, NULL, '-6pgng', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 17:30:40'),
(83, 'Puma Ferrari Graphic', 'seller', 75, 160, NULL, NULL, 3, '121', NULL, NULL, NULL, NULL, NULL, NULL, '251', NULL, NULL, '', NULL, 1400.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma Ferrari Graphic', NULL, NULL, NULL, '-xpfi3', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 17:27:52'),
(84, 'Puma BMW MSP Race Tee, White', 'seller', 75, 160, NULL, NULL, 3, '124,125', NULL, NULL, NULL, NULL, NULL, NULL, '250', NULL, NULL, '', '<p>Fabrics 100% Cotton</p><p>Ideal For Men</p><p>Occasion Casual</p><p>Types of Closures Pullover</p><p>Pattern &amp; Print Graphic print</p><p>Care Machine washable</p><p>Type of Neckline &amp; Collar Crew neckline</p><p>Type of Hem Straight hem</p><p>Disclaimer Product color may slightly vary due to photographic lighting sources or your monitor settings.</p><p>Sleeve Length Short Sleeve</p>', 1250.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'amount', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma BMW MSP Race Tee, White', '<p>Fabrics 100% Cotton</p><p>Ideal For Men</p><p>Occasion Casual</p><p>Types of Closures Pullover</p><p>Pattern & Print Graphic print</p><p>Care Machine washable</p><p>Type of Neckline & Collar Crew neckline</p><p>Type of Hem Straight hem</p><p>Disclaimer Product color may slightly vary due to photographic lighting sources or your monitor settings.</p><p>Sleeve Length Short Sleeve</p>', NULL, NULL, '-yg3cg', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 17:24:44'),
(85, 'Puma Mens BMW Summer Short, Team Blue', 'seller', 75, 164, NULL, NULL, 3, '127,126', NULL, NULL, NULL, NULL, NULL, NULL, '258', NULL, NULL, '', '<p>Fabrics 100%Polyster</p><p>Ideal for men</p><p>Sportswear type Shorts</p>', 1000.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"M\",\"L\",\"XL\",\"XXL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma Mens BMW Summer Short, Team Blue', '<p>Fabrics 100%Polyster</p><p>Ideal for men</p><p>Sportswear type Shorts</p>', NULL, NULL, '-olgas', 0, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 17:49:07'),
(86, 'Puma  Running Tights for Women - Black, Pink', 'seller', 75, 146, NULL, NULL, 3, '130,129', NULL, NULL, NULL, NULL, NULL, NULL, '128', NULL, NULL, '', '<p>Puma Performance three-quarter tights combines technical fabrics and ergonomic construction to meet the rigorous demands of athletes. With dryCELL performance fab<br></p>', 1150.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Puma  Running Tights for Women - Black, Pink', '<p>Puma Performance three-quarter tights combines technical fabrics and ergonomic construction to meet the rigorous demands of athletes. With dryCELL performance fab<br></p>', NULL, NULL, '-zqvar', 0, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-03 14:04:29'),
(87, 'PUMA Solid Women Polo Neck Black T-Shirt', 'seller', 75, 143, NULL, NULL, 3, '136,134,135,132,133', NULL, NULL, NULL, NULL, NULL, NULL, '256', NULL, NULL, '', '<p>Type Polo Neck</p><p>Sleeve Half sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Ideal for women</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 1, 'PUMA Solid Women Polo Neck Black T-Shirt', '<p>Type Polo Neck</p><p>Sleeve Half sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Ideal for women</p>', NULL, NULL, '-5fs7j', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-10 12:22:45'),
(88, 'PUMA Solid Women Polo Neck red T-Shirt', 'seller', 75, 143, NULL, NULL, 3, '139,140,141,142,138', NULL, NULL, NULL, NULL, NULL, NULL, '255', NULL, NULL, '', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Neck Type</p><p>Polo Neck</p><p>Ideal For Women</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[\"#FF4500\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 1, 'PUMA Solid Women Polo Neck red T-Shirt', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Neck Type</p><p>Polo Neck</p><p>Ideal For Women</p>', NULL, NULL, '-ybjvb', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-10 14:25:27'),
(89, 'WOMEN PUMA FERRARI Half sleeve', 'seller', 75, 143, NULL, NULL, 3, '144', NULL, NULL, NULL, NULL, NULL, NULL, '143', NULL, NULL, '', '<p>This women\'s T-shirt has the perfect style for Ferrari lovers.</p><p>Gender: Women</p><p>Brand: Puma</p><p>Color: burgundy</p><p>round neckline</p><p>Ferrari badge print</p><p>Cotton and modal</p>', 1250.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[\"#FF4500\"]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'WOMEN PUMA FERRARI Half sleeve', '<p>This women\'s T-shirt has the perfect style for Ferrari lovers.</p><p>Gender: Women</p><p>Brand: Puma</p><p>Color: burgundy</p><p>round neckline</p><p>Ferrari badge print</p><p>Cotton and modal</p>', NULL, NULL, '-pbg1k', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-03 15:21:17'),
(90, 'Women  Polo Puma Ferrari 10th Anniversary Partnership Xs', 'seller', 75, 143, NULL, NULL, 3, '148,149,146,145', NULL, NULL, NULL, NULL, NULL, NULL, '239', NULL, NULL, '', '<p>Exclusive Polo Puma Ferrari 10Th Anniversary Partnership XS<br></p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Women  Polo Puma Ferrari 10th Anniversary Partnership Xs', '<p>Exclusive Polo Puma Ferrari 10Th Anniversary Partnership XS<br></p>', NULL, NULL, '-u0yiz', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 16:29:24'),
(91, 'Solid Women Polo Neck Red T-Shirt', 'seller', 75, 143, NULL, NULL, 3, '158,154,156,157', NULL, NULL, NULL, NULL, NULL, NULL, '254', NULL, NULL, '', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Polyeseter Viscose Blend</p><p>Neck Type Polo Neck</p><p>Ideal For Women</p>', 1300.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]}]', '[]', '[]', 0, 1, 1, 0, 0, 10, 1, 'PC', 1, 15.00, 'percent', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Solid Women Polo Neck Red T-Shirt', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Polyeseter Viscose Blend</p><p>Neck Type Polo Neck</p><p>Ideal For Women</p>', NULL, NULL, '-dnx8d', 1, 0.00, NULL, 0, NULL, NULL, '2021-05-26 18:17:45', '2021-07-05 17:38:53'),
(93, 'Letter Print Ripped Neck Knot Tee', 'seller', 75, 143, NULL, NULL, NULL, '168,167,166,165', NULL, NULL, NULL, NULL, NULL, NULL, '164', NULL, NULL, '', '<p>Color: Yellow</p><p>Details: Knot, Cut Out<br></p><p>Fabric: Slight Stretch<br></p><p>Fit Type: Regular Fit<br></p><p>Length: Crop<br></p><p>Composition: 100% Polyester<br></p><p>Neckline: V neck<br></p><p>Pattern Type: Letter<br></p><p>Season: Summer</p><p>Sleeve Length: Short Sleeve<br></p><p>Style: Casual<br></p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Letter Print Ripped Neck Knot Tee', '<p>Color: Yellow</p><p>Details: Knot, Cut Out<br></p><p>Fabric: Slight Stretch<br></p><p>Fit Type: Regular Fit<br></p><p>Length: Crop<br></p><p>Composition: 100% Polyester<br></p><p>Neckline: V neck<br></p><p>Pattern Type: Letter<br></p><p>Season: Summer</p><p>Sleeve Length: Short Sleeve<br></p><p>Style: Casual<br></p>', NULL, NULL, 'letter-print-ripped-neck-knot-tee-yvrw1', 1, 0.00, NULL, 0, NULL, NULL, '2021-06-06 16:48:48', '2022-01-09 12:56:04'),
(94, 'Cropped Letter Lace Up Top - White', 'seller', 75, 57, NULL, NULL, NULL, '172,171,170,173', NULL, NULL, NULL, NULL, NULL, NULL, '169', NULL, NULL, '', '<p>Cozy and soft short sleeve top features an inspiring letter logo that reads\' no hard feelings \' at the front and the contrast lace-up detailing along the bottom with a super cropped fit. It is so comfy that you are going to wear it around the clock, just pair it with high waisted denims for an easy chic look.</p><p>Style: Fashion</p><p>Shirt Length: Short</p><p>Collar: Round Collar</p><p>Sleeves Length: Short</p><p>Material: Cotton,Polyester</p><p>Decoration: Lace up</p><p>Pattern Type: Letter</p><p>Seasons: Summer</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Cropped Letter Lace Up Top - White', '<p>Cozy and soft short sleeve top features an inspiring letter logo that reads\' no hard feelings \' at the front and the contrast lace-up detailing along the bottom with a super cropped fit. It is so comfy that you are going to wear it around the clock, just pair it with high waisted denims for an easy chic look.</p><p>Style: Fashion</p><p>Shirt Length: Short</p><p>Collar: Round Collar</p><p>Sleeves Length: Short</p><p>Material: Cotton,Polyester</p><p>Decoration: Lace up</p><p>Pattern Type: Letter</p><p>Seasons: Summer</p>', NULL, NULL, 'Cropped-Letter-Lace-Up-Top---White-nQpvO', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 16:58:33', '2021-07-10 15:01:07'),
(95, 'Letter Print Cami & Frill Trim Shorts PJ Set', 'seller', 75, 60, NULL, NULL, NULL, '178,175,176,174', NULL, NULL, NULL, NULL, NULL, NULL, '177', NULL, NULL, '', '<p>Color: Pink</p><p>Details: Frill</p><p>Composition: 90% Polyester, 10% Cotton</p><p>Neckline: Spaghetti Strap</p><p>Pattern Type: Cartoon, Letter</p><p>Sleeve Length: Sleeveless</p><p>Style: Cute</p><p>Type: Short Sets</p><p>Material: Polyester</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Letter Print Cami & Frill Trim Shorts PJ Set', '<p>Color: Pink</p><p>Details: Frill</p><p>Composition: 90% Polyester, 10% Cotton</p><p>Neckline: Spaghetti Strap</p><p>Pattern Type: Cartoon, Letter</p><p>Sleeve Length: Sleeveless</p><p>Style: Cute</p><p>Type: Short Sets</p><p>Material: Polyester</p>', NULL, NULL, 'Letter-Print-Cami--Frill-Trim-Shorts-PJ-Set-Mhtyw', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:04:05', '2021-07-10 15:01:09'),
(96, 'Boo Women\'s Short Sleeve Plus Size Sleep Shirts Nightgown Long', 'seller', 75, 60, NULL, NULL, NULL, '179', NULL, NULL, NULL, NULL, NULL, NULL, '179', NULL, NULL, '', '<p>Slit side for the hem</p><p>Close skin and breathable!</p><p>&nbsp;Cotton Blend</p><p>Short Sleeve</p><p>&nbsp;Soft of it to give you a comfortable touching</p><p>&nbsp;Lightweight provides comfortable feeling against skin</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Boo Women\'s Short Sleeve Plus Size Sleep Shirts Nightgown Long', '<p>Slit side for the hem</p><p>Close skin and breathable!</p><p>&nbsp;Cotton Blend</p><p>Short Sleeve</p><p>&nbsp;Soft of it to give you a comfortable touching</p><p>&nbsp;Lightweight provides comfortable feeling against skin</p>', NULL, NULL, 'Boo-Womens-Short-Sleeve-Plus-Size-Sleep-Shirts-Nightgown-Long-0aIiy', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:07:54', '2021-07-10 15:01:06'),
(97, 'So Sleepy Graphic Nightdress | Night', 'seller', 75, 47, NULL, NULL, NULL, '185,186,182,183,184,181', NULL, NULL, NULL, NULL, NULL, NULL, '180', NULL, NULL, '', '<p>Pattern Type: Slogan</p><p>Style: Casual</p><p>Type: Sleepshirts</p><p>Sheer: No</p><p>Color: Navy Blue</p><p>Neckline: Round Neck</p><p>Sleeve Length: Long Sleeve</p><p>Material: Polyester</p><p>Composition: 88% Polyester, 12% Cotton</p><p>Fabric: Slight Stretch</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'So Sleepy Graphic Nightdress | Night', '<p>Pattern Type: Slogan</p><p>Style: Casual</p><p>Type: Sleepshirts</p><p>Sheer: No</p><p>Color: Navy Blue</p><p>Neckline: Round Neck</p><p>Sleeve Length: Long Sleeve</p><p>Material: Polyester</p><p>Composition: 88% Polyester, 12% Cotton</p><p>Fabric: Slight Stretch</p>', NULL, NULL, 'So-Sleepy-Graphic-Nightdress--Night-9GbT7', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:19:50', '2021-07-10 15:01:04'),
(98, 'Boo Women\'s Summer Waffle Knit Pajama Set Sleeveless Tank Top and Shorts Loungewear', 'seller', 75, 47, NULL, NULL, NULL, '189,190,191,188', NULL, NULL, NULL, NULL, NULL, NULL, '187', NULL, NULL, '', '<p>Style: Casual</p><p>Color: Dusty Pink</p><p>Pattern Type: Plain</p><p>Type: Short Sets</p><p>Details: Button, Drawstring</p><p>Neckline: Scoop Neck</p><p>Sleeve Length: Sleeveless</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Cotton</p><p>Fabric: Non-Stretch</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Boo Women\'s Summer Waffle Knit Pajama Set Sleeveless Tank Top and Shorts Loungewear', '<p>Style: Casual</p><p>Color: Dusty Pink</p><p>Pattern Type: Plain</p><p>Type: Short Sets</p><p>Details: Button, Drawstring</p><p>Neckline: Scoop Neck</p><p>Sleeve Length: Sleeveless</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Cotton</p><p>Fabric: Non-Stretch</p>', NULL, NULL, 'Boo-Womens-Summer-Waffle-Knit-Pajama-Set-Sleeveless-Tank-Top-and-Shorts-Loungewear-O8chH', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:25:23', '2021-07-10 15:01:04'),
(99, 'BooThin Ladies Home Wear Short Vest Top', 'seller', 75, 47, NULL, NULL, NULL, '195,196,197,192,194', NULL, NULL, NULL, NULL, NULL, NULL, '193', NULL, NULL, '', '<p>Style: Casual/Sexy</p><p>Color: Black/Pink</p><p>Pattern Type: ColorBlock</p><p>Neckline: Round Neck</p><p>Type: Set</p><p>Sleeve Length: Sleeveless</p><p>Composition: Polyester</p><p>Material: Polyester</p><p>Fabric: Slight Stretch</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Boo Women\'s Summer Waffle Knit Pajama Set Sleeveless Tank Top and Shorts Loungewear', '<p>Style: Casual</p><p>Color: Dusty Pink</p><p>Pattern Type: Plain</p><p>Type: Short Sets</p><p>Details: Button, Drawstring</p><p>Neckline: Scoop Neck</p><p>Sleeve Length: Sleeveless</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Cotton</p><p>Fabric: Non-Stretch</p>', NULL, NULL, 'boo-womens-summer-waffle-knit-pajama-set-sleeveless-tank-top-and-shorts-loungewear-iqilb', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:29:09', '2021-12-18 15:26:08'),
(100, 'Boo embroidered pejama\'s with Tie Back Halter Top And Shorts', 'seller', 75, 47, NULL, NULL, NULL, '198', NULL, NULL, NULL, NULL, NULL, NULL, '199', NULL, NULL, '', '<p>Color: Gray</p><p>Details: Backless, Appliques, Knot</p><p>Fabric: Slight Stretch</p><p>Fit Type: Regular Fit</p><p>Composition: 93.8% Cotton, 6.2% Spandex</p><p>Neckline: Halter</p><p>Pattern Type: Floral</p><p>Season: Summer</p><p>Sleeve Length: Sleeveless</p><p>Style: Casual</p><p>Bottom Type: Shorts</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Boo embroidered pejama\'s with Tie Back Halter Top And Shorts', '<p>Color: Gray</p><p>Details: Backless, Appliques, Knot</p><p>Fabric: Slight Stretch</p><p>Fit Type: Regular Fit</p><p>Composition: 93.8% Cotton, 6.2% Spandex</p><p>Neckline: Halter</p><p>Pattern Type: Floral</p><p>Season: Summer</p><p>Sleeve Length: Sleeveless</p><p>Style: Casual</p><p>Bottom Type: Shorts</p>', NULL, NULL, 'Boo-embroidered-pejamas-with-Tie-Back-Halter-Top-And-Shorts-5zWEl', 0, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:34:32', '2021-12-18 15:26:05'),
(101, 'Letter Graphic Cami Top With Shorts Pajama Set', 'seller', 75, 141, NULL, NULL, NULL, '201,202,203,204', NULL, NULL, NULL, NULL, NULL, NULL, '200', NULL, NULL, '', '<p>Style: Cute</p><p>Color: Black and White</p><p>Pattern Type: Cartoon, Letter</p><p>Type: Short Sets</p><p>Neckline: Spaghetti Strap</p><p>Sleeve Length: Sleeveless</p><p>Sheer: No</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Spandex</p><p>Fabric: Non-Stretch</p>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Letter Graphic Cami Top With Shorts Pajama Set', '<p>Style: Cute</p><p>Color: Black and White</p><p>Pattern Type: Cartoon, Letter</p><p>Type: Short Sets</p><p>Neckline: Spaghetti Strap</p><p>Sleeve Length: Sleeveless</p><p>Sheer: No</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Spandex</p><p>Fabric: Non-Stretch</p>', NULL, NULL, 'letter-graphic-cami-top-with-shorts-pajama-set-izgxu', 1, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:37:59', '2022-01-09 12:54:43'),
(102, 'Pink Classic Pijama', 'seller', 75, 150, NULL, NULL, 3, '206', NULL, NULL, NULL, NULL, NULL, NULL, '205', NULL, NULL, '', NULL, 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', NULL, NULL, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Pink Classic Pijama', NULL, NULL, NULL, 'pink-classic-pijama-rhxek', 1, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:43:15', '2022-01-09 12:54:40'),
(103, 'Printed Ladder Cut Out Side Crop Cami Top', 'seller', 75, 150, NULL, NULL, NULL, '213,212,211,210,207,209', NULL, NULL, NULL, NULL, NULL, NULL, '208', NULL, NULL, '', '<p>Color: Black/Gray</p><p>Details: Cut Out</p><p>Fabric: High Stretch</p><p>Fit Type: Slim Fit</p><p>Length: Crop</p><p>Composition: 100% Polyester</p><p>Neckline: Spaghetti Strap</p><p>Season: Summer</p><p>Style: Sexy</p><p>Type: Cami</p><div><br></div>', 0.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, 0, 'pc', 1, 0.00, 'amount', 0, 0, 14.00, 'percent', 'flat_rate', 0.00, 0, 'Printed Ladder Cut Out Side Crop Cami Top', '<p>Color: Black/Gray</p><p>Details: Cut Out</p><p>Fabric: High Stretch</p><p>Fit Type: Slim Fit</p><p>Length: Crop</p><p>Composition: 100% Polyester</p><p>Neckline: Spaghetti Strap</p><p>Season: Summer</p><p>Style: Sexy</p><p>Type: Cami</p><div><br></div>', NULL, NULL, 'printed-ladder-cut-out-side-crop-cami-top-i01lb', 1, 0.00, NULL, 0, NULL, NULL, '2021-06-06 17:46:22', '2022-01-09 12:54:39'),
(114, 'New', 'seller', 85, 160, NULL, NULL, 3, '268', '50', '50', '50', '10', '10', NULL, '268', NULL, NULL, 'puma,done', '<p>fghrtyrtyrtyrt</p>', 100.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"25\"]}]', '[]', NULL, 0, 1, 0, 0, 0, 0, 0, '15', 1, 0.00, 'amount', 1639864800, 1639951199, 14.00, 'percent', 'flat_rate', 0.00, 0, 'newproduct', 'hjkyuiuyuityuty', '268', NULL, 'New-ttBn4', 1, 0.00, NULL, 0, NULL, NULL, '2021-12-19 05:25:25', '2021-12-19 05:25:25'),
(115, 'Clip Attachment', 'seller', 91, 137, 157, NULL, 3, '312,313', NULL, NULL, NULL, NULL, NULL, NULL, '312,313', NULL, NULL, 'Clip,Attachment', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 1000.00, 0.00, 1, '[]', '[]', '[\"#9966CC\",\"#FAEBD7\",\"#000000\"]', NULL, 0, 1, 1, 0, 0, 28, 1, 'pc', 1, 100.00, 'amount', 1643666400, 1644962340, 14.00, 'percent', 'flat_rate', 0.00, 1, 'Clip Attachment', 'Clip Attachment Clip Attachment', NULL, NULL, 'clip attachment', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-01 11:40:19', '2022-02-19 18:56:04'),
(116, 'Electronics Black Wrist Watch', 'seller', 91, 138, NULL, NULL, 4, '311,306,307,308,310', NULL, NULL, NULL, NULL, NULL, NULL, '310,309', NULL, NULL, 'watch,smart', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 1000.00, 0.00, 1, '[]', '[]', '[\"#F0F8FF\",\"#9966CC\",\"#000000\"]', NULL, 0, 1, 1, 1, 1, 24, 1, 'pc', 1, 100.00, 'amount', 1643666400, 1644962340, 14.00, 'percent', 'flat_rate', 0.00, 2, 'Electronics', 'Electronics  Electronics  Electronics', NULL, NULL, 'electronics-black-wrist-watch-6vdpr', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-01 11:43:23', '2022-02-21 12:17:26'),
(117, 'Clip Attachment', 'seller', 91, 140, 182, 184, 3, '318,319,317,320', NULL, NULL, NULL, NULL, NULL, NULL, '317', NULL, NULL, 'Clip,Attachment', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 1000.00, 0.00, 1, '[]', '[]', '[\"#9966CC\",\"#FAEBD7\",\"#000000\"]', NULL, 0, 1, 1, 1, 0, 13, 1, 'pc', 1, 100.00, 'amount', 1643666400, 1644962340, 14.00, 'percent', 'flat_rate', 0.00, 2, 'Clip Attachment', 'Clip Attachment Clip Attachment', NULL, NULL, 'clip attacrjjpz', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-01 12:35:04', '2022-02-19 18:49:44'),
(118, 'test', 'seller', 91, 139, 174, NULL, 4, '317,318', NULL, NULL, NULL, NULL, NULL, NULL, '318,319', NULL, NULL, '1,3,2', '<p>/63/876/87</p>', 1000.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 20, 1, 'pc', 1, 10.00, 'amount', 1644876000, 1647295140, 14.00, 'percent', 'flat_rate', 0.00, 0, 'test', '<p>/63/876/87</p>', NULL, NULL, 'test-kbc3f', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-15 15:06:25', '2022-02-15 15:07:10'),
(120, 'test name', 'seller', 91, 140, 182, 184, 5, '314,312', NULL, NULL, NULL, NULL, NULL, NULL, '313', NULL, NULL, 'IUI,IIII', '<p>TRHRTESEGRE</p>', 1000.00, 0.00, 1, '[]', '[]', '[\"#F0F8FF\",\"#9966CC\",\"#FAEBD7\"]', NULL, 0, 1, 0, 0, 0, 35, 1, 'pc', 1, 10.00, 'amount', 1644876000, 1647381540, 14.00, 'percent', 'flat_rate', 0.00, 0, 'test name', '<p>TRHRTESEGRE</p>', NULL, NULL, 'test-name-jvqxj', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-15 15:15:48', '2022-02-15 15:18:04'),
(121, 'test product', 'seller', 75, 138, 160, NULL, 3, '252,251,250', NULL, NULL, NULL, NULL, NULL, NULL, '251', NULL, NULL, 't,shirt', '<p>&nbsp;t-shirt&nbsp; t-shirt&nbsp; t-shirt</p>', 520.00, 0.00, 1, '[]', '[]', '[\"#000000\",\"#8B0000\",\"#F8F8FF\"]', NULL, 0, 1, 1, 0, 1, 28, 1, 'pc', 1, 20.00, 'amount', 1644962400, 1645135140, 14.00, 'percent', 'flat_rate', 0.00, 1, 'test product', '<p>&nbsp;t-shirt&nbsp; t-shirt&nbsp; t-shirt</p>', NULL, NULL, 'test-product-9yhKV', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-16 12:37:47', '2022-02-16 13:41:18'),
(122, 'test 22222', 'seller', 75, 138, 160, NULL, 4, '258,257', NULL, NULL, NULL, NULL, NULL, NULL, '258', 'youtube', NULL, '1,2,3', NULL, 1000.00, 0.00, 1, '[]', '[]', '[\"#F0F8FF\",\"#FAEBD7\"]', NULL, 0, 1, 1, 0, 1, 19, 1, 'pc', 1, 10.00, 'percent', 1644962400, 1645135140, 14.00, 'percent', 'flat_rate', 0.00, 2, 'test 22222', NULL, NULL, NULL, 'test-22222-mgcjb', 1, 0.00, NULL, 0, NULL, NULL, '2022-02-16 13:25:44', '2022-02-24 14:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `alert_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `seller_id`, `variant`, `sku`, `price`, `qty`, `alert_qty`, `created_at`, `updated_at`) VALUES
(364, 92, 75, 'Aqua-M', NULL, 150.00, 10, 5, '2021-05-29 19:03:47', '2021-05-29 19:03:47'),
(385, 94, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 16:58:33', '2021-06-06 16:58:33'),
(386, 95, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:04:05', '2021-06-06 17:04:05'),
(387, 96, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:07:55', '2021-06-06 17:07:55'),
(388, 97, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:19:50', '2021-06-06 17:19:50'),
(389, 98, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:25:23', '2021-06-06 17:25:23'),
(391, 100, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:34:32', '2021-06-06 17:34:32'),
(393, 99, 75, NULL, NULL, 0.00, 0, 0, '2021-06-06 17:39:45', '2021-06-06 17:39:45'),
(396, 104, 79, 'Black-M', NULL, 260.00, 7, 3, '2021-06-13 16:38:00', '2021-06-13 17:44:08'),
(397, 104, 79, 'Black-L', NULL, 260.00, 10, 3, '2021-06-13 16:38:00', '2021-06-13 16:38:00'),
(398, 104, 79, 'Black-XL', NULL, 260.00, 10, 3, '2021-06-13 16:38:00', '2021-06-13 16:38:00'),
(399, 104, 79, 'Black-XXL', NULL, 260.00, 10, 3, '2021-06-13 16:38:00', '2021-06-13 16:38:00'),
(400, 104, 79, 'Black-XXXL', NULL, 260.00, 10, 3, '2021-06-13 16:38:00', '2021-06-13 16:38:00'),
(405, 105, 75, NULL, NULL, 0.00, 0, 0, '2021-06-20 07:10:51', '2021-06-20 07:10:51'),
(406, 103, 75, NULL, NULL, 0.00, 0, 0, '2021-06-21 19:49:12', '2021-06-21 19:49:12'),
(436, 102, 75, NULL, NULL, 0.00, 0, 0, '2021-06-22 13:34:14', '2021-06-22 13:34:14'),
(531, 101, 75, NULL, NULL, 0.00, 0, 0, '2021-06-22 15:56:56', '2021-06-22 15:56:56'),
(680, 93, 75, NULL, NULL, 0.00, 0, 0, '2021-06-30 15:20:56', '2021-06-30 15:20:56'),
(824, 86, 75, 'S', 'S', 1150.00, 10, 3, '2021-07-03 14:04:29', '2021-07-03 14:04:29'),
(825, 86, 75, 'M', 'M', 1150.00, 10, 3, '2021-07-03 14:04:29', '2021-07-03 14:04:29'),
(826, 86, 75, 'L', 'L', 1150.00, 10, 3, '2021-07-03 14:04:29', '2021-07-03 14:04:29'),
(827, 86, 75, 'XL', 'XL', 1150.00, 10, 3, '2021-07-03 14:04:29', '2021-07-03 14:04:29'),
(848, 72, 75, 'Black-41', 'Black-41', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(849, 72, 75, 'Black-42', 'Black-42', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(850, 72, 75, 'Black-43', 'Black-43', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(851, 72, 75, 'Black-44', 'Black-44', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(852, 72, 75, 'Black-45', 'Black-45', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(853, 72, 75, 'Black-46', 'Black-46', 3850.00, 10, 3, '2021-07-03 14:07:28', '2021-07-03 14:07:28'),
(882, 89, 75, 'OrangeRed-S', 'OrangeRed-S', 1250.00, 10, 3, '2021-07-03 15:21:17', '2021-07-03 15:21:17'),
(883, 89, 75, 'OrangeRed-M', 'OrangeRed-M', 1250.00, 10, 3, '2021-07-03 15:21:17', '2021-07-03 15:21:17'),
(884, 89, 75, 'OrangeRed-L', 'OrangeRed-L', 1250.00, 10, 3, '2021-07-03 15:21:17', '2021-07-03 15:21:17'),
(885, 89, 75, 'OrangeRed-XL', 'OrangeRed-XL', 1250.00, 10, 3, '2021-07-03 15:21:17', '2021-07-03 15:21:17'),
(897, 70, 75, 'Blue-41', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(898, 70, 75, 'Blue-42', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(899, 70, 75, 'Blue-43', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(900, 70, 75, 'Blue-44', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(901, 70, 75, 'Blue-45', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(902, 70, 75, 'Blue-46', NULL, 2800.00, 10, 3, '2021-07-05 16:02:02', '2021-07-05 16:02:02'),
(903, 69, 75, '41', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(904, 69, 75, '42', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(905, 69, 75, '43', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(906, 69, 75, '44', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(907, 69, 75, '45', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(908, 69, 75, '46', NULL, 2800.00, 10, 3, '2021-07-05 16:07:04', '2021-07-05 16:07:04'),
(909, 71, 75, 'Blue-41', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(910, 71, 75, 'Blue-42', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(911, 71, 75, 'Blue-43', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(912, 71, 75, 'Blue-44', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(913, 71, 75, 'Blue-45', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(914, 71, 75, 'Blue-46', NULL, 2800.00, 10, 3, '2021-07-05 16:12:32', '2021-07-05 16:12:32'),
(915, 68, 75, '41', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(916, 68, 75, '42', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(917, 68, 75, '43', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(918, 68, 75, '44', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(919, 68, 75, '45', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(920, 68, 75, '46', NULL, 3600.00, 10, 3, '2021-07-05 16:19:50', '2021-07-05 16:19:50'),
(921, 90, 75, 'S', 'S', 1300.00, 10, 3, '2021-07-05 16:29:24', '2021-07-05 16:29:24'),
(922, 90, 75, 'M', 'M', 1300.00, 10, 3, '2021-07-05 16:29:24', '2021-07-05 16:29:24'),
(923, 90, 75, 'L', 'L', 1300.00, 10, 3, '2021-07-05 16:29:24', '2021-07-05 16:29:24'),
(924, 90, 75, 'XL', 'XL', 1300.00, 10, 3, '2021-07-05 16:29:24', '2021-07-05 16:29:24'),
(925, 76, 75, 'OrangeRed-M', 'OrangeRed-M', 1300.00, 4, 3, '2021-07-05 16:34:24', '2021-07-10 18:50:47'),
(926, 76, 75, 'OrangeRed-L', 'OrangeRed-L', 1300.00, 10, 3, '2021-07-05 16:34:24', '2021-07-05 16:34:24'),
(927, 76, 75, 'OrangeRed-XL', 'OrangeRed-XL', 1300.00, 10, 3, '2021-07-05 16:34:24', '2021-07-05 16:34:24'),
(928, 76, 75, 'OrangeRed-XXL', 'OrangeRed-XXL', 1300.00, 10, 3, '2021-07-05 16:34:24', '2021-07-05 16:34:24'),
(957, 75, 75, 'Black-S', 'Black-S', 2800.00, 8, 3, '2021-07-05 16:57:52', '2021-07-11 14:39:42'),
(958, 75, 75, 'Black-M', 'Black-M', 2800.00, 10, 3, '2021-07-05 16:57:52', '2021-07-05 16:57:52'),
(959, 75, 75, 'Black-L', 'Black-L', 2800.00, 10, 3, '2021-07-05 16:57:52', '2021-07-05 16:57:52'),
(960, 75, 75, 'Black-XL', 'Black-XL', 2800.00, 10, 3, '2021-07-05 16:57:52', '2021-07-05 16:57:52'),
(961, 75, 75, 'Black-XXL', 'Black-XXL', 2800.00, 10, 3, '2021-07-05 16:57:52', '2021-07-05 16:57:52'),
(962, 78, 75, 'OrangeRed-M', 'OrangeRed-M', 1300.00, 9, 3, '2021-07-05 17:12:51', '2021-07-10 18:42:40'),
(963, 78, 75, 'OrangeRed-L', 'OrangeRed-L', 1300.00, 10, 3, '2021-07-05 17:12:51', '2021-07-05 17:12:51'),
(964, 78, 75, 'OrangeRed-XL', 'OrangeRed-XL', 1300.00, 10, 3, '2021-07-05 17:12:51', '2021-07-05 17:12:51'),
(965, 78, 75, 'OrangeRed-XXL', 'OrangeRed-XXL', 1300.00, 10, 3, '2021-07-05 17:12:51', '2021-07-05 17:12:51'),
(966, 79, 75, 'Black-M', 'Black-M', 1300.00, 10, 3, '2021-07-05 17:15:50', '2021-07-05 17:15:50'),
(967, 79, 75, 'Black-L', 'Black-L', 1300.00, 10, 3, '2021-07-05 17:15:50', '2021-07-05 17:15:50'),
(968, 79, 75, 'Black-XL', 'Black-XL', 1300.00, 10, 3, '2021-07-05 17:15:50', '2021-07-05 17:15:50'),
(969, 79, 75, 'Black-XXL', 'Black-XXL', 1300.00, 10, 3, '2021-07-05 17:15:50', '2021-07-05 17:15:50'),
(974, 77, 75, 'White-M', 'White-M', 1300.00, 7, 10, '2021-07-05 17:21:53', '2021-07-10 14:49:29'),
(975, 77, 75, 'White-L', 'White-L', 1300.00, 10, 10, '2021-07-05 17:21:53', '2021-07-05 17:21:53'),
(976, 77, 75, 'White-XL', 'White-XL', 1300.00, 9, 10, '2021-07-05 17:21:53', '2022-01-27 12:17:11'),
(977, 77, 75, 'White-XXL', 'White-XXL', 1300.00, 10, 10, '2021-07-05 17:21:53', '2021-07-05 17:21:53'),
(978, 84, 75, 'M', 'M', 1250.00, 10, 3, '2021-07-05 17:24:44', '2021-07-05 17:24:44'),
(979, 84, 75, 'L', 'L', 1250.00, 10, 3, '2021-07-05 17:24:44', '2021-07-05 17:24:44'),
(980, 84, 75, 'XL', 'XL', 1250.00, 10, 3, '2021-07-05 17:24:44', '2021-07-05 17:24:44'),
(981, 84, 75, 'XXL', 'XXL', 1250.00, 10, 3, '2021-07-05 17:24:44', '2021-07-05 17:24:44'),
(982, 83, 75, 'M', 'M', 1400.00, 10, 3, '2021-07-05 17:27:52', '2021-07-05 17:27:52'),
(983, 83, 75, 'L', 'L', 1400.00, 10, 3, '2021-07-05 17:27:52', '2021-07-05 17:27:52'),
(984, 83, 75, 'XL', 'XL', 1400.00, 10, 3, '2021-07-05 17:27:52', '2021-07-05 17:27:52'),
(985, 83, 75, 'XXL', 'XXL', 1400.00, 10, 3, '2021-07-05 17:27:52', '2021-07-05 17:27:52'),
(986, 82, 75, 'Black-M', 'Black-M', 1200.00, 10, 3, '2021-07-05 17:30:40', '2021-07-05 17:30:40'),
(987, 82, 75, 'Black-L', 'Black-L', 1200.00, 10, 3, '2021-07-05 17:30:40', '2021-07-05 17:30:40'),
(988, 82, 75, 'Black-XL', 'Black-XL', 1200.00, 10, 3, '2021-07-05 17:30:40', '2021-07-05 17:30:40'),
(989, 82, 75, 'Black-XXL', 'Black-XXL', 1200.00, 10, 3, '2021-07-05 17:30:40', '2021-07-05 17:30:40'),
(990, 81, 75, 'DarkRed-M', 'DarkRed-M', 1200.00, 9, 3, '2021-07-05 17:35:06', '2022-01-09 15:32:56'),
(991, 81, 75, 'DarkRed-L', 'DarkRed-L', 1200.00, 10, 3, '2021-07-05 17:35:06', '2021-07-05 17:35:06'),
(992, 81, 75, 'DarkRed-XL', 'DarkRed-XL', 1200.00, 10, 3, '2021-07-05 17:35:06', '2021-07-05 17:35:06'),
(993, 81, 75, 'DarkRed-XXL', 'DarkRed-XXL', 1200.00, 10, 3, '2021-07-05 17:35:06', '2021-07-05 17:35:06'),
(994, 91, 75, 'S', 'S', 1300.00, 10, 3, '2021-07-05 17:38:53', '2021-07-05 17:38:53'),
(995, 91, 75, 'M', 'M', 1300.00, 10, 3, '2021-07-05 17:38:53', '2021-07-05 17:38:53'),
(996, 91, 75, 'L', 'L', 1300.00, 10, 3, '2021-07-05 17:38:53', '2021-07-05 17:38:53'),
(997, 91, 75, 'XL', 'XL', 1300.00, 10, 3, '2021-07-05 17:38:53', '2021-07-05 17:38:53'),
(998, 88, 75, 'OrangeRed-S', 'OrangeRed-S', 1300.00, 9, 3, '2021-07-05 17:41:44', '2021-07-10 14:25:27'),
(999, 88, 75, 'OrangeRed-M', 'OrangeRed-M', 1300.00, 10, 3, '2021-07-05 17:41:44', '2021-07-05 17:41:44'),
(1000, 88, 75, 'OrangeRed-L', 'OrangeRed-L', 1300.00, 10, 3, '2021-07-05 17:41:44', '2021-07-05 17:41:44'),
(1001, 88, 75, 'OrangeRed-XL', 'OrangeRed-XL', 1300.00, 10, 3, '2021-07-05 17:41:44', '2021-07-05 17:41:44'),
(1002, 87, 75, 'S', 'S', 1300.00, 9, 3, '2021-07-05 17:44:06', '2021-07-10 12:22:45'),
(1003, 87, 75, 'M', 'M', 1300.00, 10, 3, '2021-07-05 17:44:06', '2021-07-05 17:44:06'),
(1004, 87, 75, 'L', 'L', 1300.00, 10, 3, '2021-07-05 17:44:06', '2021-07-05 17:44:06'),
(1005, 87, 75, 'XL', 'XL', 1300.00, 10, 3, '2021-07-05 17:44:06', '2021-07-05 17:44:06'),
(1010, 85, 75, 'M', 'M', 1000.00, 10, 3, '2021-07-05 17:49:07', '2021-07-05 17:49:07'),
(1011, 85, 75, 'L', 'L', 1000.00, 10, 3, '2021-07-05 17:49:07', '2021-07-05 17:49:07'),
(1012, 85, 75, 'XL', 'XL', 1000.00, 10, 3, '2021-07-05 17:49:07', '2021-07-05 17:49:07'),
(1013, 85, 75, 'XXL', 'XXL', 1000.00, 10, 3, '2021-07-05 17:49:07', '2021-07-05 17:49:07'),
(1014, 74, 75, 'OrangeRed-S', 'OrangeRed-S', 1300.00, 9, 3, '2021-07-05 17:57:48', '2022-01-10 13:04:23'),
(1015, 74, 75, 'OrangeRed-M', 'OrangeRed-M', 1300.00, 10, 3, '2021-07-05 17:57:48', '2021-07-05 17:57:48'),
(1016, 74, 75, 'OrangeRed-L', 'OrangeRed-L', 1300.00, 10, 3, '2021-07-05 17:57:48', '2021-07-05 17:57:48'),
(1017, 74, 75, 'OrangeRed-XL', 'OrangeRed-XL', 1300.00, 10, 3, '2021-07-05 17:57:48', '2021-07-05 17:57:48'),
(1018, 74, 75, 'OrangeRed-XXL', 'OrangeRed-XXL', 1300.00, 10, 3, '2021-07-05 17:57:48', '2021-07-05 17:57:48'),
(1019, 73, 75, 'Gray-S', 'Gray-S', 1300.00, 10, 3, '2021-07-05 18:01:07', '2021-07-05 18:01:07'),
(1020, 73, 75, 'Gray-M', 'Gray-M', 1300.00, 10, 3, '2021-07-05 18:01:07', '2021-07-05 18:01:07'),
(1021, 73, 75, 'Gray-L', 'Gray-L', 1300.00, 10, 3, '2021-07-05 18:01:07', '2021-07-05 18:01:07'),
(1022, 73, 75, 'Gray-XL', 'Gray-XL', 1300.00, 10, 3, '2021-07-05 18:01:07', '2021-07-05 18:01:07'),
(1023, 73, 75, 'Gray-XXL', 'Gray-XXL', 1300.00, 10, 3, '2021-07-05 18:01:07', '2021-07-05 18:01:07'),
(1028, 80, 75, 'DarkSlateBlue-M', 'DarkSlateBlue-M', 1300.00, 10, 3, '2021-07-05 18:06:07', '2021-07-05 18:06:07'),
(1029, 80, 75, 'DarkSlateBlue-L', 'DarkSlateBlue-L', 1300.00, 10, 3, '2021-07-05 18:06:07', '2021-07-05 18:06:07'),
(1030, 80, 75, 'DarkSlateBlue-XL', 'DarkSlateBlue-XL', 1300.00, 10, 3, '2021-07-05 18:06:07', '2021-07-05 18:06:07'),
(1031, 80, 75, 'DarkSlateBlue-XXL', 'DarkSlateBlue-XXL', 1300.00, 10, 3, '2021-07-05 18:06:07', '2021-07-05 18:06:07'),
(1032, 109, 85, NULL, NULL, 250.00, 5, 5, '2021-12-13 07:05:11', '2021-12-13 07:05:11'),
(1039, 111, 85, 'AntiqueWhite', NULL, 500.00, 0, 0, '2021-12-13 08:52:10', '2021-12-13 08:52:10'),
(1040, 110, 85, 'AliceBlue', 'AliceBlue', 150.00, 1, 10, '2021-12-13 08:59:03', '2021-12-19 07:14:52'),
(1041, 110, 85, 'AntiqueWhite', 'AntiqueWhite', 150.00, 9, 10, '2021-12-13 08:59:03', '2021-12-13 08:59:03'),
(1042, 110, 85, 'Aquamarine', 'Aquamarine', 150.00, 9, 10, '2021-12-13 08:59:03', '2021-12-13 08:59:03'),
(1043, 112, 85, 'Amethyst-2xl', NULL, 100.00, 10, 1, '2021-12-16 07:53:17', '2021-12-16 07:53:17'),
(1044, 113, 85, NULL, NULL, 150.00, 100, 1, '2021-12-16 08:00:16', '2021-12-16 08:00:16'),
(1045, 114, 85, '25', NULL, 100.00, 9, 1, '2021-12-19 05:25:25', '2021-12-19 05:25:25'),
(1071, 117, 91, 'Amethyst', 'Amethyst', 1000.00, 5, 1, '2022-02-07 17:14:39', '2022-02-07 17:14:39'),
(1072, 117, 91, 'AntiqueWhite', 'AntiqueWhite', 1000.00, 5, 1, '2022-02-07 17:14:39', '2022-02-07 17:14:39'),
(1073, 117, 91, 'Black', 'Black', 1000.00, 5, 0, '2022-02-07 17:14:39', '2022-02-07 17:14:39'),
(1093, 116, 91, 'AliceBlue', 'AliceBlue', 1000.00, 10, 1, '2022-02-15 14:45:11', '2022-02-15 14:45:11'),
(1094, 116, 91, 'Amethyst', 'Amethyst', 1000.00, 10, 1, '2022-02-15 14:45:11', '2022-02-15 14:45:11'),
(1095, 116, 91, 'Black', 'Black', 1000.00, 5, 1, '2022-02-15 14:45:11', '2022-02-15 14:45:11'),
(1099, 115, 91, 'Amethyst', 'Amethyst', 1000.00, 10, 1, '2022-02-15 15:04:58', '2022-02-15 15:04:58'),
(1100, 115, 91, 'AntiqueWhite', 'AntiqueWhite', 1000.00, 10, 1, '2022-02-15 15:04:58', '2022-02-15 15:04:58'),
(1101, 115, 91, 'Black', 'Black', 1000.00, 10, 1, '2022-02-15 15:04:58', '2022-02-15 15:04:58'),
(1103, 118, 91, NULL, NULL, 1000.00, 20, 1, '2022-02-15 15:07:10', '2022-02-15 15:07:10'),
(1104, 119, 91, 'AntiqueWhite', NULL, 1000.00, 10, 2, '2022-02-15 15:11:44', '2022-02-15 15:11:44'),
(1105, 119, 91, 'Aqua', NULL, 1200.00, 15, 1, '2022-02-15 15:11:44', '2022-02-15 15:11:44'),
(1106, 119, 91, 'Aquamarine', NULL, 1250.00, 15, 1, '2022-02-15 15:11:44', '2022-02-15 15:11:44'),
(1110, 120, 91, 'AliceBlue', 'AliceBlue', 1000.00, 10, 1, '2022-02-15 15:18:03', '2022-02-15 15:18:03'),
(1111, 120, 91, 'Amethyst', 'Amethyst', 1200.00, 15, 1, '2022-02-15 15:18:03', '2022-02-15 15:18:03'),
(1112, 120, 91, 'AntiqueWhite', 'AntiqueWhite', 1250.00, 10, 1, '2022-02-15 15:18:04', '2022-02-15 15:18:04'),
(1113, 121, 75, 'Black', 'Black150', 520.00, 15, 1, '2022-02-16 12:37:47', '2022-02-16 12:37:47'),
(1114, 121, 75, 'DarkRed', 'DarkRed150', 520.00, 10, 2, '2022-02-16 12:37:47', '2022-02-16 12:37:47'),
(1115, 121, 75, 'GhostWhite', 'GhostWhite150', 520.00, 5, 1, '2022-02-16 12:37:47', '2022-02-16 12:37:47'),
(1118, 122, 9, 'AliceBlue', '11111111111', 1000.00, 9, 1, '2022-02-23 12:26:57', '2022-02-23 12:26:57'),
(1119, 122, 9, 'AntiqueWhite', '4444444444444', 1000.00, 10, 1, '2022-02-23 12:26:57', '2022-02-23 12:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(48, 68, 'Puma F116 Skin SF Ferrari Scuderia', 'pc', '<p>Refined Puma men\'s sneakers, racing inspiration. Made in collaboration with the Ferrari style centre. Dedicated to German brand lovers, it is ideal for free time and for a sought after look. Made of leather with great attention to detail and features the official Ferrari Scuderia logos. Lightweight and functional, ensures maximum comfort. New collection<br></p>', 'en', '2021-05-25 18:16:56', '2021-05-25 18:16:56'),
(49, 69, 'Sepatu Running PUMA DESCENDANT', 'pc', '<p>Puma Descendant V3 tennis shoes. Gray tennis shoes, textured surface, phosphorescent contrasting edges, printed appliqué with the brand\'s logo. Platform 3 cm.; Outer Material: Synthetic Inner Material: Textile Sole Material: Synthetic Closure: Lace; Weight: 288g<br></p>', 'en', '2021-05-25 18:59:27', '2021-05-25 18:59:27'),
(50, 70, 'PUMA Descendant V 3 18816510, Chaussures Running', 'pc', '<p>Certainly the flagship of the summer, discover this model Puma Descendant V 3 18816510, Running shoes.<br></p>', 'en', '2021-05-25 19:14:31', '2021-05-25 19:14:31'),
(51, 71, 'PUMA 18816508 DESCENDANT ERKEK SPOR AYAKKABI', 'pc', '<p>Step out with pride in these stylish Sneakers with an inspirational message,&nbsp; These shoes are all about accentuating the positive – just like the bold graphic&nbsp; Slip on a pair and feel proud of yourself. You should be.<br></p>', 'en', '2021-05-25 19:31:32', '2021-05-25 19:31:32'),
(52, 73, 'Puma Scuderia Ferrari Men\'s Long Sleeve Top', 'PC', '<p>Long sleeve top Ferrari racing team. Colour blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari<br></p>', 'en', '2021-05-26 19:01:31', '2021-05-26 19:01:31'),
(53, 74, 'PUMA Men\'s T-Shirt', 'PC', '<p>Ferrari shield polyurethane badge</p><p>PUMA cat on sleeve</p><p>Main Material 1: 100% Cotton</p><p>Machine Wash</p><p>Scuderia Ferrari Long sleeve Ferrari top. Color blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari</p>', 'en', '2021-05-26 19:10:08', '2021-05-26 19:10:08'),
(54, 75, 'Puma Men\'s PANT Cargos', 'PC', '<p>&nbsp;Care Instructions: Machine Wash</p><p>100% Cotton</p><p>Elastic closure</p><p>Regular machine wash</p><p>Made in India</p><p>Performance on all levels - This is PUMA.</p><p>As one of the world’s leading sports brands, PUMA believes in standing on the same playing field as the fastest athletes on the planet. With a mission of Forever Faster, PUMA shares excitement in Teams ports, innovates Golf, brings style into Running and Training and performance into Motorsports. PUMA has associations with some of the most elite athletes, such as sprint legend Usain Bolt, star striker Antoine Griezmann, Indian Cricket Captain Virat Kohli, fashion icons like Cara Delevingne, Selena Gomez, and many more.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'en', '2021-05-26 19:30:24', '2021-05-26 19:31:43'),
(55, 76, 'PUMA Men\'s Scuderia Ferrari Polo', 'PC', '<p>Ferrari shield polyurethane badge; PUMA cat logo high density print; scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>100% Cotton</p><p>Imported</p><p>Machine Wash</p><p>Ferrari shield polyurethane badge</p><p>Scuderia ferrari wording high density print</p>', 'en', '2021-05-26 19:40:44', '2021-05-26 19:40:44'),
(56, 77, 'PUMA Men\'s Sf Polo White', 'PC', '<p>Ferrari shield PU badge; PUMA cat logo high density print; Scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'en', '2021-05-26 19:57:15', '2021-05-26 19:57:15'),
(57, 78, 'Solid Men Polo Neck Red T-Shirt', 'PC', '<p>Ferrari emblem in polyurethane; high density Puma Cat logo; Scuderia Ferrari high-density print; original print, applied by high density printing; Puma and Ferrari 10th Anniversary Thermal emblem<br></p>', 'en', '2021-05-26 20:10:30', '2021-05-26 20:10:30'),
(58, 79, 'PUMA Men\'s Sf Polo', 'PC', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'en', '2021-05-26 20:32:29', '2021-05-26 20:32:29'),
(59, 80, 'Puma men\'s Scuderia Ferrari Polo shirt-dress blues-large', 'PC', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'en', '2021-05-26 20:40:54', '2021-05-26 20:40:54'),
(60, 81, 'PUMA Men\'s Sf Short Sleeve Tee', 'PC', '<p>Puma Ferrari Men\'s Scuderia Ferrari Tee, Red</p><p>Perfect item for any Ferrari Fan</p><p>Mesh paneling at shoulders</p><p>Contrast color side panels</p><p>Ferrari Shield Logo at left chest; PUMA Cat Logo at left shoulder</p>', 'en', '2021-05-26 20:50:44', '2021-05-26 20:50:44'),
(61, 82, 'PUMA SF T-Shirt, men', 'PC', '<p>Tea T-shirt THE Colors of the stable Ferrari logo Ferrari<br></p>', 'en', '2021-05-26 20:58:34', '2021-05-26 20:58:34'),
(62, 83, 'Puma Ferrari Graphic', 'PC', NULL, 'en', '2021-05-26 22:40:40', '2021-05-26 22:40:40'),
(63, 84, 'Puma BMW MSP Race Tee, White', 'PC', '<p>Fabrics 100% Cotton</p><p>Ideal For Men</p><p>Occasion Casual</p><p>Types of Closures Pullover</p><p>Pattern &amp; Print Graphic print</p><p>Care Machine washable</p><p>Type of Neckline &amp; Collar Crew neckline</p><p>Type of Hem Straight hem</p><p>Disclaimer Product color may slightly vary due to photographic lighting sources or your monitor settings.</p><p>Sleeve Length Short Sleeve</p>', 'en', '2021-05-27 15:30:41', '2021-05-27 15:42:29'),
(64, 85, 'Puma Mens BMW Summer Short, Team Blue', 'PC', '<p>Fabrics 100%Polyster</p><p>Ideal for men</p><p>Sportswear type Shorts</p>', 'en', '2021-05-27 16:48:20', '2021-05-27 17:01:47'),
(65, 86, 'Puma  Running Tights for Women - Black, Pink', 'PC', '<p>Puma Performance three-quarter tights combines technical fabrics and ergonomic construction to meet the rigorous demands of athletes. With dryCELL performance fab<br></p>', 'en', '2021-05-27 17:11:30', '2021-05-27 17:11:30'),
(66, 87, 'PUMA Solid Women Polo Neck Black T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Ideal for women</p>', 'en', '2021-05-27 17:37:45', '2021-05-27 17:43:14'),
(67, 88, 'PUMA Solid Women Polo Neck red T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Neck Type</p><p>Polo Neck</p><p>Ideal For Women</p>', 'en', '2021-05-27 19:20:46', '2021-05-27 19:40:48'),
(68, 89, 'WOMEN PUMA FERRARI Half sleeve', 'PC', '<p>This women\'s T-shirt has the perfect style for Ferrari lovers.</p><p>Gender: Women</p><p>Brand: Puma</p><p>Color: burgundy</p><p>round neckline</p><p>Ferrari badge print</p><p>Cotton and modal</p>', 'en', '2021-05-27 19:46:28', '2021-05-27 19:46:28'),
(69, 90, 'Women  Polo Puma Ferrari 10th Anniversary Partnership Xs', 'PC', '<p>Exclusive Polo Puma Ferrari 10Th Anniversary Partnership XS<br></p>', 'en', '2021-05-27 19:57:25', '2021-05-27 19:57:25'),
(70, 91, 'Solid Women Polo Neck Red T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Polyeseter Viscose Blend</p><p>Neck Type Polo Neck</p><p>Ideal For Women</p>', 'en', '2021-05-27 20:04:34', '2021-05-27 20:04:34'),
(72, 93, 'Letter Print Ripped Neck Knot Tee', 'pc', '<p>Color: Yellow</p><p>Details: Knot, Cut Out<br></p><p>Fabric: Slight Stretch<br></p><p>Fit Type: Regular Fit<br></p><p>Length: Crop<br></p><p>Composition: 100% Polyester<br></p><p>Neckline: V neck<br></p><p>Pattern Type: Letter<br></p><p>Season: Summer</p><p>Sleeve Length: Short Sleeve<br></p><p>Style: Casual<br></p>', 'en', '2021-06-06 16:48:48', '2021-06-06 16:48:48'),
(73, 94, 'Cropped Letter Lace Up Top - White', 'pc', '<p>Cozy and soft short sleeve top features an inspiring letter logo that reads\' no hard feelings \' at the front and the contrast lace-up detailing along the bottom with a super cropped fit. It is so comfy that you are going to wear it around the clock, just pair it with high waisted denims for an easy chic look.</p><p>Style: Fashion</p><p>Shirt Length: Short</p><p>Collar: Round Collar</p><p>Sleeves Length: Short</p><p>Material: Cotton,Polyester</p><p>Decoration: Lace up</p><p>Pattern Type: Letter</p><p>Seasons: Summer</p>', 'en', '2021-06-06 16:58:33', '2021-06-06 16:58:33'),
(74, 95, 'Letter Print Cami & Frill Trim Shorts PJ Set', 'pc', '<p>Color: Pink</p><p>Details: Frill</p><p>Composition: 90% Polyester, 10% Cotton</p><p>Neckline: Spaghetti Strap</p><p>Pattern Type: Cartoon, Letter</p><p>Sleeve Length: Sleeveless</p><p>Style: Cute</p><p>Type: Short Sets</p><p>Material: Polyester</p>', 'en', '2021-06-06 17:04:05', '2021-06-06 17:04:05'),
(75, 96, 'Boo Women\'s Short Sleeve Plus Size Sleep Shirts Nightgown Long', 'pc', '<p>Slit side for the hem</p><p>Close skin and breathable!</p><p>&nbsp;Cotton Blend</p><p>Short Sleeve</p><p>&nbsp;Soft of it to give you a comfortable touching</p><p>&nbsp;Lightweight provides comfortable feeling against skin</p>', 'en', '2021-06-06 17:07:55', '2021-06-06 17:07:55'),
(76, 97, 'So Sleepy Graphic Nightdress | Night', 'pc', '<p>Pattern Type: Slogan</p><p>Style: Casual</p><p>Type: Sleepshirts</p><p>Sheer: No</p><p>Color: Navy Blue</p><p>Neckline: Round Neck</p><p>Sleeve Length: Long Sleeve</p><p>Material: Polyester</p><p>Composition: 88% Polyester, 12% Cotton</p><p>Fabric: Slight Stretch</p>', 'en', '2021-06-06 17:19:50', '2021-06-06 17:19:50'),
(77, 98, 'Boo Women\'s Summer Waffle Knit Pajama Set Sleeveless Tank Top and Shorts Loungewear', 'pc', '<p>Style: Casual</p><p>Color: Dusty Pink</p><p>Pattern Type: Plain</p><p>Type: Short Sets</p><p>Details: Button, Drawstring</p><p>Neckline: Scoop Neck</p><p>Sleeve Length: Sleeveless</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Cotton</p><p>Fabric: Non-Stretch</p>', 'en', '2021-06-06 17:25:23', '2021-06-06 17:25:23'),
(78, 99, 'BooThin Ladies Home Wear Short Vest Top', 'pc', '<p>Style: Casual/Sexy</p><p>Color: Black/Pink</p><p>Pattern Type: ColorBlock</p><p>Neckline: Round Neck</p><p>Type: Set</p><p>Sleeve Length: Sleeveless</p><p>Composition: Polyester</p><p>Material: Polyester</p><p>Fabric: Slight Stretch</p>', 'en', '2021-06-06 17:29:09', '2021-06-06 17:39:45'),
(79, 100, 'Boo embroidered pejama\'s with Tie Back Halter Top And Shorts', 'pc', '<p>Color: Gray</p><p>Details: Backless, Appliques, Knot</p><p>Fabric: Slight Stretch</p><p>Fit Type: Regular Fit</p><p>Composition: 93.8% Cotton, 6.2% Spandex</p><p>Neckline: Halter</p><p>Pattern Type: Floral</p><p>Season: Summer</p><p>Sleeve Length: Sleeveless</p><p>Style: Casual</p><p>Bottom Type: Shorts</p>', 'en', '2021-06-06 17:34:32', '2021-06-06 17:34:32'),
(80, 101, 'Letter Graphic Cami Top With Shorts Pajama Set', 'pc', '<p>Style: Cute</p><p>Color: Black and White</p><p>Pattern Type: Cartoon, Letter</p><p>Type: Short Sets</p><p>Neckline: Spaghetti Strap</p><p>Sleeve Length: Sleeveless</p><p>Sheer: No</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Spandex</p><p>Fabric: Non-Stretch</p>', 'en', '2021-06-06 17:37:59', '2021-06-06 17:37:59'),
(81, 102, 'Pink Classic Pijama', 'pc', NULL, 'en', '2021-06-06 17:43:15', '2021-06-06 17:43:15'),
(82, 103, 'Printed Ladder Cut Out Side Crop Cami Top', 'pc', '<p>Color: Black/Gray</p><p>Details: Cut Out</p><p>Fabric: High Stretch</p><p>Fit Type: Slim Fit</p><p>Length: Crop</p><p>Composition: 100% Polyester</p><p>Neckline: Spaghetti Strap</p><p>Season: Summer</p><p>Style: Sexy</p><p>Type: Cami</p><div><br></div>', 'en', '2021-06-06 17:46:22', '2021-06-06 17:46:22'),
(85, 103, 'Printed Ladder Cut Out Side Crop Cami Top', 'pc', '<p>Color: Black/Gray</p><p>Details: Cut Out</p><p>Fabric: High Stretch</p><p>Fit Type: Slim Fit</p><p>Length: Crop</p><p>Composition: 100% Polyester</p><p>Neckline: Spaghetti Strap</p><p>Season: Summer</p><p>Style: Sexy</p><p>Type: Cami</p><div><br></div>', 'eg', '2021-06-21 19:49:12', '2021-06-21 19:49:12'),
(86, 73, 'Puma Scuderia Ferrari Men\'s Long Sleeve Top', 'PC', '<p>Long sleeve top Ferrari racing team. Colour blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari<br></p>', 'eg', '2021-06-22 13:27:52', '2021-06-22 13:27:52'),
(87, 74, 'PUMA Men\'s T-Shirt', 'PC', '<p>Ferrari shield polyurethane badge</p><p>PUMA cat on sleeve</p><p>Main Material 1: 100% Cotton</p><p>Machine Wash</p><p>Scuderia Ferrari Long sleeve Ferrari top. Color blocking down sleeves for a great fit and added detail. Lines to replicate the Ferrari</p>', 'eg', '2021-06-22 13:30:37', '2021-06-22 13:30:37'),
(88, 75, 'Puma Men\'s PANT Cargos', 'PC', '<p>&nbsp;Care Instructions: Machine Wash</p><p>100% Cotton</p><p>Elastic closure</p><p>Regular machine wash</p><p>Made in India</p><p>Performance on all levels - This is PUMA.</p><p>As one of the world’s leading sports brands, PUMA believes in standing on the same playing field as the fastest athletes on the planet. With a mission of Forever Faster, PUMA shares excitement in Teams ports, innovates Golf, brings style into Running and Training and performance into Motorsports. PUMA has associations with some of the most elite athletes, such as sprint legend Usain Bolt, star striker Antoine Griezmann, Indian Cricket Captain Virat Kohli, fashion icons like Cara Delevingne, Selena Gomez, and many more.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'eg', '2021-06-22 13:32:27', '2021-06-22 13:32:27'),
(89, 76, 'PUMA Men\'s Scuderia Ferrari Polo', 'PC', '<p>Ferrari shield polyurethane badge; PUMA cat logo high density print; scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>100% Cotton</p><p>Imported</p><p>Machine Wash</p><p>Ferrari shield polyurethane badge</p><p>Scuderia ferrari wording high density print</p>', 'eg', '2021-06-22 13:33:41', '2021-06-22 13:33:41'),
(90, 102, 'Pink Classic Pijama', 'pc', NULL, 'eg', '2021-06-22 13:34:14', '2021-06-22 13:34:14'),
(91, 77, 'PUMA Men\'s Sf Polo White', 'PC', '<p>Ferrari shield PU badge; PUMA cat logo high density print; Scuderia Ferrari wording high density print; sign off high density print; anniversary heat transfer red label</p><p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'eg', '2021-06-22 13:34:16', '2021-06-22 13:34:16'),
(92, 78, 'Solid Men Polo Neck Red T-Shirt', 'PC', '<p>Ferrari emblem in polyurethane; high density Puma Cat logo; Scuderia Ferrari high-density print; original print, applied by high density printing; Puma and Ferrari 10th Anniversary Thermal emblem<br></p>', 'eg', '2021-06-22 13:34:53', '2021-06-22 13:34:53'),
(93, 79, 'PUMA Men\'s Sf Polo', 'PC', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'eg', '2021-06-22 13:36:57', '2021-06-22 13:36:57'),
(94, 80, 'Puma men\'s Scuderia Ferrari Polo shirt-dress blues-large', 'PC', '<p>Ferrari shield polyurethane badge</p><p>Anniversary label</p><p>100% Cotton</p><p>Machine Wash</p><p>Sf Polo Shirt</p><p>Short Sleeve</p>', 'eg', '2021-06-22 13:38:01', '2021-06-22 13:38:01'),
(95, 81, 'PUMA Men\'s Sf Short Sleeve Tee', 'PC', '<p>Puma Ferrari Men\'s Scuderia Ferrari Tee, Red</p><p>Perfect item for any Ferrari Fan</p><p>Mesh paneling at shoulders</p><p>Contrast color side panels</p><p>Ferrari Shield Logo at left chest; PUMA Cat Logo at left shoulder</p>', 'eg', '2021-06-22 13:38:46', '2021-06-22 13:38:46'),
(96, 82, 'PUMA SF T-Shirt, men', 'PC', '<p>Tea T-shirt THE Colors of the stable Ferrari logo Ferrari<br></p>', 'eg', '2021-06-22 13:39:24', '2021-06-22 13:39:24'),
(97, 83, 'Puma Ferrari Graphic', 'PC', NULL, 'eg', '2021-06-22 13:40:29', '2021-06-22 13:40:29'),
(98, 84, 'Puma BMW MSP Race Tee, White', 'PC', '<p>Fabrics 100% Cotton</p><p>Ideal For Men</p><p>Occasion Casual</p><p>Types of Closures Pullover</p><p>Pattern &amp; Print Graphic print</p><p>Care Machine washable</p><p>Type of Neckline &amp; Collar Crew neckline</p><p>Type of Hem Straight hem</p><p>Disclaimer Product color may slightly vary due to photographic lighting sources or your monitor settings.</p><p>Sleeve Length Short Sleeve</p>', 'eg', '2021-06-22 13:41:39', '2021-06-22 13:41:39'),
(99, 86, 'Puma  Running Tights for Women - Black, Pink', 'PC', '<p>Puma Performance three-quarter tights combines technical fabrics and ergonomic construction to meet the rigorous demands of athletes. With dryCELL performance fab<br></p>', 'eg', '2021-06-22 13:43:00', '2021-06-22 13:43:00'),
(100, 87, 'PUMA Solid Women Polo Neck Black T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Ideal for women</p>', 'eg', '2021-06-22 13:43:32', '2021-06-22 13:43:32'),
(101, 88, 'PUMA Solid Women Polo Neck red T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Cotton Blend</p><p>Neck Type</p><p>Polo Neck</p><p>Ideal For Women</p>', 'eg', '2021-06-22 13:44:19', '2021-06-22 13:44:19'),
(102, 89, 'WOMEN PUMA FERRARI Half sleeve', 'PC', '<p>This women\'s T-shirt has the perfect style for Ferrari lovers.</p><p>Gender: Women</p><p>Brand: Puma</p><p>Color: burgundy</p><p>round neckline</p><p>Ferrari badge print</p><p>Cotton and modal</p>', 'eg', '2021-06-22 13:44:56', '2021-06-22 13:44:56'),
(103, 90, 'Women  Polo Puma Ferrari 10th Anniversary Partnership Xs', 'PC', '<p>Exclusive Polo Puma Ferrari 10Th Anniversary Partnership XS<br></p>', 'eg', '2021-06-22 13:45:48', '2021-06-22 13:45:48'),
(104, 91, 'Solid Women Polo Neck Red T-Shirt', 'PC', '<p>Type Polo Neck</p><p>Sleeve Half Sleeve</p><p>Fit Slim</p><p>Fabric Polyeseter Viscose Blend</p><p>Neck Type Polo Neck</p><p>Ideal For Women</p>', 'eg', '2021-06-22 13:46:32', '2021-06-22 13:46:32'),
(105, 72, 'PUMA - SF Drift Cat 5 Ultra PUM - 30592102', 'pc', '<p>Ferrari Drift Cat 5 NM Trainers</p><p>100% Synthetic</p><p>Fabric sole</p><p>Upper material: synthetic</p>', 'eg', '2021-06-22 13:49:41', '2021-06-22 13:49:41'),
(106, 71, 'PUMA 18816508 DESCENDANT ERKEK SPOR AYAKKABI', 'pc', '<p>Step out with pride in these stylish Sneakers with an inspirational message,&nbsp; These shoes are all about accentuating the positive – just like the bold graphic&nbsp; Slip on a pair and feel proud of yourself. You should be.<br></p>', 'eg', '2021-06-22 13:50:30', '2021-06-22 13:50:30'),
(107, 70, 'PUMA Descendant V 3 18816510, Chaussures Running', 'pc', '<p>Certainly the flagship of the summer, discover this model Puma Descendant V 3 18816510, Running shoes.<br></p>', 'eg', '2021-06-22 13:51:27', '2021-06-22 13:51:27'),
(108, 69, 'Sepatu Running PUMA DESCENDANT', 'pc', '<p>Puma Descendant V3 tennis shoes. Gray tennis shoes, textured surface, phosphorescent contrasting edges, printed appliqué with the brand\'s logo. Platform 3 cm.; Outer Material: Synthetic Inner Material: Textile Sole Material: Synthetic Closure: Lace; Weight: 288g<br></p>', 'eg', '2021-06-22 13:52:17', '2021-06-22 13:52:17'),
(109, 68, 'Puma F116 Skin SF Ferrari Scuderia', 'pc', '<p>Refined Puma men\'s sneakers, racing inspiration. Made in collaboration with the Ferrari style centre. Dedicated to German brand lovers, it is ideal for free time and for a sought after look. Made of leather with great attention to detail and features the official Ferrari Scuderia logos. Lightweight and functional, ensures maximum comfort. New collection<br></p>', 'eg', '2021-06-22 13:52:57', '2021-06-22 13:52:57'),
(110, 85, 'Puma Mens BMW Summer Short, Team Blue', 'PC', '<p>Fabrics 100%Polyster</p><p>Ideal for men</p><p>Sportswear type Shorts</p>', 'eg', '2021-06-22 13:53:34', '2021-06-22 13:53:34'),
(111, 101, 'Letter Graphic Cami Top With Shorts Pajama Set', 'pc', '<p>Style: Cute</p><p>Color: Black and White</p><p>Pattern Type: Cartoon, Letter</p><p>Type: Short Sets</p><p>Neckline: Spaghetti Strap</p><p>Sleeve Length: Sleeveless</p><p>Sheer: No</p><p>Material: Polyester</p><p>Composition: 95% Polyester, 5% Spandex</p><p>Fabric: Non-Stretch</p>', 'eg', '2021-06-22 15:56:56', '2021-06-22 15:56:56'),
(112, 93, 'Letter Print Ripped Neck Knot Tee', 'pc', '<p>Color: Yellow</p><p>Details: Knot, Cut Out<br></p><p>Fabric: Slight Stretch<br></p><p>Fit Type: Regular Fit<br></p><p>Length: Crop<br></p><p>Composition: 100% Polyester<br></p><p>Neckline: V neck<br></p><p>Pattern Type: Letter<br></p><p>Season: Summer</p><p>Sleeve Length: Short Sleeve<br></p><p>Style: Casual<br></p>', 'eg', '2021-06-30 15:20:56', '2021-06-30 15:20:56'),
(118, 114, 'New', '15', '<p>fghrtyrtyrtyrt</p>', 'eg', '2021-12-19 05:25:26', '2021-12-19 05:25:26'),
(119, 115, 'Clip Attachment', 'pc', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 'eg', '2022-02-01 11:40:20', '2022-02-01 11:46:36'),
(120, 116, 'Electronics Black Wrist Watch', 'pc', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 'eg', '2022-02-01 11:47:50', '2022-02-01 11:47:50'),
(121, 117, 'Clip Attachment', 'pc', '<p><span style=\"color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pelle Vel pretium lectus quam id leo in vitae turpis massa.</span></p><ul class=\"list-type-check list-style-none\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Poppins, sans-serif;\"><li style=\"box-sizing: inherit; padding-left: 2rem;\">Ultrices eros in cursus turpis massa cursus mattis.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Volutpat ac tincidunt vitae semper quis lectus.</li><li style=\"box-sizing: inherit; padding-left: 2rem;\">Aliquam id diam maecenas ultricies mi eget mauris.</li></ul><p><br></p>', 'eg', '2022-02-01 12:36:52', '2022-02-01 12:36:52'),
(122, 118, 'test', 'pc', '<p>/63/876/87</p>', 'eg', '2022-02-15 15:06:25', '2022-02-15 15:06:25'),
(124, 120, 'test name', 'pc', '<p>TRHRTESEGRE</p>', 'eg', '2022-02-15 15:15:49', '2022-02-15 15:15:49'),
(125, 121, 'test product', 'pc', '<p>&nbsp;t-shirt&nbsp; t-shirt&nbsp; t-shirt</p>', 'eg', '2022-02-16 12:37:47', '2022-02-16 12:37:47'),
(126, 122, 'test 22222', 'pc', NULL, 'eg', '2022-02-16 13:25:45', '2022-02-16 13:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_approval` int(1) NOT NULL DEFAULT 1,
  `admin_approval` int(1) NOT NULL DEFAULT 1,
  `refund_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `reason` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_seen` int(11) NOT NULL,
  `refund_status` int(1) NOT NULL DEFAULT 0 COMMENT '0 => pending , 1 => paid, 2=> at stock, 3 => check product  ',
  `refund_type` int(2) NOT NULL DEFAULT 1 COMMENT '1 => customer welt , 2 => customer bank  ',
  `account_no` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `txn_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refund_tax` float DEFAULT NULL,
  `shipping_cost` int(5) DEFAULT NULL,
  `refund_with_shipping` tinyint(3) DEFAULT NULL COMMENT '0 => no , 1 => yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `refund_requests`
--

INSERT INTO `refund_requests` (`id`, `user_id`, `order_id`, `order_detail_id`, `seller_id`, `seller_approval`, `admin_approval`, `refund_amount`, `reason`, `admin_seen`, `refund_status`, `refund_type`, `account_no`, `bank_id`, `txn_code`, `refund_tax`, `shipping_cost`, `refund_with_shipping`, `created_at`, `updated_at`) VALUES
(25, 77, 78, 99, 75, 0, 1, 1482.00, NULL, 1, 1, 1, NULL, NULL, NULL, 182, 40, 1, '2021-07-10 18:19:38', '2021-07-10 18:39:24'),
(26, 77, 82, 103, 75, 0, 1, 3192.00, 'yghgfhgfhg', 1, 1, 1, NULL, NULL, NULL, 392, 40, 1, '2021-07-11 14:42:59', '2021-07-11 14:49:18'),
(27, 87, 86, 105, 85, 0, 1, 684.00, NULL, 1, 1, 2, NULL, 17, '12345678912345', 84, 50, 1, '2021-12-14 07:07:48', '2021-12-14 07:10:30'),
(28, 77, 94, 113, 75, 0, 1, 1482.00, 'not', 1, 1, 1, NULL, NULL, NULL, 182, 40, 1, '2022-02-08 14:07:05', '2022-02-08 14:26:14'),
(29, 77, 94, 114, 91, 0, 1, 1026.00, NULL, 1, 1, 1, NULL, NULL, NULL, 126, 40, 1, '2022-02-08 14:18:53', '2022-02-08 14:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `status`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 5, 'this the best products', 1, 1, '2021-02-15 07:39:17', '2021-02-15 18:22:51'),
(2, 11, 12, 5, 'test review here', 1, 1, '2021-02-17 00:17:47', '2021-02-17 00:18:35'),
(3, 3, 21, 5, 'dfghjklkjhgfdfghj', 1, 0, '2021-02-17 12:55:03', '2021-02-17 12:55:03'),
(4, 74, 77, 5, 'nice', 1, 1, '2022-01-10 13:00:38', '2022-01-10 13:07:34'),
(5, 73, 77, 1, '11', 1, 1, '2022-01-10 13:23:47', '2022-02-08 13:34:10'),
(7, 75, 77, 4, 'test review', 1, 1, '2022-01-11 11:50:08', '2022-02-08 13:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 04:39:47', '2018-10-10 04:51:37'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09'),
(3, 'admins', '[\"2\",\"3\",\"4\",\"5\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"20\"]', '2021-02-23 16:27:43', '2021-06-21 19:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'admins', 'en', '2021-02-23 16:27:43', '2021-02-23 16:27:43'),
(2, 3, 'admins', 'eg', '2021-06-21 19:13:57', '2021-06-21 19:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, 'eeeeee', 2, '2021-02-13 06:14:20', '2021-02-15 20:29:20'),
(5, 'معارض 2018z', 2, '2021-02-15 19:59:40', '2021-02-15 20:00:02'),
(6, 'english', 1, '2021-02-15 20:42:42', '2021-02-15 20:42:42'),
(7, 'test quantity', 1, '2021-02-15 20:45:46', '2021-02-15 20:45:46'),
(8, 'hussein', 1, '2021-02-22 05:03:25', '2021-02-22 05:03:25'),
(9, 'puma sport shoes', 1, '2021-05-02 12:04:56', '2021-05-02 12:04:56'),
(10, 'Puma Scuderia Ferrari Men\'s Long Sleeve Top', 2, '2021-05-29 05:42:59', '2021-07-03 15:27:59'),
(11, 'WOMEN PUMA FERRARI Half sleeve', 3, '2021-07-03 15:21:40', '2021-07-03 15:30:04'),
(12, 'PUMA Descendant V 3 18816510, Chaussures Running', 1, '2021-07-05 15:19:39', '2021-07-05 15:19:39'),
(13, 'Sepatu Running PUMA DESCENDANT', 3, '2021-07-05 15:26:01', '2021-07-05 15:31:19'),
(14, 'PUMA Solid Women Polo Neck Black T-Shirt', 1, '2021-07-10 12:08:41', '2021-07-10 12:08:41'),
(15, 'Letter Print Ripped Neck Knot Tee', 1, '2021-07-10 15:00:17', '2021-07-10 15:00:17'),
(16, 'fdgfgf', 1, '2021-12-13 06:34:20', '2021-12-13 06:34:20'),
(17, 'mystore', 3, '2021-12-13 07:20:45', '2021-12-13 08:17:41'),
(18, 'new', 5, '2021-12-13 08:52:51', '2021-12-13 08:59:55'),
(19, 'Accountant', 8, '2022-01-08 15:26:56', '2022-01-11 20:03:07'),
(20, 'PUMA DESCENDANT', 1, '2022-01-08 15:27:27', '2022-01-08 15:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `national_id_photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commercial_register_photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_type` tinyint(3) DEFAULT NULL COMMENT '1 => Individually , 2=> Company',
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `admin_to_pay` double(20,2) NOT NULL DEFAULT 0.00,
  `available_balance` double(20,2) NOT NULL DEFAULT 0.00,
  `bank_name` int(11) DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `national_id_photo`, `commercial_register_photo`, `tax_photo`, `company_name`, `seller_type`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `available_balance`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `ipan`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(25, 39, '1613907096akH1Hkbw3pBE.png', NULL, NULL, NULL, 1, 0, NULL, 0, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-02-21 11:31:36', '2021-02-21 11:31:36'),
(33, 48, '161403110570uuJ5n8QtfN.jpg', NULL, NULL, NULL, 1, 0, NULL, 0, 0.00, 0.00, 0, 'Illana Peck', '1236666985222222', '17', NULL, 1, '2021-02-22 21:58:25', '2021-02-22 21:58:25'),
(46, 75, '16219399209I1x1dixhDYr.jpg', '16219399204t5xN1RHZNuH.jpg', '1621939920Fri2T5DKl6uy.jpg', 'MTD', 2, 1, NULL, 0, 0.00, 0.00, 10, 'السيد عزت', '11018180212223', '123', '3210', 1, '2021-05-25 16:52:00', '2022-02-19 19:19:15'),
(50, 82, '1639225660XZpYJxp6DVkx.png', NULL, NULL, NULL, 1, 0, NULL, 0, 0.00, 0.00, 1, 'alaa', '12312312312312', '1212121212', 'ban m', 1, '2021-12-11 12:27:40', '2021-12-11 12:27:40'),
(51, 83, '1639290762EzePf40hKbID.png', NULL, NULL, NULL, 1, 1, NULL, 0, 0.00, 0.00, 1, 'alaa', '12312312312312', '1212121212', 'ban', 1, '2021-12-12 06:32:42', '2022-02-19 19:19:15'),
(52, 84, '1639294352FHNkEG20K48T.png', NULL, NULL, NULL, 1, 0, NULL, 0, 0.00, 0.00, 33, 'alaa', '12312312312312', '1212121212', 'ban', 1, '2021-12-12 07:32:32', '2021-12-12 07:32:32'),
(53, 85, '1639319893aC4gvvFQPZFa.png', NULL, NULL, NULL, 2, 0, NULL, 0, 200.80, 0.00, 16, 'alaa', '12345678912345', '1212121212', 'ban', 1, '2021-12-12 14:38:14', '2022-02-14 13:38:25'),
(56, 91, '1643714939eWOfZ0whv09k.jpg', NULL, NULL, NULL, 1, 1, NULL, 0, 0.00, 3500.00, 1, 'كريم عمر', '12356879214567', '2156844884', '123', 1, '2021-12-01 11:28:59', '2022-02-19 19:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_withdraw_requests`
--

INSERT INTO `seller_withdraw_requests` (`id`, `user_id`, `amount`, `message`, `status`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 1, 70.00, '???? ??? ??? ???????', 1, 1, '2021-02-14 06:46:59', '2021-02-14 06:48:04'),
(2, 46, 16750.00, NULL, 1, 1, '2021-06-28 16:36:01', '2021-06-28 16:38:28'),
(3, 46, 8.00, NULL, 1, 1, '2021-06-28 18:13:39', '2021-06-28 18:15:05'),
(4, 56, 100.00, '100d', 1, 1, '2022-02-19 16:00:23', '2022-02-19 16:00:49'),
(5, 56, 200.00, '200aa', 1, 1, '2022-02-19 19:01:47', '2022-02-19 19:10:12'),
(6, 56, 1500.00, NULL, 1, 1, '2022-02-19 19:11:45', '2022-02-19 19:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'bootstrap,responsive,template,developer', 'Active IT Zone', 11, 'https://www.activeitzone.com', 'Active E-commerce CMS Multi vendor system is such a platform to build a border less marketplace both for physical and digital goods.', '2019-08-08 08:56:11', '2019-08-08 02:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_companies`
--

CREATE TABLE `shipping_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_en` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_companies`
--

INSERT INTO `shipping_companies` (`id`, `name`, `name_en`) VALUES
(1, 'ارخص ', 'Ar5as'),
(2, 'بوسطة', 'Posta');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(17, 31, 'be online', NULL, NULL, 'dftgyujhkl;\'kljh', NULL, NULL, NULL, NULL, 'be-online-', NULL, NULL, NULL, 0.00, '2021-02-20 22:28:16', '2021-02-20 22:28:16'),
(18, 32, '12121', NULL, NULL, '1255ssssssssss', NULL, NULL, NULL, NULL, '12121-', NULL, NULL, NULL, 0.00, '2021-02-20 22:33:43', '2021-02-20 22:33:43'),
(19, 33, 'Warren Case', NULL, NULL, 'Ut magna vitae liber', NULL, NULL, NULL, NULL, 'Warren-Case-', NULL, NULL, NULL, 0.00, '2021-02-20 22:36:37', '2021-02-20 22:36:37'),
(20, 34, 'Katelyn Bullock', NULL, NULL, 'Vel ipsa dolore mol', NULL, NULL, NULL, NULL, 'Katelyn-Bullock-', NULL, NULL, NULL, 0.00, '2021-02-20 22:41:47', '2021-02-20 22:41:47'),
(25, 39, 'testtt', NULL, NULL, 'testtt 1020', NULL, NULL, NULL, NULL, 'testtt-', NULL, NULL, NULL, 0.00, '2021-02-21 11:31:36', '2021-02-21 11:31:36'),
(33, 48, 'Nehru Parrish', NULL, NULL, 'Enim qui assumenda s', NULL, NULL, NULL, NULL, 'Nehru-Parrish-', NULL, NULL, NULL, 0.00, '2021-02-22 21:58:25', '2021-02-22 21:58:25'),
(46, 75, 'MTD', '232', '316', 'مدينة العاشر من رمضان الاردنية المصرية سنتر 2 مدخل ب', NULL, NULL, NULL, NULL, 'MTD-46', 'MTDMTDMTDMTDMTDMTDMTDMTD', 'MTDMTDMTDMTDMTDMTDMTDMTDMTDMTDMTDMTDMTD', '[]', 0.00, '2021-05-25 16:52:00', '2022-02-01 12:28:47'),
(50, 82, 'mystore', NULL, NULL, '113 البحر الأعظم أمام محطة المترو-المنيب', NULL, NULL, NULL, NULL, 'mystore-', NULL, NULL, NULL, 0.00, '2021-12-11 12:27:41', '2021-12-11 12:27:41'),
(51, 83, 'mystore', NULL, NULL, '113 البحر الأعظم أمام محطة المترو-المنيب', NULL, NULL, NULL, NULL, 'mystore-', NULL, NULL, NULL, 0.00, '2021-12-12 06:32:43', '2021-12-12 06:32:43'),
(52, 85, 'mystore', NULL, NULL, '113 البحر الأعظم أمام محطة المترو-المنيب', NULL, NULL, NULL, NULL, 'mystore-', NULL, NULL, NULL, 0.00, '2021-12-12 14:38:14', '2021-12-12 14:38:14'),
(55, 91, 'KO STORE', '315', '314', '6 أكتوبر - ميدان الحصري امام مستشفى الهلال', NULL, NULL, NULL, NULL, 'KO-STORE-55', 'KO STORE', 'KO STORE', '[]', 0.00, '2022-02-01 11:29:00', '2022-02-01 12:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(7, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:05', '2019-03-12 05:58:05'),
(8, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:12', '2019-03-12 05:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 51, 3, '2021-02-23 16:28:22', '2021-02-23 16:28:22'),
(2, 52, 3, '2021-02-23 16:29:00', '2021-02-23 16:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Trace17@gmail.com', '2021-03-09 12:16:25', '2021-03-09 12:16:25'),
(2, 'peter.algar@hotmail.co.uk', '2021-03-10 10:33:52', '2021-03-10 10:33:52'),
(3, 'div.kareemomar@gmail.com', '2022-01-09 14:57:12', '2022-01-09 14:57:12'),
(4, 'super_admin@app.com', '2022-01-09 15:27:55', '2022-01-09 15:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT 0,
  `client_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `files`, `status`, `viewed`, `client_viewed`, `created_at`, `updated_at`) VALUES
(1, 10000048, 64, 'test', 'refund  issue', NULL, 'open', 1, 1, '2021-03-10 14:33:38', '2021-03-10 21:33:38'),
(2, 1000004921, 64, 'test2', 'hi', '41', 'solved', 1, 1, '2021-03-10 14:32:48', '2021-03-10 21:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '<p>test your internet plz</p>', NULL, '2021-03-10 21:29:37', '2021-03-10 21:29:37'),
(2, 2, 9, '<p>testte now&nbsp;</p>', NULL, '2021-03-10 21:32:29', '2021-03-10 21:32:29'),
(3, 1, 9, '<p>tetetetette</p>', NULL, '2021-03-10 21:33:15', '2021-03-10 21:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3, 'en', 'All Category', 'All Category', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(4, 'en', 'All', 'All', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(5, 'en', 'Flash Sale', 'Flash Sale', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(6, 'en', 'View More', 'View More', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(7, 'en', 'Add to wishlist', 'Add to wishlist', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(8, 'en', 'Add to compare', 'Add to compare', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(9, 'en', 'Add to cart', 'Add to cart', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(10, 'en', 'Club Point', 'Club Point', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(11, 'en', 'Classified Ads', 'Classified Ads', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(13, 'en', 'Used', 'Used', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(14, 'en', 'Top 10 Categories', 'Top 10 Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(15, 'en', 'View All Categories', 'View All Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(16, 'en', 'Top 10 Brands', 'Top 10 Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(17, 'en', 'View All Brands', 'View All Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(43, 'en', 'Terms & conditions', 'Terms & conditions', '2020-11-02 07:40:41', '2020-11-02 07:40:41'),
(51, 'en', 'Best Selling', 'Best Selling', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(53, 'en', 'Top 20', 'Top 20', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(55, 'en', 'Featured Products', 'Featured Products', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(56, 'en', 'Best Sellers', 'Best Sellers', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(57, 'en', 'Visit Store', 'Visit Store', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(58, 'en', 'Popular Suggestions', 'Popular Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(59, 'en', 'Category Suggestions', 'Category Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(62, 'en', 'Automobile & Motorcycle', 'Automobile & Motorcycle', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(63, 'en', 'Price range', 'Price range', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(64, 'en', 'Filter by color', 'Filter by color', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(65, 'en', 'Home', 'Home', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(67, 'en', 'Newest', 'Newest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(68, 'en', 'Oldest', 'Oldest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(69, 'en', 'Price low to high', 'Price low to high', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(70, 'en', 'Price high to low', 'Price high to low', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(71, 'en', 'Brands', 'Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(72, 'en', 'All Brands', 'All Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(74, 'en', 'All Sellers', 'All Sellers', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(78, 'en', 'Inhouse product', 'Inhouse product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(79, 'en', 'Message Seller', 'Message Seller', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(80, 'en', 'Price', 'Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(81, 'en', 'Discount Price', 'Discount Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(82, 'en', 'Color', 'Color', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(83, 'en', 'Quantity', 'Quantity', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(84, 'en', 'available', 'available', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(85, 'en', 'Total Price', 'Total Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(86, 'en', 'Out of Stock', 'Out of Stock', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(87, 'en', 'Refund', 'Refund', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(88, 'en', 'Share', 'Share', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(89, 'en', 'Sold By', 'Sold By', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(90, 'en', 'customer reviews', 'customer reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(91, 'en', 'Top Selling Products', 'Top Selling Products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(92, 'en', 'Description', 'Description', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(93, 'en', 'Video', 'Video', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(94, 'en', 'Reviews', 'Reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(95, 'en', 'Download', 'Download', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(96, 'en', 'There have been no reviews for this product yet.', 'There have been no reviews for this product yet.', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(97, 'en', 'Related products', 'Related products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(98, 'en', 'Any query about this product', 'Any query about this product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(99, 'en', 'Product Name', 'Product Name', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(100, 'en', 'Your Question', 'Your Question', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(101, 'en', 'Send', 'Send', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(103, 'en', 'Use country code before number', 'Use country code before number', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(105, 'en', 'Remember Me', 'Remember Me', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(107, 'en', 'Dont have an account?', 'Dont have an account?', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(108, 'en', 'Register Now', 'Register Now', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(109, 'en', 'Or Login With', 'Or Login With', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(110, 'en', 'oops..', 'oops..', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(111, 'en', 'This item is out of stock!', 'This item is out of stock!', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(112, 'en', 'Back to shopping', 'Back to shopping', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(113, 'en', 'Login to your account.', 'Login to your account.', '2020-11-02 11:27:41', '2020-11-02 11:27:41'),
(115, 'en', 'Purchase History', 'Purchase History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(116, 'en', 'New', 'New', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(117, 'en', 'Downloads', 'Downloads', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(118, 'en', 'Sent Refund Request', 'Sent Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(119, 'en', 'Product Bulk Upload', 'Product Bulk Upload', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(123, 'en', 'Orders', 'Orders', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(124, 'en', 'Recieved Refund Request', 'Recieved Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(126, 'en', 'Shop Setting', 'Shop Setting', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(127, 'en', 'Payment History', 'Payment History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(128, 'en', 'Money Withdraw', 'Money Withdraw', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(129, 'en', 'Conversations', 'Conversations', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(130, 'en', 'My Wallet', 'My Wallet', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(131, 'en', 'Earning Points', 'Earning Points', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(132, 'en', 'Support Ticket', 'Support Ticket', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(133, 'en', 'Manage Profile', 'Manage Profile', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(134, 'en', 'Sold Amount', 'Sold Amount', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(135, 'en', 'Your sold amount (current month)', 'Your sold amount (current month)', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(136, 'en', 'Total Sold', 'Total Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(137, 'en', 'Last Month Sold', 'Last Month Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(138, 'en', 'Total sale', 'Total sale', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(139, 'en', 'Total earnings', 'Total earnings', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(140, 'en', 'Successful orders', 'Successful orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(141, 'en', 'Total orders', 'Total orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(142, 'en', 'Pending orders', 'Pending orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(143, 'en', 'Cancelled orders', 'Cancelled orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(145, 'en', 'Product', 'Product', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(147, 'en', 'Purchased Package', 'Purchased Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(148, 'en', 'Package Not Found', 'Package Not Found', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(149, 'en', 'Upgrade Package', 'Upgrade Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(150, 'en', 'Shop', 'Shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(151, 'en', 'Manage & organize your shop', 'Manage & organize your shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(152, 'en', 'Go to setting', 'Go to setting', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(153, 'en', 'Payment', 'Payment', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(154, 'en', 'Configure your payment method', 'Configure your payment method', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(156, 'en', 'My Panel', 'My Panel', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(158, 'en', 'Item has been added to wishlist', 'Item has been added to wishlist', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(159, 'en', 'My Points', 'My Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(160, 'en', ' Points', ' Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(161, 'en', 'Wallet Money', 'Wallet Money', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(162, 'en', 'Exchange Rate', 'Exchange Rate', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(163, 'en', 'Point Earning history', 'Point Earning history', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(164, 'en', 'Date', 'Date', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(165, 'en', 'Points', 'Points', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(166, 'en', 'Converted', 'Converted', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(167, 'en', 'Action', 'Action', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(168, 'en', 'No history found.', 'No history found.', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(169, 'en', 'Convert has been done successfully Check your Wallets', 'Convert has been done successfully Check your Wallets', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(170, 'en', 'Something went wrong', 'Something went wrong', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(171, 'en', 'Remaining Uploads', 'Remaining Uploads', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(172, 'en', 'No Package Found', 'No Package Found', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(173, 'en', 'Search product', 'Search product', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(174, 'en', 'Name', 'Name', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(176, 'en', 'Current Qty', 'Current Qty', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(177, 'en', 'Base Price', 'Base Price', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(178, 'en', 'Published', 'Published', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(179, 'en', 'Featured', 'Featured', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(180, 'en', 'Options', 'Options', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(181, 'en', 'Edit', 'Edit', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(182, 'en', 'Duplicate', 'Duplicate', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(184, 'en', '1. Download the skeleton file and fill it with data.', '1. Download the skeleton file and fill it with data.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(185, 'en', '2. You can download the example file to understand how the data must be filled.', '2. You can download the example file to understand how the data must be filled.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(186, 'en', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(187, 'en', '4. After uploading products you need to edit them and set products images and choices.', '4. After uploading products you need to edit them and set products images and choices.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(188, 'en', 'Download CSV', 'Download CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(189, 'en', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(190, 'en', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(191, 'en', 'Download Category', 'Download Category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(192, 'en', 'Download Sub category', 'Download Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(193, 'en', 'Download Sub Sub category', 'Download Sub Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(194, 'en', 'Download Brand', 'Download Brand', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(195, 'en', 'Upload CSV File', 'Upload CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(196, 'en', 'CSV', 'CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(197, 'en', 'Choose CSV File', 'Choose CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(198, 'en', 'Upload', 'Upload', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(199, 'en', 'Add New Digital Product', 'Add New Digital Product', '2020-11-02 11:37:25', '2020-11-02 11:37:25'),
(200, 'en', 'Available Status', 'Available Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(201, 'en', 'Admin Status', 'Admin Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(202, 'en', 'Pending Balance', 'Pending Balance', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(203, 'en', 'Send Withdraw Request', 'Send Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(204, 'en', 'Withdraw Request history', 'Withdraw Request history', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(205, 'en', 'Amount', 'Amount', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(206, 'en', 'Status', 'Status', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(207, 'en', 'Message', 'Message', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(208, 'en', 'Send A Withdraw Request', 'Send A Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(209, 'en', 'Basic Info', 'Basic Info', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(211, 'en', 'Your Phone', 'Your Phone', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(212, 'en', 'Photo', 'Photo', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(213, 'en', 'Browse', 'Browse', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(215, 'en', 'Your Password', 'Your Password', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(216, 'en', 'New Password', 'New Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(217, 'en', 'Confirm Password', 'Confirm Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(218, 'en', 'Add New Address', 'Add New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(219, 'en', 'Payment Setting', 'Payment Setting', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(220, 'en', 'Cash Payment', 'Cash Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(221, 'en', 'Bank Payment', 'Bank Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(222, 'en', 'Bank Name', 'Bank Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(223, 'en', 'Bank Account Name', 'Bank Account Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(224, 'en', 'Bank Account Number', 'Bank Account Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(225, 'en', 'Bank Routing Number', 'Bank Routing Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(226, 'en', 'Update Profile', 'Update Profile', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(227, 'en', 'Change your email', 'Change your email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(228, 'en', 'Your Email', 'Your Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(229, 'en', 'Sending Email...', 'Sending Email...', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(230, 'en', 'Verify', 'Verify', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(231, 'en', 'Update Email', 'Update Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(232, 'en', 'New Address', 'New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(233, 'en', 'Your Address', 'Your Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(234, 'en', 'Country', 'Country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(235, 'en', 'Select your country', 'Select your country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(236, 'en', 'City', 'City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(237, 'en', 'Your City', 'Your City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(239, 'en', 'Your Postal Code', 'Your Postal Code', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(240, 'en', '+880', '+880', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(241, 'en', 'Save', 'Save', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(242, 'en', 'Received Refund Request', 'Received Refund Request', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(244, 'en', 'Delete Confirmation', 'Delete Confirmation', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(245, 'en', 'Are you sure to delete this?', 'Are you sure to delete this?', '2020-11-02 11:56:21', '2020-11-02 11:56:21'),
(246, 'en', 'Premium Packages for Sellers', 'Premium Packages for Sellers', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(247, 'en', 'Product Upload', 'Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(248, 'en', 'Digital Product Upload', 'Digital Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(250, 'en', 'Purchase Package', 'Purchase Package', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(251, 'en', 'Select Payment Type', 'Select Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(252, 'en', 'Payment Type', 'Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(253, 'en', 'Select One', 'Select One', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(254, 'en', 'Online payment', 'Online payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(255, 'en', 'Offline payment', 'Offline payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(256, 'en', 'Purchase Your Package', 'Purchase Your Package', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(258, 'en', 'Paypal', 'Paypal', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(259, 'en', 'Stripe', 'Stripe', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(260, 'en', 'sslcommerz', 'sslcommerz', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(265, 'en', 'Confirm', 'Confirm', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(266, 'en', 'Offline Package Payment', 'Offline Package Payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(267, 'en', 'Transaction ID', 'Transaction ID', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(268, 'en', 'Choose image', 'Choose image', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(269, 'en', 'Code', 'Code', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(270, 'en', 'Delivery Status', 'Delivery Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(271, 'en', 'Payment Status', 'Payment Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(272, 'en', 'Paid', 'Paid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(273, 'en', 'Order Details', 'Order Details', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(274, 'en', 'Download Invoice', 'Download Invoice', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(275, 'en', 'Unpaid', 'Unpaid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(277, 'en', 'Order placed', 'Order placed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(278, 'en', 'Confirmed', 'Confirmed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(279, 'en', 'On delivery', 'On delivery', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(280, 'en', 'Delivered', 'Delivered', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(281, 'en', 'Order Summary', 'Order Summary', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(282, 'en', 'Order Code', 'Order Code', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(283, 'en', 'Customer', 'Customer', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(287, 'en', 'Total order amount', 'Total order amount', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(288, 'en', 'Shipping metdod', 'Shipping metdod', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(289, 'en', 'Flat shipping rate', 'Flat shipping rate', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(290, 'en', 'Payment metdod', 'Payment metdod', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(291, 'en', 'Variation', 'Variation', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(292, 'en', 'Delivery Type', 'Delivery Type', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(293, 'en', 'Home Delivery', 'Home Delivery', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(294, 'en', 'Order Ammount', 'Order Ammount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(295, 'en', 'Subtotal', 'Subtotal', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(296, 'en', 'Shipping', 'Shipping', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(298, 'en', 'Coupon Discount', 'Coupon Discount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(300, 'en', 'N/A', 'N/A', '2020-11-02 12:44:20', '2020-11-02 12:44:20'),
(301, 'en', 'In stock', 'In stock', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(302, 'en', 'Buy Now', 'Buy Now', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(303, 'en', 'Item added to your cart!', 'Item added to your cart!', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(304, 'en', 'Proceed to Checkout', 'Proceed to Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(305, 'en', 'Cart Items', 'Cart Items', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(306, 'en', '1. My Cart', '1. My Cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(307, 'en', 'View cart', 'View cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(308, 'en', '2. Shipping info', '2. Shipping info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(309, 'en', 'Checkout', 'Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(310, 'en', '3. Delivery info', '3. Delivery info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(311, 'en', '4. Payment', '4. Payment', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(312, 'en', '5. Confirmation', '5. Confirmation', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(313, 'en', 'Remove', 'Remove', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(314, 'en', 'Return to shop', 'Return to shop', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(315, 'en', 'Continue to Shipping', 'Continue to Shipping', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(316, 'en', 'Or', 'Or', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(317, 'en', 'Guest Checkout', 'Guest Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(318, 'en', 'Continue to Delivery Info', 'Continue to Delivery Info', '2020-11-02 12:57:44', '2020-11-02 12:57:44'),
(319, 'en', 'Postal Code', 'Postal Code', '2020-11-02 13:01:01', '2020-11-02 13:01:01'),
(320, 'en', 'Choose Delivery Type', 'Choose Delivery Type', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(321, 'en', 'Local Pickup', 'Local Pickup', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(322, 'en', 'Select your nearest pickup point', 'Select your nearest pickup point', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(323, 'en', 'Continue to Payment', 'Continue to Payment', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(324, 'en', 'Select a payment option', 'Select a payment option', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(325, 'en', 'Razorpay', 'Razorpay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(326, 'en', 'Paystack', 'Paystack', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(327, 'en', 'VoguePay', 'VoguePay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(328, 'en', 'payhere', 'payhere', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(329, 'en', 'ngenius', 'ngenius', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(330, 'en', 'Paytm', 'Paytm', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(331, 'en', 'Cash on Delivery', 'Cash on Delivery', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(332, 'en', 'Your wallet balance :', 'Your wallet balance :', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(333, 'en', 'Insufficient balance', 'Insufficient balance', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(334, 'en', 'I agree to the', 'I agree to the', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(338, 'en', 'Complete Order', 'Complete Order', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(339, 'en', 'Summary', 'Summary', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(340, 'en', 'Items', 'Items', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(341, 'en', 'Total Club point', 'Total Club point', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(342, 'en', 'Total Shipping', 'Total Shipping', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(343, 'en', 'Have coupon code? Enter here', 'Have coupon code? Enter here', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(344, 'en', 'Apply', 'Apply', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(345, 'en', 'You need to agree with our policies', 'You need to agree with our policies', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(346, 'en', 'Forgot password', 'Forgot password', '2020-11-02 13:01:25', '2020-11-02 13:01:25'),
(469, 'en', 'SEO Setting', 'SEO Setting', '2020-11-02 13:01:33', '2020-11-02 13:01:33'),
(474, 'en', 'System Update', 'System Update', '2020-11-02 13:01:34', '2020-11-02 13:01:34'),
(480, 'en', 'Add New Payment Method', 'Add New Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(481, 'en', 'Manual Payment Method', 'Manual Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(482, 'en', 'Heading', 'Heading', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(483, 'en', 'Logo', 'Logo', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(484, 'en', 'Manual Payment Information', 'Manual Payment Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(485, 'en', 'Type', 'Type', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(486, 'en', 'Custom Payment', 'Custom Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(487, 'en', 'Check Payment', 'Check Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(488, 'en', 'Checkout Thumbnail', 'Checkout Thumbnail', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(489, 'en', 'Payment Instruction', 'Payment Instruction', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(490, 'en', 'Bank Information', 'Bank Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(491, 'en', 'Select File', 'Select File', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(492, 'en', 'Upload New', 'Upload New', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(493, 'en', 'Sort by newest', 'Sort by newest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(494, 'en', 'Sort by oldest', 'Sort by oldest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(495, 'en', 'Sort by smallest', 'Sort by smallest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(496, 'en', 'Sort by largest', 'Sort by largest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(497, 'en', 'Selected Only', 'Selected Only', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(498, 'en', 'No files found', 'No files found', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(499, 'en', '0 File selected', '0 File selected', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(500, 'en', 'Clear', 'Clear', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(501, 'en', 'Prev', 'Prev', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(502, 'en', 'Next', 'Next', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(503, 'en', 'Add Files', 'Add Files', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(504, 'en', 'Method has been inserted successfully', 'Method has been inserted successfully', '2020-11-02 13:02:03', '2020-11-02 13:02:03'),
(506, 'en', 'Order Date', 'Order Date', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(507, 'en', 'Bill to', 'Bill to', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(510, 'en', 'Sub Total', 'Sub Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(512, 'en', 'Total Tax', 'Total Tax', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(513, 'en', 'Grand Total', 'Grand Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(514, 'en', 'Your order has been placed successfully. Please submit payment information from purchase history', 'Your order has been placed successfully. Please submit payment information from purchase history', '2020-11-02 13:02:47', '2020-11-02 13:02:47'),
(515, 'en', 'Thank You for Your Order!', 'Thank You for Your Order!', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(516, 'en', 'Order Code:', 'Order Code:', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(517, 'en', 'A copy or your order summary has been sent to', 'A copy or your order summary has been sent to', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(518, 'en', 'Make Payment', 'Make Payment', '2020-11-02 13:03:26', '2020-11-02 13:03:26'),
(519, 'en', 'Payment screenshot', 'Payment screenshot', '2020-11-02 13:03:29', '2020-11-02 13:03:29'),
(520, 'en', 'Paypal Credential', 'Paypal Credential', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(522, 'en', 'Paypal Client ID', 'Paypal Client ID', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(523, 'en', 'Paypal Client Secret', 'Paypal Client Secret', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(524, 'en', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(525, 'en', 'Sslcommerz Credential', 'Sslcommerz Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(526, 'en', 'Sslcz Store Id', 'Sslcz Store Id', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(527, 'en', 'Sslcz store password', 'Sslcz store password', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(528, 'en', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(529, 'en', 'Stripe Credential', 'Stripe Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(531, 'en', 'STRIPE KEY', 'STRIPE KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(533, 'en', 'STRIPE SECRET', 'STRIPE SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(534, 'en', 'RazorPay Credential', 'RazorPay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(535, 'en', 'RAZOR KEY', 'RAZOR KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(536, 'en', 'RAZOR SECRET', 'RAZOR SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(537, 'en', 'Instamojo Credential', 'Instamojo Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(538, 'en', 'API KEY', 'API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(539, 'en', 'IM API KEY', 'IM API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(540, 'en', 'AUTH TOKEN', 'AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(541, 'en', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(542, 'en', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(543, 'en', 'PayStack Credential', 'PayStack Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(544, 'en', 'PUBLIC KEY', 'PUBLIC KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(545, 'en', 'SECRET KEY', 'SECRET KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(546, 'en', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(547, 'en', 'VoguePay Credential', 'VoguePay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(548, 'en', 'MERCHANT ID', 'MERCHANT ID', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(549, 'en', 'Sandbox Mode', 'Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(550, 'en', 'Payhere Credential', 'Payhere Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(551, 'en', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(552, 'en', 'PAYHERE SECRET', 'PAYHERE SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(553, 'en', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(554, 'en', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(555, 'en', 'Ngenius Credential', 'Ngenius Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(556, 'en', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(557, 'en', 'NGENIUS API KEY', 'NGENIUS API KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(558, 'en', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(559, 'en', 'Mpesa Credential', 'Mpesa Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(560, 'en', 'MPESA CONSUMER KEY', 'MPESA CONSUMER KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(561, 'en', 'MPESA_CONSUMER_KEY', 'MPESA_CONSUMER_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(562, 'en', 'MPESA CONSUMER SECRET', 'MPESA CONSUMER SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(563, 'en', 'MPESA_CONSUMER_SECRET', 'MPESA_CONSUMER_SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(564, 'en', 'MPESA SHORT CODE', 'MPESA SHORT CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(565, 'en', 'MPESA_SHORT_CODE', 'MPESA_SHORT_CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(566, 'en', 'MPESA SANDBOX ACTIVATION', 'MPESA SANDBOX ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(567, 'en', 'Flutterwave Credential', 'Flutterwave Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(568, 'en', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(569, 'en', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(570, 'en', 'RAVE_TITLE', 'RAVE_TITLE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(571, 'en', 'STAGIN ACTIVATION', 'STAGIN ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(573, 'en', 'All Product', 'All Product', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(574, 'en', 'Sort By', 'Sort By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(575, 'en', 'Rating (High > Low)', 'Rating (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(576, 'en', 'Rating (Low > High)', 'Rating (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(577, 'en', 'Num of Sale (High > Low)', 'Num of Sale (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(578, 'en', 'Num of Sale (Low > High)', 'Num of Sale (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(579, 'en', 'Base Price (High > Low)', 'Base Price (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(580, 'en', 'Base Price (Low > High)', 'Base Price (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(581, 'en', 'Type & Enter', 'Type & Enter', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(582, 'en', 'Added By', 'Added By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(583, 'en', 'Num of Sale', 'Num of Sale', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(584, 'en', 'Total Stock', 'Total Stock', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(585, 'en', 'Todays Deal', 'Todays Deal', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(586, 'en', 'Rating', 'Rating', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(587, 'en', 'times', 'times', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(588, 'en', 'Add Nerw Product', 'Add Nerw Product', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(589, 'en', 'Product Information', 'Product Information', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(590, 'en', 'Unit', 'Unit', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(591, 'en', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(592, 'en', 'Minimum Qty', 'Minimum Qty', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(593, 'en', 'Tags', 'Tags', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(594, 'en', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(595, 'en', 'Barcode', 'Barcode', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(596, 'en', 'Refundable', 'Refundable', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(597, 'en', 'Product Images', 'Product Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(598, 'en', 'Gallery Images', 'Gallery Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(599, 'en', 'Todays Deal updated successfully', 'Todays Deal updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(600, 'en', 'Published products updated successfully', 'Published products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(601, 'en', 'Thumbnail Image', 'Thumbnail Image', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(602, 'en', 'Featured products updated successfully', 'Featured products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(603, 'en', 'Product Videos', 'Product Videos', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(604, 'en', 'Video Provider', 'Video Provider', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(605, 'en', 'Youtube', 'Youtube', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(606, 'en', 'Dailymotion', 'Dailymotion', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(607, 'en', 'Vimeo', 'Vimeo', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(608, 'en', 'Video Link', 'Video Link', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(609, 'en', 'Product Variation', 'Product Variation', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(610, 'en', 'Colors', 'Colors', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(611, 'en', 'Attributes', 'Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(612, 'en', 'Choose Attributes', 'Choose Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(613, 'en', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(614, 'en', 'Product price + stock', 'Product price + stock', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(616, 'en', 'Unit price', 'Unit price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(617, 'en', 'Purchase price', 'Purchase price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(618, 'en', 'Flat', 'Flat', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(619, 'en', 'Percent', 'Percent', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(620, 'en', 'Discount', 'Discount', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(621, 'en', 'Product Description', 'Product Description', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(622, 'en', 'Product Shipping Cost', 'Product Shipping Cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(623, 'en', 'Free Shipping', 'Free Shipping', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(624, 'en', 'Flat Rate', 'Flat Rate', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(625, 'en', 'Shipping cost', 'Shipping cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(626, 'en', 'PDF Specification', 'PDF Specification', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(627, 'en', 'SEO Meta Tags', 'SEO Meta Tags', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(628, 'en', 'Meta Title', 'Meta Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(629, 'en', 'Meta Image', 'Meta Image', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(630, 'en', 'Choice Title', 'Choice Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(631, 'en', 'Enter choice values', 'Enter choice values', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(632, 'en', 'All categories', 'All categories', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(633, 'en', 'Add New category', 'Add New category', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(634, 'en', 'Type name & Enter', 'Type name & Enter', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(635, 'en', 'Banner', 'Banner', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(637, 'en', 'Commission', 'Commission', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(638, 'en', 'icon', 'icon', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(639, 'en', 'Featured categories updated successfully', 'Featured categories updated successfully', '2020-11-03 07:12:20', '2020-11-03 07:12:20'),
(640, 'en', 'Hot', 'Hot', '2020-11-03 07:13:12', '2020-11-03 07:13:12'),
(641, 'en', 'Filter by Payment Status', 'Filter by Payment Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(642, 'en', 'Un-Paid', 'Un-Paid', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(643, 'en', 'Filter by Deliver Status', 'Filter by Deliver Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(644, 'en', 'Pending', 'Pending', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(645, 'en', 'Type Order code & hit Enter', 'Type Order code & hit Enter', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(646, 'en', 'Num. of Products', 'Num. of Products', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(647, 'en', 'Walk In Customer', 'Walk In Customer', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(648, 'en', 'QTY', 'QTY', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(649, 'en', 'Without Shipping Charge', 'Without Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(650, 'en', 'With Shipping Charge', 'With Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(651, 'en', 'Pay With Cash', 'Pay With Cash', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(652, 'en', 'Shipping Address', 'Shipping Address', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(653, 'en', 'Close', 'Close', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(654, 'en', 'Select country', 'Select country', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(655, 'en', 'Order Confirmation', 'Order Confirmation', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(656, 'en', 'Are you sure to confirm this order?', 'Are you sure to confirm this order?', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(657, 'en', 'Comfirm Order', 'Comfirm Order', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(659, 'en', 'Personal Info', 'Personal Info', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(660, 'en', 'Repeat Password', 'Repeat Password', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(661, 'en', 'Shop Name', 'Shop Name', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(662, 'en', 'Register Your Shop', 'Register Your Shop', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(663, 'en', 'Affiliate Informations', 'Affiliate Informations', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(664, 'en', 'Affiliate', 'Affiliate', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(665, 'en', 'User Info', 'User Info', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(667, 'en', 'Installed Addon', 'Installed Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(668, 'en', 'Available Addon', 'Available Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(669, 'en', 'Install New Addon', 'Install New Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(670, 'en', 'Version', 'Version', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(671, 'en', 'Activated', 'Activated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(672, 'en', 'Deactivated', 'Deactivated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(673, 'en', 'Activate OTP', 'Activate OTP', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(674, 'en', 'OTP will be Used For', 'OTP will be Used For', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(675, 'en', 'Settings updated successfully', 'Settings updated successfully', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(676, 'en', 'Product Owner', 'Product Owner', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(677, 'en', 'Point', 'Point', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(678, 'en', 'Set Point for Product Within a Range', 'Set Point for Product Within a Range', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(679, 'en', 'Set Point for multiple products', 'Set Point for multiple products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(680, 'en', 'Min Price', 'Min Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(681, 'en', 'Max Price', 'Max Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(682, 'en', 'Set Point for all Products', 'Set Point for all Products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(683, 'en', 'Set Point For ', 'Set Point For ', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(684, 'en', 'Convert Status', 'Convert Status', '2020-11-03 11:48:58', '2020-11-03 11:48:58'),
(685, 'en', 'Earned At', 'Earned At', '2020-11-03 11:48:59', '2020-11-03 11:48:59'),
(686, 'en', 'Seller Based Selling Report', 'Seller Based Selling Report', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(687, 'en', 'Sort by verificarion status', 'Sort by verificarion status', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(688, 'en', 'Approved', 'Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(689, 'en', 'Non Approved', 'Non Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(690, 'en', 'Filter', 'Filter', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(691, 'en', 'Seller Name', 'Seller Name', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(692, 'en', 'Number of Product Sale', 'Number of Product Sale', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(693, 'en', 'Order Amount', 'Order Amount', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(694, 'en', 'Facebook Chat Setting', 'Facebook Chat Setting', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(695, 'en', 'Facebook Page ID', 'Facebook Page ID', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(696, 'en', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(697, 'en', 'Login into your facebook page', 'Login into your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(698, 'en', 'Find the About option of your facebook page', 'Find the About option of your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(699, 'en', 'At the very bottom, you can find the \\“Facebook Page ID\\”', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(700, 'en', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(701, 'en', 'Scroll down that page and you will get \\\"white listed domain\\\"', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(702, 'en', 'Set your website domain name', 'Set your website domain name', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(703, 'en', 'Google reCAPTCHA Setting', 'Google reCAPTCHA Setting', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(704, 'en', 'Site KEY', 'Site KEY', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(705, 'en', 'Select Shipping Method', 'Select Shipping Method', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(706, 'en', 'Product Wise Shipping Cost', 'Product Wise Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(707, 'en', 'Flat Rate Shipping Cost', 'Flat Rate Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(708, 'en', 'Seller Wise Flat Shipping Cost', 'Seller Wise Flat Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(709, 'en', 'Note', 'Note', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(710, 'en', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(711, 'en', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(712, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(713, 'en', 'Flat Rate Cost', 'Flat Rate Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(714, 'en', 'Shipping Cost for Admin Products', 'Shipping Cost for Admin Products', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(715, 'en', 'Countries', 'Countries', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(716, 'en', 'Show/Hide', 'Show/Hide', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(717, 'en', 'Country status updated successfully', 'Country status updated successfully', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(718, 'en', 'All Subcategories', 'All Subcategories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(719, 'en', 'Add New Subcategory', 'Add New Subcategory', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(720, 'en', 'Sub-Categories', 'Sub-Categories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(721, 'en', 'Sub Category Information', 'Sub Category Information', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(723, 'en', 'Slug', 'Slug', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(724, 'en', 'All Sub Subcategories', 'All Sub Subcategories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(725, 'en', 'Add New Sub Subcategory', 'Add New Sub Subcategory', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(726, 'en', 'Sub-Sub-categories', 'Sub-Sub-categories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(727, 'en', 'Make This Default', 'Make This Default', '2020-11-04 08:24:24', '2020-11-04 08:24:24');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(728, 'en', 'Shops', 'Shops', '2020-11-04 11:17:10', '2020-11-04 11:17:10'),
(729, 'en', 'Women Clothing & Fashion', 'Women Clothing & Fashion', '2020-11-04 11:23:12', '2020-11-04 11:23:12'),
(730, 'en', 'Cellphones & Tabs', 'Cellphones & Tabs', '2020-11-04 12:10:41', '2020-11-04 12:10:41'),
(731, 'en', 'Welcome to', 'Welcome to', '2020-11-07 07:14:43', '2020-11-07 07:14:43'),
(732, 'en', 'Create a New Account', 'Create a New Account', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(733, 'en', 'Full Name', 'Full Name', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(734, 'en', 'password', 'password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(735, 'en', 'Confrim Password', 'Confrim Password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(736, 'en', 'I agree with the', 'I agree with the', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(737, 'en', 'Terms and Conditions', 'Terms and Conditions', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(738, 'en', 'Register', 'Register', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(739, 'en', 'Already have an account', 'Already have an account', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(741, 'en', 'Sign Up with', 'Sign Up with', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(742, 'en', 'I agree with the Terms and Conditions', 'I agree with the Terms and Conditions', '2020-11-07 07:34:49', '2020-11-07 07:34:49'),
(745, 'en', 'All Role', 'All Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(746, 'en', 'Add New Role', 'Add New Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(747, 'en', 'Roles', 'Roles', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(749, 'en', 'Add New Staffs', 'Add New Staffs', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(750, 'en', 'Role', 'Role', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(751, 'en', 'Frontend Website Name', 'Frontend Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(752, 'en', 'Website Name', 'Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(753, 'en', 'Site Motto', 'Site Motto', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(754, 'en', 'Best eCommerce Website', 'Best eCommerce Website', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(755, 'en', 'Site Icon', 'Site Icon', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(756, 'en', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(757, 'en', 'Website Base Color', 'Website Base Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(758, 'en', 'Hex Color Code', 'Hex Color Code', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(759, 'en', 'Website Base Hover Color', 'Website Base Hover Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(760, 'en', 'Update', 'Update', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(761, 'en', 'Global Seo', 'Global Seo', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(762, 'en', 'Meta description', 'Meta description', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(763, 'en', 'Keywords', 'Keywords', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(764, 'en', 'Separate with coma', 'Separate with coma', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(765, 'en', 'Website Pages', 'Website Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(766, 'en', 'All Pages', 'All Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(767, 'en', 'Add New Page', 'Add New Page', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(768, 'en', 'URL', 'URL', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(769, 'en', 'Actions', 'Actions', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(770, 'en', 'Edit Page Information', 'Edit Page Information', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(771, 'en', 'Page Content', 'Page Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(772, 'en', 'Title', 'Title', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(773, 'en', 'Link', 'Link', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(774, 'en', 'Use character, number, hypen only', 'Use character, number, hypen only', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(775, 'en', 'Add Content', 'Add Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(776, 'en', 'Seo Fields', 'Seo Fields', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(777, 'en', 'Update Page', 'Update Page', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(778, 'en', 'Default Language', 'Default Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(779, 'en', 'Add New Language', 'Add New Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(780, 'en', 'RTL', 'RTL', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(781, 'en', 'Translation', 'Translation', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(782, 'en', 'Language Information', 'Language Information', '2020-11-07 07:50:23', '2020-11-07 07:50:23'),
(783, 'en', 'Save Page', 'Save Page', '2020-11-07 07:51:27', '2020-11-07 07:51:27'),
(784, 'en', 'Home Page Settings', 'Home Page Settings', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(785, 'en', 'Home Slider', 'Home Slider', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(786, 'en', 'Photos & Links', 'Photos & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(787, 'en', 'Add New', 'Add New', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(788, 'en', 'Home Categories', 'Home Categories', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(789, 'en', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(790, 'en', 'Banner & Links', 'Banner & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(791, 'en', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(792, 'en', 'Top 10', 'Top 10', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(793, 'en', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(794, 'en', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(795, 'en', 'System Name', 'System Name', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(796, 'en', 'System Logo - White', 'System Logo - White', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(797, 'en', 'Choose Files', 'Choose Files', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(798, 'en', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(799, 'en', 'System Logo - Black', 'System Logo - Black', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(800, 'en', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(801, 'en', 'System Timezone', 'System Timezone', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(802, 'en', 'Admin login page background', 'Admin login page background', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(803, 'en', 'Website Header', 'Website Header', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(804, 'en', 'Header Setting', 'Header Setting', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(805, 'en', 'Header Logo', 'Header Logo', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(806, 'en', 'Show Language Switcher?', 'Show Language Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(807, 'en', 'Show Currency Switcher?', 'Show Currency Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(808, 'en', 'Enable stikcy header?', 'Enable stikcy header?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(809, 'en', 'Website Footer', 'Website Footer', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(810, 'en', 'Footer Widget', 'Footer Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(811, 'en', 'About Widget', 'About Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(812, 'en', 'Footer Logo', 'Footer Logo', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(813, 'en', 'About description', 'About description', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(814, 'en', 'Contact Info Widget', 'Contact Info Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(815, 'en', 'Footer contact address', 'Footer contact address', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(816, 'en', 'Footer contact phone', 'Footer contact phone', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(817, 'en', 'Footer contact email', 'Footer contact email', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(818, 'en', 'Link Widget One', 'Link Widget One', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(819, 'en', 'Links', 'Links', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(820, 'en', 'Footer Bottom', 'Footer Bottom', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(821, 'en', 'Copyright Widget ', 'Copyright Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(822, 'en', 'Copyright Text', 'Copyright Text', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(823, 'en', 'Social Link Widget ', 'Social Link Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(824, 'en', 'Show Social Links?', 'Show Social Links?', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(825, 'en', 'Social Links', 'Social Links', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(826, 'en', 'Payment Methods Widget ', 'Payment Methods Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(827, 'en', 'RTL status updated successfully', 'RTL status updated successfully', '2020-11-07 08:36:11', '2020-11-07 08:36:11'),
(828, 'en', 'Language changed to ', 'Language changed to ', '2020-11-07 08:36:27', '2020-11-07 08:36:27'),
(829, 'en', 'Inhouse Product sale report', 'Inhouse Product sale report', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(830, 'en', 'Sort by Category', 'Sort by Category', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(831, 'en', 'Product wise stock report', 'Product wise stock report', '2020-11-07 09:31:02', '2020-11-07 09:31:02'),
(832, 'en', 'Currency changed to ', 'Currency changed to ', '2020-11-07 12:36:28', '2020-11-07 12:36:28'),
(833, 'en', 'Avatar', 'Avatar', '2020-11-08 09:32:35', '2020-11-08 09:32:35'),
(834, 'en', 'Copy', 'Copy', '2020-11-08 10:03:42', '2020-11-08 10:03:42'),
(835, 'en', 'Variant', 'Variant', '2020-11-08 10:43:02', '2020-11-08 10:43:02'),
(836, 'en', 'Variant Price', 'Variant Price', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(837, 'en', 'SKU', 'SKU', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(838, 'en', 'Key', 'Key', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(839, 'en', 'Value', 'Value', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(840, 'en', 'Copy Translations', 'Copy Translations', '2020-11-08 12:35:10', '2020-11-08 12:35:10'),
(841, 'en', 'All Pick-up Points', 'All Pick-up Points', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(842, 'en', 'Add New Pick-up Point', 'Add New Pick-up Point', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(843, 'en', 'Manager', 'Manager', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(844, 'en', 'Location', 'Location', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(845, 'en', 'Pickup Station Contact', 'Pickup Station Contact', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(846, 'en', 'Open', 'Open', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(847, 'en', 'POS Activation for Seller', 'POS Activation for Seller', '2020-11-08 12:35:55', '2020-11-08 12:35:55'),
(848, 'en', 'Order Completed Successfully.', 'Order Completed Successfully.', '2020-11-08 12:36:02', '2020-11-08 12:36:02'),
(849, 'en', 'Text Input', 'Text Input', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(850, 'en', 'Select', 'Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(851, 'en', 'Multiple Select', 'Multiple Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(852, 'en', 'Radio', 'Radio', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(853, 'en', 'File', 'File', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(854, 'en', 'Email Address', 'Email Address', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(855, 'en', 'Verification Info', 'Verification Info', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(856, 'en', 'Approval', 'Approval', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(857, 'en', 'Due Amount', 'Due Amount', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(858, 'en', 'Show', 'Show', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(859, 'en', 'Pay Now', 'Pay Now', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(860, 'en', 'Affiliate User Verification', 'Affiliate User Verification', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(861, 'en', 'Reject', 'Reject', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(862, 'en', 'Accept', 'Accept', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(863, 'en', 'Beauty, Health & Hair', 'Beauty, Health & Hair', '2020-11-08 12:54:17', '2020-11-08 12:54:17'),
(864, 'en', 'Comparison', 'Comparison', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(865, 'en', 'Reset Compare List', 'Reset Compare List', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(866, 'en', 'Your comparison list is empty', 'Your comparison list is empty', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(867, 'en', 'Convert Point To Wallet', 'Convert Point To Wallet', '2020-11-08 13:04:42', '2020-11-08 13:04:42'),
(868, 'en', 'Note: You need to activate wallet option first before using club point addon.', 'Note: You need to activate wallet option first before using club point addon.', '2020-11-08 13:04:43', '2020-11-08 13:04:43'),
(869, 'en', 'Create an account.', 'Create an account.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(870, 'en', 'Use Email Instead', 'Use Email Instead', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(871, 'en', 'By signing up you agree to our terms and conditions.', 'By signing up you agree to our terms and conditions.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(872, 'en', 'Create Account', 'Create Account', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(873, 'en', 'Or Join With', 'Or Join With', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(874, 'en', 'Already have an account?', 'Already have an account?', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(875, 'en', 'Log In', 'Log In', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(876, 'en', 'Computer & Accessories', 'Computer & Accessories', '2020-11-09 07:52:05', '2020-11-09 07:52:05'),
(878, 'en', 'Product(s)', 'Product(s)', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(879, 'en', 'in your cart', 'in your cart', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(880, 'en', 'in your wishlist', 'in your wishlist', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(881, 'en', 'you ordered', 'you ordered', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(882, 'en', 'Default Shipping Address', 'Default Shipping Address', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(883, 'en', 'Sports & outdoor', 'Sports & outdoor', '2020-11-09 07:53:32', '2020-11-09 07:53:32'),
(884, 'en', 'Copied', 'Copied', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(885, 'en', 'Copy the Promote Link', 'Copy the Promote Link', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(886, 'en', 'Write a review', 'Write a review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(887, 'en', 'Your name', 'Your name', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(888, 'en', 'Comment', 'Comment', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(889, 'en', 'Your review', 'Your review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(890, 'en', 'Submit review', 'Submit review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(891, 'en', 'Claire Willis', 'Claire Willis', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(892, 'en', 'Germaine Greene', 'Germaine Greene', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(893, 'en', 'Product File', 'Product File', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(894, 'en', 'Choose file', 'Choose file', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(895, 'en', 'Type to add a tag', 'Type to add a tag', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(896, 'en', 'Images', 'Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(897, 'en', 'Main Images', 'Main Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(898, 'en', 'Meta Tags', 'Meta Tags', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(899, 'en', 'Digital Product has been inserted successfully', 'Digital Product has been inserted successfully', '2020-11-09 08:14:25', '2020-11-09 08:14:25'),
(900, 'en', 'Edit Digital Product', 'Edit Digital Product', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(901, 'en', 'Select an option', 'Select an option', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(902, 'en', 'tax', 'tax', '2020-11-09 08:14:35', '2020-11-09 08:14:35'),
(903, 'en', 'Any question about this product?', 'Any question about this product?', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(904, 'en', 'Sign in', 'Sign in', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(905, 'en', 'Login with Google', 'Login with Google', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(906, 'en', 'Login with Facebook', 'Login with Facebook', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(907, 'en', 'Login with Twitter', 'Login with Twitter', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(908, 'en', 'Click to show phone number', 'Click to show phone number', '2020-11-09 08:15:51', '2020-11-09 08:15:51'),
(909, 'en', 'Other Ads of', 'Other Ads of', '2020-11-09 08:15:52', '2020-11-09 08:15:52'),
(910, 'en', 'Store Home', 'Store Home', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(911, 'en', 'Top Selling', 'Top Selling', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(912, 'en', 'Shop Settings', 'Shop Settings', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(913, 'en', 'Visit Shop', 'Visit Shop', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(914, 'en', 'Pickup Points', 'Pickup Points', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(915, 'en', 'Select Pickup Point', 'Select Pickup Point', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(916, 'en', 'Slider Settings', 'Slider Settings', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(917, 'en', 'Social Media Link', 'Social Media Link', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(918, 'en', 'Facebook', 'Facebook', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(919, 'en', 'Twitter', 'Twitter', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(920, 'en', 'Google', 'Google', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(921, 'en', 'New Arrival Products', 'New Arrival Products', '2020-11-09 08:56:26', '2020-11-09 08:56:26'),
(922, 'en', 'Check Your Order Status', 'Check Your Order Status', '2020-11-09 09:23:32', '2020-11-09 09:23:32'),
(923, 'en', 'Shipping method', 'Shipping method', '2020-11-09 09:27:40', '2020-11-09 09:27:40'),
(924, 'en', 'Shipped By', 'Shipped By', '2020-11-09 09:27:41', '2020-11-09 09:27:41'),
(925, 'en', 'Image', 'Image', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(926, 'en', 'Sub Sub Category', 'Sub Sub Category', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(927, 'en', 'Inhouse Products', 'Inhouse Products', '2020-11-09 10:22:32', '2020-11-09 10:22:32'),
(928, 'en', 'Forgot Password?', 'Forgot Password?', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(929, 'en', 'Enter your email address to recover your password.', 'Enter your email address to recover your password.', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(930, 'en', 'Email or Phone', 'Email or Phone', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(931, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(932, 'en', 'Back to Login', 'Back to Login', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(933, 'en', 'index', 'index', '2020-11-09 10:35:29', '2020-11-09 10:35:29'),
(934, 'en', 'Download Your Product', 'Download Your Product', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(935, 'en', 'Option', 'Option', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(936, 'en', 'Applied Refund Request', 'Applied Refund Request', '2020-11-09 10:35:39', '2020-11-09 10:35:39'),
(937, 'en', 'Item has been renoved from wishlist', 'Item has been renoved from wishlist', '2020-11-09 10:36:04', '2020-11-09 10:36:04'),
(938, 'en', 'Bulk Products Upload', 'Bulk Products Upload', '2020-11-09 10:39:24', '2020-11-09 10:39:24'),
(939, 'en', 'Upload CSV', 'Upload CSV', '2020-11-09 10:39:25', '2020-11-09 10:39:25'),
(940, 'en', 'Create a Ticket', 'Create a Ticket', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(941, 'en', 'Tickets', 'Tickets', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(942, 'en', 'Ticket ID', 'Ticket ID', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(943, 'en', 'Sending Date', 'Sending Date', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(944, 'en', 'Subject', 'Subject', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(945, 'en', 'View Details', 'View Details', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(946, 'en', 'Provide a detailed description', 'Provide a detailed description', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(947, 'en', 'Type your reply', 'Type your reply', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(948, 'en', 'Send Ticket', 'Send Ticket', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(949, 'en', 'Load More', 'Load More', '2020-11-09 10:40:57', '2020-11-09 10:40:57'),
(950, 'en', 'Jewelry & Watches', 'Jewelry & Watches', '2020-11-09 10:47:38', '2020-11-09 10:47:38'),
(951, 'en', 'Filters', 'Filters', '2020-11-09 10:53:54', '2020-11-09 10:53:54'),
(952, 'en', 'Contact address', 'Contact address', '2020-11-09 10:58:46', '2020-11-09 10:58:46'),
(953, 'en', 'Contact phone', 'Contact phone', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(954, 'en', 'Contact email', 'Contact email', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(955, 'en', 'Filter by', 'Filter by', '2020-11-09 11:00:03', '2020-11-09 11:00:03'),
(956, 'en', 'Condition', 'Condition', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(957, 'en', 'All Type', 'All Type', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(960, 'en', 'Pay with wallet', 'Pay with wallet', '2020-11-09 12:56:34', '2020-11-09 12:56:34'),
(961, 'en', 'Select variation', 'Select variation', '2020-11-10 07:54:29', '2020-11-10 07:54:29'),
(962, 'en', 'No Product Added', 'No Product Added', '2020-11-10 08:07:53', '2020-11-10 08:07:53'),
(963, 'en', 'Status has been updated successfully', 'Status has been updated successfully', '2020-11-10 08:41:23', '2020-11-10 08:41:23'),
(964, 'en', 'All Seller Packages', 'All Seller Packages', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(965, 'en', 'Add New Package', 'Add New Package', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(966, 'en', 'Package Logo', 'Package Logo', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(967, 'en', 'days', 'days', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(968, 'en', 'Create New Seller Package', 'Create New Seller Package', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(969, 'en', 'Package Name', 'Package Name', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(970, 'en', 'Duration', 'Duration', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(971, 'en', 'Validity in number of days', 'Validity in number of days', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(972, 'en', 'Update Package Information', 'Update Package Information', '2020-11-10 09:14:59', '2020-11-10 09:14:59'),
(973, 'en', 'Package has been inserted successfully', 'Package has been inserted successfully', '2020-11-10 09:15:14', '2020-11-10 09:15:14'),
(974, 'en', 'Refund Request', 'Refund Request', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(975, 'en', 'Reason', 'Reason', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(976, 'en', 'Label', 'Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(977, 'en', 'Select Label', 'Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(978, 'en', 'Multiple Select Label', 'Multiple Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(979, 'en', 'Radio Label', 'Radio Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(980, 'en', 'Pickup Point Orders', 'Pickup Point Orders', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(981, 'en', 'View', 'View', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(982, 'en', 'Order #', 'Order #', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(983, 'en', 'Order Status', 'Order Status', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(984, 'en', 'Total amount', 'Total amount', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(986, 'en', 'TOTAL', 'TOTAL', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(987, 'en', 'Delivery status has been updated', 'Delivery status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(988, 'en', 'Payment status has been updated', 'Payment status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(989, 'en', 'INVOICE', 'INVOICE', '2020-11-10 09:25:58', '2020-11-10 09:25:58'),
(990, 'en', 'Set Refund Time', 'Set Refund Time', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(991, 'en', 'Set Time for sending Refund Request', 'Set Time for sending Refund Request', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(992, 'en', 'Set Refund Sticker', 'Set Refund Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(993, 'en', 'Sticker', 'Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(994, 'en', 'Refund Request All', 'Refund Request All', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(995, 'en', 'Order Id', 'Order Id', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(996, 'en', 'Seller Approval', 'Seller Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(997, 'en', 'Admin Approval', 'Admin Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(998, 'en', 'Refund Status', 'Refund Status', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(1000, 'en', 'No Refund', 'No Refund', '2020-11-10 09:35:27', '2020-11-10 09:35:27'),
(1001, 'en', 'Status updated successfully', 'Status updated successfully', '2020-11-10 09:54:20', '2020-11-10 09:54:20'),
(1002, 'en', 'User Search Report', 'User Search Report', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1003, 'en', 'Search By', 'Search By', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1004, 'en', 'Number searches', 'Number searches', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1005, 'en', 'Sender', 'Sender', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1006, 'en', 'Receiver', 'Receiver', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1007, 'en', 'Verification form updated successfully', 'Verification form updated successfully', '2020-11-11 06:53:29', '2020-11-11 06:53:29'),
(1008, 'en', 'Invalid email or password', 'Invalid email or password', '2020-11-11 07:07:49', '2020-11-11 07:07:49'),
(1009, 'en', 'All Coupons', 'All Coupons', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1010, 'en', 'Add New Coupon', 'Add New Coupon', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1011, 'en', 'Coupon Information', 'Coupon Information', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1012, 'en', 'Start Date', 'Start Date', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1013, 'en', 'End Date', 'End Date', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1014, 'en', 'Product Base', 'Product Base', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1015, 'en', 'Send Newsletter', 'Send Newsletter', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1016, 'en', 'Mobile Users', 'Mobile Users', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1017, 'en', 'SMS subject', 'SMS subject', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1018, 'en', 'SMS content', 'SMS content', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1019, 'en', 'All Flash Delas', 'All Flash Delas', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1020, 'en', 'Create New Flash Dela', 'Create New Flash Dela', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1022, 'en', 'Page Link', 'Page Link', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1023, 'en', 'Flash Deal Information', 'Flash Deal Information', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1024, 'en', 'Background Color', 'Background Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1025, 'en', '#0000ff', '#0000ff', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1026, 'en', 'Text Color', 'Text Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1027, 'en', 'White', 'White', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1028, 'en', 'Dark', 'Dark', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1029, 'en', 'Choose Products', 'Choose Products', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1030, 'en', 'Discounts', 'Discounts', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1031, 'en', 'Discount Type', 'Discount Type', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1032, 'en', 'Twillo Credential', 'Twillo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1033, 'en', 'TWILIO SID', 'TWILIO SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1034, 'en', 'TWILIO AUTH TOKEN', 'TWILIO AUTH TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1035, 'en', 'TWILIO VERIFY SID', 'TWILIO VERIFY SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1036, 'en', 'VALID TWILLO NUMBER', 'VALID TWILLO NUMBER', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1037, 'en', 'Nexmo Credential', 'Nexmo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1038, 'en', 'NEXMO KEY', 'NEXMO KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1039, 'en', 'NEXMO SECRET', 'NEXMO SECRET', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1040, 'en', 'SSL Wireless Credential', 'SSL Wireless Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1041, 'en', 'SSL SMS API TOKEN', 'SSL SMS API TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1042, 'en', 'SSL SMS SID', 'SSL SMS SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1043, 'en', 'SSL SMS URL', 'SSL SMS URL', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1044, 'en', 'Fast2SMS Credential', 'Fast2SMS Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1045, 'en', 'AUTH KEY', 'AUTH KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1046, 'en', 'ROUTE', 'ROUTE', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1047, 'en', 'Promotional Use', 'Promotional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1048, 'en', 'Transactional Use', 'Transactional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1050, 'en', 'SENDER ID', 'SENDER ID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1051, 'en', 'Nexmo OTP', 'Nexmo OTP', '2020-11-11 07:17:42', '2020-11-11 07:17:42'),
(1052, 'en', 'Twillo OTP', 'Twillo OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1053, 'en', 'SSL Wireless OTP', 'SSL Wireless OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1054, 'en', 'Fast2SMS OTP', 'Fast2SMS OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1055, 'en', 'Order Placement', 'Order Placement', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1056, 'en', 'Delivery Status Changing Time', 'Delivery Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1057, 'en', 'Paid Status Changing Time', 'Paid Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1058, 'en', 'Send Bulk SMS', 'Send Bulk SMS', '2020-11-11 07:19:14', '2020-11-11 07:19:14'),
(1059, 'en', 'All Subscribers', 'All Subscribers', '2020-11-11 07:21:51', '2020-11-11 07:21:51'),
(1060, 'en', 'Coupon Information Adding', 'Coupon Information Adding', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1061, 'en', 'Coupon Type', 'Coupon Type', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1062, 'en', 'For Products', 'For Products', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1063, 'en', 'For Total Orders', 'For Total Orders', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1064, 'en', 'Add Your Product Base Coupon', 'Add Your Product Base Coupon', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1065, 'en', 'Coupon code', 'Coupon code', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1066, 'en', 'Sub Category', 'Sub Category', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1067, 'en', 'Add More', 'Add More', '2020-11-11 07:22:43', '2020-11-11 07:22:43'),
(1068, 'en', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1069, 'en', 'Minimum Shopping', 'Minimum Shopping', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1070, 'en', 'Maximum Discount Amount', 'Maximum Discount Amount', '2020-11-11 07:29:41', '2020-11-11 07:29:41'),
(1071, 'en', 'Coupon Information Update', 'Coupon Information Update', '2020-11-11 08:18:34', '2020-11-11 08:18:34'),
(1073, 'en', 'Please Configure SMTP Setting to work all email sending funtionality', 'Please Configure SMTP Setting to work all email sending funtionality', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1074, 'en', 'Configure Now', 'Configure Now', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1076, 'en', 'Total published products', 'Total published products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1077, 'en', 'Total sellers products', 'Total sellers products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1078, 'en', 'Total admin products', 'Total admin products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1079, 'en', 'Manage Products', 'Manage Products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1080, 'en', 'Total product category', 'Total product category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1081, 'en', 'Create Category', 'Create Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1082, 'en', 'Total product sub sub category', 'Total product sub sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1083, 'en', 'Create Sub Sub Category', 'Create Sub Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1084, 'en', 'Total product sub category', 'Total product sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1085, 'en', 'Create Sub Category', 'Create Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1086, 'en', 'Total product brand', 'Total product brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1087, 'en', 'Create Brand', 'Create Brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1089, 'en', 'Total sellers', 'Total sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1091, 'en', 'Total approved sellers', 'Total approved sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1093, 'en', 'Total pending sellers', 'Total pending sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1094, 'en', 'Manage Sellers', 'Manage Sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1095, 'en', 'Category wise product sale', 'Category wise product sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1097, 'en', 'Sale', 'Sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1098, 'en', 'Category wise product stock', 'Category wise product stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1099, 'en', 'Category Name', 'Category Name', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1100, 'en', 'Stock', 'Stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1101, 'en', 'Frontend', 'Frontend', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1103, 'en', 'Home page', 'Home page', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1104, 'en', 'setting', 'setting', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1106, 'en', 'Policy page', 'Policy page', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1107, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1109, 'en', 'General', 'General', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1110, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1111, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1112, 'en', 'Useful link', 'Useful link', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1113, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1114, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1115, 'en', 'Activation', 'Activation', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1116, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1117, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1118, 'en', 'SMTP', 'SMTP', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1119, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1120, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1121, 'en', 'Payment method', 'Payment method', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1122, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1123, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1124, 'en', 'Social media', 'Social media', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1125, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1126, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1127, 'en', 'Business', 'Business', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1128, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1130, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1131, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1132, 'en', 'Seller verification', 'Seller verification', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1133, 'en', 'form setting', 'form setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1134, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1135, 'en', 'Language', 'Language', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1136, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1137, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1139, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1140, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1141, 'en', 'Dashboard', 'Dashboard', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1142, 'en', 'POS System', 'POS System', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1143, 'en', 'POS Manager', 'POS Manager', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1144, 'en', 'POS Configuration', 'POS Configuration', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1145, 'en', 'Products', 'Products', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1146, 'en', 'Add New product', 'Add New product', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1147, 'en', 'All Products', 'All Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1148, 'en', 'In House Products', 'In House Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1149, 'en', 'Seller Products', 'Seller Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1150, 'en', 'Digital Products', 'Digital Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1151, 'en', 'Bulk Import', 'Bulk Import', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1152, 'en', 'Bulk Export', 'Bulk Export', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1153, 'en', 'Category', 'Category', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1154, 'en', 'Subcategory', 'Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1155, 'en', 'Sub Subcategory', 'Sub Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1156, 'en', 'Brand', 'Brand', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1157, 'en', 'Attribute', 'Attribute', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1158, 'en', 'Product Reviews', 'Product Reviews', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1159, 'en', 'Sales', 'Sales', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1160, 'en', 'All Orders', 'All Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1161, 'en', 'Inhouse orders', 'Inhouse orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1162, 'en', 'Seller Orders', 'Seller Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1163, 'en', 'Pick-up Point Order', 'Pick-up Point Order', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1164, 'en', 'Refunds', 'Refunds', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1165, 'en', 'Refund Requests', 'Refund Requests', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1166, 'en', 'Approved Refund', 'Approved Refund', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1167, 'en', 'Refund Configuration', 'Refund Configuration', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1168, 'en', 'Customers', 'Customers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1169, 'en', 'Customer list', 'Customer list', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1170, 'en', 'Classified Products', 'Classified Products', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1171, 'en', 'Classified Packages', 'Classified Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1172, 'en', 'Sellers', 'Sellers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1173, 'en', 'All Seller', 'All Seller', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1174, 'en', 'Payouts', 'Payouts', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1175, 'en', 'Payout Requests', 'Payout Requests', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1176, 'en', 'Seller Commission', 'Seller Commission', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1177, 'en', 'Seller Packages', 'Seller Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1178, 'en', 'Seller Verification Form', 'Seller Verification Form', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1179, 'en', 'Reports', 'Reports', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1180, 'en', 'In House Product Sale', 'In House Product Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1181, 'en', 'Seller Products Sale', 'Seller Products Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1182, 'en', 'Products Stock', 'Products Stock', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1183, 'en', 'Products wishlist', 'Products wishlist', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1184, 'en', 'User Searches', 'User Searches', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1185, 'en', 'Marketing', 'Marketing', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1186, 'en', 'Flash deals', 'Flash deals', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1187, 'en', 'Newsletters', 'Newsletters', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1188, 'en', 'Bulk SMS', 'Bulk SMS', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1189, 'en', 'Subscribers', 'Subscribers', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1190, 'en', 'Coupon', 'Coupon', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1191, 'en', 'Support', 'Support', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1192, 'en', 'Ticket', 'Ticket', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1193, 'en', 'Product Queries', 'Product Queries', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1194, 'en', 'Website Setup', 'Website Setup', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1195, 'en', 'Header', 'Header', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1196, 'en', 'Footer', 'Footer', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1197, 'en', 'Pages', 'Pages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1198, 'en', 'Appearance', 'Appearance', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1199, 'en', 'Setup & Configurations', 'Setup & Configurations', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1200, 'en', 'General Settings', 'General Settings', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1201, 'en', 'Features activation', 'Features activation', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1202, 'en', 'Languages', 'Languages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1203, 'en', 'Currency', 'Currency', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1204, 'en', 'Pickup point', 'Pickup point', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1205, 'en', 'SMTP Settings', 'SMTP Settings', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1206, 'en', 'Payment Methods', 'Payment Methods', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1207, 'en', 'File System Configuration', 'File System Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1208, 'en', 'Social media Logins', 'Social media Logins', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1209, 'en', 'Analytics Tools', 'Analytics Tools', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1210, 'en', 'Facebook Chat', 'Facebook Chat', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1211, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1212, 'en', 'Shipping Configuration', 'Shipping Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1213, 'en', 'Shipping Countries', 'Shipping Countries', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1214, 'en', 'Affiliate System', 'Affiliate System', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1215, 'en', 'Affiliate Registration Form', 'Affiliate Registration Form', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1216, 'en', 'Affiliate Configurations', 'Affiliate Configurations', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1217, 'en', 'Affiliate Users', 'Affiliate Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1218, 'en', 'Referral Users', 'Referral Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1219, 'en', 'Affiliate Withdraw Requests', 'Affiliate Withdraw Requests', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1220, 'en', 'Offline Payment System', 'Offline Payment System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1221, 'en', 'Manual Payment Methods', 'Manual Payment Methods', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1222, 'en', 'Offline Wallet Recharge', 'Offline Wallet Recharge', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1223, 'en', 'Offline Customer Package Payments', 'Offline Customer Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1224, 'en', 'Offline Seller Package Payments', 'Offline Seller Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1225, 'en', 'Paytm Payment Gateway', 'Paytm Payment Gateway', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1226, 'en', 'Set Paytm Credentials', 'Set Paytm Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1227, 'en', 'Club Point System', 'Club Point System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1228, 'en', 'Club Point Configurations', 'Club Point Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1229, 'en', 'Set Product Point', 'Set Product Point', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1230, 'en', 'User Points', 'User Points', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1231, 'en', 'OTP System', 'OTP System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1232, 'en', 'OTP Configurations', 'OTP Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1233, 'en', 'Set OTP Credentials', 'Set OTP Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1234, 'en', 'Staffs', 'Staffs', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1235, 'en', 'All staffs', 'All staffs', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1236, 'en', 'Staff permissions', 'Staff permissions', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1237, 'en', 'Addon Manager', 'Addon Manager', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1238, 'en', 'Browse Website', 'Browse Website', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1239, 'en', 'POS', 'POS', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1240, 'en', 'Notifications', 'Notifications', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1241, 'en', 'new orders', 'new orders', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1242, 'en', 'user-image', 'user-image', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1243, 'en', 'Profile', 'Profile', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1244, 'en', 'Logout', 'Logout', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1247, 'en', 'Page Not Found!', 'Page Not Found!', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1249, 'en', 'The page you are looking for has not been found on our server.', 'The page you are looking for has not been found on our server.', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1253, 'en', 'Registration', 'Registration', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1255, 'en', 'I am shopping for...', 'I am shopping for...', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1257, 'en', 'Compare', 'Compare', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1259, 'en', 'Wishlist', 'Wishlist', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1261, 'en', 'Cart', 'Cart', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1263, 'en', 'Your Cart is empty', 'Your Cart is empty', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1265, 'en', 'Categories', 'Categories', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1267, 'en', 'See All', 'See All', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1269, 'en', 'Seller Policy', 'Seller Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1271, 'en', 'Return Policy', 'Return Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1273, 'en', 'Support Policy', 'Support Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1275, 'en', 'Privacy Policy', 'Privacy Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1277, 'en', 'Your Email Address', 'Your Email Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1279, 'en', 'Subscribe', 'Subscribe', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1281, 'en', 'Contact Info', 'Contact Info', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1283, 'en', 'Address', 'Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1285, 'en', 'Phone', 'Phone', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1287, 'en', 'Email', 'Email', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1288, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1289, 'en', 'My Account', 'My Account', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1291, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1293, 'en', 'Order History', 'Order History', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1295, 'en', 'My Wishlist', 'My Wishlist', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1297, 'en', 'Track Order', 'Track Order', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1299, 'en', 'Be an affiliate partner', 'Be an affiliate partner', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1301, 'en', 'Be a Seller', 'Be a Seller', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1303, 'en', 'Apply Now', 'Apply Now', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1305, 'en', 'Confirmation', 'Confirmation', '2020-11-11 13:10:30', '2020-11-11 13:10:30');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1307, 'en', 'Delete confirmation message', 'Delete confirmation message', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1309, 'en', 'Cancel', 'Cancel', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1312, 'en', 'Delete', 'Delete', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1313, 'en', 'Item has been added to compare list', 'Item has been added to compare list', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1314, 'en', 'Please login first', 'Please login first', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1315, 'en', 'Total Earnings From', 'Total Earnings From', '2020-11-12 08:01:11', '2020-11-12 08:01:11'),
(1316, 'en', 'Client Subscription', 'Client Subscription', '2020-11-12 08:01:12', '2020-11-12 08:01:12'),
(1317, 'en', 'Product category', 'Product category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1318, 'en', 'Product sub sub category', 'Product sub sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1319, 'en', 'Product sub category', 'Product sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1320, 'en', 'Product brand', 'Product brand', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1321, 'en', 'Top Client Packages', 'Top Client Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1322, 'en', 'Top Freelancer Packages', 'Top Freelancer Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1323, 'en', 'Number of sale', 'Number of sale', '2020-11-12 09:13:09', '2020-11-12 09:13:09'),
(1324, 'en', 'Number of Stock', 'Number of Stock', '2020-11-12 09:16:02', '2020-11-12 09:16:02'),
(1325, 'en', 'Top 10 Products', 'Top 10 Products', '2020-11-12 10:02:29', '2020-11-12 10:02:29'),
(1326, 'en', 'Top 12 Products', 'Top 12 Products', '2020-11-12 10:02:39', '2020-11-12 10:02:39'),
(1327, 'en', 'Admin can not be a seller', 'Admin can not be a seller', '2020-11-12 11:30:19', '2020-11-12 11:30:19'),
(1328, 'en', 'Filter by Rating', 'Filter by Rating', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1329, 'en', 'Published reviews updated successfully', 'Published reviews updated successfully', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1330, 'en', 'Refund Sticker has been updated successfully', 'Refund Sticker has been updated successfully', '2020-11-15 08:17:12', '2020-11-15 08:17:12'),
(1331, 'en', 'Edit Product', 'Edit Product', '2020-11-15 10:31:54', '2020-11-15 10:31:54'),
(1332, 'en', 'Meta Images', 'Meta Images', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1333, 'en', 'Update Product', 'Update Product', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1334, 'en', 'Product has been deleted successfully', 'Product has been deleted successfully', '2020-11-15 10:32:57', '2020-11-15 10:32:57'),
(1335, 'en', 'Your Profile has been updated successfully!', 'Your Profile has been updated successfully!', '2020-11-15 11:10:42', '2020-11-15 11:10:42'),
(1336, 'en', 'Upload limit has been reached. Please upgrade your package.', 'Upload limit has been reached. Please upgrade your package.', '2020-11-15 11:13:45', '2020-11-15 11:13:45'),
(1337, 'en', 'Add Your Product', 'Add Your Product', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1338, 'en', 'Select a category', 'Select a category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1339, 'en', 'Select a brand', 'Select a brand', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1340, 'en', 'Product Unit', 'Product Unit', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1341, 'en', 'Minimum Qty.', 'Minimum Qty.', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1342, 'en', 'Product Tag', 'Product Tag', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1343, 'en', 'Type & hit enter', 'Type & hit enter', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1344, 'en', 'Videos', 'Videos', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1345, 'en', 'Video From', 'Video From', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1346, 'en', 'Video URL', 'Video URL', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1347, 'en', 'Customer Choice', 'Customer Choice', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1348, 'en', 'PDF', 'PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1349, 'en', 'Choose PDF', 'Choose PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1350, 'en', 'Select Category', 'Select Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1351, 'en', 'Target Category', 'Target Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1352, 'en', 'subsubcategory', 'subsubcategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1353, 'en', 'Search Category', 'Search Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1354, 'en', 'Search SubCategory', 'Search SubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1355, 'en', 'Search SubSubCategory', 'Search SubSubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1356, 'en', 'Update your product', 'Update your product', '2020-11-15 11:39:14', '2020-11-15 11:39:14'),
(1357, 'en', 'Product has been updated successfully', 'Product has been updated successfully', '2020-11-15 11:51:36', '2020-11-15 11:51:36'),
(1358, 'en', 'Add Your Digital Product', 'Add Your Digital Product', '2020-11-15 12:24:21', '2020-11-15 12:24:21'),
(1359, 'en', 'Active eCommerce CMS Update Process', 'Active eCommerce CMS Update Process', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1361, 'en', 'Codecanyon purchase code', 'Codecanyon purchase code', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1362, 'en', 'Database Name', 'Database Name', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1363, 'en', 'Database Username', 'Database Username', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1364, 'en', 'Database Password', 'Database Password', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1365, 'en', 'Database Hostname', 'Database Hostname', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1366, 'en', 'Update Now', 'Update Now', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1368, 'en', 'Congratulations', 'Congratulations', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1369, 'en', 'You have successfully completed the updating process. Please Login to continue', 'You have successfully completed the updating process. Please Login to continue', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1370, 'en', 'Go to Home', 'Go to Home', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1371, 'en', 'Login to Admin panel', 'Login to Admin panel', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1372, 'en', 'S3 File System Credentials', 'S3 File System Credentials', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1373, 'en', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1374, 'en', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1375, 'en', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1376, 'en', 'AWS_BUCKET', 'AWS_BUCKET', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1377, 'en', 'AWS_URL', 'AWS_URL', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1378, 'en', 'S3 File System Activation', 'S3 File System Activation', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1379, 'en', 'Your phone number', 'Your phone number', '2020-11-17 05:50:10', '2020-11-17 05:50:10'),
(1380, 'en', 'Zip File', 'Zip File', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1381, 'en', 'Install', 'Install', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1382, 'en', 'This version is not capable of installing Addons, Please update.', 'This version is not capable of installing Addons, Please update.', '2020-11-17 06:59:11', '2020-11-17 06:59:11'),
(1383, 'bd', 'Welcome to', 'Welcome to', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1384, 'bd', 'Login to your account.', 'Login to your account.', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1385, 'bd', 'Email', 'Email', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1386, 'bd', 'Password', 'Password', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1387, 'bd', 'Remember Me', 'Remember Me', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1388, 'bd', 'Login', 'Login', '2021-02-08 19:25:38', '2021-02-08 19:25:38'),
(1389, 'bd', 'Best Selling', 'Best Selling', '2021-02-08 19:25:42', '2021-02-08 19:25:42'),
(1390, 'bd', 'Top 20', 'Top 20', '2021-02-08 19:25:42', '2021-02-08 19:25:42'),
(1391, 'bd', 'Please Configure SMTP Setting to work all email sending functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1392, 'bd', 'Configure Now', 'Configure Now', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1393, 'bd', 'Total', 'Total', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1394, 'bd', 'Customer', 'Customer', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1395, 'bd', 'Order', 'Order', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1396, 'bd', 'Product category', 'Product category', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1397, 'bd', 'Product brand', 'Product brand', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1398, 'bd', 'Products', 'Products', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1399, 'bd', 'Sellers', 'Sellers', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1400, 'bd', 'Category wise product sale', 'Category wise product sale', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1401, 'bd', 'Category wise product stock', 'Category wise product stock', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1402, 'bd', 'Top 12 Products', 'Top 12 Products', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1403, 'bd', 'Total published products', 'Total published products', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1404, 'bd', 'Total sellers products', 'Total sellers products', '2021-02-08 19:25:52', '2021-02-08 19:25:52'),
(1405, 'bd', 'Total admin products', 'Total admin products', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1406, 'bd', 'Total sellers', 'Total sellers', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1407, 'bd', 'Total approved sellers', 'Total approved sellers', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1408, 'bd', 'Total pending sellers', 'Total pending sellers', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1409, 'bd', 'Number of sale', 'Number of sale', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1410, 'bd', 'Number of Stock', 'Number of Stock', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1411, 'bd', 'Search in menu', 'Search in menu', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1412, 'bd', 'Dashboard', 'Dashboard', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1413, 'bd', 'Add New product', 'Add New product', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1414, 'bd', 'All Products', 'All Products', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1415, 'bd', 'In House Products', 'In House Products', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1416, 'bd', 'Seller Products', 'Seller Products', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1417, 'bd', 'Digital Products', 'Digital Products', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1418, 'bd', 'Bulk Import', 'Bulk Import', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1419, 'bd', 'Bulk Export', 'Bulk Export', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1420, 'bd', 'Category', 'Category', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1421, 'bd', 'Brand', 'Brand', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1422, 'bd', 'Attribute', 'Attribute', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1423, 'bd', 'Product Reviews', 'Product Reviews', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1424, 'bd', 'Sales', 'Sales', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1425, 'bd', 'All Orders', 'All Orders', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1426, 'bd', 'Inhouse orders', 'Inhouse orders', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1427, 'bd', 'Seller Orders', 'Seller Orders', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1428, 'bd', 'Pick-up Point Order', 'Pick-up Point Order', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1429, 'bd', 'Customers', 'Customers', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1430, 'bd', 'Customer list', 'Customer list', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1431, 'bd', 'All Seller', 'All Seller', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1432, 'bd', 'Payouts', 'Payouts', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1433, 'bd', 'Payout Requests', 'Payout Requests', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1434, 'bd', 'Seller Commission', 'Seller Commission', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1435, 'bd', 'Seller Verification Form', 'Seller Verification Form', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1436, 'bd', 'Uploaded Files', 'Uploaded Files', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1437, 'bd', 'Reports', 'Reports', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1438, 'bd', 'In House Product Sale', 'In House Product Sale', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1439, 'bd', 'Seller Products Sale', 'Seller Products Sale', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1440, 'bd', 'Products Stock', 'Products Stock', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1441, 'bd', 'Products wishlist', 'Products wishlist', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1442, 'bd', 'User Searches', 'User Searches', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1443, 'bd', 'Marketing', 'Marketing', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1444, 'bd', 'Flash deals', 'Flash deals', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1445, 'bd', 'Newsletters', 'Newsletters', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1446, 'bd', 'Subscribers', 'Subscribers', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1447, 'bd', 'Coupon', 'Coupon', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1448, 'bd', 'Support', 'Support', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1449, 'bd', 'Ticket', 'Ticket', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1450, 'bd', 'Product Queries', 'Product Queries', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1451, 'bd', 'Website Setup', 'Website Setup', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1452, 'bd', 'Header', 'Header', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1453, 'bd', 'Footer', 'Footer', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1454, 'bd', 'Pages', 'Pages', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1455, 'bd', 'Appearance', 'Appearance', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1456, 'bd', 'Setup & Configurations', 'Setup & Configurations', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1457, 'bd', 'General Settings', 'General Settings', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1458, 'bd', 'Features activation', 'Features activation', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1459, 'bd', 'Languages', 'Languages', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1460, 'bd', 'Currency', 'Currency', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1461, 'bd', 'Pickup point', 'Pickup point', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1462, 'bd', 'SMTP Settings', 'SMTP Settings', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1463, 'bd', 'Payment Methods', 'Payment Methods', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1464, 'bd', 'File System Configuration', 'File System Configuration', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1465, 'bd', 'Social media Logins', 'Social media Logins', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1466, 'bd', 'Analytics Tools', 'Analytics Tools', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1467, 'bd', 'Facebook Chat', 'Facebook Chat', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1468, 'bd', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1469, 'bd', 'Shipping Configuration', 'Shipping Configuration', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1470, 'bd', 'Shipping Countries', 'Shipping Countries', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1471, 'bd', 'Shipping Cities', 'Shipping Cities', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1472, 'bd', 'Staffs', 'Staffs', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1473, 'bd', 'All staffs', 'All staffs', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1474, 'bd', 'Staff permissions', 'Staff permissions', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1475, 'bd', 'System', 'System', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1476, 'bd', 'Update', 'Update', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1477, 'bd', 'Server status', 'Server status', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1478, 'bd', 'Addon Manager', 'Addon Manager', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1479, 'bd', 'Browse Website', 'Browse Website', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1480, 'bd', 'Notifications', 'Notifications', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1481, 'bd', 'Profile', 'Profile', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1482, 'bd', 'Logout', 'Logout', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1483, 'bd', 'Nothing Found', 'Nothing Found', '2021-02-08 19:25:53', '2021-02-08 19:25:53'),
(1484, 'bd', 'All categories', 'All categories', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1485, 'bd', 'Add New category', 'Add New category', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1486, 'bd', 'Categories', 'Categories', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1487, 'bd', 'Type name & Enter', 'Type name & Enter', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1488, 'bd', 'Name', 'Name', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1489, 'bd', 'Parent Category', 'Parent Category', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1490, 'bd', 'Level', 'Level', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1491, 'bd', 'Banner', 'Banner', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1492, 'bd', 'Icon', 'Icon', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1493, 'bd', 'Featured', 'Featured', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1494, 'bd', 'Commission', 'Commission', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1495, 'bd', 'Options', 'Options', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1496, 'bd', 'Edit', 'Edit', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1497, 'bd', 'Delete', 'Delete', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1498, 'bd', 'Delete Confirmation', 'Delete Confirmation', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1499, 'bd', 'Are you sure to delete this?', 'Are you sure to delete this?', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1500, 'bd', 'Cancel', 'Cancel', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1501, 'bd', 'Featured categories updated successfully', 'Featured categories updated successfully', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1502, 'bd', 'Something went wrong', 'Something went wrong', '2021-02-08 19:26:03', '2021-02-08 19:26:03'),
(1503, 'bd', 'See All', 'See All', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1504, 'bd', 'Top 10 Categories', 'Top 10 Categories', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1505, 'bd', 'View All Categories', 'View All Categories', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1506, 'bd', 'Top 10 Brands', 'Top 10 Brands', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1507, 'bd', 'View All Brands', 'View All Brands', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1508, 'bd', 'My Panel', 'My Panel', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1509, 'bd', 'I am shopping for...', 'I am shopping for...', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1510, 'bd', 'Compare', 'Compare', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1511, 'bd', 'Wishlist', 'Wishlist', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1512, 'bd', 'Cart', 'Cart', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1513, 'bd', 'Your Cart is empty', 'Your Cart is empty', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1514, 'bd', 'Terms & conditions', 'Terms & conditions', '2021-02-08 19:27:41', '2021-02-08 19:27:41'),
(1515, 'bd', 'Return Policy', 'Return Policy', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1516, 'bd', 'Support Policy', 'Support Policy', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1517, 'bd', 'Privacy Policy', 'Privacy Policy', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1518, 'bd', 'Your Email Address', 'Your Email Address', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1519, 'bd', 'Subscribe', 'Subscribe', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1520, 'bd', 'Contact Info', 'Contact Info', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1521, 'bd', 'Address', 'Address', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1522, 'bd', 'Phone', 'Phone', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1523, 'bd', 'My Account', 'My Account', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1524, 'bd', 'Order History', 'Order History', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1525, 'bd', 'My Wishlist', 'My Wishlist', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1526, 'bd', 'Track Order', 'Track Order', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1527, 'bd', 'Be a Seller', 'Be a Seller', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1528, 'bd', 'Apply Now', 'Apply Now', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1529, 'bd', 'Confirmation', 'Confirmation', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1530, 'bd', 'Delete confirmation message', 'Delete confirmation message', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1531, 'bd', 'Item has been added to compare list', 'Item has been added to compare list', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1532, 'bd', 'Please login first', 'Please login first', '2021-02-08 19:27:42', '2021-02-08 19:27:42'),
(1533, 'bd', 'Featured Products', 'Featured Products', '2021-02-08 19:27:43', '2021-02-08 19:27:43'),
(1534, 'bd', 'Purchase History', 'Purchase History', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1535, 'bd', 'Downloads', 'Downloads', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1536, 'bd', 'Product Bulk Upload', 'Product Bulk Upload', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1537, 'bd', 'Orders', 'Orders', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1538, 'bd', 'Shop Setting', 'Shop Setting', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1539, 'bd', 'Payment History', 'Payment History', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1540, 'bd', 'Money Withdraw', 'Money Withdraw', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1541, 'bd', 'Conversations', 'Conversations', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1542, 'bd', 'Support Ticket', 'Support Ticket', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1543, 'bd', 'Manage Profile', 'Manage Profile', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1544, 'bd', 'Sold Amount', 'Sold Amount', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1545, 'bd', 'Your sold amount (current month)', 'Your sold amount (current month)', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1546, 'bd', 'Total Sold', 'Total Sold', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1547, 'bd', 'Last Month Sold', 'Last Month Sold', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1548, 'bd', 'Total sale', 'Total sale', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1549, 'bd', 'Total earnings', 'Total earnings', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1550, 'bd', 'Successful orders', 'Successful orders', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1551, 'bd', 'Total orders', 'Total orders', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1552, 'bd', 'Pending orders', 'Pending orders', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1553, 'bd', 'Cancelled orders', 'Cancelled orders', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1554, 'bd', 'Product', 'Product', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1555, 'bd', 'Shop', 'Shop', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1556, 'bd', 'Manage & organize your shop', 'Manage & organize your shop', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1557, 'bd', 'Go to setting', 'Go to setting', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1558, 'bd', 'Payment', 'Payment', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1559, 'bd', 'Configure your payment method', 'Configure your payment method', '2021-02-08 19:28:01', '2021-02-08 19:28:01'),
(1560, 'bd', 'Item has been added to wishlist', 'Item has been added to wishlist', '2021-02-08 19:28:02', '2021-02-08 19:28:02'),
(1561, 'bd', 'Search product', 'Search product', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1562, 'bd', 'Current Qty', 'Current Qty', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1563, 'bd', 'Base Price', 'Base Price', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1564, 'bd', 'Published', 'Published', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1565, 'bd', 'Featured products updated successfully', 'Featured products updated successfully', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1566, 'bd', 'Published products updated successfully', 'Published products updated successfully', '2021-02-08 19:28:20', '2021-02-08 19:28:20'),
(1567, 'bd', 'Add Your Product', 'Add Your Product', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1568, 'bd', 'Product Information', 'Product Information', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1569, 'bd', 'Product Name', 'Product Name', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1570, 'bd', 'Unit', 'Unit', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1571, 'bd', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1572, 'bd', 'Minimum Qty', 'Minimum Qty', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1573, 'bd', 'Tags', 'Tags', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1574, 'bd', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1575, 'bd', 'Product Images', 'Product Images', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1576, 'bd', 'Gallery Images', 'Gallery Images', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1577, 'bd', 'Browse', 'Browse', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1578, 'bd', 'Choose File', 'Choose File', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1579, 'bd', 'Thumbnail Image', 'Thumbnail Image', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1580, 'bd', 'Product Videos', 'Product Videos', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1581, 'bd', 'Video Provider', 'Video Provider', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1582, 'bd', 'Youtube', 'Youtube', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1583, 'bd', 'Dailymotion', 'Dailymotion', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1584, 'bd', 'Vimeo', 'Vimeo', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1585, 'bd', 'Video Link', 'Video Link', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1586, 'bd', 'Product Variation', 'Product Variation', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1587, 'bd', 'Colors', 'Colors', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1588, 'bd', 'Attributes', 'Attributes', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1589, 'bd', 'Choose Attributes', 'Choose Attributes', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1590, 'bd', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1591, 'bd', 'Product price + stock', 'Product price + stock', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1592, 'bd', 'Unit price', 'Unit price', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1593, 'bd', 'Purchase price', 'Purchase price', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1594, 'bd', 'Tax', 'Tax', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1595, 'bd', 'Flat', 'Flat', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1596, 'bd', 'Percent', 'Percent', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1597, 'bd', 'Discount', 'Discount', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1598, 'bd', 'Quantity', 'Quantity', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1599, 'bd', 'Product Description', 'Product Description', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1600, 'bd', 'Description', 'Description', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1601, 'bd', 'Product Shipping Cost', 'Product Shipping Cost', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1602, 'bd', 'Free Shipping', 'Free Shipping', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1603, 'bd', 'Status', 'Status', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1604, 'bd', 'Flat Rate', 'Flat Rate', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1605, 'bd', 'Shipping cost', 'Shipping cost', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1606, 'bd', 'PDF Specification', 'PDF Specification', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1607, 'bd', 'SEO Meta Tags', 'SEO Meta Tags', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1608, 'bd', 'Meta Title', 'Meta Title', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1609, 'bd', 'Meta Image', 'Meta Image', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1610, 'bd', 'Save Product', 'Save Product', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1611, 'bd', 'Choice Title', 'Choice Title', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1612, 'bd', 'Enter choice values', 'Enter choice values', '2021-02-08 19:28:24', '2021-02-08 19:28:24'),
(1613, 'bd', 'Select File', 'Select File', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1614, 'bd', 'Upload New', 'Upload New', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1615, 'bd', 'Sort by newest', 'Sort by newest', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1616, 'bd', 'Sort by oldest', 'Sort by oldest', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1617, 'bd', 'Sort by smallest', 'Sort by smallest', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1618, 'bd', 'Sort by largest', 'Sort by largest', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1619, 'bd', 'Selected Only', 'Selected Only', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1620, 'bd', 'Search your files', 'Search your files', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1621, 'bd', 'No files found', 'No files found', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1622, 'bd', '0 File selected', '0 File selected', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1623, 'bd', 'Clear', 'Clear', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1624, 'bd', 'Prev', 'Prev', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1625, 'bd', 'Next', 'Next', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1626, 'bd', 'Add Files', 'Add Files', '2021-02-08 19:28:47', '2021-02-08 19:28:47'),
(1627, 'bd', 'Variant', 'Variant', '2021-02-08 19:29:59', '2021-02-08 19:29:59'),
(1628, 'bd', 'Variant Price', 'Variant Price', '2021-02-08 19:29:59', '2021-02-08 19:29:59'),
(1629, 'bd', 'SKU', 'SKU', '2021-02-08 19:29:59', '2021-02-08 19:29:59'),
(1630, 'bd', 'Product has been inserted successfully', 'Product has been inserted successfully', '2021-02-08 19:30:58', '2021-02-08 19:30:58'),
(1631, 'bd', 'Duplicate', 'Duplicate', '2021-02-08 19:31:00', '2021-02-08 19:31:00'),
(1632, 'bd', 'Page Not Found!', 'Page Not Found!', '2021-02-08 19:31:37', '2021-02-08 19:31:37'),
(1633, 'bd', 'The page you are looking for has not been found on our server.', 'The page you are looking for has not been found on our server.', '2021-02-08 19:31:37', '2021-02-08 19:31:37'),
(1634, 'bd', 'reviews', 'reviews', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1635, 'bd', 'In stock', 'In stock', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1636, 'bd', 'Sold by', 'Sold by', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1637, 'bd', 'Message Seller', 'Message Seller', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1638, 'bd', 'Price', 'Price', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1639, 'bd', 'available', 'available', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1640, 'bd', 'Total Price', 'Total Price', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1641, 'bd', 'Add to cart', 'Add to cart', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1642, 'bd', 'Buy Now', 'Buy Now', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1643, 'bd', 'Add to wishlist', 'Add to wishlist', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1644, 'bd', 'Add to compare', 'Add to compare', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1645, 'bd', 'Share', 'Share', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1646, 'bd', 'customer reviews', 'customer reviews', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1647, 'bd', 'Visit Store', 'Visit Store', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1648, 'bd', 'Top Selling Products', 'Top Selling Products', '2021-02-08 19:31:49', '2021-02-08 19:31:49'),
(1649, 'bd', 'Video', 'Video', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1650, 'bd', 'Download', 'Download', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1651, 'bd', 'There have been no reviews for this product yet.', 'There have been no reviews for this product yet.', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1652, 'bd', 'Related products', 'Related products', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1653, 'bd', 'Any query about this product', 'Any query about this product', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1654, 'bd', 'Your Question', 'Your Question', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1655, 'bd', 'Send', 'Send', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1656, 'bd', 'Forgot password?', 'Forgot password?', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1657, 'bd', 'Dont have an account?', 'Dont have an account?', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1658, 'bd', 'Register Now', 'Register Now', '2021-02-08 19:31:50', '2021-02-08 19:31:50'),
(1659, 'bd', 'Registration', 'Registration', '2021-02-08 19:49:41', '2021-02-08 19:49:41'),
(1660, 'bd', 'System Name', 'System Name', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1661, 'bd', 'System Logo - White', 'System Logo - White', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1662, 'bd', 'Choose Files', 'Choose Files', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1663, 'bd', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1664, 'bd', 'System Logo - Black', 'System Logo - Black', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1665, 'bd', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1666, 'bd', 'System Timezone', 'System Timezone', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1667, 'bd', 'Admin login page background', 'Admin login page background', '2021-02-08 19:52:55', '2021-02-08 19:52:55'),
(1668, 'bd', 'Settings updated successfully', 'Settings updated successfully', '2021-02-08 19:56:52', '2021-02-08 19:56:52'),
(1669, 'bd', 'HTTPS Activation', 'HTTPS Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1670, 'bd', 'Maintenance Mode', 'Maintenance Mode', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1671, 'bd', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1672, 'bd', 'Classified Product Activate', 'Classified Product Activate', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1673, 'bd', 'Classified Product', 'Classified Product', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1674, 'bd', 'Business Related', 'Business Related', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1675, 'bd', 'Vendor System Activation', 'Vendor System Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1676, 'bd', 'Wallet System Activation', 'Wallet System Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1677, 'bd', 'Coupon System Activation', 'Coupon System Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1678, 'bd', 'Pickup Point Activation', 'Pickup Point Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1679, 'bd', 'Conversation Activation', 'Conversation Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1680, 'bd', 'Guest Checkout Activation', 'Guest Checkout Activation', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1681, 'bd', 'Category-based Commission', 'Category-based Commission', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1682, 'bd', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1683, 'bd', 'Set Commisssion Now', 'Set Commisssion Now', '2021-02-08 21:57:49', '2021-02-08 21:57:49'),
(1684, 'bd', 'Email Verification', 'Email Verification', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1685, 'bd', 'Payment Related', 'Payment Related', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1686, 'bd', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1687, 'bd', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1688, 'bd', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1689, 'bd', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1690, 'bd', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1691, 'bd', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1692, 'bd', 'Razor Pay Activation', 'Razor Pay Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1693, 'bd', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1694, 'bd', 'PayStack Activation', 'PayStack Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1695, 'bd', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1696, 'bd', 'VoguePay Activation', 'VoguePay Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1697, 'bd', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1698, 'bd', 'Payhere Activation', 'Payhere Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1699, 'bd', 'Ngenius Activation', 'Ngenius Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1700, 'bd', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1701, 'bd', 'Iyzico Activation', 'Iyzico Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1702, 'bd', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1703, 'bd', 'Bkash Activation', 'Bkash Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1704, 'bd', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1705, 'bd', 'Nagad Activation', 'Nagad Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1706, 'bd', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1707, 'bd', 'Cash Payment Activation', 'Cash Payment Activation', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1708, 'bd', 'Social Media Login', 'Social Media Login', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1709, 'bd', 'Facebook login', 'Facebook login', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1710, 'bd', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1711, 'bd', 'Google login', 'Google login', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1712, 'bd', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1713, 'bd', 'Twitter login', 'Twitter login', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1714, 'bd', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-02-08 21:57:50', '2021-02-08 21:57:50'),
(1715, 'bd', 'Default Language', 'Default Language', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1716, 'bd', 'Save', 'Save', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1717, 'bd', 'Add New Language', 'Add New Language', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1718, 'bd', 'Language', 'Language', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1719, 'bd', 'Code', 'Code', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1720, 'bd', 'RTL', 'RTL', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1721, 'bd', 'Translation', 'Translation', '2021-02-08 21:59:18', '2021-02-08 21:59:18'),
(1722, 'sa', 'Default Language', 'Default Language', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1723, 'sa', 'Save', 'Save', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1724, 'sa', 'Add New Language', 'Add New Language', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1725, 'sa', 'Language', 'Language', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1726, 'sa', 'Name', 'Name', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1727, 'sa', 'Code', 'Code', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1728, 'sa', 'RTL', 'RTL', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1729, 'sa', 'Options', 'Options', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1730, 'sa', 'Translation', 'Translation', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1731, 'sa', 'Edit', 'Edit', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1732, 'sa', 'Delete', 'Delete', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1733, 'sa', 'Delete Confirmation', 'Delete Confirmation', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1734, 'sa', 'Are you sure to delete this?', 'Are you sure to delete this?', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1735, 'sa', 'Cancel', 'Cancel', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1736, 'sa', 'Something went wrong', 'Something went wrong', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1737, 'sa', 'Search in menu', 'Search in menu', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1738, 'sa', 'Dashboard', 'Dashboard', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1739, 'sa', 'Products', 'Products', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1740, 'sa', 'Add New product', 'Add New product', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1741, 'sa', 'All Products', 'All Products', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1742, 'sa', 'In House Products', 'In House Products', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1743, 'sa', 'Seller Products', 'Seller Products', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1744, 'sa', 'Digital Products', 'Digital Products', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1745, 'sa', 'Bulk Import', 'Bulk Import', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1746, 'sa', 'Bulk Export', 'Bulk Export', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1747, 'sa', 'Category', 'Category', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1748, 'sa', 'Brand', 'Brand', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1749, 'sa', 'Attribute', 'Attribute', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1750, 'sa', 'Product Reviews', 'Product Reviews', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1751, 'sa', 'Sales', 'Sales', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1752, 'sa', 'All Orders', 'All Orders', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1753, 'sa', 'Inhouse orders', 'Inhouse orders', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1754, 'sa', 'Seller Orders', 'Seller Orders', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1755, 'sa', 'Pick-up Point Order', 'Pick-up Point Order', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1756, 'sa', 'Customers', 'Customers', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1757, 'sa', 'Customer list', 'Customer list', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1758, 'sa', 'Sellers', 'Sellers', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1759, 'sa', 'All Seller', 'All Seller', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1760, 'sa', 'Payouts', 'Payouts', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1761, 'sa', 'Payout Requests', 'Payout Requests', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1762, 'sa', 'Seller Commission', 'Seller Commission', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1763, 'sa', 'Seller Verification Form', 'Seller Verification Form', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1764, 'sa', 'Uploaded Files', 'Uploaded Files', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1765, 'sa', 'Reports', 'Reports', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1766, 'sa', 'In House Product Sale', 'In House Product Sale', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1767, 'sa', 'Seller Products Sale', 'Seller Products Sale', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1768, 'sa', 'Products Stock', 'Products Stock', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1769, 'sa', 'Products wishlist', 'Products wishlist', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1770, 'sa', 'User Searches', 'User Searches', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1771, 'sa', 'Marketing', 'Marketing', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1772, 'sa', 'Flash deals', 'Flash deals', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1773, 'sa', 'Newsletters', 'Newsletters', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1774, 'sa', 'Subscribers', 'Subscribers', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1775, 'sa', 'Coupon', 'Coupon', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1776, 'sa', 'Support', 'Support', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1777, 'sa', 'Ticket', 'Ticket', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1778, 'sa', 'Product Queries', 'Product Queries', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1779, 'sa', 'Website Setup', 'Website Setup', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1780, 'sa', 'Header', 'Header', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1781, 'sa', 'Footer', 'Footer', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1782, 'sa', 'Pages', 'Pages', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1783, 'sa', 'Appearance', 'Appearance', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1784, 'sa', 'Setup & Configurations', 'Setup & Configurations', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1785, 'sa', 'General Settings', 'General Settings', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1786, 'sa', 'Features activation', 'Features activation', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1787, 'sa', 'Languages', 'Languages', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1788, 'sa', 'Currency', 'Currency', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1789, 'sa', 'Pickup point', 'Pickup point', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1790, 'sa', 'SMTP Settings', 'SMTP Settings', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1791, 'sa', 'Payment Methods', 'Payment Methods', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1792, 'sa', 'File System Configuration', 'File System Configuration', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1793, 'sa', 'Social media Logins', 'Social media Logins', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1794, 'sa', 'Analytics Tools', 'Analytics Tools', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1795, 'sa', 'Facebook Chat', 'Facebook Chat', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1796, 'sa', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1797, 'sa', 'Shipping Configuration', 'Shipping Configuration', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1798, 'sa', 'Shipping Countries', 'Shipping Countries', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1799, 'sa', 'Shipping Cities', 'Shipping Cities', '2021-02-08 21:59:27', '2021-02-08 21:59:27'),
(1800, 'sa', 'Staffs', 'Staffs', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1801, 'sa', 'All staffs', 'All staffs', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1802, 'sa', 'Staff permissions', 'Staff permissions', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1803, 'sa', 'System', 'System', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1804, 'sa', 'Update', 'Update', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1805, 'sa', 'Server status', 'Server status', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1806, 'sa', 'Addon Manager', 'Addon Manager', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1807, 'sa', 'Browse Website', 'Browse Website', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1808, 'sa', 'Notifications', 'Notifications', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1809, 'sa', 'Profile', 'Profile', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1810, 'sa', 'Logout', 'Logout', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1811, 'sa', 'Nothing Found', 'Nothing Found', '2021-02-08 21:59:28', '2021-02-08 21:59:28'),
(1812, 'sa', 'Language has been deleted successfully', 'Language has been deleted successfully', '2021-02-08 21:59:38', '2021-02-08 21:59:38'),
(1813, 'sa', 'Settings updated successfully', 'Settings updated successfully', '2021-02-08 21:59:46', '2021-02-08 21:59:46'),
(1814, 'en', 'Search in menu', 'Search in menu', '2021-02-08 21:59:47', '2021-02-08 21:59:47'),
(1815, 'en', 'Uploaded Files', 'Uploaded Files', '2021-02-08 21:59:47', '2021-02-08 21:59:47');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1816, 'en', 'Shipping Cities', 'Shipping Cities', '2021-02-08 21:59:47', '2021-02-08 21:59:47'),
(1817, 'en', 'System', 'System', '2021-02-08 21:59:47', '2021-02-08 21:59:47'),
(1818, 'en', 'Server status', 'Server status', '2021-02-08 21:59:47', '2021-02-08 21:59:47'),
(1819, 'en', 'Nothing Found', 'Nothing Found', '2021-02-08 21:59:48', '2021-02-08 21:59:48'),
(1820, 'en', 'update Language Info', 'update Language Info', '2021-02-08 22:00:09', '2021-02-08 22:00:09'),
(1821, 'en', 'Language has been updated successfully', 'Language has been updated successfully', '2021-02-08 22:00:19', '2021-02-08 22:00:19'),
(1822, 'en', 'System Default Currency', 'System Default Currency', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1823, 'en', 'Set Currency Formats', 'Set Currency Formats', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1824, 'en', 'Symbol Format', 'Symbol Format', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1825, 'en', 'Decimal Separator', 'Decimal Separator', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1826, 'en', 'No of decimals', 'No of decimals', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1827, 'en', 'All Currencies', 'All Currencies', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1828, 'en', 'Add New Currency', 'Add New Currency', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1829, 'en', 'Currency name', 'Currency name', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1830, 'en', 'Currency symbol', 'Currency symbol', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1831, 'en', 'Currency code', 'Currency code', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1832, 'en', 'Currency Status updated successfully', 'Currency Status updated successfully', '2021-02-08 22:00:50', '2021-02-08 22:00:50'),
(1833, 'en', 'Symbol', 'Symbol', '2021-02-08 22:03:29', '2021-02-08 22:03:29'),
(1834, 'en', 'Currency updated successfully', 'Currency updated successfully', '2021-02-08 22:07:08', '2021-02-08 22:07:08'),
(1835, 'en', 'Update Currency', 'Update Currency', '2021-02-08 22:08:35', '2021-02-08 22:08:35'),
(1836, 'en', 'Something went wrong!', 'Something went wrong!', '2021-02-08 22:10:03', '2021-02-08 22:10:03'),
(1837, 'en', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-02-08 22:10:03', '2021-02-08 22:10:03'),
(1838, 'en', 'Error code', 'Error code', '2021-02-08 22:10:03', '2021-02-08 22:10:03'),
(1839, 'en', 'Sendmail', 'Sendmail', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1840, 'en', 'Mailgun', 'Mailgun', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1841, 'en', 'MAIL HOST', 'MAIL HOST', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1842, 'en', 'MAIL PORT', 'MAIL PORT', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1843, 'en', 'MAIL USERNAME', 'MAIL USERNAME', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1844, 'en', 'MAIL PASSWORD', 'MAIL PASSWORD', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1845, 'en', 'MAIL ENCRYPTION', 'MAIL ENCRYPTION', '2021-02-08 22:11:57', '2021-02-08 22:11:57'),
(1846, 'en', 'MAIL FROM ADDRESS', 'MAIL FROM ADDRESS', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1847, 'en', 'MAIL FROM NAME', 'MAIL FROM NAME', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1848, 'en', 'MAILGUN DOMAIN', 'MAILGUN DOMAIN', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1849, 'en', 'MAILGUN SECRET', 'MAILGUN SECRET', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1850, 'en', 'Save Configuration', 'Save Configuration', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1851, 'en', 'Test SMTP configuration', 'Test SMTP configuration', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1852, 'en', 'Enter your email address', 'Enter your email address', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1853, 'en', 'Send test email', 'Send test email', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1854, 'en', 'Instruction', 'Instruction', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1855, 'en', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1856, 'en', 'For Non-SSL', 'For Non-SSL', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1857, 'en', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1858, 'en', 'Set Mail Host according to your server Mail Client Manual Settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1859, 'en', 'Set Mail port as 587', 'Set Mail port as 587', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1860, 'en', 'Set Mail Encryption as ssl if you face issue with tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1861, 'en', 'For SSL', 'For SSL', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1862, 'en', 'Set Mail port as 465', 'Set Mail port as 465', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1863, 'en', 'Set Mail Encryption as ssl', 'Set Mail Encryption as ssl', '2021-02-08 22:11:58', '2021-02-08 22:11:58'),
(1864, 'en', 'Bkash Credential', 'Bkash Credential', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1865, 'en', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1866, 'en', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1867, 'en', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1868, 'en', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1869, 'en', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1870, 'en', 'Nagad Credential', 'Nagad Credential', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1871, 'en', 'NAGAD MODE', 'NAGAD MODE', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1872, 'en', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1873, 'en', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1874, 'en', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1875, 'en', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-02-08 22:12:11', '2021-02-08 22:12:11'),
(1876, 'en', 'Iyzico Credential', 'Iyzico Credential', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1877, 'en', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1878, 'en', 'IYZICO API KEY', 'IYZICO API KEY', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1879, 'en', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1880, 'en', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1881, 'en', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-02-08 22:12:12', '2021-02-08 22:12:12'),
(1882, 'en', 'Google Login Credential', 'Google Login Credential', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1883, 'en', 'Client ID', 'Client ID', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1884, 'en', 'Google Client ID', 'Google Client ID', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1885, 'en', 'Client Secret', 'Client Secret', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1886, 'en', 'Google Client Secret', 'Google Client Secret', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1887, 'en', 'Facebook Login Credential', 'Facebook Login Credential', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1888, 'en', 'App ID', 'App ID', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1889, 'en', 'Facebook Client ID', 'Facebook Client ID', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1890, 'en', 'App Secret', 'App Secret', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1891, 'en', 'Facebook Client Secret', 'Facebook Client Secret', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1892, 'en', 'Twitter Login Credential', 'Twitter Login Credential', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1893, 'en', 'Twitter Client ID', 'Twitter Client ID', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1894, 'en', 'Twitter Client Secret', 'Twitter Client Secret', '2021-02-08 22:12:50', '2021-02-08 22:12:50'),
(1895, 'en', 'Facebook Pixel Setting', 'Facebook Pixel Setting', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1896, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1897, 'en', 'Facebook Pixel ID', 'Facebook Pixel ID', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1898, 'en', 'Please be carefull when you are configuring Facebook pixel.', 'Please be carefull when you are configuring Facebook pixel.', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1899, 'en', 'Log in to Facebook and go to your Ads Manager account', 'Log in to Facebook and go to your Ads Manager account', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1900, 'en', 'Open the Navigation Bar and select Events Manager', 'Open the Navigation Bar and select Events Manager', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1901, 'en', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1902, 'en', 'Google Analytics Setting', 'Google Analytics Setting', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1903, 'en', 'Google Analytics', 'Google Analytics', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1904, 'en', 'Tracking ID', 'Tracking ID', '2021-02-08 22:14:43', '2021-02-08 22:14:43'),
(1905, 'en', 'Area Wise Flat Shipping Cost', 'Area Wise Flat Shipping Cost', '2021-02-08 22:15:24', '2021-02-08 22:15:24'),
(1906, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-02-08 22:15:24', '2021-02-08 22:15:24'),
(1907, 'en', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', '2021-02-08 22:15:24', '2021-02-08 22:15:24'),
(1908, 'en', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-02-08 22:15:25', '2021-02-08 22:15:25'),
(1909, 'en', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-02-08 22:15:25', '2021-02-08 22:15:25'),
(1910, 'en', 'All cities', 'All cities', '2021-02-08 22:17:07', '2021-02-08 22:17:07'),
(1911, 'en', 'Cities', 'Cities', '2021-02-08 22:17:07', '2021-02-08 22:17:07'),
(1912, 'en', 'Cost', 'Cost', '2021-02-08 22:17:07', '2021-02-08 22:17:07'),
(1913, 'en', 'Add New city', 'Add New city', '2021-02-08 22:17:07', '2021-02-08 22:17:07'),
(1914, 'en', 'Role Information', 'Role Information', '2021-02-08 22:22:15', '2021-02-08 22:22:15'),
(1915, 'en', 'Translatable', 'Translatable', '2021-02-08 22:22:15', '2021-02-08 22:22:15'),
(1916, 'en', 'Permissions', 'Permissions', '2021-02-08 22:22:15', '2021-02-08 22:22:15'),
(1917, 'en', 'Search your files', 'Search your files', '2021-02-08 22:22:31', '2021-02-08 22:22:31'),
(1918, 'en', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-02-08 22:32:26', '2021-02-08 22:32:26'),
(1919, 'en', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-02-08 22:32:26', '2021-02-08 22:32:26'),
(1920, 'en', 'Cookies Agreement', 'Cookies Agreement', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1921, 'en', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1922, 'en', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1923, 'en', 'Custom Script', 'Custom Script', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1924, 'en', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1925, 'en', 'Write script with <script> tag', 'Write script with <script> tag', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1926, 'en', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-02-08 22:40:21', '2021-02-08 22:40:21'),
(1927, 'en', 'All uploaded files', 'All uploaded files', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1928, 'en', 'Upload New File', 'Upload New File', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1929, 'en', 'All files', 'All files', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1930, 'en', 'Search', 'Search', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1931, 'en', 'Details Info', 'Details Info', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1932, 'en', 'Copy Link', 'Copy Link', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1933, 'en', 'Are you sure to delete this file?', 'Are you sure to delete this file?', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1934, 'en', 'File Info', 'File Info', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1935, 'en', 'Link copied to clipboard', 'Link copied to clipboard', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1936, 'en', 'Oops, unable to copy', 'Oops, unable to copy', '2021-02-08 22:46:10', '2021-02-08 22:46:10'),
(1937, 'en', 'File Name', 'File Name', '2021-02-08 22:46:32', '2021-02-08 22:46:32'),
(1938, 'en', 'File Type', 'File Type', '2021-02-08 22:46:32', '2021-02-08 22:46:32'),
(1939, 'en', 'File Size', 'File Size', '2021-02-08 22:46:32', '2021-02-08 22:46:32'),
(1940, 'en', 'Uploaded By', 'Uploaded By', '2021-02-08 22:46:32', '2021-02-08 22:46:32'),
(1941, 'en', 'Uploaded At', 'Uploaded At', '2021-02-08 22:46:32', '2021-02-08 22:46:32'),
(1942, 'en', 'Please Configure SMTP Setting to work all email sending functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-02-08 22:47:30', '2021-02-08 22:47:30'),
(1943, 'en', 'Order', 'Order', '2021-02-08 22:47:30', '2021-02-08 22:47:30'),
(1944, 'en', 'Shop Logo', 'Shop Logo', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1945, 'en', 'Shop Address', 'Shop Address', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1946, 'en', 'Banner Settings', 'Banner Settings', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1947, 'en', 'Banners', 'Banners', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1948, 'en', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1949, 'en', 'Insert link with https ', 'Insert link with https ', '2021-02-10 20:35:01', '2021-02-10 20:35:01'),
(1950, 'en', 'Add New Seller', 'Add New Seller', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1951, 'en', 'Filter by Approval', 'Filter by Approval', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1952, 'en', 'Non-Approved', 'Non-Approved', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1953, 'en', 'Type name or email & Enter', 'Type name or email & Enter', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1954, 'en', 'Due to seller', 'Due to seller', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1955, 'en', 'Log in as this Seller', 'Log in as this Seller', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1956, 'en', 'Go to Payment', 'Go to Payment', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1957, 'en', 'Ban this seller', 'Ban this seller', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1958, 'en', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1959, 'en', 'Proceed!', 'Proceed!', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1960, 'en', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-02-10 20:46:17', '2021-02-10 20:46:17'),
(1961, 'en', 'About', 'About', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1962, 'en', 'Payout Info', 'Payout Info', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1963, 'en', 'Bank Acc Name', 'Bank Acc Name', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1964, 'en', 'Bank Acc Number', 'Bank Acc Number', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1965, 'en', 'Total Products', 'Total Products', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1966, 'en', 'Total Sold Amount', 'Total Sold Amount', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1967, 'en', 'Wallet Balance', 'Wallet Balance', '2021-02-10 20:46:24', '2021-02-10 20:46:24'),
(1968, 'en', 'Pay to seller', 'Pay to seller', '2021-02-10 20:47:52', '2021-02-10 20:47:52'),
(1969, 'en', 'Select Payment Method', 'Select Payment Method', '2021-02-10 20:47:52', '2021-02-10 20:47:52'),
(1970, 'en', 'Cash', 'Cash', '2021-02-10 20:47:52', '2021-02-10 20:47:52'),
(1971, 'en', 'Txn Code', 'Txn Code', '2021-02-10 20:47:52', '2021-02-10 20:47:52'),
(1972, 'en', 'Pay', 'Pay', '2021-02-10 20:47:52', '2021-02-10 20:47:52'),
(1973, 'en', 'No payment history available for this seller', 'No payment history available for this seller', '2021-02-10 20:48:08', '2021-02-10 20:48:08'),
(1974, 'en', 'Seller Information', 'Seller Information', '2021-02-10 21:06:09', '2021-02-10 21:06:09'),
(1975, 'en', 'National Id Photo', 'National Id Photo', '2021-02-10 21:51:00', '2021-02-10 21:51:00'),
(1976, 'en', 'Commercial Register Photo', 'Commercial Register Photo', '2021-02-10 21:51:00', '2021-02-10 21:51:00'),
(1977, 'en', 'Individual', 'Individual', '2021-02-10 21:51:00', '2021-02-10 21:51:00'),
(1978, 'en', 'Company', 'Company', '2021-02-10 21:51:00', '2021-02-10 21:51:00'),
(1979, 'en', 'Account Type', 'Account Type', '2021-02-10 21:51:57', '2021-02-10 21:51:57'),
(1980, 'en', 'Your Shop has been created successfully!', 'Your Shop has been created successfully!', '2021-02-10 22:11:45', '2021-02-10 22:11:45'),
(1981, 'en', 'Filter by date', 'Filter by date', '2021-02-10 22:14:37', '2021-02-10 22:14:37'),
(1982, 'en', 'Seller has been deleted successfully', 'Seller has been deleted successfully', '2021-02-10 22:15:23', '2021-02-10 22:15:23'),
(1983, 'en', 'Shop Info', 'Shop Info', '2021-02-10 22:16:02', '2021-02-10 22:16:02'),
(1984, 'en', 'Save Product', 'Save Product', '2021-02-10 22:20:30', '2021-02-10 22:20:30'),
(1985, 'en', 'Product has been inserted successfully', 'Product has been inserted successfully', '2021-02-10 22:22:02', '2021-02-10 22:22:02'),
(1986, 'en', 'New verification request(s)', 'New verification request(s)', '2021-02-10 22:47:02', '2021-02-10 22:47:02'),
(1987, 'en', '1. Category and Brand should be in numerical id.', '1. Category and Brand should be in numerical id.', '2021-02-10 22:48:36', '2021-02-10 22:48:36'),
(1988, 'en', '2. You can download the pdf to get Category and Brand id.', '2. You can download the pdf to get Category and Brand id.', '2021-02-10 22:48:36', '2021-02-10 22:48:36'),
(1989, 'en', 'You do not have enough balance to send withdraw request', 'You do not have enough balance to send withdraw request', '2021-02-10 22:49:09', '2021-02-10 22:49:09'),
(1990, 'en', 'Recharge Wallet', 'Recharge Wallet', '2021-02-10 22:49:19', '2021-02-10 22:49:19'),
(1991, 'en', 'Wallet recharge history', 'Wallet recharge history', '2021-02-10 22:49:19', '2021-02-10 22:49:19'),
(1992, 'en', 'Iyzico', 'Iyzico', '2021-02-10 22:49:20', '2021-02-10 22:49:20'),
(1993, 'en', 'Offline Recharge Wallet', 'Offline Recharge Wallet', '2021-02-10 22:49:20', '2021-02-10 22:49:20'),
(1994, 'en', 'An email has been sent.', 'An email has been sent.', '2021-02-10 22:53:59', '2021-02-10 22:53:59'),
(1995, 'en', 'Install/Update Addon', 'Install/Update Addon', '2021-02-10 23:44:36', '2021-02-10 23:44:36'),
(1996, 'en', 'No Addon Installed', 'No Addon Installed', '2021-02-10 23:44:36', '2021-02-10 23:44:36'),
(1997, 'en', 'Install/Update', 'Install/Update', '2021-02-10 23:44:44', '2021-02-10 23:44:44'),
(1999, 'en', 'Approval has been done successfully', 'Approval has been done successfully', '2021-02-10 23:45:17', '2021-02-10 23:45:17'),
(2000, 'en', 'Refund has been sent successfully', 'Refund has been sent successfully', '2021-02-10 23:45:17', '2021-02-10 23:45:17'),
(2001, 'en', 'Refund Request sending time has been updated successfully', 'Refund Request sending time has been updated successfully', '2021-02-10 23:45:50', '2021-02-10 23:45:50'),
(2002, 'en', 'Verify Now', 'Verify Now', '2021-02-10 23:48:57', '2021-02-10 23:48:57'),
(2003, 'en', 'Shop Verification', 'Shop Verification', '2021-02-10 23:49:08', '2021-02-10 23:49:08'),
(2004, 'en', 'Your shop verification request has been submitted successfully!', 'Your shop verification request has been submitted successfully!', '2021-02-10 23:50:41', '2021-02-10 23:50:41'),
(2005, 'en', 'Sorry! You have sent verification request already.', 'Sorry! You have sent verification request already.', '2021-02-10 23:53:45', '2021-02-10 23:53:45'),
(2006, 'en', 'Seller verification request has been rejected successfully', 'Seller verification request has been rejected successfully', '2021-02-10 23:54:51', '2021-02-10 23:54:51'),
(2007, 'en', 'Seller has been approved successfully', 'Seller has been approved successfully', '2021-02-10 23:56:48', '2021-02-10 23:56:48'),
(2008, 'en', 'of seller product price will be deducted from seller earnings', 'of seller product price will be deducted from seller earnings', '2021-02-11 00:10:46', '2021-02-11 00:10:46'),
(2009, 'en', 'This commission only works when Category Based Commission is turned off from Business Settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-02-11 00:10:46', '2021-02-11 00:10:46'),
(2010, 'en', 'Commission doesn\'t work if seller package system add-on is activated', 'Commission doesn\'t work if seller package system add-on is activated', '2021-02-11 00:10:46', '2021-02-11 00:10:46'),
(2011, 'en', 'HTTPS Activation', 'HTTPS Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2012, 'en', 'Maintenance Mode', 'Maintenance Mode', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2013, 'en', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2014, 'en', 'Classified Product Activate', 'Classified Product Activate', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2015, 'en', 'Classified Product', 'Classified Product', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2016, 'en', 'Business Related', 'Business Related', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2017, 'en', 'Vendor System Activation', 'Vendor System Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2018, 'en', 'Wallet System Activation', 'Wallet System Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2019, 'en', 'Coupon System Activation', 'Coupon System Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2020, 'en', 'Pickup Point Activation', 'Pickup Point Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2021, 'en', 'Conversation Activation', 'Conversation Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2022, 'en', 'Guest Checkout Activation', 'Guest Checkout Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2023, 'en', 'Category-based Commission', 'Category-based Commission', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2024, 'en', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2025, 'en', 'Set Commisssion Now', 'Set Commisssion Now', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2026, 'en', 'Email Verification', 'Email Verification', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2027, 'en', 'Payment Related', 'Payment Related', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2028, 'en', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2029, 'en', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2030, 'en', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2031, 'en', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2032, 'en', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2033, 'en', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2034, 'en', 'Razor Pay Activation', 'Razor Pay Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2035, 'en', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2036, 'en', 'PayStack Activation', 'PayStack Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2037, 'en', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2038, 'en', 'VoguePay Activation', 'VoguePay Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2039, 'en', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2040, 'en', 'Payhere Activation', 'Payhere Activation', '2021-02-11 00:12:52', '2021-02-11 00:12:52'),
(2041, 'en', 'Ngenius Activation', 'Ngenius Activation', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2042, 'en', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2043, 'en', 'Iyzico Activation', 'Iyzico Activation', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2044, 'en', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2045, 'en', 'Bkash Activation', 'Bkash Activation', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2046, 'en', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2047, 'en', 'Nagad Activation', 'Nagad Activation', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2048, 'en', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2049, 'en', 'Cash Payment Activation', 'Cash Payment Activation', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2050, 'en', 'Social Media Login', 'Social Media Login', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2051, 'en', 'Facebook login', 'Facebook login', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2052, 'en', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2053, 'en', 'Google login', 'Google login', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2054, 'en', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2055, 'en', 'Twitter login', 'Twitter login', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2056, 'en', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-02-11 00:12:53', '2021-02-11 00:12:53'),
(2057, 'en', 'Parent Category', 'Parent Category', '2021-02-11 00:13:29', '2021-02-11 00:13:29'),
(2058, 'en', 'Level', 'Level', '2021-02-11 00:13:29', '2021-02-11 00:13:29'),
(2059, 'en', 'Category Information', 'Category Information', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2060, 'en', 'No Parent', 'No Parent', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2061, 'en', 'Physical', 'Physical', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2062, 'en', 'Digital', 'Digital', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2063, 'en', '200x200', '200x200', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2064, 'en', '32x32', '32x32', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2065, 'en', 'Commission Rate', 'Commission Rate', '2021-02-11 00:13:40', '2021-02-11 00:13:40'),
(2066, 'en', 'Your order has been placed', 'Your order has been placed', '2021-02-11 00:37:03', '2021-02-11 00:37:03'),
(2067, 'en', 'Your order has been placed successfully', 'Your order has been placed successfully', '2021-02-11 00:37:12', '2021-02-11 00:37:12'),
(2068, 'en', 'City has been inserted successfully', 'City has been inserted successfully', '2021-02-12 00:01:40', '2021-02-12 00:01:40'),
(2069, 'en', 'City Information', 'City Information', '2021-02-12 00:01:44', '2021-02-12 00:01:44'),
(2070, 'en', 'City has been updated successfully', 'City has been updated successfully', '2021-02-12 00:02:02', '2021-02-12 00:02:02'),
(2071, 'en', 'Your Next City', 'Your Next City', '2021-02-12 00:10:08', '2021-02-12 00:10:08'),
(2072, 'en', '+02', '+02', '2021-02-12 00:21:55', '2021-02-12 00:21:55'),
(2073, 'en', 'This is used for search. Input those words by which cutomer can find this product.', 'This is used for search. Input those words by which cutomer can find this product.', '2021-02-12 00:27:14', '2021-02-12 00:27:14'),
(2074, 'en', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-02-12 00:27:14', '2021-02-12 00:27:14'),
(2075, 'en', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-02-12 00:27:14', '2021-02-12 00:27:14'),
(2076, 'en', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-02-12 00:27:14', '2021-02-12 00:27:14'),
(2077, 'en', 'has not been verified yet.', 'has not been verified yet.', '2021-02-13 06:00:09', '2021-02-13 06:00:09'),
(2078, 'en', 'Seller Type', 'shop type', '2021-02-13 06:07:45', '2021-07-03 17:48:12'),
(2079, 'en', 'Search result for ', 'Search result for ', '2021-02-13 06:14:21', '2021-02-13 06:14:21'),
(2080, 'en', 'I agree to the contract', 'I agree to the contract', '2021-02-13 07:04:23', '2021-02-13 07:04:23'),
(2081, 'en', 'Read the contract', 'Read the contract', '2021-02-13 07:04:23', '2021-02-13 07:04:23'),
(2082, 'en', 'Seller ID', 'Seller ID', '2021-02-13 07:26:33', '2021-02-13 07:26:33'),
(2083, 'en', 'All Attributes', 'All Attributes', '2021-02-13 08:27:53', '2021-02-13 08:27:53'),
(2084, 'en', 'Add New Attribute', 'Add New Attribute', '2021-02-13 08:27:53', '2021-02-13 08:27:53'),
(2085, 'en', 'Attribute has been deleted successfully', 'Attribute has been deleted successfully', '2021-02-13 08:27:59', '2021-02-13 08:27:59'),
(2086, 'en', 'All Flash Deals', 'All Flash Deals', '2021-02-13 08:30:12', '2021-02-13 08:30:12'),
(2087, 'en', 'Create New Flash Deal', 'Create New Flash Deal', '2021-02-13 08:30:12', '2021-02-13 08:30:12'),
(2088, 'en', '#FFFFFF', '#FFFFFF', '2021-02-13 08:30:22', '2021-02-13 08:30:22'),
(2089, 'en', 'This image is shown as cover banner in flash deal details page.', 'This image is shown as cover banner in flash deal details page.', '2021-02-13 08:30:22', '2021-02-13 08:30:22'),
(2090, 'en', 'Attribute has been inserted successfully', 'Attribute has been inserted successfully', '2021-02-13 09:37:03', '2021-02-13 09:37:03'),
(2091, 'en', 'Length', 'Length', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2092, 'en', 'Width', 'Width', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2093, 'en', 'Height', 'Height', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2094, 'en', 'Weight', 'Weight', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2095, 'en', 'Model Number', 'Model Number', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2096, 'en', 'Warranty Certificate', 'Warranty Certificate', '2021-02-13 10:02:35', '2021-02-13 10:02:35'),
(2097, 'en', 'Contact', 'Contact', '2021-02-13 16:26:40', '2021-02-13 16:26:40'),
(2098, 'en', 'Order status has been updated', 'Order status has been updated', '2021-02-13 16:26:40', '2021-02-13 16:26:40'),
(2099, 'en', 'Non-refundable', 'Non-refundable', '2021-02-13 16:27:42', '2021-02-13 16:27:42'),
(2100, 'en', 'Order has been deleted successfully', 'Order has been deleted successfully', '2021-02-13 16:28:07', '2021-02-13 16:28:07'),
(2101, 'en', 'Send Refund Request', 'Send Refund Request', '2021-02-13 16:56:22', '2021-02-13 16:56:22'),
(2102, 'en', 'Product Price', 'Product Price', '2021-02-13 16:56:22', '2021-02-13 16:56:22'),
(2103, 'en', 'Refund Reason', 'Refund Reason', '2021-02-13 16:56:22', '2021-02-13 16:56:22'),
(2104, 'en', 'Send Request', 'Send Request', '2021-02-13 16:56:22', '2021-02-13 16:56:22'),
(2105, 'en', 'Refund Request has been sent successfully', 'Refund Request has been sent successfully', '2021-02-13 16:56:36', '2021-02-13 16:56:36'),
(2106, 'en', 'Reason of Refund Request', 'Reason of Refund Request', '2021-02-13 16:57:37', '2021-02-13 16:57:37'),
(2107, 'en', 'Non-Paid', 'Non-Paid', '2021-02-13 17:00:28', '2021-02-13 17:00:28'),
(2108, 'en', 'Refund Now', 'Refund Now', '2021-02-13 17:00:28', '2021-02-13 17:00:28'),
(2109, 'en', 'View Reason', 'View Reason', '2021-02-13 17:00:28', '2021-02-13 17:00:28'),
(2110, 'en', 'Reason For Refund Request', 'Reason For Refund Request', '2021-02-13 17:00:55', '2021-02-13 17:00:55'),
(2111, 'en', 'Payment completed', 'Payment completed', '2021-02-13 17:04:42', '2021-02-13 17:04:42'),
(2112, 'en', 'Use Phone Instead', 'Use Phone Instead', '2021-02-13 19:11:55', '2021-02-13 19:11:55'),
(2113, 'en', 'Registration successfull.', 'Registration successfull.', '2021-02-13 19:19:12', '2021-02-13 19:19:12'),
(2114, 'en', 'Product Image', 'Product Image', '2021-02-13 19:29:23', '2021-02-13 19:29:23'),
(2115, 'en', 'Wallet', 'Wallet', '2021-02-13 19:46:46', '2021-02-13 19:46:46'),
(2116, 'en', 'All Customers', 'All Customers', '2021-02-13 19:51:26', '2021-02-13 19:51:26'),
(2117, 'en', 'Type email or name & Enter', 'Type email or name & Enter', '2021-02-13 19:51:26', '2021-02-13 19:51:26'),
(2118, 'en', 'Package', 'Package', '2021-02-13 19:51:27', '2021-02-13 19:51:27'),
(2119, 'en', 'Log in as this Customer', 'Log in as this Customer', '2021-02-13 19:51:27', '2021-02-13 19:51:27'),
(2120, 'en', 'Ban this Customer', 'Ban this Customer', '2021-02-13 19:51:27', '2021-02-13 19:51:27'),
(2121, 'en', 'Do you really want to ban this Customer?', 'Do you really want to ban this Customer?', '2021-02-13 19:51:27', '2021-02-13 19:51:27'),
(2122, 'en', 'Do you really want to unban this Customer?', 'Do you really want to unban this Customer?', '2021-02-13 19:51:27', '2021-02-13 19:51:27'),
(2123, 'en', 'Seller Payments', 'Seller Payments', '2021-02-14 06:44:38', '2021-02-14 06:44:38'),
(2124, 'en', 'Seller', 'Seller', '2021-02-14 06:44:38', '2021-02-14 06:44:38'),
(2125, 'en', 'Payment Details', 'Payment Details', '2021-02-14 06:44:38', '2021-02-14 06:44:38'),
(2126, 'en', 'Request has been sent successfully', 'Request has been sent successfully', '2021-02-14 06:46:59', '2021-02-14 06:46:59'),
(2127, 'en', 'Seller Withdraw Request', 'Seller Withdraw Request', '2021-02-14 06:47:25', '2021-02-14 06:47:25'),
(2128, 'en', 'Total Amount to Pay', 'Total Amount to Pay', '2021-02-14 06:47:25', '2021-02-14 06:47:25'),
(2129, 'en', 'Requested Amount', 'Requested Amount', '2021-02-14 06:47:25', '2021-02-14 06:47:25'),
(2130, 'en', 'Message View', 'Message View', '2021-02-14 06:47:25', '2021-02-14 06:47:25'),
(2131, 'en', 'Seller Message', 'Seller Message', '2021-02-14 06:47:32', '2021-02-14 06:47:32'),
(2132, 'en', 'Review has been submitted successfully', 'Review has been submitted successfully', '2021-02-15 07:39:17', '2021-02-15 07:39:17'),
(2133, 'en', 'Pickup Point Information', 'Pickup Point Information', '2021-02-15 18:24:37', '2021-02-15 18:24:37'),
(2134, 'en', 'Pickup Point Status', 'Pickup Point Status', '2021-02-15 18:24:37', '2021-02-15 18:24:37'),
(2135, 'en', 'Pick-up Point Manager', 'Pick-up Point Manager', '2021-02-15 18:24:37', '2021-02-15 18:24:37'),
(2136, 'en', 'Products updated successfully', 'Products updated successfully', '2021-02-15 18:45:33', '2021-02-15 18:45:33'),
(2137, 'en', 'Missing quantities', 'Missing quantities', '2021-02-15 22:12:43', '2021-02-15 22:12:43'),
(2138, 'en', 'Alert quantities', 'Alert quantities', '2021-02-15 22:13:09', '2021-02-15 22:13:09'),
(2139, 'en', 'Quantities Adjustment', 'Quantities Adjustment', '2021-02-15 22:16:37', '2021-02-15 22:16:37'),
(2140, 'en', 'Alert Quantity', 'Alert Quantity', '2021-02-15 23:17:51', '2021-02-15 23:17:51'),
(2141, 'en', 'Without Attribute', 'Without Attribute', '2021-02-15 23:22:43', '2021-02-15 23:22:43'),
(2142, 'en', 'Arrival Days', 'Arrival Days', '2021-02-16 01:11:50', '2021-02-16 01:11:50'),
(2143, 'en', 'on_delivery', 'on_delivery', '2021-02-17 00:08:18', '2021-02-17 00:08:18'),
(2144, 'en', 'See Details', 'See Details', '2021-02-17 00:19:35', '2021-02-17 00:19:35'),
(2145, 'en', 'Message has been send to seller', 'Message has been send to seller', '2021-02-17 00:19:37', '2021-02-17 00:19:37'),
(2146, 'en', 'Conversations With ', 'Conversations With ', '2021-02-17 00:19:57', '2021-02-17 00:19:57'),
(2147, 'en', 'Between you and', 'Between you and', '2021-02-17 00:19:57', '2021-02-17 00:19:57'),
(2148, 'en', 'Email Verification - ', 'Email Verification - ', '2021-02-17 01:09:49', '2021-02-17 01:09:49'),
(2149, 'en', 'Verify Your Email Address', 'Verify Your Email Address', '2021-02-17 01:12:31', '2021-02-17 01:12:31'),
(2150, 'en', 'Before proceeding, please check your email for a verification link.', 'Before proceeding, please check your email for a verification link.', '2021-02-17 01:12:31', '2021-02-17 01:12:31'),
(2151, 'en', 'If you did not receive the email.', 'If you did not receive the email.', '2021-02-17 01:12:31', '2021-02-17 01:12:31'),
(2152, 'en', 'Click here to request another', 'Click here to request another', '2021-02-17 01:12:31', '2021-02-17 01:12:31'),
(2153, 'en', 'A fresh verification link has been sent to your email address.', 'A fresh verification link has been sent to your email address.', '2021-02-17 01:12:43', '2021-02-17 01:12:43'),
(2154, 'en', 'Your Shop has been updated successfully!', 'Your Shop has been updated successfully!', '2021-02-17 01:30:03', '2021-02-17 01:30:03'),
(2155, 'en', 'Flash Deal has been inserted successfully', 'Flash Deal has been inserted successfully', '2021-02-17 12:13:25', '2021-02-17 12:13:25'),
(2156, 'en', 'This offer has been expired.', 'This offer has been expired.', '2021-02-17 12:13:36', '2021-02-17 12:13:36'),
(2157, 'en', 'Flash Deal has been updated successfully', 'Flash Deal has been updated successfully', '2021-02-17 12:14:13', '2021-02-17 12:14:13'),
(2158, 'en', 'Flash deal status updated successfully', 'Flash deal status updated successfully', '2021-02-17 12:14:23', '2021-02-17 12:14:23'),
(2159, 'en', 'Own Product', 'Own Product', '2021-02-17 13:00:45', '2021-02-17 13:00:45'),
(2160, 'en', 'Default', 'Default', '2021-02-17 23:45:44', '2021-02-17 23:45:44'),
(2161, 'en', 'Type key & Enter', 'Type key & Enter', '2021-02-18 00:03:31', '2021-02-18 00:03:31'),
(2162, 'en', 'Bank Alhly', 'Bank Alhly', '2021-02-18 00:07:05', '2021-02-18 00:07:05'),
(2163, 'en', 'Bank Masr', 'Bank Masr', '2021-02-18 00:07:05', '2021-02-18 00:07:05'),
(2164, 'en', 'Bank Alex', 'Bank Alex', '2021-02-18 00:07:05', '2021-02-18 00:07:05'),
(2165, 'en', 'Bank CIP', 'Bank CIP', '2021-02-18 00:07:05', '2021-02-18 00:07:05'),
(2166, 'en', 'Select Bank Name', 'Select Bank Name', '2021-02-18 00:08:10', '2021-02-18 00:08:10'),
(2167, 'en', 'Count Of Number 16 ', 'Count Of Number 16 ', '2021-02-18 00:18:38', '2021-02-18 00:18:38'),
(2168, 'en', 'YES', 'YES', '2021-02-18 00:26:18', '2021-02-18 00:26:18'),
(2169, 'en', 'NO', 'NO', '2021-02-18 00:26:18', '2021-02-18 00:26:18'),
(2170, 'en', 'Account Info', 'Account Info', '2021-02-20 20:33:38', '2021-02-20 20:33:38'),
(2171, 'en', 'Company Name', 'Company Name', '2021-02-20 20:39:47', '2021-02-20 20:39:47'),
(2172, 'en', 'Taxs Photo', 'Taxs Photo', '2021-02-20 20:40:31', '2021-02-20 20:40:31'),
(2173, 'en', 'Email already exists!', 'Email already exists!', '2021-02-20 21:34:57', '2021-02-20 21:34:57'),
(2174, 'en', 'Select Date', 'Select Date', '2021-02-21 00:51:21', '2021-02-21 00:51:21'),
(2175, 'en', 'Product has been duplicated successfully', 'Product has been duplicated successfully', '2021-02-22 06:47:12', '2021-02-22 06:47:12'),
(2176, 'en', 'Category has been inserted successfully', 'Category has been inserted successfully', '2021-02-22 07:30:01', '2021-02-22 07:30:01'),
(2177, 'en', 'Category has been updated successfully', 'Category has been updated successfully', '2021-02-22 08:04:45', '2021-02-22 08:04:45'),
(2178, 'en', 'Published categories updated successfully', 'Published categories updated successfully', '2021-02-22 08:56:05', '2021-02-22 08:56:05'),
(2179, 'en', 'Product Unavailable', 'Product Unavailable', '2021-02-22 09:51:44', '2021-02-22 09:51:44'),
(2180, 'en', 'Welt', 'Welt', '2021-02-22 10:15:34', '2021-02-22 10:15:34'),
(2181, 'en', 'Bank', 'Bank', '2021-02-22 10:15:34', '2021-02-22 10:15:34'),
(2182, 'en', 'Refund Type', 'Refund Type', '2021-02-22 10:20:05', '2021-02-22 10:20:05'),
(2183, 'en', 'Product Check', 'Product Check', '2021-02-22 10:47:42', '2021-02-22 10:47:42'),
(2184, 'en', 'Payment Info', 'Payment Info', '2021-02-23 07:11:38', '2021-02-23 07:11:38'),
(2185, 'en', 'Account Papers', 'Account Papers', '2021-02-23 07:13:55', '2021-02-23 07:13:55'),
(2186, 'en', 'Account No', 'Account No', '2021-02-23 07:34:42', '2021-02-23 07:34:42'),
(2187, 'en', 'At Stock', 'At Stock', '2021-02-23 07:38:45', '2021-02-23 07:38:45'),
(2188, 'en', 'Refund status has been updated', 'Refund status has been updated', '2021-02-23 07:55:55', '2021-02-23 07:55:55'),
(2189, 'en', ' Refund Request Detailes', ' Refund Request Detailes', '2021-02-23 08:38:17', '2021-02-23 08:38:17'),
(2190, 'en', 'Refund Request Detailes', 'Refund Request Detailes', '2021-02-23 08:40:42', '2021-02-23 08:40:42'),
(2191, 'en', 'Role has been inserted successfully', 'Role has been inserted successfully', '2021-02-23 16:27:43', '2021-02-23 16:27:43'),
(2192, 'en', 'Staff Information', 'Staff Information', '2021-02-23 16:27:51', '2021-02-23 16:27:51'),
(2193, 'en', 'Staff has been inserted successfully', 'Staff has been inserted successfully', '2021-02-23 16:28:22', '2021-02-23 16:28:22'),
(2194, 'en', 'Step 1', 'Step 1', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2195, 'en', 'Download the skeleton file and fill it with proper data', 'Download the skeleton file and fill it with proper data', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2196, 'en', 'You can download the example file to understand how the data must be filled', 'You can download the example file to understand how the data must be filled', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2197, 'en', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2198, 'en', 'After uploading products you need to edit them and set product\'s images and choices', 'After uploading products you need to edit them and set product\'s images and choices', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2199, 'en', 'Step 2', 'Step 2', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2200, 'en', 'Category and Brand should be in numerical id', 'Category and Brand should be in numerical id', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2201, 'en', 'You can download the pdf to get Category and Brand id', 'You can download the pdf to get Category and Brand id', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2202, 'en', 'Upload Product File', 'Upload Product File', '2021-02-24 20:04:23', '2021-02-24 20:04:23'),
(2203, 'en', 'Category has been deleted successfully', 'Category has been deleted successfully', '2021-02-24 20:09:17', '2021-02-24 20:09:17'),
(2204, 'en', 'Order deleted', 'Order deleted', '2021-02-24 20:45:48', '2021-02-24 20:45:48'),
(2205, 'en', 'Seller has been banned successfully', 'Seller has been banned successfully', '2021-02-24 20:59:15', '2021-02-24 20:59:15'),
(2206, 'en', 'Unban this seller', 'Unban this seller', '2021-02-24 20:59:15', '2021-02-24 20:59:15'),
(2207, 'en', 'Seller has been unbanned successfully', 'Seller has been unbanned successfully', '2021-02-24 21:01:27', '2021-02-24 21:01:27'),
(2208, 'en', 'Server information', 'Server information', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2209, 'en', 'Current Version', 'Current Version', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2210, 'en', 'Required Version', 'Required Version', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2211, 'en', 'php.ini Config', 'php.ini Config', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2212, 'en', 'Config Name', 'Config Name', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2213, 'en', 'Current', 'Current', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2214, 'en', 'Recommended', 'Recommended', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2215, 'en', 'Extensions information', 'Extensions information', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2216, 'en', 'Extension Name', 'Extension Name', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2217, 'en', 'Filesystem Permissions', 'Filesystem Permissions', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2218, 'en', 'File or Folder', 'File or Folder', '2021-02-24 21:07:44', '2021-02-24 21:07:44'),
(2219, 'en', 'Update your system', 'Update your system', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2220, 'en', 'Current verion', 'Current verion', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2221, 'en', 'Make sure your server has matched with all requirements.', 'Make sure your server has matched with all requirements.', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2222, 'en', 'Check Here', 'Check Here', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2223, 'en', 'Download latest version from codecanyon.', 'Download latest version from codecanyon.', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2224, 'en', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2225, 'en', 'Upload that zip file here and click update now.', 'Upload that zip file here and click update now.', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2226, 'en', 'If you are using any addon make sure to update those addons after updating.', 'If you are using any addon make sure to update those addons after updating.', '2021-02-24 21:08:10', '2021-02-24 21:08:10'),
(2227, 'en', 'Account statement', 'Account statement', '2021-03-02 08:37:58', '2021-03-02 08:37:58'),
(2228, 'en', 'Account Statment', 'Account Statment', '2021-03-02 08:38:03', '2021-03-02 08:38:03'),
(2229, 'en', 'view Report', 'view Report', '2021-03-02 08:38:03', '2021-03-02 08:38:03'),
(2230, 'en', 'All order', 'All order', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2231, 'en', 'All Refund', 'All Refund', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2232, 'en', 'Pending Refund', 'Pending Refund', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2233, 'en', 'Check Refund', 'Check Refund', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2234, 'en', 'At Stock Refund', 'At Stock Refund', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2235, 'en', 'Aproved Refund', 'Aproved Refund', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2236, 'en', 'Profits', 'Profits', '2021-03-02 08:38:57', '2021-03-02 08:38:57'),
(2237, 'en', 'Net Profits', 'Net Profits', '2021-03-02 08:38:57', '2021-03-02 08:38:57');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(2238, 'en', 'seller Account Statment', 'seller Account Statment', '2021-03-02 09:53:01', '2021-03-02 09:53:01'),
(2239, 'en', 'ID', 'ID', '2021-03-03 19:25:56', '2021-03-03 19:25:56'),
(2240, 'en', 'Email or Phone already exists.', 'Email or Phone already exists.', '2021-03-04 19:49:44', '2021-03-04 19:49:44'),
(2241, 'en', 'Please add shipping address', 'Please add shipping address', '2021-03-04 19:52:25', '2021-03-04 19:52:25'),
(2242, 'en', 'Your Cart was empty', 'Your Cart was empty', '2021-03-04 20:00:29', '2021-03-04 20:00:29'),
(2243, 'en', 'My Welt', 'My Welt', '2021-03-04 20:12:41', '2021-03-04 20:12:41'),
(2244, 'en', 'Account Number', 'Account Number', '2021-03-04 20:12:41', '2021-03-04 20:12:41'),
(2245, 'en', 'You have subscribed successfully', 'You have subscribed successfully', '2021-03-09 12:16:25', '2021-03-09 12:16:25'),
(2246, 'en', 'Brand Name', 'Brand Name', '2021-03-09 16:51:40', '2021-03-09 16:51:40'),
(2247, 'en', 'Add New Brand', 'Add New Brand', '2021-03-09 16:54:02', '2021-03-09 16:54:02'),
(2248, 'en', '120x80', '120x80', '2021-03-09 16:54:02', '2021-03-09 16:54:02'),
(2249, 'en', 'Emails', 'Emails', '2021-03-09 18:16:42', '2021-03-09 18:16:42'),
(2250, 'en', 'Users', 'Users', '2021-03-09 18:16:42', '2021-03-09 18:16:42'),
(2251, 'en', 'Newsletter subject', 'Newsletter subject', '2021-03-09 18:16:42', '2021-03-09 18:16:42'),
(2252, 'en', 'Newsletter content', 'Newsletter content', '2021-03-09 18:16:42', '2021-03-09 18:16:42'),
(2253, 'en', 'User Personal Info', 'User Personal Info', '2021-03-10 11:33:20', '2021-03-10 11:33:20'),
(2254, 'en', 'I Pan', 'I Pan', '2021-03-10 11:33:20', '2021-03-10 11:33:20'),
(2255, 'en', 'included', 'included', '2021-03-10 16:16:34', '2021-03-10 16:16:34'),
(2256, 'en', 'excluded', 'excluded', '2021-03-10 16:16:34', '2021-03-10 16:16:34'),
(2257, 'en', 'Update Payments', 'Update Payments', '2021-03-10 16:19:50', '2021-03-10 16:19:50'),
(2258, 'en', 'Your verification mail has been Sent to your email.', 'Your verification mail has been Sent to your email.', '2021-03-10 20:00:19', '2021-03-10 20:00:19'),
(2259, 'en', 'A verification mail has been sent to the mail you provided us with.', 'A verification mail has been sent to the mail you provided us with.', '2021-03-10 20:00:19', '2021-03-10 20:00:19'),
(2260, 'en', 'Password Reset', 'Password Reset', '2021-03-10 20:05:04', '2021-03-10 20:05:04'),
(2261, 'en', 'Reset Password', 'Reset Password', '2021-03-10 20:05:05', '2021-03-10 20:05:05'),
(2262, 'en', 'Enter your email address and new password and confirm password.', 'Enter your email address and new password and confirm password.', '2021-03-10 20:05:05', '2021-03-10 20:05:05'),
(2263, 'en', 'Details', 'Details', '2021-03-10 21:25:48', '2021-03-10 21:25:48'),
(2264, 'en', 'See ticket', 'See ticket', '2021-03-10 21:25:48', '2021-03-10 21:25:48'),
(2265, 'en', 'Ticket has been sent successfully', 'Ticket has been sent successfully', '2021-03-10 21:25:49', '2021-03-10 21:25:49'),
(2266, 'en', 'Support Desk', 'Support Desk', '2021-03-10 21:27:15', '2021-03-10 21:27:15'),
(2267, 'en', 'Type ticket code & Enter', 'Type ticket code & Enter', '2021-03-10 21:27:15', '2021-03-10 21:27:15'),
(2268, 'en', 'User', 'User', '2021-03-10 21:27:15', '2021-03-10 21:27:15'),
(2269, 'en', 'Last reply', 'Last reply', '2021-03-10 21:27:15', '2021-03-10 21:27:15'),
(2270, 'en', 'Submit as', 'Submit as', '2021-03-10 21:29:08', '2021-03-10 21:29:08'),
(2271, 'en', 'Solved', 'Solved', '2021-03-10 21:29:08', '2021-03-10 21:29:08'),
(2272, 'en', 'Reply has been sent successfully', 'Reply has been sent successfully', '2021-03-10 21:29:37', '2021-03-10 21:29:37'),
(2273, 'en', 'Send Reply', 'Send Reply', '2021-03-10 21:29:46', '2021-03-10 21:29:46'),
(2274, 'en', 'Invalid email or password!', 'Invalid email or password!', '2021-03-10 22:24:27', '2021-03-10 22:24:27'),
(2275, 'en', 'Product Wish Report', 'Product Wish Report', '2021-03-11 13:07:25', '2021-03-11 13:07:25'),
(2276, 'en', 'Number of Wish', 'Number of Wish', '2021-03-11 13:07:25', '2021-03-11 13:07:25'),
(2277, 'en', 'All sub categories', 'All sub categories', '2021-03-13 05:38:38', '2021-03-13 05:38:38'),
(2278, 'en', 'Add New Sub Category', 'Add New Sub Category', '2021-03-13 05:38:38', '2021-03-13 05:38:38'),
(2279, 'en', 'Sub Categories', 'Sub Categories', '2021-03-13 05:38:38', '2021-03-13 05:38:38'),
(2280, 'en', 'Sub Sub Category Information', 'Sub Sub Category Information', '2021-03-13 05:40:26', '2021-03-13 05:40:26'),
(2281, 'en', 'Select Sub Category', 'Select Sub Category', '2021-03-13 05:40:26', '2021-03-13 05:40:26'),
(2282, 'en', 'Select Sub Sub Category', 'Select Sub Sub Category', '2021-03-16 14:37:42', '2021-03-16 14:37:42'),
(2283, 'en', 'Your email has been verified successfully', 'Your email has been verified successfully', '2021-04-17 09:15:22', '2021-04-17 09:15:22'),
(2284, 'en', 'linkedin', 'linkedin', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2285, 'en', 'instagram', 'instagram', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2286, 'en', 'whatsapp', 'whatsapp', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2287, 'en', 'hotline', 'hotline', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2288, 'en', 'phone2', 'phone2', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2289, 'en', 'phone3', 'phone3', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2290, 'en', 'phone4', 'phone4', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2291, 'en', 'phone5', 'phone5', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2292, 'en', 'phone6', 'phone6', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2293, 'en', 'phone7', 'phone7', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2294, 'en', 'phone8', 'phone8', '2021-04-17 09:28:34', '2021-04-17 09:28:34'),
(2295, 'en', 'بنك مصر ', 'بنك مصر ', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2296, 'en', 'البنك الاهلي المصري', 'البنك الاهلي المصري', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2297, 'en', 'البنك العقاري المصري العربي', 'البنك العقاري المصري العربي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2298, 'en', 'البنك الزراعي المصري', 'البنك الزراعي المصري', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2299, 'en', 'بنك التنمية الصناعية', 'بنك التنمية الصناعية', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2300, 'en', 'بنك القاهرة', 'بنك القاهرة', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2301, 'en', 'المصرف المتحد', 'المصرف المتحد', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2302, 'en', 'بنك الاسكندرية', 'بنك الاسكندرية', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2303, 'en', 'ميد بنك ', 'ميد بنك ', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2304, 'en', 'البنك التجاري الدولي', 'البنك التجاري الدولي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2305, 'en', 'البنك التجاري المغربي', 'البنك التجاري المغربي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2306, 'en', 'بنك الشركة المصرفية العربية الدولية', 'بنك الشركة المصرفية العربية الدولية', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2307, 'en', 'بنك بلوم', 'بنك بلوم', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2308, 'en', 'كريدي اجريكول', 'كريدي اجريكول', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2309, 'en', 'بنك الامارات دبي الوطني', 'بنك الامارات دبي الوطني', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2310, 'en', 'بنك قناة السويس', 'بنك قناة السويس', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2311, 'en', 'بنك قطر الوطني الاهلي', 'بنك قطر الوطني الاهلي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2312, 'en', 'بنك الاستثمار العربي', 'بنك الاستثمار العربي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2313, 'en', 'البنك الاهلي الكويتي', 'البنك الاهلي الكويتي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2314, 'en', 'بنك عودة', 'بنك عودة', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2315, 'en', 'البنك الاهلي المتحد', 'البنك الاهلي المتحد', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2316, 'en', 'بنك فيصل الاسلامي المصري', 'بنك فيصل الاسلامي المصري', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2317, 'en', 'بنك التعمير والاسكان', 'بنك التعمير والاسكان', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2318, 'en', 'بنك البركة', 'بنك البركة', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2319, 'en', 'بنك الكويت الوطني', 'بنك الكويت الوطني', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2320, 'en', 'مصرف ابوظبي الاسلامي', 'مصرف ابوظبي الاسلامي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2321, 'en', 'بنك ابوظبي التجاري', 'بنك ابوظبي التجاري', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2322, 'en', 'البنك المصري الخليجي', 'البنك المصري الخليجي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2323, 'en', 'البنك العربي الافريقي', 'البنك العربي الافريقي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2324, 'en', 'اتش اس بي سي', 'اتش اس بي سي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2325, 'en', 'abc بنك المؤسسة العربية المصرفية', 'abc بنك المؤسسة العربية المصرفية', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2326, 'en', 'البنك المصري لتنمية الصادرات', 'البنك المصري لتنمية الصادرات', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2327, 'en', 'المصرف العربي الدولي', 'المصرف العربي الدولي', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2328, 'en', 'البنك العربي ', 'البنك العربي ', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2329, 'en', 'سيتي بنك', 'سيتي بنك', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2330, 'en', 'بنك المشرق', 'بنك المشرق', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2331, 'en', 'البنك الاهلي اليوناني', 'البنك الاهلي اليوناني', '2021-04-17 10:05:06', '2021-04-17 10:05:06'),
(2332, 'en', 'I Ban', 'I Ban', '2021-04-17 10:11:18', '2021-04-17 10:11:18'),
(2333, 'en', 'Registration successfull. Please verify your email.', 'Registration successfull. Please verify your email.', '2021-04-26 08:12:21', '2021-04-26 08:12:21'),
(2334, 'en', 'No Refund Request', 'No Refund Request', '2021-04-28 22:04:43', '2021-04-28 22:04:43'),
(2335, 'en', 'Not Requested', 'Not Requested', '2021-04-28 22:05:13', '2021-04-28 22:05:13'),
(2336, 'en', 'Available status has been updated', 'Available status has been updated', '2021-04-28 22:49:54', '2021-04-28 22:49:54'),
(2337, 'en', 'Are You Sure', 'Are You Sure', '2021-04-29 00:36:08', '2021-04-29 00:36:08'),
(2338, 'en', 'Total Items', 'Total Items', '2021-04-29 08:51:48', '2021-04-29 08:51:48'),
(2339, 'en', 'Seller Available', 'Seller Available', '2021-04-29 09:04:49', '2021-04-29 09:04:49'),
(2340, 'en', 'Item Availability', 'Item Availability', '2021-04-29 09:47:53', '2021-04-29 09:47:53'),
(2341, 'en', 'Item Status', 'Item Status', '2021-04-29 09:53:27', '2021-04-29 09:53:27'),
(2342, 'en', 'picked', 'Picked Up', '2021-04-30 08:45:00', '2021-07-03 16:43:19'),
(2343, 'en', 'Picked Up', 'Picked Up', '2021-04-30 09:12:00', '2021-04-30 09:12:00'),
(2344, 'en', 'Tracking Orders', 'Tracking Orders', '2021-04-30 09:29:17', '2021-04-30 09:29:17'),
(2345, 'en', 'Shipping Orders', 'Shipping Orders', '2021-04-30 09:29:17', '2021-04-30 09:29:17'),
(2346, 'en', 'Complete Orders', 'Complete Orders', '2021-04-30 18:03:11', '2021-04-30 18:03:11'),
(2347, 'en', 'Item Status updated successfully', 'Item Status updated successfully', '2021-04-30 22:22:10', '2021-04-30 22:22:10'),
(2348, 'en', 'Shipping Screen', 'Shipping Screen', '2021-04-30 23:16:00', '2021-04-30 23:16:00'),
(2349, 'en', 'Tracking Screen', 'Tracking Screen', '2021-04-30 23:16:15', '2021-04-30 23:16:15'),
(2350, 'en', 'Completed Order', 'Completed Order', '2021-04-30 23:17:10', '2021-04-30 23:17:10'),
(2351, 'en', 'All Orders Tracking', 'All Orders Tracking', '2021-05-01 08:58:57', '2021-05-01 08:58:57'),
(2352, 'en', 'All Orders Shipping', 'All Orders Shipping', '2021-05-01 08:59:09', '2021-05-01 08:59:09'),
(2353, 'en', 'All Orders Completed', 'All Orders Completed', '2021-05-01 08:59:18', '2021-05-01 08:59:18'),
(2354, 'en', 'I Ban Number', 'I Ban Number', '2021-05-01 12:17:14', '2021-05-01 12:17:14'),
(2355, 'en', 'Products imported successfully', 'Products imported successfully', '2021-05-01 13:10:23', '2021-05-01 13:10:23'),
(2356, 'en', 'Do you really want to un ban this seller?', 'Do you really want to un ban this seller?', '2021-05-02 07:22:37', '2021-05-02 07:22:37'),
(2357, 'en', 'Shipping By', 'Shipping By', '2021-05-02 08:07:29', '2021-05-02 08:07:29'),
(2358, 'en', 'Shipping status has been updated', 'Shipping status has been updated', '2021-05-02 08:16:07', '2021-05-02 08:16:07'),
(2359, 'en', 'Ar5as Invoicde', 'Ar5as Invoicde', '2021-05-03 04:33:19', '2021-05-03 04:33:19'),
(2360, 'en', '+01', '+01', '2021-05-03 08:19:53', '2021-05-03 08:19:53'),
(2361, 'en', 'Order has been cancelled successfully', 'Order has been cancelled successfully', '2021-05-03 08:51:59', '2021-05-03 08:51:59'),
(2362, 'en', 'Cancelled', 'Cancelled', '2021-05-03 09:06:40', '2021-05-03 09:06:40'),
(2363, 'en', 'Edit Seller Information', 'Edit Seller Information', '2021-05-08 21:04:17', '2021-05-08 21:04:17'),
(2364, 'en', 'Seller has been updated successfully', 'Seller has been updated successfully', '2021-05-08 21:04:39', '2021-05-08 21:04:39'),
(2365, 'en', 'Show Password', 'Show Password', '2021-05-09 23:35:05', '2021-05-09 23:35:05'),
(2366, 'en', ' Show Password', ' Show Password', '2021-05-09 23:38:22', '2021-05-09 23:38:22'),
(2367, 'en', 'Product Checked', 'Product Checked', '2021-05-11 17:41:40', '2021-05-11 17:41:40'),
(2368, 'en', 'Quantaty', 'Quantaty', '2021-05-11 17:53:07', '2021-05-11 17:53:07'),
(2369, 'en', 'Product Alert Quantaty', 'Product Alert Quantaty', '2021-05-11 17:55:14', '2021-05-11 17:55:14'),
(2370, 'en', 'Alert Quantaty', 'Alert Quantaty', '2021-05-11 18:14:46', '2021-05-11 18:14:46'),
(2371, 'en', 'Customer Not Found', 'Customer Not Found', '2021-05-14 06:02:56', '2021-05-14 06:02:56'),
(2372, 'en', 'remove and recalculate order', 'remove and recalculate order', '2021-05-18 05:46:50', '2021-05-18 05:46:50'),
(2373, 'en', 'Item status has been updated', 'Item status has been updated', '2021-05-18 06:10:47', '2021-05-18 06:10:47'),
(2374, 'en', 'Wellt', 'Wellt', '2021-05-18 22:52:10', '2021-05-18 22:52:10'),
(2375, 'en', 'Refund has been added successfully', 'Refund has been added successfully', '2021-05-19 00:10:44', '2021-05-19 00:10:44'),
(2376, 'en', 'Refunded and Removed From Order', 'Refunded and Removed From Order', '2021-05-19 06:20:31', '2021-05-19 06:20:31'),
(2377, 'en', 'Item Removed From Order', 'Item Removed From Order', '2021-05-19 06:27:33', '2021-05-19 06:27:33'),
(2378, 'en', 'Removed From Order', 'Removed From Order', '2021-05-19 15:11:04', '2021-05-19 15:11:04'),
(2379, 'en', 'Role has been updated successfully', 'Role has been updated successfully', '2021-05-25 04:27:41', '2021-05-25 04:27:41'),
(2380, 'en', 'Count Of Number 14 ', 'Count Of Number 14 ', '2021-05-25 15:07:16', '2021-05-25 15:07:16'),
(2381, 'eg', 'All Category', 'كل الفئات', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2382, 'eg', 'All', 'الجميع', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2383, 'eg', 'Flash Sale', 'العروض المتاحه', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2384, 'eg', 'View More', 'عرض المزيد', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2385, 'eg', 'Add to wishlist', 'أضف إلى المفضلة', '2021-05-26 20:40:51', '2021-06-21 09:48:48'),
(2386, 'eg', 'Add to compare', 'أضف للمقارنة', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2387, 'eg', 'Add to cart', 'أضف إلى العربه', '2021-05-26 20:40:51', '2021-06-30 19:07:13'),
(2388, 'eg', 'Club Point', 'كلوب بوينت', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2389, 'eg', 'Classified Ads', 'الإعلانات المبوبة', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2390, 'eg', 'Used', 'مستخدم', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2391, 'eg', 'Top 10 Categories', 'أعلى 10 فئات', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2392, 'eg', 'View All Categories', 'عرض جميع الفئات', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2393, 'eg', 'Top 10 Brands', 'أفضل 10 ماركات', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2394, 'eg', 'View All Brands', 'عرض كل الماركات', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2395, 'eg', 'Terms & conditions', 'البنود و الاشتراطات', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2396, 'eg', 'Best Selling', 'الافضل مبيعا', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2397, 'eg', 'Top 20', 'أفضل 20', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2398, 'eg', 'Featured Products', 'منتجات مميزة', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2399, 'eg', 'Best Sellers', 'أفضل البائعين', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2400, 'eg', 'Visit Store', 'زيارة المتجر', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2401, 'eg', 'Popular Suggestions', 'الاكثر اقتراحا', '2021-05-26 20:40:51', '2021-06-21 19:25:14'),
(2402, 'eg', 'Category Suggestions', 'اقتراحات الفئة', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2403, 'eg', 'Automobile & Motorcycle', 'السيارات والدراجات النارية', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2404, 'eg', 'Price range', 'نطاق السعر', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2405, 'eg', 'Filter by color', 'البحث بالون', '2021-05-26 20:40:51', '2021-06-28 16:01:57'),
(2406, 'eg', 'Home', 'الرئيسية', '2021-05-26 20:40:51', '2021-06-21 10:25:03'),
(2407, 'eg', 'Newest', 'الأحدث', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2408, 'eg', 'Oldest', 'الأقدم', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2409, 'eg', 'Price low to high', 'السعر من الارخص للاعلى', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2410, 'eg', 'Price high to low', 'السعر الاعلى الى الادنى', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2411, 'eg', 'Brands', 'العلامات التجارية', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2412, 'eg', 'All Brands', 'جميع العلامات التجارية', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2413, 'eg', 'All Sellers', 'كل التجار', '2021-05-26 20:40:51', '2021-07-03 16:57:16'),
(2414, 'eg', 'Inhouse product', 'منتج داخلي', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2415, 'eg', 'Message Seller', 'مراسلةالتاجر', '2021-05-26 20:40:51', '2021-07-03 16:57:16'),
(2416, 'eg', 'Price', 'سعر', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2417, 'eg', 'Discount Price', 'سعر الخصم', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2418, 'eg', 'Color', 'اللون', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2419, 'eg', 'Quantity', 'كمية', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2420, 'eg', 'available', 'متوفرة', '2021-05-26 20:40:51', '2021-05-26 20:40:51'),
(2421, 'eg', 'Total Price', 'السعر الكلي', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2422, 'eg', 'Out of Stock', 'إنتهى من المخزن', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2423, 'eg', 'Refund', 'مرتجع', '2021-05-26 20:40:52', '2021-06-21 19:25:14'),
(2424, 'eg', 'Share', 'شارك', '2021-05-26 20:40:52', '2021-06-21 19:25:14'),
(2425, 'eg', 'Sold By', 'تم بيعها من قبل', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2426, 'eg', 'customer reviews', 'آراء العملاء', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2427, 'eg', 'Top Selling Products', 'المنتجات الأكثر مبيعًا', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2428, 'eg', 'Description', 'وصف', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2429, 'eg', 'Video', 'فيديو', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2430, 'eg', 'Reviews', 'الاراء', '2021-05-26 20:40:52', '2021-06-21 19:25:14'),
(2431, 'en', 'Translations updated for ', 'Translations updated for ', '2021-05-26 20:40:52', '2021-05-26 20:40:52'),
(2432, 'eg', 'Download', 'تحميل', '2021-05-26 20:43:37', '2021-05-26 20:46:33'),
(2433, 'eg', 'There have been no reviews for this product yet.', 'لا توجد اراء حول هذا المنتج', '2021-05-26 20:43:37', '2021-06-27 19:39:47'),
(2434, 'eg', 'Related products', 'منتجات ذات صله', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2435, 'eg', 'Any query about this product', 'أي استفسار عن هذا المنتج', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2436, 'eg', 'Product Name', 'اسم المنتج', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2437, 'eg', 'Your Question', 'سؤالك', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2438, 'eg', 'Send', 'إرسال', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2439, 'eg', 'Use country code before number', 'استخدم رمز البلد قبل الرقم', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2440, 'eg', 'Remember Me', 'تذكرنى', '2021-05-26 20:43:37', '2021-05-26 20:50:34'),
(2441, 'eg', 'Dont have an account?', 'ليس لديك حساب؟', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2442, 'eg', 'Register Now', 'سجل الان', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2443, 'eg', 'Or Login With', 'أو تسجيل الدخول باستخدام', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2444, 'eg', 'oops..', 'خطأ', '2021-05-26 20:43:37', '2021-06-27 19:39:47'),
(2445, 'eg', 'This item is out of stock!', 'هذا العنصر غير متوفر في المخزون!', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2446, 'eg', 'Back to shopping', 'العودة إلى التسوق', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2447, 'eg', 'Login to your account.', 'تسجيل الدخول إلى حسابك.', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2448, 'eg', 'Purchase History', 'تاريخ شراء', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2449, 'eg', 'New', 'جديد', '2021-05-26 20:43:37', '2021-05-26 20:50:57'),
(2450, 'eg', 'Downloads', 'التحميلات', '2021-05-26 20:43:37', '2021-05-26 20:53:03'),
(2451, 'eg', 'Sent Refund Request', 'طلبات المرتجعات', '2021-05-26 20:43:37', '2021-07-03 17:23:06'),
(2452, 'eg', 'Product Bulk Upload', 'تحميل مجمع للمنتج', '2021-05-26 20:43:37', '2021-05-26 20:53:10'),
(2453, 'eg', 'Orders', 'الطلبات', '2021-05-26 20:43:37', '2021-06-21 11:17:20'),
(2454, 'eg', 'Recieved Refund Request', 'تم استلام طلب الاسترجاع', '2021-05-26 20:43:37', '2021-06-27 19:39:47'),
(2455, 'eg', 'Shop Setting', 'إعداد المتجر', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2456, 'eg', 'Payment History', 'بيان التحويلات الماليه', '2021-05-26 20:43:37', '2021-07-10 15:50:39'),
(2457, 'eg', 'Money Withdraw', 'سحب الأموال', '2021-05-26 20:43:37', '2021-05-26 20:54:10'),
(2458, 'eg', 'Conversations', 'المحادثات', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2459, 'eg', 'My Wallet', 'محفظتى', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2460, 'eg', 'Earning Points', 'كسب النقاط', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2461, 'eg', 'Support Ticket', 'الدعم الفني', '2021-05-26 20:43:37', '2021-06-28 17:00:54'),
(2462, 'eg', 'Manage Profile', 'إدارة الملف الشخصي', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2463, 'eg', 'Sold Amount', 'المبلغ المباع', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2464, 'eg', 'Your sold amount (current month)', 'المبلغ المباع (الشهر الحالي)', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2465, 'eg', 'Total Sold', 'إجمالي المبيعات', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2466, 'eg', 'Last Month Sold', 'تم بيع الشهر الماضي', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2467, 'eg', 'Total sale', 'إجمالي البيع', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2468, 'eg', 'Total earnings', 'الأرباح الكلية', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2469, 'eg', 'Successful orders', 'الطلبات الناجحة', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2470, 'eg', 'Total orders', 'إجمالي الطلبات', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2471, 'eg', 'Pending orders', 'الطلبات المعلقة', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2472, 'eg', 'Cancelled orders', 'الطلبات الملغاة', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2473, 'eg', 'Product', 'منتج', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2474, 'eg', 'Purchased Package', 'الحزمة المشتراة', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2475, 'eg', 'Package Not Found', 'الحزمة غير موجودة', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2476, 'eg', 'Upgrade Package', 'حزمة الترقية', '2021-05-26 20:43:37', '2021-06-19 20:59:23'),
(2477, 'eg', 'Shop', 'متجر', '2021-05-26 20:43:37', '2021-06-19 20:59:24'),
(2478, 'eg', 'Manage & organize your shop', 'إدارة وتنظيم متجرك', '2021-05-26 20:43:37', '2021-06-19 20:59:24'),
(2479, 'eg', 'Go to setting', 'اذهب إلى الإعداد', '2021-05-26 20:43:37', '2021-06-19 20:59:24'),
(2480, 'eg', 'Payment', 'دفع', '2021-05-26 20:43:37', '2021-06-19 20:59:24'),
(2481, 'eg', 'Configure your payment method', 'اعدادات طريقة الدفع الخاصة بك', '2021-05-26 20:43:37', '2021-06-27 19:39:48'),
(2482, 'eg', 'My Panel', 'لوحه التحكم', '2021-05-26 20:44:44', '2021-06-27 19:45:29'),
(2483, 'eg', 'Item has been added to wishlist', 'تمت إضافة العنصر إلى قائمة الرغبات', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2484, 'eg', 'My Points', 'نقاطي', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2485, 'eg', ' Points', 'نقاط', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2486, 'eg', 'Wallet Money', 'أموال المحفظة', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2487, 'eg', 'Exchange Rate', 'سعر الصرف', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2488, 'eg', 'Point Earning history', 'سجل كسب النقاط', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2489, 'eg', 'Date', 'تاريخ', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2490, 'eg', 'Points', 'نقاط', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2491, 'eg', 'Converted', 'محولة', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2492, 'eg', 'Action', 'مؤكد/غير مؤكد', '2021-05-26 20:44:44', '2021-06-28 15:55:36'),
(2493, 'eg', 'No history found.', 'لم يتم العثور على سجل.', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2494, 'eg', 'Convert has been done successfully Check your Wallets', 'تم التحويل بنجاح تحقق من محافظك', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2495, 'eg', 'Something went wrong', 'هناك خطأ ما', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2496, 'eg', 'Remaining Uploads', 'التحميلات المتبقية', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2497, 'eg', 'No Package Found', 'لم يتم العثور على حزمة', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2498, 'eg', 'Search product', 'البحث عن المنتج', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2499, 'eg', 'Name', 'الاسم', '2021-05-26 20:44:44', '2021-07-03 17:46:35'),
(2500, 'eg', 'Current Qty', 'الكمية الحالية', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2501, 'eg', 'Base Price', 'السعر الأساسي', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2502, 'eg', 'Published', 'نشرت', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2503, 'eg', 'Featured', 'متميز', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2504, 'eg', 'Options', 'خيارات', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2505, 'eg', 'Edit', 'تعديل', '2021-05-26 20:44:44', '2021-06-27 19:45:29'),
(2506, 'eg', 'Duplicate', 'ينسخ', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2507, 'eg', '1. Download the skeleton file and fill it with data.', '1. قم بتنزيل ملف نموذج المنتجات واملأه بالبيانات.', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2508, 'eg', '2. You can download the example file to understand how the data must be filled.', '2. يمكنك تنزيل ملف نموذج المنتجات المثال لفهم كيفية ملء البيانات.', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2509, 'eg', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. بمجرد تنزيل الملف وتعبئته ، قم بتحميله في النموذج أدناه وأرسله.', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2510, 'eg', '4. After uploading products you need to edit them and set products images and choices.', '4. بعد تحميل المنتجات تحتاج إلى تعديلها وتعيين صور المنتجات والاختيارات.', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2511, 'eg', 'Download CSV', 'تنزيل نموذج المنتجات', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2512, 'eg', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. إدخال الفئات والفئات الفرعيه وتحت الفرعيه والعلامه التجاريه في صوره كود.', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2513, 'eg', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. يمكنك تنزيل الملف التعريفي ادناه للحصول على اكواد الفئة والفئة الفرعية والفئة تحت الفرعية و العلامة التجارية.', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2514, 'eg', 'Download Category', 'الملف التعريفي', '2021-05-26 20:44:44', '2021-06-28 15:44:53'),
(2515, 'eg', 'Download Sub category', 'تحميل فئة فرعية', '2021-05-26 20:44:44', '2021-05-26 20:44:44'),
(2516, 'eg', 'Download Sub Sub category', 'تحميل فئة تحت فرعية', '2021-05-26 20:44:44', '2021-06-27 19:45:29'),
(2517, 'eg', 'Download Brand', 'تحميل العلامه التجاريه', '2021-05-26 20:44:45', '2021-07-03 16:15:09'),
(2518, 'eg', 'Upload CSV File', 'تحميل نموذج المنتجات', '2021-05-26 20:44:45', '2021-06-28 15:44:53'),
(2519, 'eg', 'CSV', 'CSV', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2520, 'eg', 'Choose CSV File', 'اختر ملف CSV', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2521, 'eg', 'Upload', 'تحميل', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2522, 'eg', 'Add New Digital Product', 'إضافة منتج رقمي جديد', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2523, 'eg', 'Available Status', 'متاح', '2021-05-26 20:44:45', '2021-06-27 19:45:29'),
(2524, 'eg', 'Admin Status', 'حالة المسؤول', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2525, 'eg', 'Pending Balance', 'رصيد معلق', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2526, 'eg', 'Send Withdraw Request', 'إرسال طلب سحب', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2527, 'eg', 'Withdraw Request history', 'سحب تاريخ الطلب', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2528, 'eg', 'Amount', 'كمية', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2529, 'eg', 'Status', 'حالة', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2530, 'eg', 'Message', 'رسالة', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2531, 'eg', 'Send A Withdraw Request', 'إرسال طلب سحب', '2021-05-26 20:44:45', '2021-05-26 20:44:45'),
(2532, 'eg', 'MPESA SANDBOX ACTIVATION', 'تنشيط ساندبوكس MPESA', '2021-05-26 20:56:28', '2021-06-19 20:55:17'),
(2533, 'eg', 'Flutterwave Credential', 'اعتماد Flutterwave', '2021-05-26 20:56:28', '2021-06-19 20:55:17'),
(2534, 'eg', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2021-05-26 20:56:28', '2021-05-26 20:56:28'),
(2535, 'eg', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2021-05-26 20:56:28', '2021-05-26 20:56:28'),
(2536, 'eg', 'RAVE_TITLE', 'RAVE_TITLE', '2021-05-26 20:56:28', '2021-05-26 20:56:28'),
(2537, 'eg', 'STAGIN ACTIVATION', 'تنشيط STAGIN', '2021-05-26 20:56:28', '2021-06-19 20:55:17'),
(2538, 'eg', 'All Product', 'كل المنتجات', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2539, 'eg', 'Sort By', 'ترتيب حسب', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2540, 'eg', 'Rating (High > Low)', 'التصنيف (مرتفع> منخفض)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2541, 'eg', 'Rating (Low > High)', 'التصنيف (منخفض> مرتفع)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2542, 'eg', 'Num of Sale (High > Low)', 'عدد المبيعات (مرتفع> منخفض)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2543, 'eg', 'Num of Sale (Low > High)', 'عدد البيع (منخفض> مرتفع)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2544, 'eg', 'Base Price (High > Low)', 'السعر الأساسي (مرتفع> منخفض)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2545, 'eg', 'Base Price (Low > High)', 'السعر الأساسي (منخفض> مرتفع)', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2546, 'eg', 'Type & Enter', 'اكتب & أدخل', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2547, 'eg', 'Added By', 'أضيفت بواسطة', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2548, 'eg', 'Num of Sale', 'رقم البيع', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2549, 'eg', 'Total Stock', 'إجمالي المخزون', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2550, 'eg', 'Todays Deal', 'صفقة اليوم', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2551, 'eg', 'Rating', 'تقييم', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2552, 'eg', 'times', 'مرات', '2021-05-26 20:56:28', '2021-06-19 20:55:18'),
(2553, 'eg', 'Add Nerw Product', 'اضافه منتج جديد', '2021-05-26 20:56:29', '2021-06-27 19:52:03'),
(2554, 'eg', 'Product Information', 'معلومات المن', '2021-05-26 20:56:29', '2021-06-27 19:52:03'),
(2555, 'eg', 'Unit', 'وحدة', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2556, 'eg', 'Unit (e.g. KG, Pc etc)', 'الوحدة (مثل KG ، Pc ، إلخ)', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2557, 'eg', 'Minimum Qty', 'الحد الأدنى من الكمية', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2558, 'eg', 'Tags', 'العلامات', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2559, 'eg', 'Type and hit enter to add a tag', 'اكتب واضغط على Enter لإضافة علامة', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2560, 'eg', 'Barcode', 'الباركود', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2561, 'eg', 'Refundable', 'قابل للاسترجاع', '2021-05-26 20:56:29', '2021-06-27 19:52:03'),
(2562, 'eg', 'Product Images', 'صور المنتج', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2563, 'eg', 'Gallery Images', 'معرض الصور', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2564, 'eg', 'Todays Deal updated successfully', 'تم تحديث صفقة اليوم بنجاح', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2565, 'eg', 'Published products updated successfully', 'تم تحديث المنتجات المنشورة بنجاح', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2566, 'eg', 'Thumbnail Image', 'صورة مصغرة', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2567, 'eg', 'Featured products updated successfully', 'تم تحديث المنتجات المميزة بنجاح', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2568, 'eg', 'Product Videos', 'فيديو المنتج', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2569, 'eg', 'Video Provider', 'مزود الفيديو', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2570, 'eg', 'Youtube', 'موقع YouTube', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2571, 'eg', 'Dailymotion', 'ديلي موشن', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2572, 'eg', 'Vimeo', 'فيميو', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2573, 'eg', 'Video Link', 'رابط الفيديو', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2574, 'eg', 'Product Variation', 'المقاسات والالوان', '2021-05-26 20:56:29', '2021-06-27 19:52:03'),
(2575, 'eg', 'Colors', 'الألوان', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2576, 'eg', 'Attributes', 'خصائص', '2021-05-26 20:56:29', '2021-06-30 16:01:53'),
(2577, 'eg', 'Choose Attributes', 'اختر خصائص', '2021-05-26 20:56:29', '2021-06-30 16:01:53'),
(2578, 'eg', 'Choose the attributes of this product and then input values of each attribute', 'اختر خصائص هذا المنتج', '2021-05-26 20:56:29', '2021-06-30 16:01:53'),
(2579, 'eg', 'Product price + stock', 'سعر المنتج + المخزون', '2021-05-26 20:56:29', '2021-06-27 19:52:03'),
(2580, 'eg', 'Unit price', 'سعر الوحده', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2581, 'eg', 'Purchase price', 'سعر الشراء', '2021-05-26 20:56:29', '2021-06-19 20:55:18'),
(2582, 'en', 'Page has been updated successfully', 'Page has been updated successfully', '2021-05-29 19:54:43', '2021-05-29 19:54:43'),
(2583, 'en', 'Sorry, we could not verifiy you. Please try again', 'Sorry, we could not verifiy you. Please try again', '2021-06-13 15:46:54', '2021-06-13 15:46:54'),
(2584, 'en', 'No Status', 'No Status', '2021-06-13 15:53:43', '2021-06-13 15:53:43'),
(2585, 'en', 'Customer has been deleted successfully', 'Customer has been deleted successfully', '2021-06-13 16:19:29', '2021-06-13 16:19:29'),
(2586, 'en', 'Brand has been deleted successfully', 'Brand has been deleted successfully', '2021-06-14 16:03:04', '2021-06-14 16:03:04'),
(2587, 'en', 'Brand has been inserted successfully', 'Brand has been inserted successfully', '2021-06-15 18:05:07', '2021-06-15 18:05:07'),
(2588, 'en', 'Password updated successfully', 'Password updated successfully', '2021-06-17 14:38:50', '2021-06-17 14:38:50'),
(2589, 'eg', 'Default Language', 'اللغة الافتراضية', '2021-06-19 20:47:02', '2021-06-19 20:56:31'),
(2590, 'eg', 'Save', 'حفظ', '2021-06-19 20:47:02', '2021-06-30 19:47:03'),
(2591, 'eg', 'Add New Language', 'أضف لغة جديدة', '2021-06-19 20:47:02', '2021-06-19 20:56:31'),
(2592, 'eg', 'Language', 'لغة', '2021-06-19 20:47:02', '2021-06-19 20:56:31'),
(2593, 'eg', 'Code', 'كود', '2021-06-19 20:47:02', '2021-06-27 20:11:07'),
(2594, 'eg', 'RTL', 'RTL', '2021-06-19 20:47:02', '2021-06-19 20:47:02'),
(2595, 'eg', 'Translation', 'ترجمة', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2596, 'eg', 'Delete', 'حذف', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2597, 'eg', 'Delete Confirmation', 'تأكيد الحذف', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2598, 'eg', 'Are you sure to delete this?', 'هل أنت متأكد من حذف هذا؟', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2599, 'eg', 'Cancel', 'يلغي', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2600, 'eg', 'Search in menu', 'البحث في القائمة', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2601, 'eg', 'Dashboard', 'الصفحة الرئيسية', '2021-06-19 20:47:03', '2021-06-21 11:18:31'),
(2602, 'eg', 'Products', 'منتجات', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2603, 'eg', 'All Products', 'جميع المنتجات', '2021-06-19 20:47:03', '2021-06-19 20:56:31'),
(2604, 'eg', 'Bulk Export', 'Bulk Export', '2021-06-19 20:47:03', '2021-07-03 16:06:10'),
(2605, 'eg', 'Category', 'الفئات الرئسيه', '2021-06-19 20:47:03', '2021-07-03 16:07:54'),
(2606, 'eg', 'Sub Category', 'الفئات الفرعيه', '2021-06-19 20:47:03', '2021-07-03 16:08:44'),
(2607, 'eg', 'Sub Sub Category', 'الفئات تحت الفرعية', '2021-06-19 20:47:03', '2021-07-03 16:08:44'),
(2608, 'eg', 'Brand', 'العلامات التجاريه', '2021-06-19 20:47:03', '2021-07-03 16:15:09'),
(2609, 'eg', 'Attribute', 'خصائص', '2021-06-19 20:47:03', '2021-06-30 16:01:53'),
(2610, 'eg', 'Tracking Orders', 'تتبع الطلبات', '2021-06-19 20:47:03', '2021-06-21 11:08:05'),
(2611, 'eg', 'Shipping Orders', 'أوامر الشحن', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2612, 'eg', 'Refunds', 'المرتجعات', '2021-06-19 20:47:03', '2021-06-30 18:48:33'),
(2613, 'eg', 'Refund Requests', 'طلبات المرتجعات', '2021-06-19 20:47:03', '2021-07-03 17:23:06'),
(2614, 'eg', 'Approved Refund', 'إعادة الأموال المعتمدة', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2615, 'eg', 'Refund Configuration', 'تكوين استرداد', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2616, 'eg', 'Customers', 'عملاء', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2617, 'eg', 'Customer list', 'قائمة العملاء', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2618, 'eg', 'Sellers', 'التجار', '2021-06-19 20:47:03', '2021-07-03 16:57:16'),
(2619, 'eg', 'All Seller', 'كل التجار', '2021-06-19 20:47:03', '2021-07-03 16:57:16'),
(2620, 'eg', 'Payouts', 'المدفوعات', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2621, 'eg', 'Payout Requests', 'طلبات الدفع', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2622, 'eg', 'seller Account Statment', 'كشف حساب التجار', '2021-06-19 20:47:03', '2021-07-03 16:57:16'),
(2623, 'eg', 'Reports', 'التقارير', '2021-06-19 20:47:03', '2021-06-19 20:56:32'),
(2624, 'eg', 'Seller Products Sale', 'بيع منتجات التجار', '2021-06-19 20:47:03', '2021-07-03 16:57:16'),
(2625, 'eg', 'Products Stock', 'مخزون المنتجات', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2626, 'eg', 'Products wishlist', 'قائمة المنتجات المفضلة', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2627, 'eg', 'User Searches', 'عمليات بحث المستخدم', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2628, 'eg', 'Marketing', 'تسويق', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2629, 'eg', 'Flash deals', 'صفقات فلاش', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2630, 'eg', 'Newsletters', 'النشرات الإخبارية', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2631, 'eg', 'Subscribers', 'مشتركين', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2632, 'eg', 'Coupon', 'قسيمة', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2633, 'eg', 'Support', 'الدعم', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2634, 'eg', 'Ticket', 'تذكرة', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2635, 'eg', 'Product Queries', 'استفسارات المنتج', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2636, 'eg', 'Website Setup', 'إعداد موقع الويب', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2637, 'eg', 'Header', 'رأس', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2638, 'eg', 'Footer', 'تذييل', '2021-06-19 20:47:04', '2021-06-19 20:56:32'),
(2639, 'eg', 'Pages', 'الصفحات', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2640, 'eg', 'Appearance', 'مظهر', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2641, 'eg', 'Setup & Configurations', 'الإعداد والتكوينات', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2642, 'eg', 'General Settings', 'الاعدادات العامة', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2643, 'eg', 'Features activation', 'تفعيل الميزات', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2644, 'eg', 'Languages', 'اللغات', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2645, 'eg', 'Currency', 'عملة', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2646, 'eg', 'Pickup point', 'نقطة الالتقاط', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2647, 'eg', 'SMTP Settings', 'إعدادات SMTP', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2648, 'eg', 'Payment Methods', 'طرق الدفع', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2649, 'eg', 'File System Configuration', 'تكوين نظام الملفات', '2021-06-19 20:47:04', '2021-06-19 20:57:13'),
(2650, 'eg', 'Social media Logins', 'عمليات تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2651, 'eg', 'Analytics Tools', 'أدوات التحليلات', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2652, 'eg', 'Facebook Chat', 'دردشة الفيسبوك', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2653, 'eg', 'Google reCAPTCHA', 'جوجل reCAPTCHA', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2654, 'eg', 'Shipping Configuration', 'تكوين الشحن', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2655, 'eg', 'Shipping Countries', 'دول الشحن', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2656, 'eg', 'Shipping Cities', 'مدن الشحن', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2657, 'eg', 'Staffs', 'طاقم العمل', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2658, 'eg', 'All staffs', 'كل فريق العمل', '2021-06-19 20:47:04', '2021-06-19 20:57:14'),
(2659, 'eg', 'Staff permissions', 'أذونات الموظفين', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2660, 'eg', 'System', 'نظام', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2661, 'eg', 'Update', 'تحديث', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2662, 'eg', 'Server status', 'حالة الملقم', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2663, 'eg', 'Addon Manager', 'مدير الملحق', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2664, 'eg', 'Browse Website', 'تصفح الموقع', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2665, 'eg', 'Notifications', 'إشعارات', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2666, 'eg', 'Alert quantities', 'كميات التنبيه', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2667, 'eg', 'Profile', 'الملف الشخصي', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2668, 'eg', 'Logout', 'تسجيل خروج', '2021-06-19 20:47:05', '2021-06-19 20:57:14'),
(2669, 'eg', 'Nothing Found', 'لا يوجد', '2021-06-19 20:47:05', '2021-06-27 20:19:13'),
(2670, 'eg', 'Page Not Found!', 'الصفحة غير موجودة!', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2671, 'eg', 'The page you are looking for has not been found on our server.', 'لم يتم العثور على الصفحة التي تبحث عنها على خادمنا.', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2672, 'eg', 'I am shopping for...', 'ابحث', '2021-06-19 20:47:06', '2021-06-30 18:59:33'),
(2673, 'eg', 'Compare', 'قارن', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2674, 'eg', 'Wishlist', 'المفضلة', '2021-06-19 20:47:06', '2021-06-21 09:48:48'),
(2675, 'eg', 'Cart', 'عربة التسوق', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2676, 'eg', 'Your Cart is empty', 'عربة التسوق فارغة', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2677, 'eg', 'Login', 'تسجيل الدخول', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2678, 'eg', 'Registration', 'تسجيل', '2021-06-19 20:47:06', '2021-06-19 20:57:14'),
(2679, 'eg', 'Categories', 'فئات', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2680, 'eg', 'See All', 'اظهار الكل', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2681, 'eg', 'Return Policy', 'سياسة العائدات', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2682, 'eg', 'Support Policy', 'سياسة الدعم', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2683, 'eg', 'Privacy Policy', 'سياسة الخصوصية', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2684, 'eg', 'Your Email Address', 'عنوان بريدك الإلكتروني', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2685, 'eg', 'Subscribe', 'الإشتراك', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2686, 'eg', 'Contact Info', 'معلومات الاتصال', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2687, 'eg', 'Address', 'عنوان', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2688, 'eg', 'Phone', 'هاتف', '2021-06-19 20:47:07', '2021-06-19 20:57:14'),
(2689, 'eg', 'Email', 'بريد إلكتروني', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2690, 'eg', 'My Account', 'حسابي', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2691, 'eg', 'Order History', 'الطلبات السابقة', '2021-06-19 20:47:07', '2021-06-21 11:17:20'),
(2692, 'eg', 'My Wishlist', 'المفضلة', '2021-06-19 20:47:07', '2021-06-21 09:48:48'),
(2693, 'eg', 'Track Order', 'تتبع الطلب', '2021-06-19 20:47:07', '2021-06-21 11:08:05'),
(2694, 'eg', 'Be a Seller', 'بيع علي أرخص', '2021-06-19 20:47:07', '2021-07-03 16:57:16'),
(2695, 'eg', 'Apply Now', 'قدم الآن', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2696, 'eg', 'Confirmation', 'تأكيد', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2697, 'eg', 'Delete confirmation message', 'حذف رسالة التأكيد', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2698, 'eg', 'Item has been added to compare list', 'تمت إضافة العنصر إلى قائمة المقارنة', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2699, 'eg', 'Please login first', 'الرجاء تسجيل الدخول أولا', '2021-06-19 20:47:07', '2021-06-19 20:57:45'),
(2700, 'eg', 'Store Home', 'المخزون لدينا', '2021-06-19 20:47:13', '2021-06-21 10:25:03'),
(2701, 'eg', 'Top Selling', 'الأكثر مبيعا', '2021-06-19 20:47:13', '2021-06-19 20:57:46'),
(2702, 'eg', 'New Arrival Products', 'منتجات وصول جديدة', '2021-06-19 20:47:13', '2021-06-19 20:57:46'),
(2703, 'eg', 'Type key & Enter', 'اكتب مفتاح وأدخل', '2021-06-19 20:47:45', '2021-06-19 20:57:46'),
(2704, 'eg', 'Key', 'مفتاح', '2021-06-19 20:47:45', '2021-06-19 20:57:46'),
(2705, 'eg', 'Value', 'قيمة', '2021-06-19 20:47:45', '2021-06-19 20:57:46'),
(2706, 'eg', 'Copy Translations', 'نسخ الترجمات', '2021-06-19 20:47:46', '2021-06-19 20:57:46'),
(2707, 'eg', 'Translations updated for ', 'تم تحديث الترجمات لـ', '2021-06-19 20:52:09', '2021-06-19 20:57:46'),
(2708, 'eg', 'In stock', 'In stock', '2021-06-20 06:06:40', '2021-06-20 06:06:40'),
(2709, 'eg', 'Buy Now', 'اشتري الان', '2021-06-20 06:06:41', '2021-06-30 18:55:48'),
(2710, 'eg', 'Password', 'Password', '2021-06-20 06:06:42', '2021-06-20 06:06:42'),
(2711, 'eg', 'Forgot password?', 'Forgot password?', '2021-06-20 06:06:42', '2021-06-20 06:06:42'),
(2712, 'eg', 'Welcome to', 'Welcome to', '2021-06-20 06:14:05', '2021-06-20 06:14:05'),
(2713, 'eg', 'Forgot password', 'Forgot password', '2021-06-20 06:14:05', '2021-06-20 06:14:05'),
(2714, 'eg', 'Total', 'الاجمالي', '2021-06-20 06:14:39', '2021-06-30 19:10:18'),
(2715, 'eg', 'Customer', 'اسم العميل', '2021-06-20 06:14:39', '2021-06-28 15:57:53'),
(2716, 'eg', 'Order', 'الطلب', '2021-06-20 06:14:39', '2021-06-21 11:17:20'),
(2717, 'eg', 'Product category', 'Product category', '2021-06-20 06:14:39', '2021-06-20 06:14:39'),
(2718, 'eg', 'Product brand', 'Product brand', '2021-06-20 06:14:39', '2021-06-20 06:14:39'),
(2719, 'eg', 'Category wise product sale', 'Category wise product sale', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2720, 'eg', 'Category wise product stock', 'Category wise product stock', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2721, 'eg', 'Top 12 Products', 'Top 12 Products', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2722, 'eg', 'Total published products', 'Total published products', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2723, 'eg', 'Total sellers products', 'Total sellers products', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2724, 'eg', 'Total admin products', 'Total admin products', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2725, 'eg', 'Total sellers', 'Total sellers', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2726, 'eg', 'Total approved sellers', 'Total approved sellers', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2727, 'eg', 'Total pending sellers', 'Total pending sellers', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2728, 'eg', 'Number of sale', 'Number of sale', '2021-06-20 06:14:40', '2021-06-20 06:14:40'),
(2729, 'eg', 'Number of Stock', 'Number of Stock', '2021-06-20 06:14:41', '2021-06-20 06:14:41'),
(2730, 'eg', 'Website Footer', 'Website Footer', '2021-06-20 06:14:55', '2021-06-20 06:14:55'),
(2731, 'eg', 'Footer Widget', 'Footer Widget', '2021-06-20 06:14:55', '2021-06-20 06:14:55'),
(2732, 'eg', 'About Widget', 'About Widget', '2021-06-20 06:14:55', '2021-06-20 06:14:55'),
(2733, 'eg', 'Footer Logo', 'Footer Logo', '2021-06-20 06:14:55', '2021-06-20 06:14:55'),
(2734, 'eg', 'Browse', 'Browse', '2021-06-20 06:14:55', '2021-06-20 06:14:55'),
(2735, 'eg', 'Choose File', 'Choose File', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2736, 'eg', 'About description', 'About description', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2737, 'eg', 'Contact Info Widget', 'Contact Info Widget', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2738, 'eg', 'Contact address', 'Contact address', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2739, 'eg', 'Contact phone', 'Contact phone', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2740, 'eg', 'Contact email', 'Contact email', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2741, 'eg', 'Link Widget One', 'Link Widget One', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2742, 'eg', 'Title', 'Title', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2743, 'eg', 'Links', 'Links', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2744, 'eg', 'Add New', 'Add New', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2745, 'eg', 'Footer Bottom', 'Footer Bottom', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2746, 'eg', 'Copyright Widget ', 'Copyright Widget ', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2747, 'eg', 'Copyright Text', 'Copyright Text', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2748, 'eg', 'Social Link Widget ', 'Social Link Widget ', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2749, 'eg', 'Show Social Links?', 'Show Social Links?', '2021-06-20 06:14:56', '2021-06-20 06:14:56'),
(2750, 'eg', 'Social Links', 'Social Links', '2021-06-20 06:14:56', '2021-06-20 06:14:56');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(2751, 'eg', 'Payment Methods Widget ', 'Payment Methods Widget', '2021-06-20 06:14:56', '2021-06-27 20:16:06'),
(2752, 'eg', 'Settings updated successfully', 'Settings updated successfully', '2021-06-20 06:16:02', '2021-06-20 06:16:02'),
(2753, 'eg', 'Select File', 'Select File', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2754, 'eg', 'Upload New', 'Upload New', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2755, 'eg', 'Sort by newest', 'Sort by newest', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2756, 'eg', 'Sort by oldest', 'Sort by oldest', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2757, 'eg', 'Sort by smallest', 'Sort by smallest', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2758, 'eg', 'Sort by largest', 'Sort by largest', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2759, 'eg', 'Selected Only', 'Selected Only', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2760, 'eg', 'Search your files', 'Search your files', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2761, 'eg', 'No files found', 'No files found', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2762, 'eg', '0 File selected', '0 File selected', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2763, 'eg', 'Clear', 'Clear', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2764, 'eg', 'Prev', 'Prev', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2765, 'eg', 'Next', 'Next', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2766, 'eg', 'Add Files', 'Add Files', '2021-06-20 06:27:01', '2021-06-20 06:27:01'),
(2767, 'eg', 'All sub categories', 'All sub categories', '2021-06-20 06:36:19', '2021-06-20 06:36:19'),
(2768, 'eg', 'Add New Sub Category', 'اضافه فئه فرعيه جديد', '2021-06-20 06:36:19', '2021-06-27 20:10:23'),
(2769, 'eg', 'Sub Categories', 'Sub Categories', '2021-06-20 06:36:19', '2021-06-20 06:36:19'),
(2770, 'eg', 'Type name & Enter', 'Type name & Enter', '2021-06-20 06:36:19', '2021-06-20 06:36:19'),
(2771, 'eg', 'Parent Category', 'Parent Category', '2021-06-20 06:36:19', '2021-06-20 06:36:19'),
(2772, 'eg', 'Published categories updated successfully', 'Published categories updated successfully', '2021-06-20 06:36:20', '2021-06-20 06:36:20'),
(2773, 'eg', 'Sub Sub Category Information', 'Sub Sub Category Information', '2021-06-20 06:36:45', '2021-06-20 06:36:45'),
(2774, 'eg', 'Translatable', 'Translatable', '2021-06-20 06:36:45', '2021-06-20 06:36:45'),
(2775, 'eg', 'Select Sub Category', 'Select Sub Category', '2021-06-20 06:36:45', '2021-06-20 06:36:45'),
(2776, 'eg', 'Sub Category Information', 'Sub Category Information', '2021-06-20 06:41:00', '2021-06-20 06:41:00'),
(2777, 'eg', 'Slug', 'Slug', '2021-06-20 06:41:00', '2021-06-20 06:41:00'),
(2778, 'eg', 'All categories', 'جميع الفئات', '2021-06-20 06:42:03', '2021-07-03 15:13:58'),
(2779, 'eg', 'Add New category', 'اضافه فئه جديده', '2021-06-20 06:42:03', '2021-06-27 20:10:23'),
(2780, 'eg', 'Banner', 'Banner', '2021-06-20 06:42:03', '2021-06-20 06:42:03'),
(2781, 'eg', 'Icon', 'Icon', '2021-06-20 06:42:03', '2021-06-20 06:42:03'),
(2782, 'eg', 'Featured categories updated successfully', 'Featured categories updated successfully', '2021-06-20 06:42:04', '2021-06-20 06:42:04'),
(2783, 'eg', 'Category Information', 'Category Information', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2784, 'eg', '200x200', '200x200', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2785, 'eg', '32x32', '32x32', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2786, 'eg', 'Meta Title', 'Meta Title', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2787, 'eg', 'Meta Description', 'Meta Description', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2788, 'eg', 'Commission Rate', 'Commission Rate', '2021-06-20 06:46:25', '2021-06-20 06:46:25'),
(2789, 'eg', 'Category has been inserted successfully', 'Category has been inserted successfully', '2021-06-20 06:47:16', '2021-06-20 06:47:16'),
(2790, 'eg', 'Select Category', 'Select Category', '2021-06-20 06:47:35', '2021-06-20 06:47:35'),
(2791, 'eg', 'Add New Seller', 'اضافه تاجر جديد', '2021-06-20 07:09:06', '2021-06-30 15:56:07'),
(2792, 'eg', 'Filter by Approval', 'البحث بالموافقه', '2021-06-20 07:09:06', '2021-06-28 16:01:57'),
(2793, 'eg', 'Approved', 'Approved', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2794, 'eg', 'Non-Approved', 'Non-Approved', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2795, 'eg', 'Type name or email & Enter', 'Type name or email & Enter', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2796, 'eg', 'Seller ID', 'Seller ID', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2797, 'eg', 'Seller Type', 'فردي/شركات', '2021-06-20 07:09:06', '2021-07-03 17:50:22'),
(2798, 'eg', 'Email Address', 'البريد الالكتروني', '2021-06-20 07:09:06', '2021-07-03 17:41:51'),
(2799, 'eg', 'Verification Info', 'بيانات التاجر', '2021-06-20 07:09:06', '2021-07-03 17:51:38'),
(2800, 'eg', 'Approval', 'المواقفه', '2021-06-20 07:09:06', '2021-06-28 16:55:47'),
(2801, 'eg', 'Num. of Products', 'عدد المنتجات', '2021-06-20 07:09:06', '2021-07-03 17:52:47'),
(2802, 'eg', 'Due to seller', 'Due to seller', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2803, 'eg', 'Company', 'Company', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2804, 'eg', 'Show', 'Show', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2805, 'eg', 'Actions', 'خيارات', '2021-06-20 07:09:06', '2021-07-03 17:53:45'),
(2806, 'eg', 'Log in as this Seller', 'Log in as this Seller', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2807, 'eg', 'Go to Payment', 'الدفع', '2021-06-20 07:09:06', '2021-06-27 20:16:06'),
(2808, 'eg', 'Ban this seller', 'حظر التاجر', '2021-06-20 07:09:06', '2021-07-03 17:54:42'),
(2809, 'eg', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2810, 'eg', 'Proceed!', 'Proceed!', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2811, 'eg', 'Do you really want to un ban this seller?', 'Do you really want to un ban this seller?', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2812, 'eg', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-06-20 07:09:06', '2021-06-20 07:09:06'),
(2813, 'eg', 'Received Refund Request', 'طلبات المرتجعات', '2021-06-20 07:09:17', '2021-07-03 17:23:06'),
(2814, 'eg', 'Product Reviews', 'تقيمات المنتجات', '2021-06-20 07:09:17', '2021-06-27 20:03:07'),
(2815, 'eg', 'Account statement', 'كشف الحساب', '2021-06-20 07:09:18', '2021-06-27 20:04:12'),
(2816, 'eg', 'Product Alert Quantaty', 'تنبيهات الحد الادني للمنتج', '2021-06-20 07:09:18', '2021-06-27 20:07:16'),
(2817, 'eg', 'Add New Product', 'اضافه منتج جديد', '2021-06-20 07:09:19', '2021-06-27 20:10:23'),
(2818, 'eg', 'Configure Now', 'ضبط الاعدات', '2021-06-20 07:09:19', '2021-06-27 20:08:49'),
(2819, 'eg', 'Admin Approval', 'مقبوله', '2021-06-20 07:09:29', '2021-06-28 15:15:29'),
(2820, 'eg', 'Add Your Product', 'Add Your Product', '2021-06-20 07:09:35', '2021-06-20 07:09:35'),
(2821, 'eg', 'Select Sub Sub Category', 'Select Sub Sub Category', '2021-06-20 07:09:36', '2021-06-20 07:09:36'),
(2822, 'eg', 'Discount', 'الخصم', '2021-06-20 07:09:36', '2021-06-28 15:22:05'),
(2823, 'eg', 'Select Date', 'حدد التاريخ', '2021-06-20 07:09:36', '2021-06-30 18:45:57'),
(2824, 'eg', 'Flat', 'Flat', '2021-06-20 07:09:36', '2021-06-20 07:09:36'),
(2825, 'eg', 'Percent', 'Percent', '2021-06-20 07:09:36', '2021-06-20 07:09:36'),
(2826, 'eg', 'Alert Quantity', 'الحد الادنى للمخزون', '2021-06-20 07:09:36', '2021-06-28 15:18:27'),
(2827, 'eg', 'Product Description', 'وصف المنتج', '2021-06-20 07:09:36', '2021-06-28 15:19:26'),
(2828, 'eg', 'Length', 'Length', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2829, 'eg', 'Width', 'Width', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2830, 'eg', 'Height', 'Height', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2831, 'eg', 'Weight', 'Weight', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2832, 'eg', 'Model Number', 'Model Number', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2833, 'eg', 'Warranty Certificate', 'Warranty Certificate', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2834, 'eg', 'YES', 'YES', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2835, 'eg', 'NO', 'NO', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2836, 'eg', 'SEO Meta Tags', 'SEO Meta Tags', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2837, 'eg', 'Meta Image', 'Meta Image', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2838, 'eg', 'Save Product', 'حفظ', '2021-06-20 07:09:37', '2021-06-30 19:47:36'),
(2839, 'eg', 'Choice Title', 'Choice Title', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2840, 'eg', 'Enter choice values', 'Enter choice values', '2021-06-20 07:09:37', '2021-06-20 07:09:37'),
(2841, 'eg', 'Product has been inserted successfully', 'Product has been inserted successfully', '2021-06-20 07:10:51', '2021-06-20 07:10:51'),
(2842, 'eg', 'Category has been updated successfully', 'Category has been updated successfully', '2021-06-20 07:14:53', '2021-06-20 07:14:53'),
(2843, 'eg', 'Type', 'Type', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2844, 'eg', 'Sendmail', 'Sendmail', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2845, 'eg', 'SMTP', 'SMTP', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2846, 'eg', 'Mailgun', 'Mailgun', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2847, 'eg', 'MAIL HOST', 'MAIL HOST', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2848, 'eg', 'MAIL PORT', 'MAIL PORT', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2849, 'eg', 'MAIL USERNAME', 'MAIL USERNAME', '2021-06-21 01:07:40', '2021-06-21 01:07:40'),
(2850, 'eg', 'MAIL PASSWORD', 'MAIL PASSWORD', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2851, 'eg', 'MAIL ENCRYPTION', 'MAIL ENCRYPTION', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2852, 'eg', 'MAIL FROM ADDRESS', 'MAIL FROM ADDRESS', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2853, 'eg', 'MAIL FROM NAME', 'MAIL FROM NAME', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2854, 'eg', 'MAILGUN DOMAIN', 'MAILGUN DOMAIN', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2855, 'eg', 'MAILGUN SECRET', 'MAILGUN SECRET', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2856, 'eg', 'Save Configuration', 'حفظ', '2021-06-21 01:07:41', '2021-06-30 19:47:36'),
(2857, 'eg', 'Test SMTP configuration', 'Test SMTP configuration', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2858, 'eg', 'Enter your email address', 'ادخل عنوان بريدك الالكتروني', '2021-06-21 01:07:41', '2021-06-30 15:51:10'),
(2859, 'eg', 'Send test email', 'Send test email', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2860, 'eg', 'Instruction', 'Instruction', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2861, 'eg', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2862, 'eg', 'For Non-SSL', 'For Non-SSL', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2863, 'eg', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2864, 'eg', 'Set Mail Host according to your server Mail Client Manual Settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2865, 'eg', 'Set Mail port as 587', 'Set Mail port as 587', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2866, 'eg', 'Set Mail Encryption as ssl if you face issue with tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2867, 'eg', 'For SSL', 'For SSL', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2868, 'eg', 'Set Mail port as 465', 'Set Mail port as 465', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2869, 'eg', 'Set Mail Encryption as ssl', 'Set Mail Encryption as ssl', '2021-06-21 01:07:41', '2021-06-21 01:07:41'),
(2870, 'eg', 'Products updated successfully', 'Products updated successfully', '2021-06-21 01:08:51', '2021-06-21 01:08:51'),
(2871, 'eg', 'System Name', 'System Name', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2872, 'eg', 'System Logo - White', 'System Logo - White', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2873, 'eg', 'Choose Files', 'Choose Files', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2874, 'eg', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2875, 'eg', 'System Logo - Black', 'System Logo - Black', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2876, 'eg', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2877, 'eg', 'System Timezone', 'System Timezone', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2878, 'eg', 'Admin login page background', 'Admin login page background', '2021-06-21 01:11:22', '2021-06-21 01:11:22'),
(2879, 'eg', 'HTTPS Activation', 'HTTPS Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2880, 'eg', 'Maintenance Mode', 'Maintenance Mode', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2881, 'eg', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2882, 'eg', 'Classified Product Activate', 'Classified Product Activate', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2883, 'eg', 'Classified Product', 'Classified Product', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2884, 'eg', 'Business Related', 'Business Related', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2885, 'eg', 'Vendor System Activation', 'Vendor System Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2886, 'eg', 'Wallet System Activation', 'Wallet System Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2887, 'eg', 'Coupon System Activation', 'Coupon System Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2888, 'eg', 'Pickup Point Activation', 'Pickup Point Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2889, 'eg', 'Conversation Activation', 'Conversation Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2890, 'eg', 'Guest Checkout Activation', 'Guest Checkout Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2891, 'eg', 'Category-based Commission', 'Category-based Commission', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2892, 'eg', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2893, 'eg', 'Set Commisssion Now', 'Set Commisssion Now', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2894, 'eg', 'Email Verification', 'Email Verification', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2895, 'eg', 'Payment Related', 'Payment Related', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2896, 'eg', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2897, 'eg', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2898, 'eg', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2899, 'eg', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2900, 'eg', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2901, 'eg', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2902, 'eg', 'Razor Pay Activation', 'Razor Pay Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2903, 'eg', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2904, 'eg', 'PayStack Activation', 'PayStack Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2905, 'eg', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2906, 'eg', 'VoguePay Activation', 'VoguePay Activation', '2021-06-21 01:11:35', '2021-06-21 01:11:35'),
(2907, 'eg', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2908, 'eg', 'Payhere Activation', 'Payhere Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2909, 'eg', 'Ngenius Activation', 'Ngenius Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2910, 'eg', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2911, 'eg', 'Iyzico Activation', 'Iyzico Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2912, 'eg', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2913, 'eg', 'Bkash Activation', 'Bkash Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2914, 'eg', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2915, 'eg', 'Nagad Activation', 'Nagad Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2916, 'eg', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2917, 'eg', 'Cash Payment Activation', 'Cash Payment Activation', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2918, 'eg', 'Social Media Login', 'Social Media Login', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2919, 'eg', 'Facebook login', 'Facebook login', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2920, 'eg', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2921, 'eg', 'Google login', 'Google login', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2922, 'eg', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2923, 'eg', 'Twitter login', 'Twitter login', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2924, 'eg', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-06-21 01:11:36', '2021-06-21 01:11:36'),
(2925, 'eg', 'Google Login Credential', 'Google Login Credential', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2926, 'eg', 'Client ID', 'Client ID', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2927, 'eg', 'Google Client ID', 'Google Client ID', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2928, 'eg', 'Client Secret', 'Client Secret', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2929, 'eg', 'Google Client Secret', 'Google Client Secret', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2930, 'eg', 'Facebook Login Credential', 'Facebook Login Credential', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2931, 'eg', 'App ID', 'App ID', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2932, 'eg', 'Facebook Client ID', 'Facebook Client ID', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2933, 'eg', 'App Secret', 'App Secret', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2934, 'eg', 'Facebook Client Secret', 'Facebook Client Secret', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2935, 'eg', 'Twitter Login Credential', 'Twitter Login Credential', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2936, 'eg', 'Twitter Client ID', 'Twitter Client ID', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2937, 'eg', 'Twitter Client Secret', 'Twitter Client Secret', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(2938, 'eg', 'Select Shipping Method', 'حدد وسيلة الشحن', '2021-06-21 01:12:56', '2021-06-30 20:06:37'),
(2939, 'eg', 'Product Wise Shipping Cost', 'Product Wise Shipping Cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2940, 'eg', 'Flat Rate Shipping Cost', 'Flat Rate Shipping Cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2941, 'eg', 'Seller Wise Flat Shipping Cost', 'Seller Wise Flat Shipping Cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2942, 'eg', 'Area Wise Flat Shipping Cost', 'Area Wise Flat Shipping Cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2943, 'eg', 'Note', 'Note', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2944, 'eg', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2945, 'eg', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2946, 'eg', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2947, 'eg', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to', '2021-06-21 01:12:56', '2021-06-27 20:08:49'),
(2948, 'eg', 'Flat Rate Cost', 'Flat Rate Cost', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2949, 'eg', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2950, 'eg', 'Shipping Cost for Admin Products', 'Shipping Cost for Admin Products', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2951, 'eg', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-06-21 01:12:56', '2021-06-21 01:12:56'),
(2952, 'eg', 'Paypal Credential', 'Paypal Credential', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2953, 'eg', 'Paypal Client Id', 'Paypal Client Id', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2954, 'eg', 'Paypal Client Secret', 'Paypal Client Secret', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2955, 'eg', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2956, 'eg', 'Stripe Credential', 'Stripe Credential', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2957, 'eg', 'Stripe Key', 'Stripe Key', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2958, 'eg', 'Stripe Secret', 'Stripe Secret', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2959, 'eg', 'Bkash Credential', 'Bkash Credential', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2960, 'eg', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2961, 'eg', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2962, 'eg', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2963, 'eg', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2964, 'eg', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2965, 'eg', 'Nagad Credential', 'Nagad Credential', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2966, 'eg', 'NAGAD MODE', 'NAGAD MODE', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2967, 'eg', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2968, 'eg', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2969, 'eg', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2970, 'eg', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2971, 'eg', 'Sslcommerz Credential', 'Sslcommerz Credential', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2972, 'eg', 'Sslcz Store Id', 'Sslcz Store Id', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2973, 'eg', 'Sslcz store password', 'Sslcz store password', '2021-06-21 01:13:14', '2021-06-21 01:13:14'),
(2974, 'eg', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2975, 'eg', 'RazorPay Credential', 'RazorPay Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2976, 'eg', 'RAZOR KEY', 'RAZOR KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2977, 'eg', 'RAZOR SECRET', 'RAZOR SECRET', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2978, 'eg', 'Instamojo Credential', 'Instamojo Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2979, 'eg', 'API KEY', 'API KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2980, 'eg', 'IM API KEY', 'IM API KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2981, 'eg', 'AUTH TOKEN', 'AUTH TOKEN', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2982, 'eg', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2983, 'eg', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2984, 'eg', 'PayStack Credential', 'PayStack Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2985, 'eg', 'PUBLIC KEY', 'PUBLIC KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2986, 'eg', 'SECRET KEY', 'SECRET KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2987, 'eg', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2988, 'eg', 'Payhere Credential', 'Payhere Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2989, 'eg', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2990, 'eg', 'PAYHERE SECRET', 'PAYHERE SECRET', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2991, 'eg', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2992, 'eg', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2993, 'eg', 'Ngenius Credential', 'Ngenius Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2994, 'eg', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2995, 'eg', 'NGENIUS API KEY', 'NGENIUS API KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2996, 'eg', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2997, 'eg', 'VoguePay Credential', 'VoguePay Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2998, 'eg', 'MERCHANT ID', 'MERCHANT ID', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(2999, 'eg', 'Sandbox Mode', 'Sandbox Mode', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3000, 'eg', 'Iyzico Credential', 'Iyzico Credential', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3001, 'eg', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3002, 'eg', 'IYZICO API KEY', 'IYZICO API KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3003, 'eg', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3004, 'eg', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3005, 'eg', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-06-21 01:13:15', '2021-06-21 01:13:15'),
(3006, 'eg', 'S3 File System Credentials', 'S3 File System Credentials', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3007, 'eg', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3008, 'eg', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3009, 'eg', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3010, 'eg', 'AWS_BUCKET', 'AWS_BUCKET', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3011, 'eg', 'AWS_URL', 'AWS_URL', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3012, 'eg', 'S3 File System Activation', 'S3 File System Activation', '2021-06-21 01:13:38', '2021-06-21 01:13:38'),
(3013, 'eg', 'System Default Currency', 'System Default Currency', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3014, 'eg', 'Set Currency Formats', 'Set Currency Formats', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3015, 'eg', 'Symbol Format', 'Symbol Format', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3016, 'eg', 'Decimal Separator', 'Decimal Separator', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3017, 'eg', 'No of decimals', 'No of decimals', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3018, 'eg', 'All Currencies', 'All Currencies', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3019, 'eg', 'Add New Currency', 'Add New Currency', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3020, 'eg', 'Currency name', 'Currency name', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3021, 'eg', 'Currency symbol', 'Currency symbol', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3022, 'eg', 'Currency code', 'Currency code', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3023, 'eg', 'Currency Status updated successfully', 'Currency Status updated successfully', '2021-06-21 01:13:53', '2021-06-21 01:13:53'),
(3024, 'eg', 'All Pick-up Points', 'All Pick-up Points', '2021-06-21 01:14:11', '2021-06-21 01:14:11'),
(3025, 'eg', 'Add New Pick-up Point', 'Add New Pick-up Point', '2021-06-21 01:14:11', '2021-06-21 01:14:11'),
(3026, 'eg', 'Manager', 'Manager', '2021-06-21 01:14:11', '2021-06-21 01:14:11'),
(3027, 'eg', 'Location', 'Location', '2021-06-21 01:14:12', '2021-06-21 01:14:12'),
(3028, 'eg', 'Pickup Station Contact', 'Pickup Station Contact', '2021-06-21 01:14:12', '2021-06-21 01:14:12'),
(3029, 'eg', 'General', 'General', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3030, 'eg', 'Frontend Website Name', 'Frontend Website Name', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3031, 'eg', 'Website Name', 'Website Name', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3032, 'eg', 'Site Motto', 'Site Motto', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3033, 'eg', 'Best eCommerce Website', 'Best eCommerce Website', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3034, 'eg', 'Site Icon', 'Site Icon', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3035, 'eg', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3036, 'eg', 'Website Base Color', 'Website Base Color', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3037, 'eg', 'Hex Color Code', 'Hex Color Code', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3038, 'eg', 'Website Base Hover Color', 'Website Base Hover Color', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3039, 'eg', 'Global SEO', 'Global SEO', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3040, 'eg', 'Keywords', 'Keywords', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3041, 'eg', 'Separate with coma', 'Separate with coma', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3042, 'eg', 'Cookies Agreement', 'Cookies Agreement', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3043, 'eg', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3044, 'eg', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3045, 'eg', 'Custom Script', 'Custom Script', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3046, 'eg', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3047, 'eg', 'Write script with <script> tag', 'Write script with <script> tag', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3048, 'eg', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-06-21 01:15:52', '2021-06-21 01:15:52'),
(3049, 'eg', 'Website Pages', 'Website Pages', '2021-06-21 01:15:59', '2021-06-21 01:15:59'),
(3050, 'eg', 'All Pages', 'All Pages', '2021-06-21 01:15:59', '2021-06-21 01:15:59'),
(3051, 'eg', 'Add New Page', 'Add New Page', '2021-06-21 01:15:59', '2021-06-21 01:15:59'),
(3052, 'eg', 'URL', 'URL', '2021-06-21 01:15:59', '2021-06-21 01:15:59'),
(3053, 'eg', 'Account Statment', 'كشف حساب البائع', '2021-06-21 01:16:19', '2021-06-30 18:45:08'),
(3054, 'eg', 'view Report', 'التقرير', '2021-06-21 01:16:19', '2021-06-28 15:59:08'),
(3055, 'eg', 'All order', 'جميع الطلبات', '2021-06-21 01:16:32', '2021-06-21 11:17:20'),
(3056, 'eg', 'Total Amount', 'Total Amount', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3057, 'eg', 'All Refund', 'All Refund', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3058, 'eg', 'Pending Refund', 'Pending Refund', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3059, 'eg', 'Check Refund', 'Check Refund', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3060, 'eg', 'At Stock Refund', 'At Stock Refund', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3061, 'eg', 'Aproved Refund', 'Aproved Refund', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3062, 'eg', 'Profits', 'Profits', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3063, 'eg', 'Net Profits', 'Net Profits', '2021-06-21 01:16:32', '2021-06-21 01:16:32'),
(3064, 'eg', 'No Parent', 'No Parent', '2021-06-21 01:16:58', '2021-06-21 01:16:58'),
(3065, 'eg', 'Physical', 'Physical', '2021-06-21 01:16:58', '2021-06-21 01:16:58'),
(3066, 'eg', 'Digital', 'Digital', '2021-06-21 01:16:58', '2021-06-21 01:16:58'),
(3067, 'eg', 'Language changed to ', 'Language changed to ', '2021-06-21 05:48:27', '2021-06-21 05:48:27'),
(3068, 'eg', 'Refund categories updated successfully', 'Refund categories updated successfully', '2021-06-21 05:55:34', '2021-06-21 05:55:34'),
(3069, 'eg', 'Something went wrong!', 'Something went wrong!', '2021-06-21 06:19:10', '2021-06-21 06:19:10'),
(3070, 'eg', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-06-21 06:19:10', '2021-06-21 06:19:10'),
(3071, 'eg', 'Error code', 'Error code', '2021-06-21 06:19:10', '2021-06-21 06:19:10'),
(3072, 'eg', 'Update your product', 'تحديث المنتج', '2021-06-21 06:21:45', '2021-06-28 15:23:45'),
(3073, 'eg', 'Type to add a tag', 'Type to add a tag', '2021-06-21 06:21:46', '2021-06-21 06:21:46'),
(3074, 'eg', 'Meta Images', 'Meta Images', '2021-06-21 06:21:46', '2021-06-21 06:21:46'),
(3075, 'eg', 'Update Product', 'تحديث', '2021-06-21 06:21:46', '2021-06-28 15:20:56'),
(3076, 'eg', 'Page Content', 'Page Content', '2021-06-21 10:11:00', '2021-06-21 10:11:00'),
(3077, 'eg', 'Link', 'Link', '2021-06-21 10:11:00', '2021-06-21 10:11:00'),
(3078, 'eg', 'Use character, number, hypen only', 'Use character, number, hypen only', '2021-06-21 10:11:00', '2021-06-21 10:11:00'),
(3079, 'eg', 'Add Content', 'Add Content', '2021-06-21 10:11:00', '2021-06-21 10:11:00'),
(3080, 'eg', 'Seo Fields', 'Seo Fields', '2021-06-21 10:11:00', '2021-06-21 10:11:00'),
(3081, 'eg', 'Save Page', 'حفظ', '2021-06-21 10:11:00', '2021-06-30 19:47:36'),
(3082, 'eg', 'New page has been created successfully', 'New page has been created successfully', '2021-06-21 10:17:03', '2021-06-21 10:17:03'),
(3083, 'eg', 'Edit Page Information', 'Edit Page Information', '2021-06-21 10:18:08', '2021-06-21 10:18:08'),
(3084, 'eg', 'Update Page', 'Update Page', '2021-06-21 10:18:08', '2021-06-21 10:18:08'),
(3085, 'eg', 'Page has been updated successfully', 'Page has been updated successfully', '2021-06-21 10:20:52', '2021-06-21 10:20:52'),
(3086, 'eg', 'Seller Policy', 'Seller Policy', '2021-06-21 10:49:11', '2021-06-21 10:49:11'),
(3087, 'eg', 'Check Your Order Status', 'فحص حالة الطلب', '2021-06-21 11:08:47', '2021-06-21 11:17:20'),
(3088, 'eg', 'Order Code', 'كود الطلب', '2021-06-21 11:08:47', '2021-06-21 11:17:20'),
(3089, 'eg', 'Category has been deleted successfully', 'Category has been deleted successfully', '2021-06-21 18:06:28', '2021-06-21 18:06:28'),
(3090, 'eg', ' Show Password', ' Show Password', '2021-06-21 18:10:43', '2021-06-21 18:10:43'),
(3091, 'eg', 'Comparison', 'مقارنه', '2021-06-21 18:11:28', '2021-06-30 18:51:17'),
(3092, 'eg', 'Reset Compare List', 'مسح قائمه المقارنه', '2021-06-21 18:11:28', '2021-06-30 18:54:15'),
(3093, 'eg', 'Your comparison list is empty', 'قائمه المقارنات خاليه', '2021-06-21 18:11:28', '2021-06-30 18:51:17'),
(3094, 'eg', 'Website Header', 'Website Header', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3095, 'eg', 'Header Setting', 'Header Setting', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3096, 'eg', 'Header Logo', 'Header Logo', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3097, 'eg', 'Show Language Switcher?', 'Show Language Switcher?', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3098, 'eg', 'Show Currency Switcher?', 'Show Currency Switcher?', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3099, 'eg', 'Enable stikcy header?', 'Enable stikcy header?', '2021-06-21 19:10:03', '2021-06-21 19:10:03'),
(3100, 'eg', 'Add New Staffs', 'Add New Staffs', '2021-06-21 19:12:36', '2021-06-21 19:12:36'),
(3101, 'eg', 'Role', 'Role', '2021-06-21 19:12:36', '2021-06-21 19:12:36'),
(3102, 'eg', 'Staff Information', 'Staff Information', '2021-06-21 19:12:47', '2021-06-21 19:12:47'),
(3103, 'eg', 'All Role', 'All Role', '2021-06-21 19:13:15', '2021-06-21 19:13:15'),
(3104, 'eg', 'Add New Role', 'Add New Role', '2021-06-21 19:13:15', '2021-06-21 19:13:15'),
(3105, 'eg', 'Roles', 'Roles', '2021-06-21 19:13:15', '2021-06-21 19:13:15'),
(3106, 'eg', 'Role Information', 'Role Information', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3107, 'eg', 'Permissions', 'Permissions', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3108, 'eg', 'All Orders', 'All Orders', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3109, 'eg', 'Inhouse orders', 'Inhouse orders', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3110, 'eg', 'Seller Orders', 'Seller Orders', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3111, 'eg', 'Pick-up Point Order', 'Pick-up Point Order', '2021-06-21 19:13:25', '2021-06-21 19:13:25'),
(3112, 'eg', 'Role has been updated successfully', 'Role has been updated successfully', '2021-06-21 19:13:57', '2021-06-21 19:13:57'),
(3113, 'eg', 'Product has been deleted successfully', 'Product has been deleted successfully', '2021-06-21 19:46:48', '2021-06-21 19:46:48'),
(3114, 'eg', 'Product has been updated successfully', 'Product has been updated successfully', '2021-06-21 19:49:12', '2021-06-21 19:49:12'),
(3115, 'eg', 'Invalid email or password', 'Invalid email or password', '2021-06-22 13:24:25', '2021-06-22 13:24:25'),
(3116, 'eg', 'About', 'About', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3117, 'eg', 'Payout Info', 'Payout Info', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3118, 'eg', 'Bank Name', 'اسم البنك', '2021-06-22 13:26:23', '2021-06-28 16:23:54'),
(3119, 'eg', 'Bank Acc Name', 'Bank Acc Name', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3120, 'eg', 'Bank Acc Number', 'Bank Acc Number', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3121, 'eg', 'Bank Routing Number', 'Bank Routing Number', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3122, 'eg', 'Total Products', 'Total Products', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3123, 'eg', 'Total Sold Amount', 'Total Sold Amount', '2021-06-22 13:26:23', '2021-06-22 13:26:23'),
(3124, 'eg', 'Wallet Balance', 'رصيد المحفظه', '2021-06-22 13:26:23', '2021-07-03 17:42:59'),
(3125, 'eg', 'Variant', 'Variant', '2021-06-22 13:26:54', '2021-06-22 13:26:54'),
(3126, 'eg', 'Variant Price', 'Variant Price', '2021-06-22 13:26:54', '2021-06-22 13:26:54'),
(3127, 'eg', 'SKU', 'SKU', '2021-06-22 13:26:54', '2021-06-22 13:26:54'),
(3128, 'eg', 'Filters', 'Filters', '2021-06-22 13:54:34', '2021-06-22 13:54:34'),
(3129, 'eg', 'Filter by', 'Filter by', '2021-06-22 13:54:41', '2021-06-22 13:54:41'),
(3130, 'eg', 'All Orders Tracking', 'All Orders Tracking', '2021-06-22 14:16:58', '2021-06-22 14:16:58'),
(3131, 'eg', 'Filter by date', 'البحث بالتاريخ', '2021-06-22 14:16:58', '2021-06-28 16:01:57'),
(3132, 'eg', 'Type Order code & hit Enter', 'كود الطلب', '2021-06-22 14:16:58', '2021-06-28 16:03:01'),
(3133, 'eg', 'Filter', 'Filter', '2021-06-22 14:16:58', '2021-06-22 14:16:58'),
(3134, 'eg', 'Order Date', 'تاريخ الطلب', '2021-06-22 14:16:58', '2021-06-30 19:41:40'),
(3135, 'eg', 'Total Items', 'عدد المنتجات', '2021-06-22 14:16:58', '2021-06-28 15:56:27'),
(3136, 'eg', 'Order Status', 'حاله الطلب', '2021-06-22 14:16:58', '2021-06-28 15:57:15'),
(3137, 'eg', 'Payment Status', 'حاله الدفع', '2021-06-22 14:16:58', '2021-06-27 20:16:06'),
(3138, 'eg', 'Picked', 'جاهز للشحن', '2021-06-22 14:16:58', '2021-07-03 16:37:23'),
(3139, 'eg', 'Unpaid', 'غير محصله', '2021-06-22 14:16:59', '2021-07-03 16:40:46'),
(3140, 'eg', 'No Refund', 'No Refund', '2021-06-22 14:16:59', '2021-06-22 14:16:59'),
(3141, 'eg', 'View', 'تفاصيل', '2021-06-22 14:16:59', '2021-06-28 15:59:08'),
(3142, 'eg', 'Download Invoice', 'تحميل الفاتوره', '2021-06-22 14:16:59', '2021-06-28 16:00:03'),
(3143, 'eg', 'Delivered', 'تم الاستلام', '2021-06-22 14:16:59', '2021-06-30 20:03:41'),
(3144, 'eg', 'Paid', 'محصله', '2021-06-22 14:16:59', '2021-07-03 16:40:46'),
(3145, 'eg', 'No Status', 'No Status', '2021-06-22 14:16:59', '2021-06-22 14:16:59'),
(3146, 'eg', 'Seller Payments', 'مدفوعات البائع', '2021-06-22 14:21:46', '2021-06-27 20:16:06'),
(3147, 'eg', 'Seller', 'Seller', '2021-06-22 14:21:46', '2021-06-22 14:21:46'),
(3148, 'eg', 'Payment Details', 'تفاصيل المدفوعات', '2021-06-22 14:21:46', '2021-06-27 20:16:06'),
(3149, 'eg', 'Seller Based Selling Report', 'Seller Based Selling Report', '2021-06-22 14:21:50', '2021-06-22 14:21:50'),
(3150, 'eg', 'Sort by verificarion status', 'Sort by verificarion status', '2021-06-22 14:21:50', '2021-06-22 14:21:50'),
(3151, 'eg', 'Non Approved', 'Non Approved', '2021-06-22 14:21:50', '2021-06-22 14:21:50'),
(3152, 'eg', 'Seller Name', 'اسم التاجر', '2021-06-22 14:21:50', '2021-07-03 17:25:43'),
(3153, 'eg', 'Shop Name', 'اسم المتجر', '2021-06-22 14:21:50', '2021-06-28 16:18:09'),
(3154, 'eg', 'Number of Product Sale', 'Number of Product Sale', '2021-06-22 14:21:50', '2021-06-22 14:21:50'),
(3155, 'eg', 'Order Amount', 'Order Amount', '2021-06-22 14:21:50', '2021-06-22 14:21:50'),
(3156, 'eg', 'Product wise stock report', 'Product wise stock report', '2021-06-22 14:21:56', '2021-06-22 14:21:56'),
(3157, 'eg', 'Sort by Category', 'Sort by Category', '2021-06-22 14:21:56', '2021-06-22 14:21:56'),
(3158, 'eg', 'Stock', 'Stock', '2021-06-22 14:21:56', '2021-06-22 14:21:56'),
(3159, 'eg', 'All Flash Deals', 'All Flash Deals', '2021-06-22 14:23:40', '2021-06-22 14:23:40'),
(3160, 'eg', 'Create New Flash Deal', 'Create New Flash Deal', '2021-06-22 14:23:40', '2021-06-22 14:23:40'),
(3161, 'eg', 'Start Date', 'Start Date', '2021-06-22 14:23:40', '2021-06-22 14:23:40'),
(3162, 'eg', 'End Date', 'End Date', '2021-06-22 14:23:40', '2021-06-22 14:23:40'),
(3163, 'eg', 'Page Link', 'Page Link', '2021-06-22 14:23:40', '2021-06-22 14:23:40'),
(3164, 'eg', 'Send Newsletter', 'Send Newsletter', '2021-06-22 14:23:53', '2021-06-22 14:23:53'),
(3165, 'eg', 'Emails', 'Emails', '2021-06-22 14:23:53', '2021-06-22 14:23:53'),
(3166, 'eg', 'Users', 'Users', '2021-06-22 14:23:53', '2021-06-22 14:23:53'),
(3167, 'eg', 'Newsletter subject', 'Newsletter subject', '2021-06-22 14:23:53', '2021-06-22 14:23:53'),
(3168, 'eg', 'Newsletter content', 'Newsletter content', '2021-06-22 14:23:53', '2021-06-22 14:23:53'),
(3169, 'eg', 'All Subscribers', 'All Subscribers', '2021-06-22 14:23:55', '2021-06-22 14:23:55'),
(3170, 'eg', 'All Coupons', 'All Coupons', '2021-06-22 14:24:05', '2021-06-22 14:24:05'),
(3171, 'eg', 'Add New Coupon', 'اضافه كوبون جديد', '2021-06-22 14:24:05', '2021-06-30 15:56:07'),
(3172, 'eg', 'Coupon Information', 'Coupon Information', '2021-06-22 14:24:05', '2021-06-22 14:24:05'),
(3173, 'eg', 'All Attributes', 'جميع الخصائص', '2021-06-22 14:24:56', '2021-06-30 16:01:53'),
(3174, 'eg', 'Add New Attribute', 'اضافه خصائص جديده', '2021-06-22 14:24:56', '2021-06-30 15:56:07'),
(3175, 'eg', 'Logo', 'Logo', '2021-06-22 14:24:58', '2021-06-22 14:24:58'),
(3176, 'eg', 'Add New Brand', 'اضافه علامه تجاريه جديده', '2021-06-22 14:24:58', '2021-07-03 16:15:25'),
(3177, 'eg', '120x80', '120x80', '2021-06-22 14:24:58', '2021-06-22 14:24:58'),
(3178, 'eg', 'New Password', 'New Password', '2021-06-22 14:59:32', '2021-06-22 14:59:32'),
(3179, 'eg', 'Confirm Password', 'تأكيد كلمة السر', '2021-06-22 14:59:33', '2021-06-30 20:09:24'),
(3180, 'eg', 'Avatar', 'Avatar', '2021-06-22 14:59:33', '2021-06-22 14:59:33'),
(3181, 'eg', 'Filter by Payment Status', 'البحث بطريقه الدفع', '2021-06-22 15:57:40', '2021-06-28 16:01:57'),
(3182, 'eg', 'Un-Paid', 'Un-Paid', '2021-06-22 15:57:40', '2021-06-22 15:57:40'),
(3183, 'eg', 'Filter by Deliver Status', 'البحث بحاله الطلب', '2021-06-22 15:57:40', '2021-06-28 16:01:57'),
(3184, 'eg', 'Pending', 'معلق', '2021-06-22 15:57:40', '2021-07-03 16:49:09'),
(3185, 'eg', 'Customer Not Found', 'تعثر الوصول للعميل', '2021-06-22 15:57:40', '2021-07-03 16:42:01'),
(3186, 'eg', 'On delivery', 'تم الشحن', '2021-06-22 15:57:40', '2021-06-30 20:02:59'),
(3187, 'eg', 'Payment Method', 'وسيله الدفع', '2021-06-22 17:07:33', '2021-06-27 20:16:06'),
(3188, 'eg', 'Create a Ticket', 'انشاء تذكره', '2021-06-22 17:07:58', '2021-06-28 17:00:54'),
(3189, 'eg', 'Tickets', 'الاستفسارات', '2021-06-22 17:07:58', '2021-06-28 17:00:54'),
(3190, 'eg', 'Ticket ID', 'رقم التذكره', '2021-06-22 17:07:58', '2021-06-28 17:00:54'),
(3191, 'eg', 'Sending Date', 'تاريخ الارسال', '2021-06-22 17:07:58', '2021-06-28 17:02:12'),
(3192, 'eg', 'Subject', 'عنوان التذكره', '2021-06-22 17:07:58', '2021-06-28 17:03:11'),
(3193, 'eg', 'Provide a detailed description', 'Provide a detailed description', '2021-06-22 17:07:58', '2021-06-22 17:07:58'),
(3194, 'eg', 'Type your reply', 'Type your reply', '2021-06-22 17:07:58', '2021-06-22 17:07:58'),
(3195, 'eg', 'Photo', 'صوره البروفيل', '2021-06-22 17:07:58', '2021-06-30 15:45:49'),
(3196, 'eg', 'Send Ticket', 'ارسال', '2021-06-22 17:07:58', '2021-06-28 17:00:54'),
(3197, 'eg', 'Refund Request All', 'طلبات المرتجعات', '2021-06-22 17:18:03', '2021-07-03 17:27:10'),
(3198, 'eg', 'Refund Type', 'وسيلة رد القيمة', '2021-06-22 17:18:03', '2021-07-03 17:25:02'),
(3199, 'eg', 'Refund Status', 'حاله المرتجع', '2021-06-22 17:18:03', '2021-07-03 17:10:57'),
(3200, 'eg', 'Order deleted', 'Order deleted', '2021-06-22 17:18:03', '2021-06-22 17:18:03'),
(3201, 'eg', 'Welt', 'Welt', '2021-06-22 17:18:03', '2021-06-22 17:18:03'),
(3202, 'eg', 'Refund Now', 'Refund Now', '2021-06-22 17:18:03', '2021-06-22 17:18:03'),
(3203, 'eg', 'View Reason', 'السبب', '2021-06-22 17:18:03', '2021-06-28 15:59:08'),
(3204, 'eg', 'Product Checked', 'تم فحص المنتج', '2021-06-22 17:18:03', '2021-07-03 17:10:07'),
(3205, 'eg', 'Approval has been done successfully', 'Approval has been done successfully', '2021-06-22 17:18:03', '2021-06-22 17:18:03'),
(3206, 'eg', 'Refund has been sent successfully', 'Refund has been sent successfully', '2021-06-22 17:18:03', '2021-06-22 17:18:03'),
(3207, 'eg', 'Seller Approval', 'Seller Approval', '2021-06-22 17:18:09', '2021-06-22 17:18:09'),
(3208, 'eg', 'Set Refund Time', 'مدة صلاحيه المرتجعات', '2021-06-22 17:18:12', '2021-07-03 17:38:53'),
(3209, 'eg', 'Set Time for sending Refund Request', 'مدة صلاحيه المرتجعات', '2021-06-22 17:18:12', '2021-07-03 17:40:14'),
(3210, 'eg', 'Set Refund Sticker', 'Set Refund Sticker', '2021-06-22 17:18:12', '2021-06-22 17:18:12'),
(3211, 'eg', 'Sticker', 'Sticker', '2021-06-22 17:18:12', '2021-06-22 17:18:12'),
(3212, 'eg', 'All Customers', 'All Customers', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3213, 'eg', 'Type email or name & Enter', 'Type email or name & Enter', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3214, 'eg', 'Package', 'Package', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3215, 'eg', 'Log in as this Customer', 'Log in as this Customer', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3216, 'eg', 'Ban this Customer', 'Ban this Customer', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3217, 'eg', 'Do you really want to ban this Customer?', 'Do you really want to ban this Customer?', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3218, 'eg', 'Do you really want to unban this Customer?', 'Do you really want to unban this Customer?', '2021-06-22 17:18:18', '2021-06-22 17:18:18'),
(3219, 'eg', 'Product Wish Report', 'Product Wish Report', '2021-06-22 17:18:45', '2021-06-22 17:18:45'),
(3220, 'eg', 'Number of Wish', 'Number of Wish', '2021-06-22 17:18:45', '2021-06-22 17:18:45'),
(3221, 'eg', 'User Search Report', 'User Search Report', '2021-06-22 17:18:49', '2021-06-22 17:18:49'),
(3222, 'eg', 'Search By', 'Search By', '2021-06-22 17:18:49', '2021-06-22 17:18:49'),
(3223, 'eg', 'Number searches', 'Number searches', '2021-06-22 17:18:49', '2021-06-22 17:18:49');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3224, 'eg', 'Update your system', 'Update your system', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3225, 'eg', 'Current verion', 'Current verion', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3226, 'eg', 'Make sure your server has matched with all requirements.', 'Make sure your server has matched with all requirements.', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3227, 'eg', 'Check Here', 'Check Here', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3228, 'eg', 'Download latest version from codecanyon.', 'Download latest version from codecanyon.', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3229, 'eg', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3230, 'eg', 'Upload that zip file here and click update now.', 'Upload that zip file here and click update now.', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3231, 'eg', 'If you are using any addon make sure to update those addons after updating.', 'If you are using any addon make sure to update those addons after updating.', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3232, 'eg', 'Update Now', 'Update Now', '2021-06-27 13:29:10', '2021-06-27 13:29:10'),
(3233, 'eg', 'Quantaty', 'الكميه', '2021-06-27 20:05:24', '2021-06-30 18:47:15'),
(3234, 'eg', 'Alert Quantaty', 'الحد الادني للكميه', '2021-06-27 20:05:24', '2021-06-30 18:47:15'),
(3235, 'eg', 'Delivery Status', 'حاله الطلب', '2021-06-27 20:07:34', '2021-06-27 20:13:25'),
(3236, 'eg', 'index', 'index', '2021-06-27 20:16:12', '2021-06-27 20:16:12'),
(3237, 'eg', 'Download Your Product', 'تحميل المنتج', '2021-06-27 20:16:12', '2021-06-27 20:18:12'),
(3238, 'eg', 'Option', 'Option', '2021-06-27 20:16:12', '2021-06-27 20:16:12'),
(3239, 'eg', 'Bulk Products Upload', 'تحميل نموذج المنتجات', '2021-06-28 15:22:41', '2021-06-28 15:52:04'),
(3240, 'eg', '1. Category and Brand should be in numerical id.', '1. إدخال الفئات والفئات الفرعيه وتحت الفرعيه والعلامه التجاريه في صوره كود.', '2021-06-28 15:22:41', '2021-06-28 15:49:35'),
(3241, 'eg', '2. You can download the pdf to get Category and Brand id.', '2. يمكنك تنزيل الملف التعريفي ادناه للحصول على اكواد الفئة والفئة الفرعية والفئة تحت الفرعية و العلامة التجارية.', '2021-06-28 15:22:41', '2021-06-28 15:49:35'),
(3242, 'eg', 'Upload CSV', 'تحميل نموذج المنتجات', '2021-06-28 15:22:41', '2021-06-28 15:50:43'),
(3243, 'eg', 'Order id', 'كود الطلب', '2021-06-28 16:04:47', '2021-06-28 16:09:41'),
(3244, 'eg', 'Order placed', 'تم الطلب', '2021-06-28 16:04:47', '2021-06-30 20:02:07'),
(3245, 'eg', 'Picked UP', 'جاهز للشحن', '2021-06-28 16:04:47', '2021-07-03 16:37:23'),
(3246, 'eg', 'Order Details', 'تفاصيل الطلب', '2021-06-28 16:04:47', '2021-06-28 16:05:50'),
(3247, 'eg', 'Variation', 'المقاسات والالوان', '2021-06-28 16:04:47', '2021-06-28 16:06:31'),
(3248, 'eg', 'Item Status', 'حاله الصنف', '2021-06-28 16:04:47', '2021-06-28 16:07:42'),
(3249, 'eg', 'Order status has been updated', 'Order status has been updated', '2021-06-28 16:04:48', '2021-06-28 16:04:48'),
(3250, 'eg', 'Payment status has been updated', 'Payment status has been updated', '2021-06-28 16:04:48', '2021-06-28 16:04:48'),
(3251, 'eg', 'Are You Sure', 'Are You Sure', '2021-06-28 16:04:48', '2021-06-28 16:04:48'),
(3252, 'eg', 'Available status has been updated', 'Available status has been updated', '2021-06-28 16:04:48', '2021-06-28 16:04:48'),
(3253, 'eg', 'INVOICE', 'INVOICE', '2021-06-28 16:06:48', '2021-06-28 16:06:48'),
(3254, 'eg', 'Qty', 'Qty', '2021-06-28 16:06:48', '2021-06-28 16:06:48'),
(3255, 'eg', 'Tax', 'الضريبه', '2021-06-28 16:06:48', '2021-06-30 19:10:38'),
(3256, 'eg', 'Refund Request', 'طلب استرجاع', '2021-06-28 16:09:05', '2021-06-28 16:11:15'),
(3257, 'eg', 'Reason', 'السبب', '2021-06-28 16:09:05', '2021-06-28 16:11:48'),
(3258, 'eg', 'Comment', 'التعليق', '2021-06-28 16:12:07', '2021-06-28 16:12:46'),
(3259, 'eg', 'Shop Settings', 'اعدادات المتجر', '2021-06-28 16:13:00', '2021-06-28 16:14:00'),
(3260, 'eg', 'Visit Shop', 'معرضك', '2021-06-28 16:13:00', '2021-06-28 16:15:51'),
(3261, 'eg', 'Basic Info', 'البيانات الاساسيه', '2021-06-28 16:13:00', '2021-06-28 16:17:30'),
(3262, 'eg', 'Shop Logo', 'اللوجو', '2021-06-28 16:13:00', '2021-06-28 16:18:46'),
(3263, 'eg', 'Shop Address', 'العنوان', '2021-06-28 16:13:00', '2021-06-28 16:19:16'),
(3264, 'eg', 'Banner Settings', 'Banner Settings', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3265, 'eg', 'Banners', 'Banners', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3266, 'eg', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3267, 'eg', 'Payment Setting', 'بيانات الحساب البنكي', '2021-06-28 16:13:00', '2021-06-28 16:23:28'),
(3268, 'eg', 'بنك مصر ', 'بنك مصر ', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3269, 'eg', 'البنك الاهلي المصري', 'البنك الاهلي المصري', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3270, 'eg', 'البنك العقاري المصري العربي', 'البنك العقاري المصري العربي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3271, 'eg', 'البنك الزراعي المصري', 'البنك الزراعي المصري', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3272, 'eg', 'بنك التنمية الصناعية', 'بنك التنمية الصناعية', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3273, 'eg', 'بنك القاهرة', 'بنك القاهرة', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3274, 'eg', 'المصرف المتحد', 'المصرف المتحد', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3275, 'eg', 'بنك الاسكندرية', 'بنك الاسكندرية', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3276, 'eg', 'ميد بنك ', 'ميد بنك ', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3277, 'eg', 'البنك التجاري الدولي', 'البنك التجاري الدولي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3278, 'eg', 'البنك التجاري المغربي', 'البنك التجاري المغربي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3279, 'eg', 'بنك الشركة المصرفية العربية الدولية', 'بنك الشركة المصرفية العربية الدولية', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3280, 'eg', 'بنك بلوم', 'بنك بلوم', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3281, 'eg', 'كريدي اجريكول', 'كريدي اجريكول', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3282, 'eg', 'بنك الامارات دبي الوطني', 'بنك الامارات دبي الوطني', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3283, 'eg', 'بنك قناة السويس', 'بنك قناة السويس', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3284, 'eg', 'بنك قطر الوطني الاهلي', 'بنك قطر الوطني الاهلي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3285, 'eg', 'بنك الاستثمار العربي', 'بنك الاستثمار العربي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3286, 'eg', 'البنك الاهلي الكويتي', 'البنك الاهلي الكويتي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3287, 'eg', 'بنك عودة', 'بنك عودة', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3288, 'eg', 'البنك الاهلي المتحد', 'البنك الاهلي المتحد', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3289, 'eg', 'بنك فيصل الاسلامي المصري', 'بنك فيصل الاسلامي المصري', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3290, 'eg', 'بنك التعمير والاسكان', 'بنك التعمير والاسكان', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3291, 'eg', 'بنك البركة', 'بنك البركة', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3292, 'eg', 'بنك الكويت الوطني', 'بنك الكويت الوطني', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3293, 'eg', 'مصرف ابوظبي الاسلامي', 'مصرف ابوظبي الاسلامي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3294, 'eg', 'بنك ابوظبي التجاري', 'بنك ابوظبي التجاري', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3295, 'eg', 'البنك المصري الخليجي', 'البنك المصري الخليجي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3296, 'eg', 'البنك العربي الافريقي', 'البنك العربي الافريقي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3297, 'eg', 'اتش اس بي سي', 'اتش اس بي سي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3298, 'eg', 'abc بنك المؤسسة العربية المصرفية', 'abc بنك المؤسسة العربية المصرفية', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3299, 'eg', 'البنك المصري لتنمية الصادرات', 'البنك المصري لتنمية الصادرات', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3300, 'eg', 'المصرف العربي الدولي', 'المصرف العربي الدولي', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3301, 'eg', 'البنك العربي ', 'البنك العربي ', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3302, 'eg', 'سيتي بنك', 'سيتي بنك', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3303, 'eg', 'بنك المشرق', 'بنك المشرق', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3304, 'eg', 'البنك الاهلي اليوناني', 'البنك الاهلي اليوناني', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3305, 'eg', 'Bank Account Name', 'اسم صحاب الحساب', '2021-06-28 16:13:00', '2021-06-28 16:24:57'),
(3306, 'eg', 'Bank Account Number', 'رقم الحساب البنكي', '2021-06-28 16:13:00', '2021-06-28 16:24:57'),
(3307, 'eg', 'Count Of Number 16 ', 'Count Of Number 16 ', '2021-06-28 16:13:00', '2021-06-28 16:13:00'),
(3308, 'eg', 'I Pan', 'رمز ال I BAN', '2021-06-28 16:13:00', '2021-06-28 16:26:50'),
(3309, 'eg', 'Update Payments', 'تحديث بيانات الحساب البنكي', '2021-06-28 16:13:00', '2021-06-28 16:28:17'),
(3310, 'eg', 'Your Shop has been updated successfully!', 'Your Shop has been updated successfully!', '2021-06-28 16:19:35', '2021-06-28 16:19:35'),
(3311, 'eg', 'Request has been sent successfully', 'Request has been sent successfully', '2021-06-28 16:36:01', '2021-06-28 16:36:01'),
(3312, 'eg', 'Seller Withdraw Request', 'طلبات سحب الرصيد', '2021-06-28 16:36:46', '2021-07-03 18:05:20'),
(3313, 'eg', 'Total Amount to Pay', 'اجمالي المبالغ المستحقة', '2021-06-28 16:36:46', '2021-07-03 18:06:19'),
(3314, 'eg', 'Requested Amount', 'المبالغ المطلوبه', '2021-06-28 16:36:46', '2021-07-03 18:07:17'),
(3315, 'eg', 'Pay Now', 'Pay Now', '2021-06-28 16:36:46', '2021-06-28 16:36:46'),
(3316, 'eg', 'Message View', 'Message View', '2021-06-28 16:36:46', '2021-06-28 16:36:46'),
(3317, 'eg', 'Pay to seller', 'Pay to seller', '2021-06-28 16:36:55', '2021-06-28 16:36:55'),
(3318, 'eg', 'Select Payment Method', 'Select Payment Method', '2021-06-28 16:36:56', '2021-06-28 16:36:56'),
(3319, 'eg', 'Bank Payment', 'Bank Payment', '2021-06-28 16:36:56', '2021-06-28 16:36:56'),
(3320, 'eg', 'Pay', 'Pay', '2021-06-28 16:36:56', '2021-06-28 16:36:56'),
(3321, 'eg', 'Seller Message', 'Seller Message', '2021-06-28 16:37:05', '2021-06-28 16:37:05'),
(3322, 'eg', 'No payment history available for this seller', 'No payment history available for this seller', '2021-06-28 16:37:11', '2021-06-28 16:37:11'),
(3323, 'eg', 'Payment completed', 'Payment completed', '2021-06-28 16:38:28', '2021-06-28 16:38:28'),
(3324, 'eg', 'Requested Amount is ', 'Requested Amount is', '2021-06-28 16:38:39', '2021-07-03 18:07:17'),
(3325, 'eg', 'Recharge Wallet', 'اعاده شحن المحفظه', '2021-06-28 16:51:32', '2021-06-28 16:56:41'),
(3326, 'eg', 'Wallet recharge history', 'تواريخ شحن المحفظه', '2021-06-28 16:51:32', '2021-06-28 16:54:37'),
(3327, 'eg', 'Confirm', 'Confirm', '2021-06-28 16:51:32', '2021-06-28 16:51:32'),
(3328, 'eg', 'Offline Recharge Wallet', 'Offline Recharge Wallet', '2021-06-28 16:51:32', '2021-06-28 16:51:32'),
(3329, 'eg', 'Your Name', 'الاسم', '2021-06-28 17:04:00', '2021-06-28 17:04:53'),
(3330, 'eg', 'Your Phone', 'رقم التلفون', '2021-06-28 17:04:00', '2021-06-28 17:05:34'),
(3331, 'eg', 'Your Password', 'كلمة السر', '2021-06-28 17:04:00', '2021-06-30 20:08:43'),
(3332, 'eg', 'Show Password', 'Show Password', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3333, 'eg', 'Postal Code', 'Postal Code', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3334, 'eg', 'City', 'City', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3335, 'eg', 'Country', 'Country', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3336, 'eg', 'Make This Default', 'Make This Default', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3337, 'eg', 'Add New Address', 'اضافه عنوان جديد', '2021-06-28 17:04:00', '2021-06-30 15:56:07'),
(3338, 'eg', 'Update Profile', 'تحديث البيانات', '2021-06-28 17:04:00', '2021-06-30 15:52:02'),
(3339, 'eg', 'Change your email', 'تعديل الايميل', '2021-06-28 17:04:00', '2021-06-30 15:46:51'),
(3340, 'eg', 'Your Email', 'الايميل', '2021-06-28 17:04:00', '2021-06-30 15:51:10'),
(3341, 'eg', 'Sending Email...', 'Sending Email...', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3342, 'eg', 'Verify', 'Verify', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3343, 'eg', 'Update Email', 'تحديث الايميل', '2021-06-28 17:04:00', '2021-06-30 15:53:00'),
(3344, 'eg', 'New Address', 'New Address', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3345, 'eg', 'Your Address', 'Your Address', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3346, 'eg', 'Select your country', 'Select your country', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3347, 'eg', 'Your Postal Code', 'Your Postal Code', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3348, 'eg', '+880', '+880', '2021-06-28 17:04:00', '2021-06-28 17:04:00'),
(3349, 'eg', 'Your Profile has been updated successfully!', 'Your Profile has been updated successfully!', '2021-06-28 17:10:50', '2021-06-28 17:10:50'),
(3350, 'eg', 'Create an account.', 'Create an account.', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3351, 'eg', 'Full Name', 'Full Name', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3352, 'eg', 'By signing up you agree to our terms and conditions.', 'By signing up you agree to our terms and conditions.', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3353, 'eg', 'Create Account', 'Create Account', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3354, 'eg', 'Or Join With', 'Or Join With', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3355, 'eg', 'Already have an account?', 'Already have an account?', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3356, 'eg', 'Log In', 'Log In', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3357, 'eg', 'Use Phone Instead', 'Use Phone Instead', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3358, 'eg', 'Use Email Instead', 'Use Email Instead', '2021-06-28 18:31:56', '2021-06-28 18:31:56'),
(3359, 'eg', 'Image', 'Image', '2021-06-30 18:52:31', '2021-06-30 18:52:31'),
(3360, 'eg', 'Product Image', 'Product Image', '2021-06-30 18:52:31', '2021-06-30 18:52:31'),
(3361, 'eg', 'in your cart', 'in your cart', '2021-06-30 19:00:49', '2021-06-30 19:00:49'),
(3362, 'eg', 'Product(s)', 'Product(s)', '2021-06-30 19:00:49', '2021-06-30 19:00:49'),
(3363, 'eg', 'in your wishlist', 'in your wishlist', '2021-06-30 19:00:49', '2021-06-30 19:00:49'),
(3364, 'eg', 'you ordered', 'you ordered', '2021-06-30 19:00:49', '2021-06-30 19:00:49'),
(3365, 'eg', 'Default Shipping Address', 'Default Shipping Address', '2021-06-30 19:00:49', '2021-06-30 19:00:49'),
(3366, 'eg', 'Item has been renoved from wishlist', 'Item has been renoved from wishlist', '2021-06-30 19:00:54', '2021-06-30 19:00:54'),
(3367, 'eg', 'Item added to your cart!', 'تم اضافه الصنف الي سله المشتريات !', '2021-06-30 19:02:49', '2021-06-30 19:03:53'),
(3368, 'eg', 'Proceed to Checkout', 'اتمام عمليه الشراء', '2021-06-30 19:02:49', '2021-06-30 19:08:55'),
(3369, 'eg', 'Cart Items', 'عربه التسوق', '2021-06-30 19:02:50', '2021-06-30 19:05:27'),
(3370, 'eg', 'Subtotal', 'المجموع الفرعي', '2021-06-30 19:02:50', '2021-06-30 19:11:40'),
(3371, 'eg', 'View cart', 'تفاصيل عربه التسوق', '2021-06-30 19:02:50', '2021-06-30 19:07:51'),
(3372, 'eg', 'Checkout', 'شراء', '2021-06-30 19:02:50', '2021-06-30 19:08:55'),
(3373, 'eg', '1. My Cart', '1. عربه التسوق', '2021-06-30 19:09:08', '2021-06-30 19:16:35'),
(3374, 'eg', '2. Shipping info', '2. بيانات الشحن', '2021-06-30 19:09:08', '2021-06-30 19:16:12'),
(3375, 'eg', '3. Delivery info', '3. بيانات الشحنه', '2021-06-30 19:09:08', '2021-06-30 19:18:33'),
(3376, 'eg', '4. Payment', '4. وسيله الدفع', '2021-06-30 19:09:08', '2021-06-30 19:22:20'),
(3377, 'eg', '5. Confirmation', '5. تفاصيل الطلب', '2021-06-30 19:09:08', '2021-06-30 19:35:04'),
(3378, 'eg', 'Remove', 'حذف', '2021-06-30 19:09:08', '2021-06-30 19:09:49'),
(3379, 'eg', 'Return to shop', 'العوده الي التسوق', '2021-06-30 19:09:08', '2021-06-30 19:14:59'),
(3380, 'eg', 'Continue to Shipping', 'متابعة', '2021-06-30 19:09:08', '2021-06-30 19:46:30'),
(3381, 'eg', 'Continue to Delivery Info', 'متابعه', '2021-06-30 19:15:17', '2021-06-30 19:18:33'),
(3382, 'eg', '+01', '+01', '2021-06-30 19:15:17', '2021-06-30 19:15:17'),
(3383, 'eg', 'Continue to Payment', 'تأكيد الطلب', '2021-06-30 19:15:21', '2021-06-30 19:20:58'),
(3384, 'eg', 'Select a payment option', 'حدد طريقه الدفع', '2021-06-30 19:21:13', '2021-06-30 19:23:12'),
(3385, 'eg', 'Cash on Delivery', 'الدفع عند الاستلام', '2021-06-30 19:21:13', '2021-06-30 20:02:59'),
(3386, 'eg', 'Or', 'Or', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3387, 'eg', 'Your wallet balance :', 'رصيد المحفظه :', '2021-06-30 19:21:14', '2021-07-03 17:42:59'),
(3388, 'eg', 'Insufficient balance', 'Insufficient balance', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3389, 'eg', 'I agree to the', 'تم الموافقه على', '2021-06-30 19:21:14', '2021-06-30 19:31:16'),
(3390, 'eg', 'terms and conditions', 'terms and conditions', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3391, 'eg', 'Complete Order', 'تأكيد الطلب', '2021-06-30 19:21:14', '2021-06-30 19:28:25'),
(3392, 'eg', 'Summary', 'تفاصيل الطلب', '2021-06-30 19:21:14', '2021-06-30 19:23:54'),
(3393, 'eg', 'Items', 'Items', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3394, 'eg', 'Total Shipping', 'تكلفة الشحن', '2021-06-30 19:21:14', '2021-06-30 19:46:30'),
(3395, 'eg', 'Have coupon code? Enter here', 'ادخل رقم كوبون الخصم', '2021-06-30 19:21:14', '2021-06-30 19:25:31'),
(3396, 'eg', 'Apply', 'Apply', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3397, 'eg', 'You need to agree with our policies', 'You need to agree with our policies', '2021-06-30 19:21:14', '2021-06-30 19:21:14'),
(3398, 'eg', 'Your order has been placed', 'Your order has been placed', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3399, 'eg', 'Bill to', 'Bill to', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3400, 'eg', 'Delivery Type', 'Delivery Type', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3401, 'eg', 'Sub Total', 'Sub Total', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3402, 'eg', 'Shipping Cost', 'تكلفة الشحن', '2021-06-30 19:32:43', '2021-06-30 19:46:30'),
(3403, 'eg', 'Total Tax', 'Total Tax', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3404, 'eg', 'Grand Total', 'Grand Total', '2021-06-30 19:32:43', '2021-06-30 19:32:43'),
(3405, 'eg', 'Your order has been placed successfully', 'Your order has been placed successfully', '2021-06-30 19:32:49', '2021-06-30 19:32:49'),
(3406, 'eg', 'Thank You for Your Order!', 'شكرا لاستخدامك أرخص.نت!', '2021-06-30 19:32:49', '2021-06-30 19:36:49'),
(3407, 'eg', 'Order Code:', 'كود الطلب:', '2021-06-30 19:32:49', '2021-06-30 19:37:36'),
(3408, 'eg', 'A copy or your order summary has been sent to', 'تم ارسال نسخه من بيانات الطلب الي', '2021-06-30 19:32:49', '2021-06-30 19:39:52'),
(3409, 'eg', 'Order Summary', 'ملخص الطلب', '2021-06-30 19:32:49', '2021-06-30 19:41:05'),
(3410, 'eg', 'Shipping address', 'عنوان العميل', '2021-06-30 19:32:49', '2021-06-30 19:46:30'),
(3411, 'eg', 'Total order amount', 'اجمالي قيمه الطلب', '2021-06-30 19:32:49', '2021-06-30 19:43:06'),
(3412, 'eg', 'Shipping', 'تكلفة الشحن', '2021-06-30 19:32:49', '2021-06-30 19:46:30'),
(3413, 'eg', 'Flat shipping rate', 'Flat shipping rate', '2021-06-30 19:32:49', '2021-06-30 19:32:49'),
(3414, 'eg', 'Coupon Discount', 'كوبون الخصم', '2021-06-30 19:32:49', '2021-06-30 19:54:56'),
(3415, 'eg', 'Write a review', 'Write a review', '2021-06-30 19:55:34', '2021-06-30 19:55:34'),
(3416, 'eg', 'Your review', 'Your review', '2021-06-30 19:55:34', '2021-06-30 19:55:34'),
(3417, 'eg', 'Submit review', 'Submit review', '2021-06-30 19:55:34', '2021-06-30 19:55:34'),
(3418, 'eg', 'Cancelled', 'Cancelled', '2021-06-30 19:58:24', '2021-06-30 19:58:24'),
(3419, 'eg', 'Confirmed', 'تم التأكيد', '2021-06-30 19:58:35', '2021-06-30 20:01:11'),
(3420, 'eg', 'Shipping method', 'وسيلة الشحن', '2021-06-30 19:58:35', '2021-06-30 20:06:37'),
(3421, 'eg', 'At stock', 'تم استلام المنتج', '2021-06-30 19:58:35', '2021-07-03 17:16:06'),
(3422, 'eg', 'N/A', 'N/A', '2021-06-30 19:58:36', '2021-06-30 19:58:36'),
(3423, 'eg', 'Order Ammount', 'اجمالي الطلب', '2021-06-30 19:58:36', '2021-06-30 20:05:05'),
(3424, 'eg', 'Order has been deleted successfully', 'Order has been deleted successfully', '2021-06-30 19:59:02', '2021-06-30 19:59:02'),
(3425, 'eg', 'Applied Refund Request', 'Applied Refund Request', '2021-06-30 20:07:18', '2021-06-30 20:07:18'),
(3426, 'eg', 'Your phone number', 'Your phone number', '2021-06-30 20:07:44', '2021-06-30 20:07:44'),
(3427, 'eg', 'Product has been duplicated successfully', 'Product has been duplicated successfully', '2021-07-03 14:06:57', '2021-07-03 14:06:57'),
(3428, 'eg', 'Search result for ', 'Search result for ', '2021-07-03 15:21:40', '2021-07-03 15:21:40'),
(3429, 'eg', 'All Orders Shipping', 'All Orders Shipping', '2021-07-03 16:27:35', '2021-07-03 16:27:35'),
(3430, 'eg', 'Shipping Screen', 'Shipping Screen', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3431, 'eg', 'Shipping By', 'Shipping By', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3432, 'eg', 'Order #', 'Order #', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3433, 'eg', 'Seller Available', 'Seller Available', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3434, 'eg', 'Delivery status has been updated', 'Delivery status has been updated', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3435, 'eg', 'Shipping status has been updated', 'Shipping status has been updated', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3436, 'eg', 'Item Status updated successfully', 'Item Status updated successfully', '2021-07-03 16:27:40', '2021-07-03 16:27:40'),
(3437, 'eg', 'Tracking Screen', 'Tracking Screen', '2021-07-03 16:42:30', '2021-07-03 16:42:30'),
(3438, 'eg', 'Item status has been updated', 'Item status has been updated', '2021-07-03 16:42:31', '2021-07-03 16:42:31'),
(3439, 'eg', 'Invalid email or password!', 'Invalid email or password!', '2021-07-03 16:45:15', '2021-07-03 16:45:15'),
(3440, 'eg', 'Item Availability', 'Item Availability', '2021-07-03 16:48:13', '2021-07-03 16:48:13'),
(3441, 'eg', 'Send Refund Request', 'Send Refund Request', '2021-07-03 17:12:19', '2021-07-03 17:12:19'),
(3442, 'eg', 'Product Price', 'Product Price', '2021-07-03 17:12:19', '2021-07-03 17:12:19'),
(3443, 'eg', 'My Welt', 'My Welt', '2021-07-03 17:12:19', '2021-07-03 17:12:19'),
(3444, 'eg', 'Bank', 'Bank', '2021-07-03 17:12:19', '2021-07-03 17:12:19'),
(3445, 'eg', 'Account Number', 'Account Number', '2021-07-03 17:12:19', '2021-07-03 17:12:19'),
(3446, 'eg', 'select Bank Name', 'select Bank Name', '2021-07-03 17:12:20', '2021-07-03 17:12:20'),
(3447, 'eg', 'Refund Reason', 'Refund Reason', '2021-07-03 17:12:20', '2021-07-03 17:12:20'),
(3448, 'eg', 'Send Request', 'Send Request', '2021-07-03 17:12:20', '2021-07-03 17:12:20'),
(3449, 'eg', 'Refund Request has been sent successfully', 'Refund Request has been sent successfully', '2021-07-03 17:12:30', '2021-07-03 17:12:30'),
(3450, 'eg', 'Refund Request Detailes', 'Refund Request Detailes', '2021-07-03 17:12:50', '2021-07-03 17:12:50'),
(3451, 'eg', 'Account No', 'Account No', '2021-07-03 17:12:50', '2021-07-03 17:12:50'),
(3452, 'eg', 'Refund status has been updated', 'Refund status has been updated', '2021-07-03 17:12:50', '2021-07-03 17:12:50'),
(3453, 'eg', 'Reason of Refund Request', 'Reason of Refund Request', '2021-07-03 17:28:11', '2021-07-03 17:28:11'),
(3454, 'eg', 'Seller Verification', 'بيانات التاجر', '2021-07-03 17:44:55', '2021-07-03 17:55:46'),
(3455, 'eg', 'Reject', 'رفض', '2021-07-03 17:44:55', '2021-07-03 17:57:03'),
(3456, 'eg', 'Accept', 'موافقة', '2021-07-03 17:44:55', '2021-07-03 17:56:36'),
(3457, 'eg', 'User Info', 'بيانات المستخدم', '2021-07-03 17:44:55', '2021-07-03 17:58:10'),
(3458, 'eg', 'Shop Info', 'بيانات المتجر', '2021-07-03 17:44:55', '2021-07-03 18:02:22'),
(3459, 'eg', 'Payment Info', 'بيانات الحساب البنكى', '2021-07-03 17:44:55', '2021-07-03 18:01:38'),
(3460, 'eg', 'I Ban Number', 'I Ban Number', '2021-07-03 17:44:55', '2021-07-03 17:44:55'),
(3461, 'eg', 'Account Papers', 'مستندات الحساب', '2021-07-03 17:44:55', '2021-07-03 17:57:47'),
(3462, 'eg', 'Company Name', 'اسم الشركه', '2021-07-03 17:44:55', '2021-07-03 17:58:43'),
(3463, 'eg', 'National Id Photo', 'صورة بطاقة الرقم القومى', '2021-07-03 17:44:55', '2021-07-03 17:59:37'),
(3464, 'eg', 'Taxs Photo', 'صورة البطاقة الضريبية', '2021-07-03 17:44:55', '2021-07-03 18:00:13'),
(3465, 'eg', 'Commercial Register Photo', 'صورة السجل التجارى', '2021-07-03 17:44:55', '2021-07-03 18:00:51'),
(3466, 'eg', 'Register your shop', 'سجل متجرك', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3467, 'eg', 'Account Info', 'بيانات الحساب', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3468, 'eg', 'Account Type', 'نوع الحساب', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3469, 'eg', 'Individual', 'فردي', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3470, 'eg', 'Choose image', 'اختر صورة', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3471, 'eg', 'Count Of Number 14 ', 'عدد الارقام 14', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3472, 'eg', 'I Ban', 'I Ban', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3473, 'eg', 'I agree to the contract', 'موافق علي العقد', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3474, 'eg', 'Read the contract', 'قراءة العقد', '2021-07-04 13:53:47', '2021-07-04 13:53:47'),
(3475, 'eg', 'You do not have enough balance to send withdraw request', 'لا يوجد رصيد كافى لطلب سحب الرصيد', '2021-07-06 14:48:39', '2021-07-06 14:57:35'),
(3476, 'eg', 'الرئيسية', 'الرئيسية', '2021-07-10 11:50:56', '2021-07-10 11:50:56'),
(3477, 'eg', 'كل الاقسام', 'كل الاقسام', '2021-07-10 11:50:56', '2021-07-10 11:50:56'),
(3478, 'eg', 'الماركات', 'الماركات', '2021-07-10 11:50:56', '2021-07-10 11:50:56'),
(3479, 'eg', 'Seller Commission', 'Seller Commission', '2021-07-10 11:54:01', '2021-07-10 11:54:01'),
(3480, 'eg', 'Email Verification - ', 'Email Verification - ', '2021-07-10 12:18:01', '2021-07-10 12:18:01'),
(3481, 'eg', 'Click Here', 'Click Here', '2021-07-10 12:18:01', '2021-07-10 12:18:01'),
(3482, 'eg', 'Registration successfull. Please verify your email.', 'Registration successfull. Please verify your email.', '2021-07-10 12:18:03', '2021-07-10 12:18:03'),
(3483, 'eg', 'تكلفة الشحن', 'تكلفة الشحن', '2021-07-10 13:24:19', '2021-07-10 13:24:19'),
(3484, 'eg', 'of seller product price will be deducted from seller earnings', 'of seller product price will be deducted from seller earnings', '2021-07-10 13:24:39', '2021-07-10 13:24:39'),
(3485, 'eg', 'This commission only works when Category Based Commission is turned off from Business Settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-07-10 13:24:39', '2021-07-10 13:24:39'),
(3486, 'eg', 'Commission doesn\'t work if seller package system add-on is activated', 'Commission doesn\'t work if seller package system add-on is activated', '2021-07-10 13:24:39', '2021-07-10 13:24:39'),
(3487, 'eg', 'Pay with wallet', 'Pay with wallet', '2021-07-10 14:25:20', '2021-07-10 14:25:20'),
(3488, 'eg', 'السعر', 'السعر', '2021-07-10 15:43:15', '2021-07-10 15:43:15'),
(3489, 'eg', 'الضريبة', 'الضريبة', '2021-07-10 15:43:15', '2021-07-10 15:43:15'),
(3490, 'eg', 'User Personal Info', 'User Personal Info', '2021-07-10 16:19:46', '2021-07-10 16:19:46'),
(3491, 'eg', 'Repeat Password', 'Repeat Password', '2021-07-10 16:19:46', '2021-07-10 16:19:46'),
(3492, 'eg', 'معلومات التحويل', 'معلومات التحويل', '2021-07-10 18:32:20', '2021-07-10 18:32:20'),
(3493, 'eg', 'هل تريد اضافة قيمة الشحن', 'هل تريد اضافة قيمة الشحن', '2021-07-10 18:32:20', '2021-07-10 18:32:20'),
(3494, 'eg', 'نعم', 'نعم', '2021-07-10 18:32:20', '2021-07-10 18:32:20'),
(3495, 'eg', 'لا', 'لا', '2021-07-10 18:32:20', '2021-07-10 18:32:20'),
(3496, 'eg', 'السياسات العامه للبيع', 'السياسات العامه للبيع', '2021-07-10 19:18:01', '2021-07-10 19:18:01'),
(3497, 'eg', 'This offer has been expired.', 'This offer has been expired.', '2021-07-15 15:54:29', '2021-07-15 15:54:29'),
(3498, 'eg', 'Enter your email address to recover your password.', 'Enter your email address to recover your password.', '2021-07-19 02:56:42', '2021-07-19 02:56:42'),
(3499, 'eg', 'Send Password Reset Link', 'Send Password Reset Link', '2021-07-19 02:56:42', '2021-07-19 02:56:42'),
(3500, 'eg', 'Back to Login', 'Back to Login', '2021-07-19 02:56:42', '2021-07-19 02:56:42'),
(3501, 'eg', 'Edit Product', 'Edit Product', '2021-12-11 10:23:52', '2021-12-11 10:23:52'),
(3502, 'eg', 'PDF Specification', 'PDF Specification', '2021-12-11 10:23:52', '2021-12-11 10:23:52'),
(3503, 'en', 'الرئيسية', 'الرئيسية', '2021-12-11 12:18:13', '2021-12-11 12:18:13'),
(3504, 'en', 'كل الاقسام', 'كل الاقسام', '2021-12-11 12:18:14', '2021-12-11 12:18:14'),
(3505, 'en', 'الماركات', 'الماركات', '2021-12-11 12:18:14', '2021-12-11 12:18:14'),
(3506, 'eg', 'Verify Your Email Address', 'Verify Your Email Address', '2021-12-11 12:28:38', '2021-12-11 12:28:38'),
(3507, 'eg', 'Before proceeding, please check your email for a verification link.', 'Before proceeding, please check your email for a verification link.', '2021-12-11 12:28:39', '2021-12-11 12:28:39'),
(3508, 'eg', 'If you did not receive the email.', 'If you did not receive the email.', '2021-12-11 12:28:40', '2021-12-11 12:28:40'),
(3509, 'eg', 'Click here to request another', 'Click here to request another', '2021-12-11 12:28:40', '2021-12-11 12:28:40'),
(3510, 'eg', 'Sorry! Something went wrong.', 'Sorry! Something went wrong.', '2021-12-12 07:32:33', '2021-12-12 07:32:33'),
(3511, 'eg', 'Your Shop has been created successfully!', 'Your Shop has been created successfully!', '2021-12-12 14:38:14', '2021-12-12 14:38:14'),
(3512, 'eg', 'A fresh verification link has been sent to your email address.', 'A fresh verification link has been sent to your email address.', '2021-12-13 06:45:43', '2021-12-13 06:45:43'),
(3513, 'eg', 'Invalid coupon!', 'Invalid coupon!', '2021-12-13 07:24:17', '2021-12-13 07:24:17'),
(3514, 'eg', 'Seller Commission updated successfully', 'Seller Commission updated successfully', '2021-12-14 06:22:55', '2021-12-14 06:22:55'),
(3515, 'eg', 'Support Desk', 'Support Desk', '2021-12-14 06:25:20', '2021-12-14 06:25:20'),
(3516, 'eg', 'Type ticket code & Enter', 'Type ticket code & Enter', '2021-12-14 06:25:20', '2021-12-14 06:25:20'),
(3517, 'eg', 'User', 'المستخدم', '2021-12-14 06:25:20', '2022-02-24 16:10:26'),
(3518, 'eg', 'Last reply', 'Last reply', '2021-12-14 06:25:20', '2021-12-14 06:25:20'),
(3519, 'eg', 'Conversation is disabled at this moment', 'Conversation is disabled at this moment', '2021-12-14 06:25:27', '2021-12-14 06:25:27'),
(3520, 'eg', 'Installed Addon', 'Installed Addon', '2021-12-14 06:44:00', '2021-12-14 06:44:00'),
(3521, 'eg', 'Available Addon', 'Available Addon', '2021-12-14 06:44:00', '2021-12-14 06:44:00'),
(3522, 'eg', 'Install/Update Addon', 'Install/Update Addon', '2021-12-14 06:44:01', '2021-12-14 06:44:01'),
(3523, 'eg', 'Version', 'Version', '2021-12-14 06:44:01', '2021-12-14 06:44:01'),
(3524, 'eg', 'Status updated successfully', 'Status updated successfully', '2021-12-14 06:44:01', '2021-12-14 06:44:01'),
(3525, 'eg', 'رقم التحويل البنكي', 'رقم التحويل البنكي', '2021-12-14 07:10:00', '2021-12-14 07:10:00'),
(3526, 'eg', 'التجار', 'التجار', '2021-12-15 05:09:21', '2021-12-15 05:09:21'),
(3527, 'en', 'التجار', 'التجار', '2021-12-15 05:20:48', '2021-12-15 05:20:48'),
(3528, 'eg', 'ازيار حريمى ', 'ازيار حريمى ', '2021-12-16 05:44:28', '2021-12-16 05:44:28'),
(3529, 'eg', 'تم الاطلاع على سياسة البيع والاسترداد الخاصة بالموقع', 'تم الاطلاع على سياسة البيع والاسترداد الخاصة بالموقع', '2021-12-16 07:48:58', '2021-12-16 07:48:58'),
(3530, 'en', 'Add to wishlist', 'Add to wishlist', '2021-12-18 08:44:03', '2021-12-18 08:44:03'),
(3531, 'eg', 'Flash Deal Information', 'Flash Deal Information', '2021-12-18 11:57:58', '2021-12-18 11:57:58'),
(3532, 'eg', 'Background Color', 'Background Color', '2021-12-18 11:57:58', '2021-12-18 11:57:58'),
(3533, 'eg', '#FFFFFF', '#FFFFFF', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3534, 'eg', 'Text Color', 'Text Color', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3535, 'eg', 'Select One', 'Select One', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3536, 'eg', 'White', 'White', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3537, 'eg', 'Dark', 'Dark', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3538, 'eg', 'This image is shown as cover banner in flash deal details page.', 'This image is shown as cover banner in flash deal details page.', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3539, 'eg', 'Choose Products', 'Choose Products', '2021-12-18 11:57:59', '2021-12-18 11:57:59'),
(3540, 'eg', 'Discounts', 'Discounts', '2021-12-18 11:58:37', '2021-12-18 11:58:37'),
(3541, 'eg', 'Discount Type', 'Discount Type', '2021-12-18 11:58:37', '2021-12-18 11:58:37'),
(3542, 'eg', 'Flash Deal has been inserted successfully', 'Flash Deal has been inserted successfully', '2021-12-18 11:58:47', '2021-12-18 11:58:47'),
(3543, 'eg', 'Flash deal status updated successfully', 'Flash deal status updated successfully', '2021-12-18 11:58:58', '2021-12-18 11:58:58'),
(3544, 'eg', '#0000ff', '#0000ff', '2021-12-18 15:19:00', '2021-12-18 15:19:00'),
(3545, 'eg', 'صورة المنتج', 'صورة المنتج', '2021-12-19 05:03:12', '2021-12-19 05:03:12'),
(3546, 'eg', 'القيمة', 'القيمة', '2021-12-19 05:30:00', '2021-12-19 05:30:00'),
(3547, 'eg', 'Money', 'Money', '2021-12-19 05:39:02', '2021-12-19 05:39:02'),
(3548, 'eg', 'سحب الرصيد', 'سحب الرصيد', '2021-12-19 05:39:19', '2021-12-19 05:39:19'),
(3549, 'eg', 'Admin can not be a seller', 'Admin can not be a seller', '2021-12-19 07:42:23', '2021-12-19 07:42:23'),
(3550, 'eg', 'Home Page Settings', 'Home Page Settings', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3551, 'eg', 'Home Slider', 'Home Slider', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3552, 'eg', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3553, 'eg', 'Photos & Links', 'Photos & Links', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3554, 'eg', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3555, 'eg', 'Banner & Links', 'Banner & Links', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3556, 'eg', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3557, 'eg', 'Home Categories', 'Home Categories', '2021-12-21 11:35:00', '2021-12-21 11:35:00'),
(3558, 'eg', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-12-21 11:35:01', '2021-12-21 11:35:01'),
(3559, 'eg', 'Top 10', 'Top 10', '2021-12-21 11:35:01', '2021-12-21 11:35:01'),
(3560, 'eg', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2021-12-21 11:35:01', '2021-12-21 11:35:01'),
(3561, 'eg', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2021-12-21 11:35:01', '2021-12-21 11:35:01'),
(3562, 'eg', 'live_chat', 'live_chat', '2022-01-08 14:51:55', '2022-01-08 14:51:55'),
(3563, 'eg', 'Flash Deal has been updated successfully', 'Flash Deal has been updated successfully', '2022-01-08 14:57:22', '2022-01-08 14:57:22'),
(3564, 'en', 'live_chat', 'live_chat', '2022-01-08 20:15:41', '2022-01-08 20:15:41'),
(3565, 'en', 'Refund categories updated successfully', 'Refund categories updated successfully', '2022-01-09 12:41:02', '2022-01-09 12:41:02'),
(3566, 'eg', 'Seller Information', 'Seller Information', '2022-01-09 13:00:10', '2022-01-09 13:00:10'),
(3567, 'eg', 'Edit Seller Information', 'Edit Seller Information', '2022-01-09 13:00:24', '2022-01-09 13:00:24'),
(3568, 'eg', 'Seller has been updated successfully', 'Seller has been updated successfully', '2022-01-09 13:11:10', '2022-01-09 13:11:10'),
(3569, 'eg', 'has not been verified yet.', 'has not been verified yet.', '2022-01-09 13:11:55', '2022-01-09 13:11:55'),
(3570, 'eg', 'Seller has been inserted successfully', 'Seller has been inserted successfully', '2022-01-09 13:13:13', '2022-01-09 13:13:13'),
(3571, 'eg', 'Seller has been deleted successfully', 'Seller has been deleted successfully', '2022-01-09 13:21:46', '2022-01-09 13:21:46'),
(3572, 'eg', 'Latest Products', 'Latest Products', '2022-01-09 14:05:17', '2022-01-09 14:05:17'),
(3573, 'eg', 'Deals Hot Of The Day', 'Deals Hot Of The Day', '2022-01-09 14:15:41', '2022-01-09 14:15:41'),
(3574, 'eg', 'Browse Categories', 'Browse Categories', '2022-01-09 14:16:14', '2022-01-09 14:16:14'),
(3575, 'eg', 'Shopping Cart', 'Shopping Cart', '2022-01-09 14:17:29', '2022-01-09 14:17:29'),
(3576, 'eg', 'Close', 'Close', '2022-01-09 14:17:29', '2022-01-09 14:17:29'),
(3577, 'eg', ' Contact Us ', ' Contact Us ', '2022-01-09 14:20:59', '2022-01-09 14:20:59'),
(3578, 'eg', 'Blog', 'Blog', '2022-01-09 14:21:29', '2022-01-09 14:21:29'),
(3579, 'eg', 'Contact Us', 'Contact Us', '2022-01-09 14:21:29', '2022-01-09 14:21:29'),
(3580, 'eg', 'Shop Now', 'Shop Now', '2022-01-09 14:30:41', '2022-01-09 14:30:41'),
(3581, 'en', 'Latest Products', 'Latest Products', '2022-01-09 14:32:10', '2022-01-09 14:32:10'),
(3582, 'en', 'Blog', 'Blog', '2022-01-09 14:32:11', '2022-01-09 14:32:11'),
(3583, 'en', 'Contact Us', 'Contact Us', '2022-01-09 14:32:11', '2022-01-09 14:32:11'),
(3584, 'en', 'Shopping Cart', 'Shopping Cart', '2022-01-09 14:32:11', '2022-01-09 14:32:11'),
(3585, 'en', 'Browse Categories', 'Browse Categories', '2022-01-09 14:32:11', '2022-01-09 14:32:11'),
(3586, 'en', 'Shop Now', 'Shop Now', '2022-01-09 14:32:11', '2022-01-09 14:32:11'),
(3587, 'eg', 'Brand Information', 'Brand Information', '2022-01-09 14:38:52', '2022-01-09 14:38:52'),
(3588, 'eg', 'Brand has been updated successfully', 'Brand has been updated successfully', '2022-01-09 14:39:20', '2022-01-09 14:39:20'),
(3589, 'eg', 'Brand has been inserted successfully', 'Brand has been inserted successfully', '2022-01-09 14:39:46', '2022-01-09 14:39:46'),
(3590, 'eg', 'Page has been deleted successfully', 'Page has been deleted successfully', '2022-01-09 14:48:45', '2022-01-09 14:48:45'),
(3591, 'eg', 'You have subscribed successfully', 'You have subscribed successfully', '2022-01-09 14:57:13', '2022-01-09 14:57:13'),
(3592, 'eg', 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter', '2022-01-09 15:27:26', '2022-01-09 15:27:26'),
(3593, 'eg', 'Get all the latest information on Events, Sales and Offers', 'Get all the latest information on Events, Sales and Offers', '2022-01-09 15:27:27', '2022-01-09 15:27:27'),
(3594, 'eg', 'Shipped By', 'Shipped By', '2022-01-09 15:35:32', '2022-01-09 15:35:32'),
(3595, 'eg', 'Daily Deals', 'Daily Deals', '2022-01-09 15:38:39', '2022-01-09 15:38:39'),
(3596, 'en', 'Deals Hot Of The Day', 'Deals Hot Of The Day', '2022-01-10 12:37:52', '2022-01-10 12:37:52'),
(3597, 'en', 'Daily Deals', 'Daily Deals', '2022-01-10 12:37:54', '2022-01-10 12:37:54'),
(3598, 'en', 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter', '2022-01-10 12:37:54', '2022-01-10 12:37:54'),
(3599, 'en', 'Get all the latest information on Events, Sales and Offers', 'Get all the latest information on Events, Sales and Offers', '2022-01-10 12:37:54', '2022-01-10 12:37:54'),
(3600, 'eg', 'Review has been submitted successfully', 'Review has been submitted successfully', '2022-01-10 13:00:38', '2022-01-10 13:00:38'),
(3601, 'eg', 'Top Rated', 'Top Rated', '2022-01-11 18:41:08', '2022-01-11 18:41:08'),
(3602, 'eg', 'rating from', 'rating from', '2022-01-11 19:11:24', '2022-01-11 19:11:24'),
(3603, 'eg', 'review ', 'review ', '2022-01-11 19:11:46', '2022-01-11 19:11:46'),
(3604, 'eg', 'review`s ', 'review`s ', '2022-01-11 19:11:55', '2022-01-11 19:11:55'),
(3605, 'eg', 'تقييم من ', 'تقييم من ', '2022-01-11 19:13:27', '2022-01-11 19:13:27'),
(3606, 'eg', 'آراء', 'آراء', '2022-01-11 19:13:28', '2022-01-11 19:13:28'),
(3607, 'eg', 'Store Open', 'Store Open', '2022-01-11 19:15:16', '2022-01-11 19:15:16'),
(3608, 'eg', 'Vendor', 'Vendor', '2022-01-11 20:02:14', '2022-01-11 20:02:14'),
(3609, 'eg', 'Store', 'Store', '2022-01-11 20:02:14', '2022-01-11 20:02:14'),
(3610, 'en', 'Vendor', 'Vendor', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3611, 'en', 'Store', 'Store', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3612, 'en', 'Top Rated', 'Top Rated', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3613, 'en', 'تقييم من ', 'تقييم من ', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3614, 'en', 'آراء', 'آراء', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3615, 'en', 'Store Open', 'Store Open', '2022-01-26 12:12:54', '2022-01-26 12:12:54'),
(3616, 'eg', 'Item has been added to cart', 'Item has been added to cart', '2022-01-26 14:05:59', '2022-01-26 14:05:59'),
(3617, 'en', 'Item has been added to cart', 'Item has been added to cart', '2022-01-27 10:14:26', '2022-01-27 10:14:26'),
(3618, 'eg', 'Top Categories', 'Top Categories', '2022-01-29 09:22:43', '2022-01-29 09:22:43'),
(3619, 'eg', 'More Products', 'More Products', '2022-01-29 09:22:44', '2022-01-29 09:22:44'),
(3620, 'eg', 'Top weekly Seller', 'Top weekly Seller', '2022-01-29 09:24:05', '2022-01-29 09:24:05'),
(3621, 'eg', 'Trending Collection', 'Trending Collection', '2022-01-29 09:24:06', '2022-01-29 09:24:06'),
(3622, 'eg', 'skate-', 'skate-', '2022-01-29 09:24:06', '2022-01-29 09:24:06'),
(3623, 'eg', 'Roller', 'Roller', '2022-01-29 09:24:06', '2022-01-29 09:24:06'),
(3624, 'eg', 'Download our new app today! Dont Miss our mobile-only offers and shop with Android Play.', 'Download our new app today! Dont Miss our mobile-only offers and shop with Android Play.', '2022-01-29 09:26:26', '2022-01-29 09:26:26'),
(3625, 'eg', 'Discover Now', 'Discover Now', '2022-01-29 09:26:27', '2022-01-29 09:26:27'),
(3626, 'eg', 'Top Weekly Vendors', 'Top Weekly Vendors', '2022-01-29 09:47:34', '2022-01-29 09:47:34'),
(3627, 'eg', 'All vendors', 'All vendors', '2022-01-31 09:05:57', '2022-01-31 09:05:57'),
(3628, 'eg', 'not data found', 'not data found', '2022-01-31 09:54:20', '2022-01-31 09:54:20'),
(3629, 'eg', 'select city ', 'select city ', '2022-01-31 10:36:39', '2022-01-31 10:36:39'),
(3630, 'en', 'All vendors', 'All vendors', '2022-01-31 11:58:08', '2022-01-31 11:58:08'),
(3631, 'eg', 'Accessories Collection', 'Accessories Collection', '2022-01-31 12:11:31', '2022-01-31 12:11:31'),
(3632, 'eg', 'Smart Wrist', 'Smart Wrist', '2022-01-31 12:11:31', '2022-01-31 12:11:31'),
(3633, 'eg', 'Discover', 'Discover', '2022-01-31 12:11:31', '2022-01-31 12:11:31'),
(3634, 'eg', 'Smart Wrist Watches', 'Smart Wrist Watches', '2022-01-31 12:21:54', '2022-01-31 12:21:54'),
(3635, 'eg', 'Seller has been approved successfully', 'Seller has been approved successfully', '2022-02-01 11:30:59', '2022-02-01 11:30:59'),
(3636, 'eg', 'The requested quantity is not available for ', 'The requested quantity is not available for ', '2022-02-08 13:30:25', '2022-02-08 13:30:25'),
(3637, 'eg', 'remove and recalculate order', 'remove and recalculate order', '2022-02-08 13:50:59', '2022-02-08 13:50:59'),
(3638, 'eg', 'Removed From Order', 'Removed From Order', '2022-02-08 13:52:37', '2022-02-08 13:52:37'),
(3639, 'eg', 'Item Removed From Order', 'Item Removed From Order', '2022-02-08 13:52:55', '2022-02-08 13:52:55'),
(3640, 'eg', 'refunded', 'مرتجع', '2022-02-08 14:42:07', '2022-02-08 14:43:22'),
(3641, 'eg', 'Txn Code', 'Txn Code', '2022-02-14 13:16:14', '2022-02-14 13:16:14'),
(3642, 'eg', 'Due to admin', 'Due to admin', '2022-02-14 13:37:00', '2022-02-14 13:37:00'),
(3643, 'eg', 'Clear due', 'Clear due', '2022-02-14 13:37:00', '2022-02-14 13:37:00'),
(3644, 'eg', 'view\n                                    Report', 'view\n                                    Report', '2022-02-16 12:28:14', '2022-02-16 12:28:14'),
(3645, 'eg', 'Bunner All  Category', 'Bunner All  Category', '2022-02-19 14:12:37', '2022-02-19 14:12:37'),
(3646, 'eg', 'Bunner', 'Bunner', '2022-02-19 14:12:37', '2022-02-19 14:12:37'),
(3647, 'eg', 'Paypal', 'Paypal', '2022-02-19 15:21:20', '2022-02-19 15:21:20'),
(3648, 'eg', 'available Balance', 'رصيد متاح', '2022-02-19 16:16:59', '2022-02-19 19:18:39'),
(3649, 'eg', 'Balance in progress', 'رصيد قيد التنفيذ', '2022-02-19 18:47:14', '2022-02-19 19:18:54'),
(3650, 'en', 'سحب الرصيد', 'سحب الرصيد', '2022-02-19 18:56:16', '2022-02-19 18:56:16'),
(3651, 'eg', 'TRX ID', 'TRX ID', '2022-02-19 19:27:11', '2022-02-19 19:27:11'),
(3652, 'en', 'Download our new app today! Dont Miss our mobile-only offers and shop with Android Play.', 'Download our new app today! Dont Miss our mobile-only offers and shop with Android Play.', '2022-02-21 12:16:28', '2022-02-21 12:16:28'),
(3653, 'en', 'Top Weekly Vendors', 'Top Weekly Vendors', '2022-02-21 12:16:29', '2022-02-21 12:16:29'),
(3654, 'en', 'Top Categories', 'Top Categories', '2022-02-21 12:16:29', '2022-02-21 12:16:29'),
(3655, 'en', 'More Products', 'More Products', '2022-02-21 12:16:29', '2022-02-21 12:16:29'),
(3656, 'en', 'Discover Now', 'Discover Now', '2022-02-21 12:16:29', '2022-02-21 12:16:29'),
(3657, 'eg', 'Attribute has been inserted successfully', 'Attribute has been inserted successfully', '2022-02-23 12:27:32', '2022-02-23 12:27:32'),
(3658, 'eg', 'Newsletter has been send', 'Newsletter has been send', '2022-02-23 12:35:01', '2022-02-23 12:35:01'),
(3659, 'eg', 'Coupon Information Adding', 'Coupon Information Adding', '2022-02-23 12:35:18', '2022-02-23 12:35:18'),
(3660, 'eg', 'Coupon Type', 'Coupon Type', '2022-02-23 12:35:18', '2022-02-23 12:35:18'),
(3661, 'eg', 'For Products', 'For Products', '2022-02-23 12:35:18', '2022-02-23 12:35:18'),
(3662, 'eg', 'For Total Orders', 'For Total Orders', '2022-02-23 12:35:18', '2022-02-23 12:35:18'),
(3663, 'eg', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2022-02-23 12:35:25', '2022-02-23 12:35:25'),
(3664, 'eg', 'Coupon code', 'Coupon code', '2022-02-23 12:35:25', '2022-02-23 12:35:25'),
(3665, 'eg', 'Minimum Shopping', 'Minimum Shopping', '2022-02-23 12:35:25', '2022-02-23 12:35:25'),
(3666, 'eg', 'Maximum Discount Amount', 'Maximum Discount Amount', '2022-02-23 12:35:25', '2022-02-23 12:35:25'),
(3667, 'eg', 'Coupon has been saved successfully', 'Coupon has been saved successfully', '2022-02-23 12:36:13', '2022-02-23 12:36:13'),
(3668, 'eg', 'Cart Base', 'Cart Base', '2022-02-23 12:36:14', '2022-02-23 12:36:14'),
(3669, 'eg', 'Coupon has been applied', 'Coupon has been applied', '2022-02-23 12:37:00', '2022-02-23 12:37:00'),
(3670, 'eg', 'Change Coupon', 'Change Coupon', '2022-02-23 12:37:01', '2022-02-23 12:37:01'),
(3671, 'en', 'Top weekly Seller', 'Top weekly Seller', '2022-02-24 12:28:42', '2022-02-24 12:28:42'),
(3672, 'en', 'Trending Collection', 'Trending Collection', '2022-02-24 12:28:42', '2022-02-24 12:28:42'),
(3673, 'en', 'skate-', 'skate-', '2022-02-24 12:28:42', '2022-02-24 12:28:42'),
(3674, 'en', 'Roller', 'Roller', '2022-02-24 12:28:43', '2022-02-24 12:28:43'),
(3675, 'eg', 'activity log', 'سجل النشاطات', '2022-02-24 15:02:15', '2022-02-24 16:09:41'),
(3676, 'eg', 'Sort by Date', 'Sort by Date', '2022-02-24 15:14:16', '2022-02-24 15:14:16'),
(3677, 'eg', 'Log Name', 'اسم النشاط', '2022-02-24 15:14:16', '2022-02-24 16:09:16'),
(3678, 'eg', 'Subjict', 'Subjict', '2022-02-24 15:14:17', '2022-02-24 15:14:17'),
(3679, 'eg', 'Subject Activity', 'Subject Activity', '2022-02-24 15:23:59', '2022-02-24 15:23:59'),
(3680, 'eg', 'Select User', 'اختر مستخدم', '2022-02-24 16:06:09', '2022-02-24 16:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tes-img1', 'uploads/all/tqThHgYFr5EHB9YaggqPvBX8eXsvQfodIEIl8eQd.jpg', 3, 57651, 'jpg', 'image', '2021-02-08 19:29:01', '2021-02-08 19:29:01', NULL),
(2, 'ZHbGLsXMXY5TDtJ3N3Q3v9mhyhMmQLoAsaetUnTk', 'uploads/all/Mg0FAQPHfeStyDLg8HwryreKFgd3hUM6T4AssWWN.png', 9, 43796, 'png', 'image', '2021-02-08 19:54:15', '2021-02-08 19:54:15', NULL),
(3, 'zhY63GpxiqruSNVTtwpljpt5VRBrRHyUVRYwCZSi', 'uploads/all/jExWhiBu7dZA1AmvyvpV2serSh0fIKy0ULh6keWc.jpg', 9, 322134, 'jpeg', 'image', '2021-02-08 19:56:36', '2021-02-08 19:56:36', NULL),
(4, 'mlOD3QBFGGTtonTpeKXnPPeLpHDYu9reQbwEz4vO', 'uploads/all/oTBDAULLMqeMztVqPnxs1bjWGoe03VUxkhwfMtLs.jpg', 9, 70934, 'jpeg', 'image', '2021-02-08 22:35:20', '2021-02-08 22:35:20', NULL),
(5, 'EPXlWGJDF87P6nZMlwvJwJTVOQ2l4VOFFtiwms6f', 'uploads/all/BxPOfJThbeMh219nAbiWr1NvkKnqZWFM1NJFOQEp.jpg', 9, 71958, 'jpeg', 'image', '2021-02-08 22:35:20', '2021-02-08 22:35:20', NULL),
(6, 'tVsMfnpNFLey6YoesbSnnaQmURRqbzif1IcwFvlQ', 'uploads/all/ojX4vs95wNpKzn6nD1a8bu1a9ILjrSm3IGQSJyfa.jpg', 9, 64794, 'jpeg', 'image', '2021-02-08 22:35:20', '2021-02-08 22:35:20', NULL),
(7, 'ieBJmX1CGgKeQvzZ6GLgGp3iiQXA2vxJxoRBnEjD', 'uploads/all/tNUZ6Y9oiYqdb0mKtdDMnIkvmmndcz92RdELViOg.png', 9, 15871, 'png', 'image', '2021-02-08 22:44:05', '2021-02-08 22:44:05', NULL),
(8, 'ZHbGLsXMXY5TDtJ3N3Q3v9mhyhMmQLoAsaetUnTk', 'uploads/all/UCbFjdMIyCKEHcuWSiZhdhSxcF6XJlw7bzunz8fE.png', 11, 43796, 'png', 'image', '2021-02-10 22:21:27', '2021-02-10 22:21:27', NULL),
(9, 'ieBJmX1CGgKeQvzZ6GLgGp3iiQXA2vxJxoRBnEjD', 'uploads/all/Lee9Lov26O1tyPoxgcFNocdgqiv1REKm33IFcfX8.png', 11, 15871, 'png', 'image', '2021-02-10 23:16:39', '2021-02-10 23:16:39', NULL),
(10, '10b611_00b9b8c85259498ba8542fa60c579f2c_mv2', 'uploads/all/9u56zFk0Q6me8LWyDXw83ZZMRVWvEwBEPfMqTNPT.webp', 9, 118252, 'webp', 'image', '2021-02-12 00:28:09', '2021-02-12 00:28:09', NULL),
(11, 'logo (3)', 'uploads/all/sMBZ2R1BrB01bkeL313thNNGHg292RExogqYdMHD.png', 13, 9254, 'png', 'image', '2021-02-13 06:12:26', '2021-02-13 06:12:26', NULL),
(12, 'order-20210211-02370345', 'uploads/all/22w5iwCx3YUPrdwD0CpnV0AcjWK899CPdxTlrZyE.pdf', 3, 56347, 'pdf', 'document', '2021-02-13 10:02:55', '2021-02-13 10:02:55', NULL),
(13, 'logo (2)', 'uploads/all/TpxMEAJMdYwa4dRtObC71KfKATYkOdrp7HnFDPnB.png', 9, 16136, 'png', 'image', '2021-02-21 00:44:02', '2021-02-21 00:44:02', NULL),
(14, 'WhatsApp Image 2020-12-07 at 2.33.50 PM', 'uploads/all/DZR07pmtOxH2OQEbeqK4CIAuxu1VM8sGH9Ng03vE.jpg', 54, 109629, 'jpeg', 'image', '2021-03-03 19:04:26', '2021-03-03 19:04:26', NULL),
(15, 'download (1)', 'uploads/all/35Qrl1YBfyf1Wv3NgMl9U3A6rNv7cmjmjb25IQRW.jpg', 54, 5474, 'jpg', 'image', '2021-03-04 18:22:55', '2021-03-04 18:22:55', NULL),
(16, 'download (4)', 'uploads/all/meTzZe2lw5yPRftM70griaUfiYBKrVoiW91Fz9br.jpg', 54, 5196, 'jpg', 'image', '2021-03-04 18:22:55', '2021-03-04 18:22:55', NULL),
(17, 'download', 'uploads/all/rtYAj8Z9c3j4IU0KR7yyqTFYkgk08KQEyHoFc1XJ.jpg', 54, 3080, 'jpg', 'image', '2021-03-04 18:22:55', '2021-03-04 18:22:55', NULL),
(18, 'download (1)', 'uploads/all/dCyOYZe901tPoW1XR7Kl4V8x7EsybJ92TxJM45Ii.jpg', 54, 6730, 'jpg', 'image', '2021-03-04 18:47:42', '2021-03-04 18:47:42', NULL),
(19, 'download', 'uploads/all/QKeXt9yxXyIgbnlBBR3ToyAAawHlh3FW4WUyUxEB.jpg', 54, 3661, 'jpg', 'image', '2021-03-04 18:47:42', '2021-03-04 18:47:42', NULL),
(20, 'download (2)', 'uploads/all/y6L7jMqkPybBCX5kRjGkLWQ6yCHZuyaUfRlODRyq.jpg', 54, 5389, 'jpg', 'image', '2021-03-04 18:47:43', '2021-03-04 18:47:43', NULL),
(21, 'Untitled-1', 'uploads/all/8Z7dKwLE0is6dTCZg9fbNICJIbeU0JcPmcTM35Pd.jpg', 51, 854066, 'jpg', 'image', '2021-03-04 23:31:21', '2021-03-04 23:31:21', NULL),
(22, 'Untitled-1', 'uploads/all/iqmZYoaqiPtNnTrmnRyIrZZNYUOqPfXDBKupx1Pk.jpg', 51, 810529, 'jpg', 'image', '2021-03-04 23:34:45', '2021-03-04 23:34:45', NULL),
(23, '82772112_1475415625947944_3551341266870468608_n', 'uploads/all/UWevkf2p1forXgH3hvoSQS2F73uRQ4rRKedKdkWc.jpg', 59, 49257, 'jpg', 'image', '2021-03-09 19:33:58', '2021-03-09 19:33:58', NULL),
(24, '81-ar%2B3pt9L._AC_UX500_', 'uploads/all/urid6WOveE71aSYiw76HuUw3L948N7BGtw4QRiiO.jpg', 57, 16528, 'jpg', 'image', '2021-03-09 21:52:57', '2021-03-09 21:52:57', NULL),
(25, '71x7BUM7yZL._AC_UY695_', 'uploads/all/CgTQQ3CyrZqhzGWOZJBI4fIjaQuFt4EwBaxxdGss.jpg', 57, 32252, 'jpg', 'image', '2021-03-09 21:52:57', '2021-03-09 21:52:57', NULL),
(26, '811l6qm4yCL._AC_UX500_', 'uploads/all/rRIp4WCQkBIrV9judq1nNpYLuXE6y3OPfAmJwAGa.jpg', 57, 16100, 'jpg', 'image', '2021-03-09 21:52:57', '2021-03-09 21:52:57', NULL),
(27, '71QBHaDGU5L._AC_UX500_', 'uploads/all/ua7kI81ZzpqNtapjzPk9YfthBlzqJUf5zIMwisWn.jpg', 57, 13753, 'jpg', 'image', '2021-03-09 21:52:58', '2021-03-09 21:52:58', NULL),
(28, '718jq5nmiJL._AC_UX500_', 'uploads/all/F7xlpMhbjC2HaRVzTclGBDWX1gZoKlLRHLIAL5Ce.jpg', 57, 11423, 'jpg', 'image', '2021-03-09 21:53:06', '2021-03-09 21:53:06', NULL),
(29, 'WhatsApp Image 2020-12-07 at 3.10.52 PM', 'uploads/all/g12FWLbcQo15xISA9LF74R17NaAhZbq92MPOUr08.jpg', 58, 65075, 'jpeg', 'image', '2021-03-09 21:54:05', '2021-03-09 21:54:05', NULL),
(30, '82772112_1475415625947944_3551341266870468608_n', 'uploads/all/oWhI55HSR9mUIClx4pTq876WX6p29L9KIekVifAW.jpg', 62, 49257, 'jpg', 'image', '2021-03-10 16:17:06', '2021-03-10 16:17:06', NULL),
(31, '81BuRyTVUUL._AC_UX500_', 'uploads/all/3KgOTywO7T7sfZg9HU3ySFtQwSQKA0VyL8sREc2v.jpg', 58, 15642, 'jpg', 'image', '2021-03-10 16:58:05', '2021-03-10 16:58:05', NULL),
(32, '71gvbJWOzDL._AC_UY695_', 'uploads/all/YoI0UWFOl5pqmc5dqj4PTnYEtgRcaaAHAdi4QLVJ.jpg', 58, 23461, 'jpg', 'image', '2021-03-10 16:58:05', '2021-03-10 16:58:05', NULL),
(33, '81MsTNo0jAL._AC_UX500_', 'uploads/all/1sMNklMSg8bnNG4JaQwAElEOs75LXGATTjiIhzUF.jpg', 58, 10471, 'jpg', 'image', '2021-03-10 16:58:06', '2021-03-10 16:58:06', NULL),
(34, '71kRGGEGcwL._AC_UY695_', 'uploads/all/42sd4xc0eax5odwApbOVb8y7gE5a6GrM19p0ZPFM.jpg', 58, 32746, 'jpg', 'image', '2021-03-10 16:58:06', '2021-03-10 16:58:06', NULL),
(35, '8152u-TJAOL._AC_UX500_', 'uploads/all/GmPolPLgCwSZR97NULNcKvenR1dbBAuIsITL6eBn.jpg', 58, 19199, 'jpg', 'image', '2021-03-10 16:58:06', '2021-03-10 16:58:06', NULL),
(36, '81fTUw5ojlL._AC_UX500_', 'uploads/all/VGky3o2HX3rEDX7VwIb0SyWbIsQxIarYgpHWbU35.jpg', 58, 10727, 'jpg', 'image', '2021-03-10 16:58:07', '2021-03-10 16:58:07', NULL),
(37, 'Home-logo', 'uploads/all/jmQ8HEpiwF4NPBVDvmEh8qB3QmbMlXsxaDDso11s.jpg', 58, 44879, 'jpg', 'image', '2021-03-10 17:15:04', '2021-03-10 17:15:04', NULL),
(38, '71CRB7%2BnAoL._UX625_', 'uploads/all/Jf1ZSwfd6rQTZyi8yGLWFMGNSvJIfgTTE4Xp5137.jpg', 64, 12945, 'jpg', 'image', '2021-03-10 18:44:38', '2021-03-10 18:44:38', NULL),
(39, '81AIdXq3LvL._UX625_', 'uploads/all/mevD4AvWXYSGA8VEMmdACZHUkVL3OIdldVZkMi2Z.jpg', 64, 25320, 'jpg', 'image', '2021-03-10 18:44:39', '2021-03-10 18:44:39', NULL),
(40, '81VvXsRRydL._UX625_', 'uploads/all/x26wrOlkZIrsMNk6bbe060kNynrQyJOOsSrxbZIi.jpg', 64, 29781, 'jpg', 'image', '2021-03-10 18:44:39', '2021-03-10 18:44:39', NULL),
(41, '818Byj0ZIyL._UX625_', 'uploads/all/9GU1bNK9SxdfBf76HfiSQCaUFQu3Uk7RsgqKMcEH.jpg', 64, 23178, 'jpg', 'image', '2021-03-10 18:44:40', '2021-03-10 18:44:40', NULL),
(42, '71kTRQTjMpL._UY695_', 'uploads/all/IpKxTvfnEUKakLj6VqRfacwV9B6D6LoaPZ4TVyKq.jpg', 64, 24378, 'jpg', 'image', '2021-03-10 18:44:41', '2021-03-10 18:44:41', NULL),
(43, '81RN0KIP9mL._UX625_', 'uploads/all/oyXnbtkKW6J1nsIjhGrHnEqHeqr33oQ4G7U025KZ.jpg', 64, 22447, 'jpg', 'image', '2021-03-10 18:44:41', '2021-03-10 18:44:41', NULL),
(44, 'حرف ط', 'uploads/all/DQJYFxZM7R18S93aF1HHQbdwfnLtdYSRZDYOxHJY.docx', 51, 1466934, 'docx', 'document', '2021-03-11 17:26:42', '2021-03-11 17:26:42', NULL),
(45, 'Category', 'uploads/all/xeH99FezcsemNo5sXzR600DStBSlPXDRiLPWpwkA.xlsx', 64, 9906, 'xlsx', 'document', '2021-03-16 17:53:12', '2021-03-16 17:53:12', NULL),
(46, 'Brand', 'uploads/all/A6kz6PGONTHt9hdsvcZ1MiZ15RbYnc5ciZEiF5bQ.xlsx', 51, 6375, 'xlsx', 'document', '2021-03-16 18:11:15', '2021-03-16 18:11:15', NULL),
(47, 'WhatsApp Image 2021-02-14 at 10.53.30 AM', 'uploads/all/iC67ACEXlXKaT2rscKpbXAZpS99cHScbA6gaU6Fe.jpg', 72, 7226, 'jpeg', 'image', '2021-04-17 10:52:38', '2021-04-17 10:52:38', NULL),
(48, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (3)', 'uploads/all/4qerxUbV2Ev40ajil17VsPuk7O0e2SMM81o6v6os.jpg', 72, 6468, 'jpeg', 'image', '2021-04-17 10:52:57', '2021-04-17 10:52:57', NULL),
(49, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (2)', 'uploads/all/z06msnMKemOV9KAfCl3ZFNPXR9755DZNG4VHZnxk.jpg', 72, 7375, 'jpeg', 'image', '2021-04-17 10:52:58', '2021-04-17 10:52:58', NULL),
(50, 'WhatsApp Image 2021-02-14 at 10.53.30 AM', 'uploads/all/RUrkwUBb2ZxdScgvIEcSkT3slDx1pYJqzIczETla.jpg', 72, 7226, 'jpeg', 'image', '2021-04-17 10:52:58', '2021-04-17 10:52:58', NULL),
(51, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (1)', 'uploads/all/imE9BdBi9v9xAnomUsnX9WITtHKij9RFHXQnxnYz.jpg', 72, 7226, 'jpeg', 'image', '2021-04-17 10:52:58', '2021-04-17 10:52:58', NULL),
(52, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (3)', 'uploads/all/ts6HMFov0c1rRr5n0k07jyiEpk1E1xCzcDkShWM7.jpg', 74, 6468, 'jpeg', 'image', '2021-05-01 12:32:59', '2021-05-01 12:32:59', NULL),
(53, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (2)', 'uploads/all/lRme9rOUHShXbkNqpLRnqNflkvZ3hb0T07ZsAXyW.jpg', 74, 7375, 'jpeg', 'image', '2021-05-01 12:32:59', '2021-05-01 12:32:59', NULL),
(54, 'WhatsApp Image 2021-02-14 at 10.53.30 AM', 'uploads/all/Bp1FcjppJ5QZWTEetYMgbHvvfyDZSWFDlwKt4hlW.jpg', 74, 7226, 'jpeg', 'image', '2021-05-01 12:32:59', '2021-05-01 12:32:59', NULL),
(55, 'WhatsApp Image 2021-02-14 at 12.47.19 PM (1)', 'uploads/all/S9IauojSyz7VTKh3xdjKs3IRshco3lXPvnQalzrx.jpg', 74, 7226, 'jpeg', 'image', '2021-05-01 12:32:59', '2021-05-01 12:32:59', NULL),
(56, '300', 'uploads/all/1e81K9zgI5dcrPtQYiIsJuqMNFcgSZWsvFB5pbn7.jpg', 75, 39896, 'jpg', 'image', '2021-05-25 17:57:30', '2021-05-25 17:57:30', NULL),
(57, '500', 'uploads/all/Ks7lJz45rBVT4KFkxHfDih6FVnxOPFKMT1mAdYKs.jpg', 75, 73291, 'jpg', 'image', '2021-05-25 17:57:30', '2021-05-25 17:57:30', NULL),
(58, '300-1', 'uploads/all/z9gEIxn46PMmZE5oCsOkp2Omf29Yc9wBbRb82oBE.jpg', 75, 56441, 'jpg', 'image', '2021-05-25 18:57:32', '2021-05-25 18:57:32', NULL),
(59, '500-1', 'uploads/all/Y9uWHNvFlgeEu2zyPaV0BaVXy370pfIBOIMWfydi.jpg', 75, 99487, 'jpg', 'image', '2021-05-25 18:57:44', '2021-05-25 18:57:44', NULL),
(60, '91pGsW2KH4L', 'uploads/all/NUotiH1Q4KCUyGFK8GteDAKqCGBt9H09HkXIYn8d.jpg', 75, 114729, 'jpg', 'image', '2021-05-25 18:57:57', '2021-05-25 18:57:57', NULL),
(61, '81EDkr5pt3L._AC_UY445_', 'uploads/all/nQnTaSS4jg18OZDpCR6JeoWXGQxagIA5WNdh9DV3.jpg', 75, 24952, 'jpg', 'image', '2021-05-25 18:58:25', '2021-05-25 18:58:25', NULL),
(62, '81KhW-cgCkL._AC_UX342_', 'uploads/all/8GTGDMHa3epGqyjLsGuRLrjxjkQre5gq0vCKpQwe.jpg', 75, 20137, 'jpg', 'image', '2021-05-25 18:58:25', '2021-05-25 18:58:25', NULL),
(63, '81lOy9d1HFL._AC_UX679_', 'uploads/all/lDQeBsw7cGVFeuNd9ikVo7L13syXVWVd6iayI7oK.jpg', 75, 29650, 'jpg', 'image', '2021-05-25 18:58:26', '2021-05-25 18:58:26', NULL),
(64, '81Sw7Y1FLML._AC_UX679_', 'uploads/all/5M8oKakmXU9C0EUyWox9UErpvWPQYLbxHuc2GAEy.jpg', 75, 35289, 'jpg', 'image', '2021-05-25 18:58:26', '2021-05-25 18:58:26', NULL),
(65, '81I7buwqjwL._AC_UX679_', 'uploads/all/Izd74ZvcoVdiYuVOUm6QcLOhhoTAuprK1AkDxQXm.jpg', 75, 31825, 'jpg', 'image', '2021-05-25 18:58:26', '2021-05-25 18:58:26', NULL),
(66, '300-1', 'uploads/all/c5kzoFgHflSv1SggoxarmyURHuzP3nTdUeJA7zKu.jpg', 75, 44006, 'jpg', 'image', '2021-05-25 19:12:06', '2021-05-25 19:12:06', NULL),
(67, '511aA0z2ulL._AC_UY500_', 'uploads/all/VVptfZuQ1CHFRbqvdYvYzNbMZ6FKy3EwXbYPB914.jpg', 75, 28366, 'jpg', 'image', '2021-05-25 19:12:06', '2021-05-25 19:12:06', NULL),
(68, '500-1', 'uploads/all/D94M9QheergEcTt64tYU5dmOBFsPs8kgMiPJhAIB.jpg', 75, 74269, 'jpg', 'image', '2021-05-25 19:12:07', '2021-05-25 19:12:07', NULL),
(69, '500', 'uploads/all/UpSsLf6Hg19Np8x91Nin7tpqIj4vXfFvYL8wAgSD.jpg', 75, 90210, 'jpg', 'image', '2021-05-25 19:12:08', '2021-05-25 19:12:08', NULL),
(70, '500-1', 'uploads/all/0ykhsT0JrXrpycgLaFJ8KgiT9RCueZ9QzXB1U6hS.jpg', 75, 61349, 'jpg', 'image', '2021-05-25 19:20:22', '2021-05-25 19:20:22', NULL),
(71, 'mg120286', 'uploads/all/ezp6BBuJ6oeDXGUKLGnOXm5WA5MDZF0oLmJiPOz6.jpg', 75, 21182, 'jpg', 'image', '2021-05-25 19:20:22', '2021-05-25 19:20:22', NULL),
(72, 'm479691', 'uploads/all/iatsmr09MP5cQnVWupnb2xwNzLhy2DBal83LqYgn.jpg', 75, 30873, 'jpg', 'image', '2021-05-25 19:20:22', '2021-05-25 19:20:22', NULL),
(73, 'mg120164', 'uploads/all/scfUKhjwLWKuPo9Bcc1aeY1GUXHYihR2hlMLMobn.jpg', 75, 49507, 'jpg', 'image', '2021-05-25 19:20:22', '2021-05-25 19:20:22', NULL),
(74, '300-1', 'uploads/all/v4CwySRbXiMlyqh0jQKgXhdpBM4cBRTLKPBWRd9r.jpg', 75, 55879, 'jpg', 'image', '2021-05-25 19:20:22', '2021-05-25 19:20:22', NULL),
(75, 'mg120232', 'uploads/all/JTYu8XZym66ljTf86hoP3rt8GzXs4a25UCzrmzzL.jpg', 75, 23757, 'jpg', 'image', '2021-05-25 19:20:23', '2021-05-25 19:20:23', NULL),
(76, '300-1', 'uploads/all/6JLf32NHa5QWFxOqaih5cicnpHOOc9tDEgBPaOt4.jpg', 75, 33992, 'jpg', 'image', '2021-05-25 19:41:30', '2021-05-25 19:41:30', NULL),
(77, '500-1', 'uploads/all/WRWYa9p7pvoIH48mXDbjnIDv4gj2kWx9mv1HlrZd.jpg', 75, 52855, 'jpg', 'image', '2021-05-25 19:41:30', '2021-05-25 19:41:30', NULL),
(78, '0000199864735_2__zo', 'uploads/all/KJf2MgszNRZm03DgpGDh9aAK8rZTseIYPXYYnHob.jpg', 75, 64484, 'jpg', 'image', '2021-05-25 19:41:30', '2021-05-25 19:41:30', NULL),
(79, '0000199864735_4__zo', 'uploads/all/1KttJUsdygjuH2lRMnwxqvnqj8inkEAUMD0ycjAQ.jpg', 75, 45621, 'jpg', 'image', '2021-05-25 19:41:31', '2021-05-25 19:41:31', NULL),
(80, '0000199864735_3__zo', 'uploads/all/iYLTwQZ6lSTOSH4r1kHeWmPYIWdQMjAbmcYqUnFo.jpg', 75, 35514, 'jpg', 'image', '2021-05-25 19:41:31', '2021-05-25 19:41:31', NULL),
(81, '0000199864735_5__zo', 'uploads/all/fbAsZFpQ2SFEhukxPJdJ1sX5SRCCseILK0ReQ8gW.jpg', 75, 46495, 'jpg', 'image', '2021-05-25 19:41:32', '2021-05-25 19:41:32', NULL),
(82, '300-', 'uploads/all/s1evegaI6LOlIC6QYYI8HCZuKmrG5hQm9lkblQK7.jpg', 75, 52989, 'jpg', 'image', '2021-05-26 16:24:21', '2021-05-26 16:24:21', NULL),
(83, '500-', 'uploads/all/LfmFfDLLXN9vAGmaVLiF9cSfsJ1LmfMY29cC3u3Q.jpg', 75, 102442, 'jpg', 'image', '2021-05-26 16:24:22', '2021-05-26 16:24:22', NULL),
(84, '300', 'uploads/all/86eVzQWoa6b8gTHuffwNYrF7nEssY8YKgmn3hG0P.jpg', 75, 50944, 'jpg', 'image', '2021-05-26 19:08:47', '2021-05-26 19:08:47', NULL),
(85, '500-1', 'uploads/all/qWKzvyQtyugTqNQIUQuNr9q4ArVbX4CsNU028hro.jpg', 75, 81417, 'jpg', 'image', '2021-05-26 19:08:49', '2021-05-26 19:08:49', NULL),
(86, '500', 'uploads/all/FKRYNz43aL9rIO5cvHqCDvvv8ZysdBAamtEFEgWq.jpg', 75, 88514, 'jpg', 'image', '2021-05-26 19:08:49', '2021-05-26 19:08:49', NULL),
(87, '300-500', 'uploads/all/KSVoAC5la1rPkXvhJrn2lHzA3UcYWPPhofK0ZYT5.jpg', 75, 39225, 'jpg', 'image', '2021-05-26 19:20:35', '2021-05-26 19:20:35', NULL),
(88, 'F300-500', 'uploads/all/b3jQT1U0ZpTxyqNSb0RxfRileci9TYETq2FRjGub.jpg', 75, 44543, 'jpg', 'image', '2021-05-26 19:23:39', '2021-05-26 19:23:39', NULL),
(89, '300-500-1', 'uploads/all/7YWTHtILtiubYE9tRepXUrWAwpsWKtFMWwxh559L.jpg', 75, 44299, 'jpg', 'image', '2021-05-26 19:29:09', '2021-05-26 19:29:09', NULL),
(90, '300-500-2', 'uploads/all/vHguzsKaMYQgASIMOCxU4vk7vngmlvMmViI36w5N.jpg', 75, 42977, 'jpg', 'image', '2021-05-26 19:29:09', '2021-05-26 19:29:09', NULL),
(91, '300-500-3', 'uploads/all/zsvaQ3i9y6mUZTNYoMPeLbArwQ7GydSp9GPrgygi.jpg', 75, 42589, 'jpg', 'image', '2021-05-26 19:29:10', '2021-05-26 19:29:10', NULL),
(92, '200-300', 'uploads/all/IJbFygiJEO1NlgQKSXjVTEIvXwC2Xdn2uJcNTKMI.jpg', 75, 35350, 'jpg', 'image', '2021-05-26 19:40:00', '2021-05-26 19:40:00', NULL),
(93, '300-500-3', 'uploads/all/9GAIJI5a7hLP8oKDX7Yz8r3TaH3wxGEnebVa6HFi.jpg', 75, 54101, 'jpg', 'image', '2021-05-26 19:40:00', '2021-05-26 19:40:00', NULL),
(94, '300-500-2', 'uploads/all/GRwsnNRwqrOruRgIwmYSjR650dcmJygItCqQ2MPv.jpg', 75, 51921, 'jpg', 'image', '2021-05-26 19:40:00', '2021-05-26 19:40:00', NULL),
(95, '300-500', 'uploads/all/V89AW2JkIVCFKW9jUqWGJEPoYuDiXvBtGkbqB34y.jpg', 75, 53981, 'jpg', 'image', '2021-05-26 19:40:01', '2021-05-26 19:40:01', NULL),
(96, '500-2', 'uploads/all/2efbKrdGArQthjdBixuRgfoG43xVHl7trIK1yYai.jpg', 75, 43754, 'jpg', 'image', '2021-05-26 19:54:38', '2021-05-26 19:54:38', NULL),
(97, '300', 'uploads/all/ej2KMhXaTmXEKKscQjrWVS5z03g7p5TZvgDtfR3c.jpg', 75, 30469, 'jpg', 'image', '2021-05-26 19:54:39', '2021-05-26 19:54:39', NULL),
(98, '500', 'uploads/all/x0Z8gwLk6Sr0Foe8qBFcbHzsNUApUKqRiBeOGV9e.jpg', 75, 44750, 'jpg', 'image', '2021-05-26 19:54:39', '2021-05-26 19:54:39', NULL),
(99, '150-300', 'uploads/all/nS2VyOybC0ssRbBGKeZ1qzdhSCy4pYxMZLNH6J37.jpg', 75, 26592, 'jpg', 'image', '2021-05-26 20:09:23', '2021-05-26 20:09:23', NULL),
(100, '300-500-1', 'uploads/all/11IkZxDjCmUpYii7t6VlfQXAf0lVLUWFOKukpfwp.jpg', 75, 43075, 'jpg', 'image', '2021-05-26 20:09:23', '2021-05-26 20:09:23', NULL),
(101, '300-500-2', 'uploads/all/8t7O0jqDuTBLNLgwAIdlkgw1mbqnq3I7H65RcwWK.jpg', 75, 45482, 'jpg', 'image', '2021-05-26 20:09:47', '2021-05-26 20:09:47', NULL),
(102, '300-500-4', 'uploads/all/xaSNKX9fxAk9jWy0V9fNnnLDxfh4M6lntPOkBtOI.jpg', 75, 31809, 'jpg', 'image', '2021-05-26 20:09:48', '2021-05-26 20:09:48', NULL),
(103, '300-500-3', 'uploads/all/U255YEXNJFa27UiT5vyGYX4Wu8JUBbWgbHb7mxIw.jpg', 75, 41361, 'jpg', 'image', '2021-05-26 20:09:49', '2021-05-26 20:09:49', NULL),
(104, '300-500-5', 'uploads/all/4zAlvt2x8rfKztD5YgafT9Eg5BY64DKDU1vPsGQF.jpg', 75, 43341, 'jpg', 'image', '2021-05-26 20:09:49', '2021-05-26 20:09:49', NULL),
(105, '150-300', 'uploads/all/qETzamerV43mNwUN9jDjXwbQNWR0SbSpu6a6qUZ5.jpg', 75, 23769, 'jpg', 'image', '2021-05-26 20:25:43', '2021-05-26 20:25:43', NULL),
(106, '300-500-4', 'uploads/all/ShgurZHA4m1BdSVAbT5WXzgkXBgo83xUIGyGyvBw.jpg', 75, 31318, 'jpg', 'image', '2021-05-26 20:25:44', '2021-05-26 20:25:44', NULL),
(107, '300-500-1', 'uploads/all/w2LcUlhNkD6krMDwIOa3TD7Fh3h0UlOa0dfS4hGh.jpg', 75, 40235, 'jpg', 'image', '2021-05-26 20:25:44', '2021-05-26 20:25:44', NULL),
(108, '300-500-5', 'uploads/all/5p0PzVE7zIx8LAKASJFh9EqWsvH8P6aYHno16RDZ.jpg', 75, 38952, 'jpg', 'image', '2021-05-26 20:25:44', '2021-05-26 20:25:44', NULL),
(109, '300-500-3', 'uploads/all/bYn6m7kDc7naVONYftBq0zxz7Kyizjo3PBuvCrtp.jpg', 75, 36063, 'jpg', 'image', '2021-05-26 20:25:45', '2021-05-26 20:25:45', NULL),
(110, '300-500-2', 'uploads/all/v1Yk3NP1ef7vRBKwQRjsqhZOTgTJ1tvl6decPvDy.jpg', 75, 30413, 'jpg', 'image', '2021-05-26 20:25:45', '2021-05-26 20:25:45', NULL),
(111, '150-300', 'uploads/all/M3nsCBkZBA2XKl3pvZeqhBDddv1YYrU5abGf18XY.jpg', 75, 29526, 'jpg', 'image', '2021-05-26 20:40:22', '2021-05-26 20:40:22', NULL),
(112, '500-1', 'uploads/all/SgAATQ2KYwrOi6Q7XBdN3XmakJLpX8GpSakRrVi5.jpg', 75, 46129, 'jpg', 'image', '2021-05-26 20:40:22', '2021-05-26 20:40:22', NULL),
(113, '500-2', 'uploads/all/YSkREQDKzcAxP4LUQXbPkQf8bo1zT6xV2ZgVdUWz.jpg', 75, 53743, 'jpg', 'image', '2021-05-26 20:40:22', '2021-05-26 20:40:22', NULL),
(114, '31Ctn4JM7ML._AC_UX385_', 'uploads/all/GUiePN2vfJWfzv3RghBvZ7fTpWEAtgU4tHG2ddBE.jpg', 75, 12015, 'jpg', 'image', '2021-05-26 20:49:40', '2021-05-26 20:49:40', NULL),
(115, '300', 'uploads/all/LTGPuPTYnUTV1ecsmNIR9UOE7tP5nQiIdK4ySWWG.jpg', 75, 27411, 'jpg', 'image', '2021-05-26 20:49:40', '2021-05-26 20:49:40', NULL),
(116, '300', 'uploads/all/6kCNHrxahcU6bZaWvr8QVMwGRgvGvhIsHAyJk7Cd.jpg', 75, 28022, 'jpg', 'image', '2021-05-26 20:57:23', '2021-05-26 20:57:23', NULL),
(117, '500-3', 'uploads/all/JRQsh0DNkc1qciN3JJ2KFgVKCCF8qoOqWSffdKHa.jpg', 75, 32196, 'jpg', 'image', '2021-05-26 20:57:23', '2021-05-26 20:57:23', NULL),
(118, '500-1', 'uploads/all/cRCCTxnsSNsGkMa4Xi6TOwPLcIZrotvIMQ8cI3ET.jpg', 75, 38149, 'jpg', 'image', '2021-05-26 20:57:24', '2021-05-26 20:57:24', NULL),
(119, '500-4', 'uploads/all/3YSOWgoapwteHkF7mujpfRqtovSScdRpYXhM9Wuf.jpg', 75, 41739, 'jpg', 'image', '2021-05-26 20:57:24', '2021-05-26 20:57:24', NULL),
(120, '500-2', 'uploads/all/lYU6H8OmxHaBhjuv9kIzOB4WdZLQGEPkG208vk1W.jpg', 75, 40286, 'jpg', 'image', '2021-05-26 20:57:24', '2021-05-26 20:57:24', NULL),
(121, '500', 'uploads/all/32rmlo70fcxecpZWMRkAkAvMPzumi2WzNguy0V2Q.jpg', 75, 61120, 'jpg', 'image', '2021-05-26 22:40:20', '2021-05-26 22:40:20', NULL),
(122, '300', 'uploads/all/BbDMnRh6HGWOx03zj5BX8olld78Af8TEi7EFc0tv.jpg', 75, 32924, 'jpg', 'image', '2021-05-26 22:40:20', '2021-05-26 22:40:20', NULL),
(123, '300', 'uploads/all/XoCtPVFSkRZ9OvH51Jy1e9JFIZ6B7VORyNbP3x0g.jpg', 75, 28666, 'jpg', 'image', '2021-05-26 22:50:25', '2021-05-26 22:50:25', NULL),
(124, '500-1', 'uploads/all/4TlMpeZrdODVjunV0djun8jw0Cjs7lvoDQsUQVf0.jpg', 75, 52203, 'jpg', 'image', '2021-05-26 22:50:25', '2021-05-26 22:50:25', NULL),
(125, '500-2', 'uploads/all/FQv9jhxwgtnwSFMyVXcOM28fes3QB61m5OnG49i2.jpg', 75, 23003, 'jpg', 'image', '2021-05-26 22:50:26', '2021-05-26 22:50:26', NULL),
(126, '338be879483b882c0733a66f13ab', 'uploads/all/Q44CO9pyKseeGVDiJ9nmlHjWlaVVW6pTT7n6qQdz.jpg', 75, 9928, 'jpg', 'image', '2021-05-26 23:28:17', '2021-05-26 23:28:17', NULL),
(127, 'f-puma-szorty-bmw-msp-summer-shorts-57279501', 'uploads/all/jIz3H7OzCp1L2vmmLRNBxmqzvjHmtKKRaEHubfJ3.jpg', 75, 10712, 'jpg', 'image', '2021-05-26 23:28:18', '2021-05-26 23:28:18', NULL),
(128, '300', 'uploads/all/swX4PBHD9o6JJxdpkruCC74vWfocmlwG9xaAykRO.jpg', 75, 39099, 'jpg', 'image', '2021-05-27 17:11:06', '2021-05-27 17:11:06', NULL),
(129, '5001', 'uploads/all/FPf0bGhSGh2B3hFwclUvp1Qfj8q4SWWK2ohWwHM6.jpg', 75, 68212, 'jpg', 'image', '2021-05-27 17:11:06', '2021-05-27 17:11:06', NULL),
(130, '5002', 'uploads/all/MsNgvVLgScQPQ5dHhLR05UDAmNZicM3VVYt4nFiw.jpg', 75, 69759, 'jpg', 'image', '2021-05-27 17:11:07', '2021-05-27 17:11:07', NULL),
(131, '300', 'uploads/all/NIvrZUiMLZotkAyCfuLINXErjPs1RXW3NazCvrDj.jpg', 75, 29136, 'jpg', 'image', '2021-05-27 17:20:32', '2021-05-27 17:20:32', NULL),
(132, '5004', 'uploads/all/9hix5RPDRlYRAkHcF67LXu6Y1dw9wfovbwyeGj37.jpg', 75, 46902, 'jpg', 'image', '2021-05-27 17:20:32', '2021-05-27 17:20:32', NULL),
(133, '5003', 'uploads/all/bJAFVF2oq6oVVhdZAp3DOj1WSCnj85VDZb4n0XNN.jpg', 75, 39924, 'jpg', 'image', '2021-05-27 17:20:32', '2021-05-27 17:20:32', NULL),
(134, '5001', 'uploads/all/WXhTOczghmKLVrVgOXFUi4ar1nQ9HSKa8Fh8V9OS.jpg', 75, 50146, 'jpg', 'image', '2021-05-27 17:20:33', '2021-05-27 17:20:33', NULL),
(135, '5002', 'uploads/all/gRAj0I7vXY6QEMO82ZEN5XJzpdIE0rsw5o3frsRA.jpg', 75, 44437, 'jpg', 'image', '2021-05-27 17:20:33', '2021-05-27 17:20:33', NULL),
(136, '500', 'uploads/all/eVmn7JUjiqlOimti1d5rjWIVGnLAeHNEZ5KsFoIh.jpg', 75, 46365, 'jpg', 'image', '2021-05-27 17:21:10', '2021-05-27 17:21:10', NULL),
(137, '300', 'uploads/all/KoOjbijuNSlBcfxClMKvSrE18wvm3ku8Ie1JZwS3.jpg', 75, 27857, 'jpg', 'image', '2021-05-27 18:35:05', '2021-05-27 18:35:05', NULL),
(138, '5003', 'uploads/all/0iZKt1mZkA5Z80F926E2rzAnUBfjrV8QfjSVULxW.jpg', 75, 44916, 'jpg', 'image', '2021-05-27 18:35:06', '2021-05-27 18:35:06', NULL),
(139, '5001', 'uploads/all/j3tnIHCIwDqJfxwVJFOnz9W944KVgFFtfHmi0Tel.jpg', 75, 58068, 'jpg', 'image', '2021-05-27 18:35:07', '2021-05-27 18:35:07', NULL),
(140, '5002', 'uploads/all/AXK2o8HWM2NZNkwYfcuqvRM84VZcMcn1zJua0OPR.jpg', 75, 35079, 'jpg', 'image', '2021-05-27 18:35:07', '2021-05-27 18:35:07', NULL),
(141, '5005', 'uploads/all/aRhXPDnCn0j63LAhshfFzbfcgRbxn4L62jXVAjz5.jpg', 75, 40023, 'jpg', 'image', '2021-05-27 18:35:07', '2021-05-27 18:35:07', NULL),
(142, '5004', 'uploads/all/8sUs0v2tekHCkrj7zwRKMr4VP7RHyojAVAuEm6j3.jpg', 75, 39680, 'jpg', 'image', '2021-05-27 18:35:07', '2021-05-27 18:35:07', NULL),
(143, '300', 'uploads/all/QbfL55d7UWpFsdHWxhGhNOjSLRZQSZa8aqDKJayQ.jpg', 75, 30351, 'jpg', 'image', '2021-05-27 19:44:30', '2021-05-27 19:44:30', NULL),
(144, '6056cfef4753891dbb19f79c6725', 'uploads/all/cfhsgyhgmHTVrVCDBJxiGgwmIoySqMJZZq1UHQom.jpg', 75, 23005, 'jpg', 'image', '2021-05-27 19:44:30', '2021-05-27 19:44:30', NULL),
(145, '5001', 'uploads/all/Q5rAmhb0FEKOi9sgEoWFp6XaZDDkD9H6WcW0u2bc.jpg', 75, 44142, 'jpg', 'image', '2021-05-27 19:53:34', '2021-05-27 19:53:34', NULL),
(146, '500', 'uploads/all/WS8WdgbyKjDmBmKJe4rauL6dmu6hLFRfldRhTr7p.jpg', 75, 44143, 'jpg', 'image', '2021-05-27 19:53:35', '2021-05-27 19:53:35', NULL),
(147, '300', 'uploads/all/oDHp3CtRS0XyhgdEOJLevVctPKDLyN8JI3sppAjD.jpg', 75, 22497, 'jpg', 'image', '2021-05-27 19:56:10', '2021-05-27 19:56:10', NULL),
(148, '48178638', 'uploads/all/e1gRSfBvanvXlSdetCRtnZ5gZ1Fpn0ZKIuNzlI3k.jpg', 75, 17676, 'jpg', 'image', '2021-05-27 19:56:11', '2021-05-27 19:56:11', NULL),
(149, '48178646', 'uploads/all/xos8UtZqYRvgr8DGo9g6bhOOkVmQICk8rCCgdPwQ.jpg', 75, 27041, 'jpg', 'image', '2021-05-27 19:56:11', '2021-05-27 19:56:11', NULL),
(150, '48178646', 'uploads/all/9iZZ6ULhYIPJdCYQpeJf7GOlWUSyJszlmZQwFRCu.jpg', 75, 27041, 'jpg', 'image', '2021-05-27 19:58:33', '2021-05-27 19:58:33', NULL),
(151, '300', 'uploads/all/EISpzQRE9BvDcpB4W4QMyuGkRHU3dHxfE4gSmOJn.jpg', 75, 22497, 'jpg', 'image', '2021-05-27 19:58:33', '2021-05-27 19:58:33', NULL),
(152, '48178638', 'uploads/all/v9f05obiGPnUnzNf5ZOQZTv8ze1WtioQ8IQzytsm.jpg', 75, 17676, 'jpg', 'image', '2021-05-27 19:58:33', '2021-05-27 19:58:33', NULL),
(153, '300', 'uploads/all/KFR5PMP2Bzoa5I17Ml0QWGlcyqIUdQ80qgmBhV08.jpg', 75, 28751, 'jpg', 'image', '2021-05-27 20:03:22', '2021-05-27 20:03:22', NULL),
(154, '600', 'uploads/all/4tBPBjIHn3y4V1BHK1qXQSHRPcC3PREOj3D1BLyt.jpg', 75, 38203, 'jpg', 'image', '2021-05-27 20:03:22', '2021-05-27 20:03:22', NULL),
(155, '601', 'uploads/all/QqtVw8Wjj2eeRJQf6CP8h2BEIIAcqOIqIkHfAErR.jpg', 75, 46623, 'jpg', 'image', '2021-05-27 20:03:22', '2021-05-27 20:03:22', NULL),
(156, '602', 'uploads/all/Fd8KJTFaMDGm734IKRHvdtmHPC7lre2z0N2sjzYy.jpg', 75, 59025, 'jpg', 'image', '2021-05-27 20:03:22', '2021-05-27 20:03:22', NULL),
(157, '605', 'uploads/all/jflf3r4fr0jtU7oEP2AWBXfIGF4tYfiD2uUtjCxY.jpg', 75, 53824, 'jpg', 'image', '2021-05-27 20:03:22', '2021-05-27 20:03:22', NULL),
(158, '603', 'uploads/all/a9jORkr4pX175JpTVjfBY0Qmju6lxM5YG0rFej4W.jpg', 75, 53791, 'jpg', 'image', '2021-05-27 20:03:23', '2021-05-27 20:03:23', NULL),
(159, 'WhatsApp Image 2021-05-26 at 12.09.00 PM', 'uploads/all/nAi9w1fJEkgLwMIbMEm3ggv68bhPVrPUCA2AY2oS.jpg', 9, 15130, 'jpeg', 'image', '2021-05-29 05:27:05', '2021-05-29 05:27:05', NULL),
(160, 'WhatsApp Image 2021-05-26 at 12.03.57 PM', 'uploads/all/daRn3KjT5AxgUmf1ifmk5PFEvn4lBEVTLL0hBsl5.jpg', 9, 23560, 'jpeg', 'image', '2021-05-29 05:27:05', '2021-05-29 05:27:05', NULL),
(161, 'WhatsApp Image 2021-05-26 at 11.58.30 AM', 'uploads/all/rAzvb3QzNFkqo3IzUG5I61GyQ1FWYwxK9L6BVO7Q.jpg', 9, 47688, 'jpeg', 'image', '2021-05-29 05:27:05', '2021-05-29 05:27:05', NULL),
(162, 'WhatsApp Image 2021-05-26 at 11.58.30 AM', 'uploads/all/4Okq6rCN0Fv4rJ9M8NkSaOBU4JIAMeO2mKEP49uq.jpg', 75, 47688, 'jpeg', 'image', '2021-05-29 10:56:57', '2021-05-29 10:56:57', NULL),
(163, '6ef93083-2b8e-4c7a-82ec-81217fc4c829', 'uploads/all/ZRk5lKB2JzR9C94H4uOHpQF2O8iqiLJJIeQdHV78.png', 9, 2955, 'png', 'image', '2021-05-29 19:51:35', '2021-05-29 19:51:35', NULL),
(164, '300', 'uploads/all/2noPs1YC1wTNjHuqt9s0vtDPgpjLgoAiewTBL2QM.jpg', 75, 18137, 'jpg', 'image', '2021-06-06 16:38:46', '2021-06-06 16:38:46', NULL),
(165, '15281065511306777331_thumbnail_750x', 'uploads/all/QKWl1IQ4QAXAeZfDL8oU5Zh8k0UDkGXAGCBccMpr.jpg', 75, 27167, 'jpg', 'image', '2021-06-06 16:38:59', '2021-06-06 16:38:59', NULL),
(166, '15281065501582030189_thumbnail_750x', 'uploads/all/klLPcGZgAtAODfKuVxsr4bpzJ0bxi68o8CpvhMfU.jpg', 75, 46728, 'jpg', 'image', '2021-06-06 16:38:59', '2021-06-06 16:38:59', NULL),
(167, '15281065501590704884_thumbnail_750x', 'uploads/all/lzL0R8CN76E3Ujxvw599TJhLWkXayTFccdSo495G.jpg', 75, 22170, 'jpg', 'image', '2021-06-06 16:38:59', '2021-06-06 16:38:59', NULL),
(168, '15281065503778088709_thumbnail_750x', 'uploads/all/WveFWJufDQbNpULBJGh45POJubssH2ysSaUK9eMp.jpg', 75, 35543, 'jpg', 'image', '2021-06-06 16:38:59', '2021-06-06 16:38:59', NULL),
(169, '300', 'uploads/all/OjWaUSbDGHR2HxqpKeF4ztySJOUuTsbiMSlRtmBv.jpg', 75, 28670, 'jpg', 'image', '2021-06-06 16:56:41', '2021-06-06 16:56:41', NULL),
(170, '1522351939762210048', 'uploads/all/SlOUg6g2NkcmYZXoQuY0LR6XfbAqnzNOYDMnjB2b.jpg', 75, 65288, 'jpg', 'image', '2021-06-06 16:56:41', '2021-06-06 16:56:41', NULL),
(171, '1522351939182338597', 'uploads/all/8seDLvjyc6rnZIPKo3fEBDv4P0YCErB8c5dqzrxX.jpg', 75, 43249, 'jpg', 'image', '2021-06-06 16:56:41', '2021-06-06 16:56:41', NULL),
(172, '1522351939696367093', 'uploads/all/Vo4riKi9UDe4nXPQ7qmKSixEdndgk4IXjyuSGC30.jpg', 75, 39953, 'jpg', 'image', '2021-06-06 16:56:41', '2021-06-06 16:56:41', NULL),
(173, '1522351939444604903', 'uploads/all/Ntrhz1jrbW7F0bVUNtZ54M6ihkCd2YxeFBLq2woy.jpg', 75, 66564, 'jpg', 'image', '2021-06-06 16:56:42', '2021-06-06 16:56:42', NULL),
(174, '5', 'uploads/all/j3ceCzLsLn3AT5iLruJgZ4RlnzU4XDzKhPuqR3Bp.jpg', 75, 64571, 'jpg', 'image', '2021-06-06 17:03:00', '2021-06-06 17:03:00', NULL),
(175, '4', 'uploads/all/IYhbTKy6Ek3GjR8AosGjGXf09uE74B6qYCxeb5fL.jpg', 75, 85321, 'jpg', 'image', '2021-06-06 17:03:01', '2021-06-06 17:03:01', NULL),
(176, '3', 'uploads/all/8ZzRarAIMlnfIjJMTdsxROZTPL4f1hoP5OHgQLDL.jpg', 75, 73257, 'jpg', 'image', '2021-06-06 17:03:01', '2021-06-06 17:03:01', NULL),
(177, '1', 'uploads/all/HRA7I2Gq5HGf3zpld408JKAR3egsvX22Bb5fKvsX.jpg', 75, 74666, 'jpg', 'image', '2021-06-06 17:03:02', '2021-06-06 17:03:02', NULL),
(178, '2', 'uploads/all/nvhZynRZbETNid3vAzBgZoeqgZFToxhtrNiVpcZX.jpg', 75, 72022, 'jpg', 'image', '2021-06-06 17:03:02', '2021-06-06 17:03:02', NULL),
(179, '77cd6ae4dab9a4692a8b0c38e3575f6f', 'uploads/all/BKK3WlkkDOzOoJ0SVvilEBf1AmyaXHmUJbvsGVnW.jpg', 75, 20750, 'jpg', 'image', '2021-06-06 17:07:00', '2021-06-06 17:07:00', NULL),
(180, '300', 'uploads/all/UGvreIXebpUNEwuQfjfrpj30V0Cyf5QgqGmNgKCl.jpg', 75, 41966, 'jpg', 'image', '2021-06-06 17:18:45', '2021-06-06 17:18:45', NULL),
(181, '5', 'uploads/all/1euBPTI1j4g4deLAL6o9e4oWCNbSBKwGiKRWibH4.jpg', 75, 64503, 'jpg', 'image', '2021-06-06 17:18:59', '2021-06-06 17:18:59', NULL),
(182, '1', 'uploads/all/y2yAMvOijSgQwOpFtwDbBMBUXZmfkb8hKJauth5R.jpg', 75, 41961, 'jpg', 'image', '2021-06-06 17:19:00', '2021-06-06 17:19:00', NULL),
(183, '6', 'uploads/all/pqUFqNFKNAhBQkEqv56QSbp28miepiAOkYhpdmLF.jpg', 75, 61575, 'jpg', 'image', '2021-06-06 17:19:00', '2021-06-06 17:19:00', NULL),
(184, '3', 'uploads/all/30bOZPc2K32OOpFifStySapXFO1cE0MXr3vgxLLN.jpg', 75, 61568, 'jpg', 'image', '2021-06-06 17:19:00', '2021-06-06 17:19:00', NULL),
(185, '2', 'uploads/all/6eYtZc0qlpjeN2742AtOW3XqaLNKaZMBoxd4VFla.jpg', 75, 63717, 'jpg', 'image', '2021-06-06 17:19:01', '2021-06-06 17:19:01', NULL),
(186, '4', 'uploads/all/nD2QVCcVPb8qhzEMHCyIQMFZJpV5DMVnGoAzXAOl.jpg', 75, 66076, 'jpg', 'image', '2021-06-06 17:19:01', '2021-06-06 17:19:01', NULL),
(187, '300', 'uploads/all/TRA5s8lc9mBWrDHJtxGH1N3L7marPL0sVyji90SP.jpg', 75, 30420, 'jpg', 'image', '2021-06-06 17:24:32', '2021-06-06 17:24:32', NULL),
(188, '2', 'uploads/all/6X3RGU6NBK1sWSqiCE3Pmv1RXnjydH1IHVQ3tWjU.jpg', 75, 30799, 'jpg', 'image', '2021-06-06 17:24:32', '2021-06-06 17:24:32', NULL),
(189, '3', 'uploads/all/4sJGsQqmaDr8YXk4Q6MtflbBNymFQBHzb8YP0Rta.jpg', 75, 41501, 'jpg', 'image', '2021-06-06 17:24:33', '2021-06-06 17:24:33', NULL),
(190, '4', 'uploads/all/0w67GNl5839Y7ybZ0d6HNLx2FSSsXKxTUWRIdeqz.jpg', 75, 51746, 'jpg', 'image', '2021-06-06 17:24:33', '2021-06-06 17:24:33', NULL),
(191, '1', 'uploads/all/LHgMgdKLCybqEoaKux4wjQXULETVt8C1TFApEqem.jpg', 75, 47626, 'jpg', 'image', '2021-06-06 17:24:33', '2021-06-06 17:24:33', NULL),
(192, '2', 'uploads/all/PALdgWS1uyWTMmokcAMxl8Ii9i9VDO0FvBvj3b9U.jpg', 75, 45339, 'jpg', 'image', '2021-06-06 17:28:13', '2021-06-06 17:28:13', NULL),
(193, '300', 'uploads/all/QFc8TyE4RYMOA3ZCpWTlV8Nb1kgEtBPCt66poJkT.jpg', 75, 33412, 'jpg', 'image', '2021-06-06 17:28:13', '2021-06-06 17:28:13', NULL),
(194, '4', 'uploads/all/sErscbshkHTdZBgkpaRSjsG1OAjeDyHm55Os7Qlm.jpg', 75, 58747, 'jpg', 'image', '2021-06-06 17:28:13', '2021-06-06 17:28:13', NULL),
(195, '1', 'uploads/all/xTnR4URHXKLIP62xAxQr5IYCWlSl8IosmiimFNjI.jpg', 75, 47348, 'jpg', 'image', '2021-06-06 17:28:14', '2021-06-06 17:28:14', NULL),
(196, '5', 'uploads/all/41bXzgcVoSa5pJga2l335O0mmZXtbwBQHnoJrmKS.jpg', 75, 40042, 'jpg', 'image', '2021-06-06 17:28:14', '2021-06-06 17:28:14', NULL),
(197, '3', 'uploads/all/m0ElKNbPmvcuGcb7A1WNzHnLl8Ecx1Fap5v48JKH.jpg', 75, 50874, 'jpg', 'image', '2021-06-06 17:28:14', '2021-06-06 17:28:14', NULL),
(198, 'b391a565d7157b5c4fedf2083171f73b', 'uploads/all/GkUSl8p7jXr0zoZB8Sao9KsoVQq11QqN3K5qf2BU.jpg', 75, 43914, 'jpg', 'image', '2021-06-06 17:33:47', '2021-06-06 17:33:47', NULL),
(199, '300', 'uploads/all/cDdNSbN7edN8rEARWoW91PkwndFcnS55XmA2VWrv.jpg', 75, 34404, 'jpg', 'image', '2021-06-06 17:33:47', '2021-06-06 17:33:47', NULL),
(200, '300', 'uploads/all/3kdSb4ao706nJpNp9PYaxAEXlCqMHvJ1jdbDyGHJ.jpg', 75, 76119, 'jpg', 'image', '2021-06-06 17:36:56', '2021-06-06 17:36:56', NULL),
(201, '1', 'uploads/all/KoTWKgFAyQTIMbiFZHgyRdgKXZcICZB8kQI4f0PX.jpg', 75, 130352, 'jpg', 'image', '2021-06-06 17:36:57', '2021-06-06 17:36:57', NULL),
(202, '3', 'uploads/all/JGuLtR83uLTXx7sPqz4mgjPBGWwcLsuRH5sCNrFq.jpg', 75, 94451, 'jpg', 'image', '2021-06-06 17:36:57', '2021-06-06 17:36:57', NULL),
(203, '4', 'uploads/all/3B99qBk55ec5tXsde5iUnf40y6uKExUzRqjWMPJ9.jpg', 75, 120351, 'jpg', 'image', '2021-06-06 17:36:57', '2021-06-06 17:36:57', NULL),
(204, '2', 'uploads/all/DoZlYFEd656iov5NMsLqzxQdDjEcoLIChSl28dds.jpg', 75, 119368, 'jpg', 'image', '2021-06-06 17:36:57', '2021-06-06 17:36:57', NULL),
(205, '300', 'uploads/all/ss53N0AiBd1szpdAfUw3kcppehFf03lj669SssvD.jpg', 75, 41543, 'jpg', 'image', '2021-06-06 17:42:39', '2021-06-06 17:42:39', NULL),
(206, '22746760b2cb3ffc1a888ffc413c67e5', 'uploads/all/DNWhyywKHu4ruXjz2gmZgCb4DNx42kwklGkOjq9J.jpg', 75, 28844, 'jpg', 'image', '2021-06-06 17:42:52', '2021-06-06 17:42:52', NULL),
(207, '4', 'uploads/all/4NWwj23xwpSEEFO1TaAgKeqV4aGSqbgATMJQrBiX.jpg', 75, 36634, 'jpg', 'image', '2021-06-06 17:44:57', '2021-06-06 17:44:57', NULL),
(208, '300', 'uploads/all/s1qwW6dKJAJv93IZZiDoQ2XifP3aprUnIJ9KcvS4.jpg', 75, 30500, 'jpg', 'image', '2021-06-06 17:44:57', '2021-06-06 17:44:57', NULL),
(209, '6722f72205bbddbf10b4a137c8fd49f7', 'uploads/all/e8DmPTOiX2cHzeIvacegWDwBZTPxTtwXM1UI0BSZ.jpg', 75, 30272, 'jpg', 'image', '2021-06-06 17:44:57', '2021-06-06 17:44:57', NULL),
(210, '2a1d58dfe307f2c5f12c12ecc8db040c', 'uploads/all/KjrvLX8mUDvc8s7KXBfX7Ug09GXC0X2ch5S5a3RH.jpg', 75, 55177, 'jpg', 'image', '2021-06-06 17:45:05', '2021-06-06 17:45:05', NULL),
(211, '1', 'uploads/all/GaA7n7r4E8641hfmLuUQqEUS67rX3wbPbowx4EZl.jpg', 75, 47492, 'jpg', 'image', '2021-06-06 17:45:17', '2021-06-06 17:45:17', NULL),
(212, '3', 'uploads/all/1G6g54WeRNx8Z5rqaFDhPJmkXIuAdr0uBdAuXyVm.jpg', 75, 57663, 'jpg', 'image', '2021-06-06 17:45:18', '2021-06-06 17:45:18', NULL),
(213, '2', 'uploads/all/svSJNU4fnBFFMIGGqu30PKGzrHMWHphouAHNeOeG.jpg', 75, 90267, 'jpg', 'image', '2021-06-06 17:45:19', '2021-06-06 17:45:19', NULL),
(214, '300', 'uploads/all/r4iigilKguwI7J8EHoqGBoq5NRhyXJQ10r4inn59.jpg', 79, 44613, 'jpg', 'image', '2021-06-13 16:32:45', '2021-06-13 16:32:45', NULL),
(215, '500.4', 'uploads/all/lGAXGVaU9D1K2H6XuT88mHjUC5mBp4QNsJPY16ws.jpg', 79, 29275, 'jpg', 'image', '2021-06-13 16:32:46', '2021-06-13 16:32:46', NULL),
(216, '500.2', 'uploads/all/NnCjS1OH7NW1vo9ozT89omkF1U8BnvcpHONwizFp.jpg', 79, 108138, 'jpg', 'image', '2021-06-13 16:32:46', '2021-06-13 16:32:46', NULL),
(217, '500.3', 'uploads/all/mee00XRNrwaa6PNhukiYNvH7elhuVMRZaANLxuTh.jpg', 79, 116615, 'jpg', 'image', '2021-06-13 16:32:46', '2021-06-13 16:32:46', NULL),
(218, '500', 'uploads/all/r3pysjhP4Ltt3ujdEFLwkQPTbLuDGYyTtMFm4ZSc.jpg', 79, 96395, 'jpg', 'image', '2021-06-13 16:32:46', '2021-06-13 16:32:46', NULL),
(219, '50', 'uploads/all/ccGhAT2bsvXCdKBMuKg5WIqIH8LZsODFxhzDDnwi.jpg', 51, 2544, 'jpg', 'image', '2021-06-16 16:05:02', '2021-06-16 16:05:02', NULL),
(220, '90', 'uploads/all/NSDQeE3m3QJPepp290mEZcWmob8RzFlUFQ2LtiaR.jpg', 51, 3077, 'jpg', 'image', '2021-06-16 18:09:57', '2021-06-16 18:09:57', NULL),
(221, 'cash-on-delivery-png-5-Transparent-Images', 'uploads/all/bWH9cGbnMcY5wfZmfzCSL3Xb4yxMJ84W8M8HQnyQ.png', 9, 32081, 'png', 'image', '2021-06-20 06:28:56', '2021-06-20 06:28:56', NULL),
(222, '3002', 'uploads/all/ci2johaFLmjvi2Uf3sBozq2V3REMiPyoQ9khDSjT.jpg', 75, 16360, 'jpg', 'image', '2021-06-22 16:24:55', '2021-06-22 16:24:55', NULL),
(223, '5003', 'uploads/all/5fkjBxZfseKRvKAR7izt3VmjzDKEr8rgfOdzbCyo.jpg', 75, 35294, 'jpg', 'image', '2021-06-22 16:24:55', '2021-06-22 16:24:55', NULL),
(224, '5004', 'uploads/all/zjgjy4FjDjVa02yW3tAAnD5bhQHVqzim8xPOPW6S.jpg', 75, 33609, 'jpg', 'image', '2021-06-22 16:24:55', '2021-06-22 16:24:55', NULL),
(225, '5002', 'uploads/all/sNhl6Vy1kLy4t3ycbqVfsDrDxmQJgbySwDX2At5F.jpg', 75, 39006, 'jpg', 'image', '2021-06-22 16:24:55', '2021-06-22 16:24:55', NULL),
(226, '3001', 'uploads/all/Co04YGnNjktLPtOCukazmSeMhdNw0nl1jmOWcLZn.jpg', 75, 8815, 'jpg', 'image', '2021-06-22 16:28:07', '2021-06-22 16:28:07', NULL),
(227, '3001', 'uploads/all/PmVTzpkoCvRSy6eS81RNZ3zxcnSKzVfCCtqBZprn.jpg', 75, 8815, 'jpg', 'image', '2021-06-22 16:30:49', '2021-06-22 16:30:49', NULL),
(228, '3000', 'uploads/all/jZ7K8n0Qt36oPMoQ3f34uVCP6uc85gNEX8zQCXNP.jpg', 75, 8815, 'jpg', 'image', '2021-06-22 16:31:54', '2021-06-22 16:31:54', NULL),
(229, '200', 'uploads/all/f1DLOKQg3ni0OCMCaPDMnsVlqQhc9jn3qn5mChxM.jpg', 75, 11998, 'jpg', 'image', '2021-06-22 16:41:27', '2021-06-22 16:41:27', NULL),
(230, '300-1', 'uploads/all/VSYUenkPj0dXyDP57Qo1W0zwEfkvKbEOxSLcaa3c.jpg', 75, 56441, 'jpg', 'image', '2021-06-22 16:43:24', '2021-06-22 16:43:24', NULL),
(231, 'WhatsApp Image 2021-02-14 at 15.41.23', 'uploads/all/MWrUYRN1UhiXl1HqPjEz0SAsI4NueRhgYXxytase.jpg', 75, 7230, 'jpeg', 'image', '2021-06-28 16:20:12', '2021-06-28 16:20:12', NULL),
(232, 'Untitled', 'uploads/all/r8B31parhqi17FaOoA0pWS0HRgDxKR2rOfCE2I41.jpg', 75, 7323, 'jpg', 'image', '2021-06-28 16:33:17', '2021-06-28 16:33:17', NULL),
(233, 'WhatsApp Image 2021-06-28 at 13.08.37', 'uploads/all/9w27eFbrPyAos3FZ7lxHT3WW4KxxxM1kukxt3hgt.jpg', 75, 86048, 'jpeg', 'image', '2021-06-28 17:09:22', '2021-06-28 17:09:22', NULL),
(234, '68b24744-0c0d-447e-bcae-0003d28cce3c', 'uploads/all/kzU6yVyhZYwvIIZ4Q3CMQobvTveSiB7Jfph2HyfS.jpg', 75, 28880, 'jpg', 'image', '2021-07-05 15:30:37', '2021-07-05 15:30:37', NULL),
(235, 'Untitled-1', 'uploads/all/GCjVkWaZapuM92ZBJEbghKvY7kKpx6wJcciZI7e1.jpg', 75, 32946, 'jpg', 'image', '2021-07-05 16:01:22', '2021-07-05 16:01:22', NULL),
(236, '300n', 'uploads/all/W9pkrRKWBa3u3PFkDIQh9ACclmTmW9z8oqv5zHr7.jpg', 75, 41878, 'jpg', 'image', '2021-07-05 16:06:46', '2021-07-05 16:06:46', NULL),
(237, '300n', 'uploads/all/oTReLMZ0WEwuNo9I0Bg9FCqlXlKjeWqwtmndbGT0.jpg', 75, 42605, 'jpg', 'image', '2021-07-05 16:12:20', '2021-07-05 16:12:20', NULL),
(238, '300 n', 'uploads/all/ydDwAciG3BmURzciQyvoH5YHAUn50Z7k6IOorqYP.jpg', 75, 30070, 'jpg', 'image', '2021-07-05 16:19:34', '2021-07-05 16:19:34', NULL),
(239, '300n', 'uploads/all/IOoNrVxPOQvNqiqZR8Xao3utuKbeukWHG5woqSYL.jpg', 75, 26960, 'jpg', 'image', '2021-07-05 16:29:13', '2021-07-05 16:29:13', NULL),
(240, '300n', 'uploads/all/MlobpyReLbQe2GmAwYzC02C2NMwYEYpaDfzMmDVl.jpg', 75, 34501, 'jpg', 'image', '2021-07-05 16:34:09', '2021-07-05 16:34:09', NULL),
(241, '300n', 'uploads/all/iY7WHZjNYgt7usukPyuwiXY1lmoFH8enQGu7FdR8.jpg', 75, 30364, 'jpg', 'image', '2021-07-05 16:37:25', '2021-07-05 16:37:25', NULL),
(242, '300n', 'uploads/all/6pdhwjIIwE4RW5LWysmTjUqwCrF5eiLN03y7wT4F.jpg', 75, 27366, 'jpg', 'image', '2021-07-05 16:49:35', '2021-07-05 16:49:35', NULL),
(243, '500n', 'uploads/all/rVKHOZaBoApLsGZVxLRZzaI2ZVgoEtPAXUlR8KNn.jpg', 75, 37338, 'jpg', 'image', '2021-07-05 16:52:59', '2021-07-05 16:52:59', NULL),
(244, '500nn', 'uploads/all/Kf554U9d0YqfHJjKd90im3SNVglheniSdSoG3xVr.jpg', 75, 28513, 'jpg', 'image', '2021-07-05 16:55:21', '2021-07-05 16:55:21', NULL),
(245, '500nn', 'uploads/all/BqMJbSasOfmFiF00WLnrcou5PL0wTgjSHMF53v2W.jpg', 75, 41431, 'jpg', 'image', '2021-07-05 16:57:22', '2021-07-05 16:57:22', NULL),
(246, '300n', 'uploads/all/I4gT29OFQpa3k1tx66cBjaFIWNswsZGUrllrb0R5.jpg', 75, 34869, 'jpg', 'image', '2021-07-05 17:12:36', '2021-07-05 17:12:36', NULL),
(247, '300n', 'uploads/all/ownciGYbBAt3Ms21HCmfOJyRGfUJoQYya2g6FSjd.jpg', 75, 27995, 'jpg', 'image', '2021-07-05 17:15:37', '2021-07-05 17:15:37', NULL),
(248, '300n', 'uploads/all/JpEuNzli4LicWZNSfjCfdfr44gRRmXUe28dTb4ZZ.jpg', 75, 34120, 'jpg', 'image', '2021-07-05 17:18:21', '2021-07-05 17:18:21', NULL),
(249, '300n', 'uploads/all/gwx7Yzeps0VqqKWw1hc4hefJTrjsrwnA86QJKn2N.jpg', 75, 30364, 'jpg', 'image', '2021-07-05 17:21:35', '2021-07-05 17:21:35', NULL),
(250, '300n', 'uploads/all/NS0nRxddfpm5OaLaKqcdDvNFk38tTs0Eo5r9ckhj.jpg', 75, 38313, 'jpg', 'image', '2021-07-05 17:24:31', '2021-07-05 17:24:31', NULL),
(251, '300n', 'uploads/all/yWtOBOINI7Vz2C2a88UHPtVob8JZqR0UqZpnMy8p.jpg', 75, 39344, 'jpg', 'image', '2021-07-05 17:27:32', '2021-07-05 17:27:32', NULL),
(252, '300n', 'uploads/all/AaeqAZGPobewWtPOJ9ecLpABlf6sPFC6vSrz9eDp.jpg', 75, 29829, 'jpg', 'image', '2021-07-05 17:30:27', '2021-07-05 17:30:27', NULL),
(253, '300n', 'uploads/all/5FTPMXkuI42SmD7FT1etWa8hdahhUqT6M4Z9PKgC.jpg', 75, 32493, 'jpg', 'image', '2021-07-05 17:34:57', '2021-07-05 17:34:57', NULL),
(254, '300n', 'uploads/all/7rySRpuzJnqYnDUQKuboyg3oW4R9e0YCAveFlXBS.jpg', 75, 33047, 'jpg', 'image', '2021-07-05 17:38:44', '2021-07-05 17:38:44', NULL),
(255, '300n', 'uploads/all/85pKcMmZuOGU3GRypbsaCoERNS8nKMjFRYET0cA8.jpg', 75, 32131, 'jpg', 'image', '2021-07-05 17:41:32', '2021-07-05 17:41:32', NULL),
(256, '300n', 'uploads/all/PU0yWkEl259WB6gR5A16wHiIGetC90BJFEpupqlH.jpg', 75, 33664, 'jpg', 'image', '2021-07-05 17:43:53', '2021-07-05 17:43:53', NULL),
(257, '300n', 'uploads/all/E8KuIVs8lmZe5yG9W2ZuCtkWoRtCaMIjvpsg9URM.jpg', 75, 23507, 'jpg', 'image', '2021-07-05 17:46:20', '2021-07-05 17:46:20', NULL),
(258, '300nn', 'uploads/all/kRSk2h9grHtHYmwPAyXvetJDiR1DSeBaFbwiFKZU.jpg', 75, 25634, 'jpg', 'image', '2021-07-05 17:48:55', '2021-07-05 17:48:55', NULL),
(259, '300n', 'uploads/all/oHCFgsEbyoXwFEUObjG834WDWqAf4hhelkj0Rq1C.jpg', 75, 48233, 'jpg', 'image', '2021-07-05 17:57:38', '2021-07-05 17:57:38', NULL),
(260, '300n', 'uploads/all/WqdD6DIlZxqO30eLdeU0a96tIedlh6LliUQUI5w4.jpg', 75, 53180, 'jpg', 'image', '2021-07-05 18:00:57', '2021-07-05 18:00:57', NULL),
(261, '500n', 'uploads/all/QQlbJ7ftEJShunr1z0NJp35TqEa19WFVxv8wMCMk.jpg', 75, 41428, 'jpg', 'image', '2021-07-05 18:04:18', '2021-07-05 18:04:18', NULL),
(262, '500-1', 'uploads/all/jS57UGw7MVTQyHyhgRRyHPmvinW6cbOtTiF4D5kI.jpg', 75, 46129, 'jpg', 'image', '2021-07-05 18:05:54', '2021-07-05 18:05:54', NULL),
(263, 'cMLUHhx0O2hLkErhI4HJ6igxzJ00eCkaBoxHpqnq', 'uploads/all/WaYSOj5zjsBx3h8YEczqbTj28fePacMZcMVQbWnH.jpg', 9, 4531, 'jpg', 'image', '2021-07-10 11:55:06', '2021-07-10 11:55:06', NULL),
(264, '500.2', 'uploads/all/3pc0WuYwgpUK09MP6RBwzf0bKqM41S97nPvbbljY.jpg', 75, 108138, 'jpg', 'image', '2021-07-10 15:05:11', '2021-07-10 15:05:11', NULL),
(265, '300', 'uploads/all/E85Q8PDMJLfpLatX6PewjgMjseOQKRIjmjAmhzwK.jpg', 75, 44613, 'jpg', 'image', '2021-07-10 15:07:32', '2021-07-10 15:07:32', NULL),
(266, 'default', 'uploads/all/NjwoD8HF5lHQ8tg4LRn87d7xZs2GvURuzXuntZRw.png', 85, 3733, 'jpg', 'image', '2021-12-13 08:50:15', '2021-12-13 08:50:15', NULL),
(267, 'guest-user', 'uploads/all/ntG3rkGPe0hHXsoZAn8Q1sDuJrV6ILiLecXsQQ0E.jpg', 87, 10029, 'jpg', 'image', '2021-12-13 12:49:00', '2021-12-13 12:49:00', NULL),
(268, '2019-Volkswagen-Jetta-SE-badge', 'uploads/all/pzVL7AiwireJlrRgqEn7bipiZ9cbs1CRkR5VvuLP.jpg', 85, 83571, 'jpg', 'image', '2021-12-19 05:23:39', '2021-12-19 05:23:39', NULL),
(269, '1-1', 'uploads/all/oKlWJ5wb51s38wCjdg7e72CWsJgY1HJxORtHKjUF.jpg', 9, 6519, 'jpg', 'image', '2022-01-09 12:19:41', '2022-01-09 12:19:41', NULL),
(270, '1-3', 'uploads/all/uTKR8qJokfolX3cMEMuCTSjdP16TuVC5TKV25w6c.jpg', 9, 7683, 'jpg', 'image', '2022-01-09 12:19:41', '2022-01-09 12:19:41', NULL),
(271, '2-2', 'uploads/all/jDGtlLoK4VlL5uIUGIt2n4wYbIE3Z23NIWuQacV5.jpg', 9, 6173, 'jpg', 'image', '2022-01-09 12:19:41', '2022-01-09 12:19:41', NULL),
(272, '2-1', 'uploads/all/Z4UFUl7D9e0hp1jGj5O9srRghk4F127dCuYcsNIW.jpg', 9, 7042, 'jpg', 'image', '2022-01-09 12:24:23', '2022-01-09 12:24:23', NULL),
(273, '1-2', 'uploads/all/ddC2lr1YA8qcj3FAlwAT7hdZ01UjtjYchPofly7s.jpg', 9, 2618, 'jpg', 'image', '2022-01-09 12:24:23', '2022-01-09 12:24:23', NULL),
(274, '2-2', 'uploads/all/0TcUQGFEK60g27E7VFKV9vbX5bvM2UxQDpSSLWEX.jpg', 9, 6173, 'jpg', 'image', '2022-01-09 12:24:23', '2022-01-09 12:24:23', NULL),
(275, '2', 'uploads/all/ANcp8vjQX0wc4mAOWuTmsVwdgfYQGEPChZtqlYDg.jpg', 9, 14153, 'jpg', 'image', '2022-01-09 12:40:44', '2022-01-09 12:40:44', NULL),
(276, '1', 'uploads/all/u37iTWVSVY0OStS6Dr1cuC2FW3KJAAFLvYOHHZwi.jpg', 9, 7902, 'jpg', 'image', '2022-01-09 12:41:13', '2022-01-09 12:41:13', NULL),
(277, 'slide-2', 'uploads/all/9u8LuIOoUL1B6f5OefpoeU6ch8aFaYL97dRw9Q5A.jpg', 9, 31692, 'jpg', 'image', '2022-01-09 13:03:11', '2022-01-09 13:03:11', NULL),
(278, 'slide-3', 'uploads/all/xHo1kWHZvofvlCrxevsaVQwkO7sEuF7NBKRWFELM.jpg', 9, 26043, 'jpg', 'image', '2022-01-09 13:03:11', '2022-01-09 13:03:11', NULL),
(279, 'slide-1', 'uploads/all/tiXvUtlqc3OPSTtLogx97Tya4oFOfBwuaZPZDqxT.jpg', 9, 29979, 'jpg', 'image', '2022-01-09 13:03:11', '2022-01-09 13:03:11', NULL),
(280, '1-235x408', 'uploads/all/6zmu7f9XKTreTYj1E0lZeC2urSBEfpzoJYAwtseA.jpg', 9, 19999, 'jpg', 'image', '2022-01-09 13:04:54', '2022-01-09 13:04:54', NULL),
(281, '1', 'uploads/all/eS3Bax3fpcfsPa0n5ni1dAxZRfoaDBpJolN34XXZ.jpg', 9, 6979, 'jpg', 'image', '2022-01-09 13:05:20', '2022-01-09 13:05:20', NULL),
(282, '2', 'uploads/all/JOSoGXl0wwf4c1Ry9Syq4eqHbRMptdg3bd8zteGt.jpg', 9, 4733, 'jpg', 'image', '2022-01-09 13:05:20', '2022-01-09 13:05:20', NULL),
(283, '3', 'uploads/all/9BejtNq39dycZwt8BzHMQQdjKJPArCeZ1jbxLk2i.jpg', 9, 6315, 'jpg', 'image', '2022-01-09 13:05:20', '2022-01-09 13:05:20', NULL),
(284, '4', 'uploads/all/Iwxzr33aqPkLteh1cV9vkpLtAaEuo6zlWo3hUE9r.jpg', 9, 3959, 'jpg', 'image', '2022-01-09 13:05:20', '2022-01-09 13:05:20', NULL),
(285, '2-5', 'uploads/all/aDunqITrIFpig3aMaTZRYhEf0NmiHMngmeGyAERa.jpg', 89, 1530, 'jpg', 'image', '2022-01-09 13:15:58', '2022-01-09 13:15:58', NULL),
(286, '3-1', 'uploads/all/G9HPCPpyGllXkMomIKdR6jeMli6A4lDOzRrahLq3.jpg', 89, 1333, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(287, '2-6', 'uploads/all/kMehcz5Shle57e2YyorVGbwAf5DrFGnHhCeX2Rdu.jpg', 89, 3150, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(288, '2-7', 'uploads/all/tHJxWEdD107wZYWLHppXnnI3jg1Q1MiteEFqi0dv.jpg', 89, 1927, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(289, '3-3', 'uploads/all/C4IzFtDwf7DWZxUEfTCPVlxNnloNYDzuGQvcv5QU.jpg', 89, 1277, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(290, '3-4', 'uploads/all/Cd9UaeGI12MUQ8OcQHXsPSrxwOfDTUJZemvhC8YG.jpg', 89, 2686, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(291, '3-2', 'uploads/all/TJoRdYtBVO7enGsL0a8B2dVKRXeorxdtCunFrsuz.jpg', 89, 1260, 'jpg', 'image', '2022-01-09 13:16:19', '2022-01-09 13:16:19', NULL),
(292, '3-5', 'uploads/all/0XnT8sdBZFWvDHwzkOwTdd7atSoG23OGHlAXN5Ch.jpg', 89, 1251, 'jpg', 'image', '2022-01-09 13:16:20', '2022-01-09 13:16:20', NULL),
(293, '2', 'uploads/all/5XcmGDFV8S1k5S7XPbYsUPWKMpzstOpbLQpGv9fF.png', 9, 1291, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(294, '6', 'uploads/all/dK6Uvihst69QDb49Wc9iwK31FCJjyLu1xhUzW9Op.png', 9, 1670, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(295, '5', 'uploads/all/hBSyv88KM02Vel2F1WAcO8OW74I9THMbcMf2828k.png', 9, 1348, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(296, '1', 'uploads/all/huEtYvJyhERmpJAwJvMkNRv4coDWQjFK0FFlOdxX.png', 9, 2731, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(297, '4', 'uploads/all/pMdlWSniaieCTGyUSmx3qnUNrtGmVqgzf9Cz8N0i.png', 9, 2542, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(298, '3', 'uploads/all/nrS6jhyTviQxtfsH0uUoZNMiGE36N9ezwQ5UZzxc.png', 9, 3301, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(299, '7', 'uploads/all/lMi8TTUoLQ8YnrEw41VI1J5DByYS25nXRwfWUk4C.png', 9, 3329, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(300, '8', 'uploads/all/oAFI5pVjLexvh8Siqeo0cgQ96eKPNp17t40JqEq1.png', 9, 3038, 'png', 'image', '2022-01-09 14:39:07', '2022-01-09 14:39:07', NULL),
(301, '1', 'uploads/all/6G2svy1313NGcdeHWwk8T6Oz30pR7oGHXcgbJdqu.jpg', 9, 6979, 'jpg', 'image', '2022-01-09 14:47:42', '2022-01-09 14:47:42', NULL),
(302, '2', 'uploads/all/kmndRBLeDsnMRGApzad4fkrfk6j8EmvZzjL5dALK.jpg', 9, 4733, 'jpg', 'image', '2022-01-09 14:47:42', '2022-01-09 14:47:42', NULL),
(303, '4', 'uploads/all/dnuivieYasWAQ7PqraOV5ADGDGxDY6DsnPjCSd4P.jpg', 9, 3959, 'jpg', 'image', '2022-01-09 14:47:42', '2022-01-09 14:47:42', NULL),
(304, '3', 'uploads/all/rFwM5LddthdTLJWRzPwSncmeZP7f6pq0RE5PYSMi.jpg', 9, 6315, 'jpg', 'image', '2022-01-09 14:47:42', '2022-01-09 14:47:42', NULL),
(305, 'banner3', 'uploads/all/44T8N9s9oRtH4tc7i4sYqrOwkdJldBXdxbxIWg0J.jpg', 75, 4746, 'jpg', 'image', '2022-01-11 18:47:01', '2022-01-11 18:47:01', NULL),
(306, '4-800x900', 'uploads/all/VzbbbfKf3WBdGuSP7MS5VTZ8MB1Ta3zE0xuA9YL1.jpg', 91, 21789, 'jpg', 'image', '2022-02-01 11:32:21', '2022-02-01 11:32:21', NULL),
(307, '3-800x900', 'uploads/all/m6OJFkZu2O8puQRguQ1ctfByEYpRAEn7xkqteP3m.jpg', 91, 23883, 'jpg', 'image', '2022-02-01 11:32:21', '2022-02-01 11:32:21', NULL),
(308, '2-800x900', 'uploads/all/MHeGxBb8cfzcL3GacJsfy8fZ3BQzJV7kbYo0IpM5.jpg', 91, 20809, 'jpg', 'image', '2022-02-01 11:32:21', '2022-02-01 11:32:21', NULL),
(309, '6-800x900', 'uploads/all/qgIKqU5zfZcrCzzi0rMOV2scXYPHbOTYguol3VM6.jpg', 91, 23521, 'jpg', 'image', '2022-02-01 11:32:21', '2022-02-01 11:32:21', NULL),
(310, '1-800x900', 'uploads/all/G6jdYmhl4708ANZqIeVCeL13nQdy8LEc5QKbT6D1.jpg', 91, 20560, 'jpg', 'image', '2022-02-01 11:32:21', '2022-02-01 11:32:21', NULL),
(311, '5-800x900', 'uploads/all/NfTtrZ2MVAit4nIV0Umx3CLJFd2haAtHI7QzJtbW.jpg', 91, 22529, 'jpg', 'image', '2022-02-01 11:32:22', '2022-02-01 11:32:22', NULL),
(312, '4-1', 'uploads/all/6HL5wp4QW6LTCIll4IhGqiwLwO05LdP5w6qQ1T39.jpg', 91, 5793, 'jpg', 'image', '2022-02-01 11:44:09', '2022-02-01 11:44:09', NULL),
(313, '4-2', 'uploads/all/iO30EheiUq7JR91wyeXfoq1S0xeRzBF63xMGS0Fd.jpg', 91, 21909, 'jpg', 'image', '2022-02-01 11:44:09', '2022-02-01 11:44:09', NULL),
(314, 'review-img-2', 'uploads/all/DUkrlbtY5WASUTJiWH2FUHrc4YSgBee7xgCk2JE6.jpg', 91, 4423, 'jpg', 'image', '2022-02-01 12:16:09', '2022-02-01 12:16:09', NULL);
INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(315, '1', 'uploads/all/ORRJK0Z5Krz4cyk41BLCx66DTChVT8oaw37eHHkE.jpg', 91, 7479, 'jpg', 'image', '2022-02-01 12:21:46', '2022-02-01 12:21:46', NULL),
(316, 'banner1', 'uploads/all/zjSkNr91H2Ij2k04gYk8f9nuz8caSwoXn8PyMqWl.jpg', 75, 16886, 'jpg', 'image', '2022-02-01 12:28:38', '2022-02-01 12:28:38', NULL),
(317, '3-800x900', 'uploads/all/WtF5RAPrPM0Kpy1kp0NwSrVKaHYjklJjpCrWt37m.jpg', 91, 24320, 'jpg', 'image', '2022-02-01 12:35:52', '2022-02-01 12:35:52', NULL),
(318, '1-800x900', 'uploads/all/qJnNixnL6JOFuuxv3Cy9Wei0RQE8lQZhQZywnJGM.jpg', 91, 22618, 'jpg', 'image', '2022-02-01 12:35:52', '2022-02-01 12:35:52', NULL),
(319, '2-800x900', 'uploads/all/ojl1L8r3mAvkOqAcoxe8jwE8xon2dbaSnCIAXA0y.jpg', 91, 24530, 'jpg', 'image', '2022-02-01 12:35:52', '2022-02-01 12:35:52', NULL),
(320, '4-800x900', 'uploads/all/LQrLmfsRVcRBb4IN2qhU0CdH3NpWxmXXfCrsYopx.jpg', 91, 32608, 'jpg', 'image', '2022-02-01 12:35:52', '2022-02-01 12:35:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, 'admin', 'Super Admin', 'admin@admin.com', '2021-02-08 19:02:26', NULL, NULL, '$2y$10$wabqRLBVCPdFG9PWvuavqO0gm39LcN/0v6sC9dssz8ptV.UcqWSzu', 's1gUR0GI0WmeXAr6XQ3gL0fWCeorM2NnbpgAIwuKf3IrBeT30ILRNmz7QwvS', NULL, '7', NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-02-08 19:25:26', '2022-02-19 14:58:25'),
(51, NULL, NULL, 'staff', 'Ismail', 'ismail@ar5as.net', NULL, NULL, NULL, '$2y$10$uM4CV0cMWhXas/x0MPtv2uJGC2SpAx9Tkx59aLac1Jyd96Wkns546', '5f46F1umWoa1HN7HjyNdYQXxxTYmXoDlUCJIf7ZBj197H5FO8AkotvPD2Gru', NULL, '220', NULL, NULL, NULL, NULL, '0101254785', 0.00, 0, NULL, NULL, 0, '2021-02-23 16:28:22', '2021-06-16 18:10:04'),
(52, NULL, NULL, 'staff', 'Esraa', 'esraa@ar5as.net', NULL, NULL, NULL, '$2y$10$PFKgq4ebjlbo.7LUFDsW2OCGSJ21zVLd78VAWZiFBCcamEoDzU8Zq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10236548785', 0.00, 0, NULL, NULL, 0, '2021-02-23 16:29:00', '2021-02-23 16:29:00'),
(75, NULL, NULL, 'seller', 'Ismail Elbahrawy', 'ismail@mtd-llc.com', '2021-05-25 17:07:57', 'eyJpdiI6InJtUEt2c2lGT1Rzb0JQekxma0tDcXc9PSIsInZhbHVlIjoic0w5dU1Cc0pmTXRnUkFGbEdicCtGZz09IiwibWFjIjoiODM0MzlmYTk1ODE2MzU4MzBjZjQ0MTNlZTczZmRjMmQzNDI0ODExY2RjMmFjZjUwYzQ0MmFmNGQ1ODdlZjUwZiJ9', NULL, '$2y$10$yCa7EKG2c/PKsEFcOlM0COjjdr2m7cVWfiPW8G1MPN9XyruXwy6rm', 'iCXyjHZxii4EZkFKYK3uQ9tNHypldi1gFYeMiy2gYF9ss1uLknl8JRroJzGb', NULL, '262', NULL, NULL, NULL, NULL, '01069686209', 0.00, 0, NULL, NULL, 0, '2021-05-25 16:52:00', '2022-02-01 12:29:20'),
(77, NULL, NULL, 'customer', 'Eman Elsoudi', 'emanelsoudi12322@gmail.com', '2021-06-17 14:06:50', '111023', NULL, '$2y$10$eq49Oz7boQu4Gls18QQsheDR37sVCFc.OevTRr1oY8yI8FbMUBdru', 'FdHY127nwWYZhZReT8QI3Ccpwl1mUIJDuxF352XL9UU318a6oNn5aBw1y5KG', NULL, NULL, NULL, NULL, NULL, NULL, '01145495144', 7416.00, 0, NULL, NULL, 0, '2021-06-13 15:35:27', '2022-02-08 14:26:14'),
(80, NULL, NULL, 'customer', 'mohamed hussein', 'm.hussain.waritex@gmail.com', '2022-01-10 13:02:13', 'eyJpdiI6IjNKc2l0aG02OXJBSnBZcEM0UnpiZHc9PSIsInZhbHVlIjoiWFwvYTc2RUIxVmR2dEVJdHRudzM3V3c9PSIsIm1hYyI6IjEwYmRjYzUwYWJmMDc0MTkzMzQwMmViOWQ4MjkxZjM1NDg4NTkyYzlkZmJkOTVkYjBlNDk1OWQzOGMxNDNhM2UifQ==', NULL, '$2y$10$eq49Oz7boQu4Gls18QQsheDR37sVCFc.OevTRr1oY8yI8FbMUBdru', 'mwuWwUU7Pi6Df7HxF50njR661OEZTj32ZtcFDIi8ilBQnFaoUqnVTMxjyfRl', NULL, NULL, NULL, NULL, NULL, NULL, '01157809060', 0.00, 0, NULL, NULL, 0, '2021-07-10 12:18:01', '2022-01-10 13:02:13'),
(85, NULL, NULL, 'seller', 'Alaa Mahmoud', 'alaa.alshafey12345@gmail.com', '2021-12-13 06:53:25', 'eyJpdiI6Im9USEJ4SkQ0OU4rN040SDhIOUNtTWc9PSIsInZhbHVlIjoib2J4V3UzMjg3OWRpRzdaUGhFOXZrZz09IiwibWFjIjoiNzFjNTNlMzdkNTcyOWE1NWU5ODE4ZmIyMmM5N2UxZWNiYTUzNTc0MzQ0YmZjMDc5ZDFlNjQxYTUxMDYzNmY5YyJ9', NULL, '$2y$10$SKVR5ZrDeNvU1o3FXCdMJ.wvhUh5qRDw3aewIjphjphDK6kQJa2LK', 'TlFPZfqKOPLt1ylGke9rnxMCy4763OM4SFeISNG8zJRSIKXwLnRwrQYBxaML', NULL, NULL, NULL, NULL, NULL, NULL, '012121394777', 0.00, 0, NULL, NULL, 0, '2021-12-12 14:38:13', '2021-12-13 06:53:25'),
(86, NULL, NULL, 'customer', 'Alaa Mahmoud', 'alaa.alshafey123@gmail.co', NULL, 'eyJpdiI6InNzYlRQU1ArWG8xd253Slp1amQ0eFE9PSIsInZhbHVlIjoiaE5mRGEwT1NCajhNNGI5cXZ6RUlrZz09IiwibWFjIjoiMTI3MmU2MmE1ZDlkYjU0M2YzOWM1MTcxMWJiYjMyYjBiZjc5NjJiNDI3MjY5MjdkYzJhMDMxZjY5ZjdmMWNkZSJ9', NULL, '$2y$10$anOa078YNcuzCK0aVlGrgephquB/CUEpWrbCmvEiQsd6u33l9Pbsu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456789', 0.00, 0, NULL, NULL, 0, '2021-12-12 14:56:06', '2021-12-12 14:56:07'),
(87, NULL, NULL, 'customer', 'Alaa Mahmoud', 'alaa.alshafey123@gmail.com', '2021-12-13 07:39:33', 'eyJpdiI6IjByWUpWdDRxRWhMS2oyY2NlSmI4RFE9PSIsInZhbHVlIjoiMyswZU5oelREZVhlSDVSWHZxWEp1dz09IiwibWFjIjoiMmFkNmM1ZjU0MWE2Y2FlNWY2ZTZlOWRiMTY0OTVlMjEyYjk1MDVjN2Y2YWY4MzUxZTNhN2ViZDUxY2Q1Y2RiYSJ9', NULL, '$2y$10$P.Z1EivUJY2qicwul4FeK.k5.0HdCVOCmZlZ4KDOaOwPubvgkHH5i', NULL, NULL, '267', NULL, NULL, NULL, NULL, '01221299676', 0.00, 0, NULL, NULL, 0, '2021-12-13 07:36:04', '2021-12-13 12:49:13'),
(90, NULL, NULL, 'customer', 'ahmed Elsoudi', 'ahmed@gmail.com', '2021-06-17 14:06:50', '111023', NULL, '$2y$10$eq49Oz7boQu4Gls18QQsheDR37sVCFc.OevTRr1oY8yI8FbMUBdru', '70urlEfxDvjx2kCnm6FnLyrITZdDz8JcLQxRdaEwplbRKAuT8pO5vj5zqH0L', NULL, NULL, NULL, NULL, NULL, NULL, '01145495144', 3306.00, 0, NULL, NULL, 0, '2021-06-13 15:35:27', '2022-01-09 15:33:04'),
(91, NULL, NULL, 'seller', 'kareem omar', 'kareem@gmail.com', '2022-02-01 11:30:31', NULL, NULL, '$2y$10$u4gSwGAYBrobt6lh2OSQWe6uI8wXepQkgE7H8iQI0BCfJCBoNlaua', NULL, NULL, '314', NULL, NULL, NULL, NULL, '0428723876', 0.00, 0, NULL, NULL, 0, '2022-02-01 11:28:59', '2022-02-01 12:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `payment_method`, `payment_details`, `created_at`, `updated_at`) VALUES
(1, 12, 561.00, 'Refund', 'Product Money Refund', '2021-02-13 17:01:03', '2021-02-13 17:01:03'),
(2, 12, 20.00, 'Refund', 'Product Money Refund', '2021-02-17 03:06:33', '2021-02-17 03:06:33'),
(3, 21, 120.00, 'Refund', 'Product Money Refund', '2021-02-17 13:01:28', '2021-02-17 13:01:28'),
(4, 40, 370.00, 'Refund', 'Product Money Refund', '2021-02-23 08:50:24', '2021-02-23 08:50:24'),
(5, 40, 315.00, 'Refund', 'Product Money Refund', '2021-02-24 20:45:40', '2021-02-24 20:45:40'),
(6, 55, 3420.00, 'Refund', 'Product Money Refund', '2021-03-04 20:14:11', '2021-03-04 20:14:11'),
(7, 69, 3600.00, 'Refund', 'Product Money Refund', '2021-03-18 18:20:40', '2021-03-18 18:20:40'),
(8, 69, 3600.00, 'Refund', 'Product Money Refund', '2021-03-18 18:20:41', '2021-03-18 18:20:41'),
(9, 8, 3420.00, 'Refund', 'Product Money Refund', '2021-05-02 08:24:47', '2021-05-02 08:24:47'),
(10, 8, 3600.00, 'Refund', 'Product Money Refund', '2021-05-02 11:51:02', '2021-05-02 11:51:02'),
(11, 40, 2280.00, 'Refund', 'Product Money Refund Becouse Product not found in seller', '2021-05-19 00:10:44', '2021-05-19 00:10:44'),
(12, 40, 3420.00, 'Refund', 'Product Money Refund', '2021-05-19 07:50:17', '2021-05-19 07:50:17'),
(13, 40, 3420.00, 'Refund', 'Product Money Refund Becouse Product not found in seller', '2021-05-19 15:24:07', '2021-05-19 15:24:07'),
(14, 40, 3420.00, 'Refund', 'Product Money Refund', '2021-05-19 15:45:45', '2021-05-19 15:45:45'),
(15, 77, 1482.00, 'Refund', 'Product Money Refund', '2021-07-06 14:44:15', '2021-07-06 14:44:15'),
(16, 77, 1522.00, 'Refund', 'Product Money Refund', '2021-07-10 18:39:24', '2021-07-10 18:39:24'),
(17, 77, 3232.00, 'Refund', 'Product Money Refund', '2021-07-11 14:49:18', '2021-07-11 14:49:18'),
(18, 77, 1522.00, 'Refund', 'Product Money Refund', '2022-02-08 14:15:09', '2022-02-08 14:15:09'),
(19, 77, 1066.00, 'Refund', 'Product Money Refund', '2022-02-08 14:19:55', '2022-02-08 14:19:55'),
(20, 77, 1522.00, 'Refund', 'Product Money Refund', '2022-02-08 14:26:14', '2022-02-08 14:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(11, 77, 69, '2022-01-11 12:29:15', '2022-01-11 12:29:15'),
(13, 77, 102, '2022-01-26 13:55:23', '2022-01-26 13:55:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gov_id` (`gov_id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governorates`
--
ALTER TABLE `governorates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255));

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `governorates`
--
ALTER TABLE `governorates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3681;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`gov_id`) REFERENCES `governorates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
