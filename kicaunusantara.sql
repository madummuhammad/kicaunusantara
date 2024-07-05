-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2024 at 06:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kicaunusantara`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int UNSIGNED NOT NULL,
  `bannable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bannable_id` bigint UNSIGNED NOT NULL,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('settings', 'a:53:{s:12:\"company_name\";s:8:\"Laramagz\";s:9:\"site_name\";s:8:\"Laramagz\";s:8:\"site_url\";s:21:\"http://localhost:8000\";s:10:\"site_email\";s:16:\"example@mail.com\";s:10:\"site_phone\";s:12:\"463.385.7397\";s:6:\"street\";s:18:\"2711 Bicetown Road\";s:4:\"city\";s:10:\"Huntington\";s:11:\"postal_code\";s:5:\"11743\";s:5:\"state\";s:8:\"New York\";s:7:\"country\";s:13:\"United States\";s:16:\"site_description\";s:76:\"LaraMagz is a Content Management System (CMS) built on the Laravel framework\";s:19:\"contact_description\";s:1905:\"{\"id\":\"Hubungi kami dengan mudah untuk pertanyaan, informasi tambahan, atau untuk terhubung langsung dengan tim kami. Kami di sini untuk membantu Anda dengan layanan terbaik. Jangan ragu untuk mengirim pesan, email kepada kami, atau menghubungi melalui saluran media sosial kami. Kami menantikan kabar dari Anda!\",\"en\":\"Get in touch effortlessly for inquiries, additional information, or to connect directly with our team. We\'re here to assist you with the best service possible. Feel free to send a message, email us, or reach out through our social media channels. We look forward to hearing from you!\",\"ar\":\"\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639\\u0646\\u0627 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a\\u0629 \\u0623\\u0648 \\u0644\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0645\\u0639 \\u0641\\u0631\\u064a\\u0642\\u0646\\u0627. \\u0646\\u062d\\u0646 \\u0647\\u0646\\u0627 \\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u062a\\u0643 \\u0628\\u0623\\u0641\\u0636\\u0644 \\u062e\\u062f\\u0645\\u0629 \\u0645\\u0645\\u0643\\u0646\\u0629. \\u0644\\u0627 \\u062a\\u062a\\u0631\\u062f\\u062f \\u0641\\u064a \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u0623\\u0648 \\u0645\\u0631\\u0627\\u0633\\u0644\\u062a\\u0646\\u0627 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0639\\u0628\\u0631 \\u0642\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627. \\u0646\\u062d\\u0646 \\u0646\\u062a\\u0637\\u0644\\u0639 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u0627\\u0639 \\u0645\\u0646\\u0643!\"}\";s:12:\"meta_keyword\";s:32:\"website, news, laravel, php, cms\";s:5:\"links\";s:252:\"[{\"id\":\"1\",\"name\":\"Instagram\",\"url\":\"https://www.instagram.com/retenvi\",\"icon\":\"fab fa-instagram\",\"color\":\"#885343\"},{\"id\":\"2\",\"name\":\"Youtube\",\"url\":\"https://www.youtube.com/channel/UCUYm8eLTfJDyHSHBLgFU5Gg\",\"icon\":\"fab fa-youtube\",\"color\":\"#C4302B\"}]\";s:7:\"version\";s:5:\"3.0.0\";s:11:\"maintenance\";s:1:\"n\";s:13:\"current_theme\";s:4:\"magz\";s:17:\"current_theme_dir\";s:4:\"magz\";s:8:\"register\";s:1:\"n\";s:18:\"email_verification\";s:1:\"n\";s:16:\"display_language\";s:1:\"y\";s:16:\"default_language\";s:2:\"en\";s:16:\"credentials_file\";s:32:\"service-account-credentials.json\";s:16:\"disqus_shortname\";s:0:\"\";s:9:\"mailchimp\";s:0:\"\";s:16:\"comment_approval\";s:1:\"n\";s:22:\"number_nested_comments\";s:1:\"5\";s:24:\"send_comment_reply_email\";s:1:\"n\";s:7:\"favicon\";s:0:\"\";s:14:\"logo_web_light\";s:0:\"\";s:13:\"logo_web_dark\";s:0:\"\";s:12:\"ogi_homepage\";s:0:\"\";s:12:\"ogi_category\";s:0:\"\";s:11:\"ogi_contact\";s:0:\"\";s:8:\"ogi_page\";s:0:\"\";s:16:\"ogi_popular_post\";s:0:\"\";s:9:\"ogi_posts\";s:0:\"\";s:10:\"ogi_search\";s:0:\"\";s:16:\"ogi_article_post\";s:0:\"\";s:14:\"ogi_video_post\";s:0:\"\";s:14:\"ogi_audio_post\";s:0:\"\";s:7:\"ogi_tag\";s:0:\"\";s:14:\"logo_dashboard\";s:0:\"\";s:9:\"logo_auth\";s:0:\"\";s:14:\"measurement_id\";s:0:\"\";s:11:\"property_id\";s:0:\"\";s:12:\"publisher_id\";s:0:\"\";s:24:\"google_site_verification\";s:0:\"\";s:14:\"permalink_type\";s:6:\"custom\";s:9:\"permalink\";s:4:\"news\";s:20:\"permalink_old_custom\";s:4:\"news\";s:19:\"page_permalink_type\";s:11:\"with_prefix\";s:23:\"category_permalink_type\";s:20:\"with_prefix_category\";}', 1717070045),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:97:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"read-posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"add-posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"update-posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"delete-posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:17:\"read-private-post\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"add-private-post\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:19:\"update-private-post\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:19:\"delete-private-post\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"read-categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:14:\"add-categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"update-categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:17:\"delete-categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:9:\"read-tags\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:8:\"add-tags\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"update-tags\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:11:\"delete-tags\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:10:\"read-pages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:9:\"add-pages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:12:\"update-pages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:12:\"delete-pages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:13:\"read-contacts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:12:\"add-contacts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:15:\"update-contacts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:15:\"delete-contacts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:10:\"read-menus\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:9:\"add-menus\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"update-menus\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"delete-menus\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:11:\"read-themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:10:\"add-themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:13:\"update-themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"delete-themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:14:\"read-languages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:13:\"add-languages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:16:\"update-languages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:16:\"delete-languages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:8:\"read-ads\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:7:\"add-ads\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:10:\"update-ads\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:10:\"delete-ads\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:14:\"read-galleries\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:13:\"add-galleries\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"update-galleries\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:16:\"delete-galleries\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:17:\"read-file-manager\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:16:\"add-file-manager\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"update-file-manager\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:19:\"delete-file-manager\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:10:\"read-users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:9:\"add-users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:12:\"update-users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:12:\"delete-users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:14:\"register-users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:10:\"read-roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:9:\"add-roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:12:\"update-roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:12:\"delete-roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:16:\"read-permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:15:\"add-permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:18:\"update-permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:18:\"delete-permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:17:\"read-social-media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:16:\"add-social-media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:19:\"update-social-media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:19:\"delete-social-media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:16:\"read-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:15:\"add-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:18:\"update-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:18:\"delete-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:21:\"edit-post-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:23:\"delete-post-super-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:10:\"read-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:9:\"add-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:12:\"update-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:12:\"delete-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:15:\"edit-post-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:17:\"delete-post-admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:11:\"read-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:10:\"add-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:13:\"update-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:13:\"delete-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:16:\"edit-post-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:18:\"delete-post-author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:13:\"read-settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:15:\"update-settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:14:\"read-analytics\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:8:\"read-env\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:12:\"read-profile\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:14:\"update-profile\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:17:\"read-translations\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:19:\"update-translations\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:13:\"read-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:12:\"add-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:14:\"reply-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:15:\"update-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:16:\"approve-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:15:\"delete-comments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super-admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"author\";s:1:\"c\";s:3:\"web\";}}}', 1717040392);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `url` text COLLATE utf8mb4_unicode_ci,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `main_reply` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','approved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Misael Jakubowski Sr.', 'dsanford@example.org', 'Illum aut dolorem rerum ut dolor ducimus.', 'Provident ea molestiae ea voluptas consequatur culpa sapiente. Aut consectetur nulla et natus. Voluptas omnis optio fugit qui ut quisquam omnis id. Et natus distinctio sed eveniet.', 'unread', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(2, 'Anna Moen', 'dickinson.hailie@example.org', 'A nostrum necessitatibus quos aliquam iusto.', 'Minus possimus est omnis placeat laudantium eos dolor. Ad quia et doloremque libero provident. Aut fugiat quis exercitationem voluptas ut vero. Dolores quam hic totam expedita eos.', 'unread', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(3, 'Estevan Emmerich', 'myrna.bartoletti@example.org', 'Error quisquam itaque voluptas sunt.', 'Quisquam natus veniam omnis quos temporibus quasi quis. Itaque laborum quia consectetur facere deserunt. Asperiores maiores esse sequi minima. Iusto facere ad et.', 'unread', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(4, 'Zoie Kutch', 'orie.ullrich@example.com', 'Earum enim assumenda molestiae odit architecto consequatur culpa.', 'Aut qui minima est laudantium. Molestiae ipsa minus ut voluptate adipisci. Non aut recusandae mollitia eligendi aut asperiores.', 'unread', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(5, 'Alysha Roberts', 'brekke.delaney@example.com', 'Molestias voluptatem sed autem nisi quia.', 'Velit vel beatae modi repellat provident tenetur delectus. Atque corporis dolor tempore natus cumque vitae consectetur.', 'unread', '2024-05-28 20:39:40', '2024-05-28 20:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fileponds`
--

CREATE TABLE `fileponds` (
  `id` bigint UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetypes` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `country`, `country_code`, `direction`, `active`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'United States', 'US', 'ltr', 'y', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(2, 'Bahasa Indonesia', 'id', 'Indonesia', 'ID', 'ltr', 'y', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(3, 'Arabic', 'ar', 'Saudi Arabia', 'SA', 'rtl', 'y', '2024-05-28 20:39:40', '2024-05-28 20:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Header Menu', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(2, 'Footer Menu', '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `language` bigint UNSIGNED NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `link`, `parent`, `sort`, `class`, `menu_id`, `language`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(2, 'News', '/category/news', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(3, 'Tech', '/category/technology', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(4, 'Lifestyle', '/category/lifestyle', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(5, 'Sport', '/category/sport', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(6, 'Medical', '/category/medical', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(7, 'Video', '/videos/latest', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(8, 'About', '/page/about', 0, 0, NULL, 1, 1, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(9, 'About Us', '/page/about', 8, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(10, 'Privacy Policy', '/page/privacy-policy', 8, 1, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(11, 'Terms & Conditions', '/page/terms-conditions', 8, 2, NULL, 1, 1, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(12, 'Contact', '/contact', 0, 0, NULL, 1, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(13, 'Beranda', '/', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(14, 'Berita', '/category/berita', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(15, 'Teknologi', '/category/teknologi', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(16, 'Gaya Hidup', '/category/gaya-hidup', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(17, 'Olahraga', '/category/olahraga', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(18, 'Medis', '/category/medis', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(19, 'Video', '/video/latest', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(20, 'Tentang', '#', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(21, 'Tentang Kami', '/page/tentang', 20, 0, NULL, 1, 2, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(22, 'Kebijakan Privasi', '/page/kebijakan-privasi', 20, 1, NULL, 1, 2, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(23, 'Syarat & Ketentuan', '/page/syarat-ketentuan', 20, 2, NULL, 1, 2, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(24, 'Kontak', '/kontak', 0, 0, NULL, 1, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(25, 'مسكن', '/', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(26, 'أخبار', '/category/akhb-r', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(27, 'تكنولوجيا', '/category/tknology', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(28, 'أسلوب الحياة', '/category/aslob-lhy', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(29, 'رياضة', '/category/ry-d', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(30, 'طبي', '/category/tby', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(31, 'فيديو', '/fydyo/latest', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(32, 'عن', '#', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(33, 'عن', '/page/aan', 32, 0, NULL, 1, 3, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(34, 'سياسة الخصوصية', '/page/sy-s-lkhsosy', 32, 1, NULL, 1, 3, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(35, 'البنود و الظروف', '/page/lbnod-o-lthrof', 32, 2, NULL, 1, 3, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(36, 'اتصال', '/ts-l', 0, 0, NULL, 1, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(37, 'Home', '/', 0, 0, NULL, 2, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(38, 'About', '/page/about', 0, 0, NULL, 2, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(39, 'Privacy Policy', '/page/privacy-policy', 0, 0, NULL, 2, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(40, 'Terms & Conditions', '/page/terms-conditions', 0, 0, NULL, 2, 1, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(41, 'Beranda', '/', 0, 0, NULL, 2, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(42, 'Tentang', '/page/tentang', 0, 0, NULL, 2, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(43, 'Kebijakan Privasi', '/page/kebijakan-privasi', 0, 0, NULL, 2, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(44, 'Syarat & Ketentuan', '/page/syarat-ketentuan', 0, 0, NULL, 2, 2, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(45, 'مسكن', '/', 0, 0, NULL, 2, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(46, 'حول', '/page/hol', 0, 0, NULL, 2, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(47, 'سياسة الخصوصية', '/page/sy-s-lkhsosy', 0, 0, NULL, 2, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(48, 'البنود و الظروف', '/page/lbnod-o-lthrof', 0, 0, NULL, 2, 3, 0, '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `menu_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(2, 1, 2, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(3, 1, 3, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(4, 2, 1, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(5, 2, 2, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(6, 2, 3, '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2017_03_04_000000_create_bans_table', 1),
(5, '2024_03_25_212349_create_languages_table', 1),
(6, '2024_03_26_024359_add_additional_to_users_table', 1),
(7, '2024_03_29_203621_create_permission_tables', 1),
(8, '2024_03_30_162749_create_settings_table', 1),
(9, '2024_03_31_201501_create_translations_table', 1),
(10, '2024_03_31_201503_create_posts_table', 1),
(11, '2024_03_31_201510_create_terms_table', 1),
(12, '2024_03_31_201517_create_post_term_table', 1),
(13, '2024_03_31_201524_create_post_translations_table', 1),
(14, '2024_03_31_201530_create_contacts_table', 1),
(15, '2024_03_31_201546_create_menus_table', 1),
(16, '2024_03_31_201555_create_menu_items_table', 1),
(17, '2024_03_31_201601_create_menu_languages_table', 1),
(18, '2024_03_31_202330_add_language_to_menu_items_table', 1),
(19, '2024_03_31_202359_create_themes_table', 1),
(20, '2024_03_31_202405_create_subscribers_table', 1),
(21, '2024_03_31_202410_create_comments_table', 1),
(22, '2024_04_01_213758_create_fileponds_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read-posts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(2, 'add-posts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(3, 'update-posts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(4, 'delete-posts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(5, 'read-private-post', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(6, 'add-private-post', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(7, 'update-private-post', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(8, 'delete-private-post', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(9, 'read-categories', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(10, 'add-categories', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(11, 'update-categories', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(12, 'delete-categories', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(13, 'read-tags', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(14, 'add-tags', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(15, 'update-tags', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(16, 'delete-tags', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(17, 'read-pages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(18, 'add-pages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(19, 'update-pages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(20, 'delete-pages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(21, 'read-contacts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(22, 'add-contacts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(23, 'update-contacts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(24, 'delete-contacts', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(25, 'read-menus', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(26, 'add-menus', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(27, 'update-menus', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(28, 'delete-menus', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(29, 'read-themes', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(30, 'add-themes', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(31, 'update-themes', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(32, 'delete-themes', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(33, 'read-languages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(34, 'add-languages', 'web', '2024-05-28 20:39:40', '2024-05-28 20:39:40'),
(35, 'update-languages', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(36, 'delete-languages', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(37, 'read-ads', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(38, 'add-ads', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(39, 'update-ads', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(40, 'delete-ads', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(41, 'read-galleries', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(42, 'add-galleries', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(43, 'update-galleries', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(44, 'delete-galleries', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(45, 'read-file-manager', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(46, 'add-file-manager', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(47, 'update-file-manager', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(48, 'delete-file-manager', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(49, 'read-users', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(50, 'add-users', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(51, 'update-users', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(52, 'delete-users', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(53, 'register-users', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(54, 'read-roles', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(55, 'add-roles', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(56, 'update-roles', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(57, 'delete-roles', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(58, 'read-permissions', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(59, 'add-permissions', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(60, 'update-permissions', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(61, 'delete-permissions', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(62, 'read-social-media', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(63, 'add-social-media', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(64, 'update-social-media', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(65, 'delete-social-media', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(66, 'read-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(67, 'add-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(68, 'update-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(69, 'delete-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(70, 'edit-post-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(71, 'delete-post-super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(72, 'read-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(73, 'add-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(74, 'update-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(75, 'delete-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(76, 'edit-post-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(77, 'delete-post-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(78, 'read-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(79, 'add-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(80, 'update-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(81, 'delete-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(82, 'edit-post-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(83, 'delete-post-author', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(84, 'read-settings', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(85, 'update-settings', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(86, 'read-analytics', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(87, 'read-env', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(88, 'read-profile', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(89, 'update-profile', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(90, 'read-translations', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(91, 'update-translations', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(92, 'read-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(93, 'add-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(94, 'reply-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(95, 'update-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(96, 'approve-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(97, 'delete-comments', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_summary` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `post_visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `post_author` bigint UNSIGNED NOT NULL,
  `post_language` bigint UNSIGNED NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_guid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_hits` bigint UNSIGNED NOT NULL DEFAULT '0',
  `like` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_image` text COLLATE utf8mb4_unicode_ci,
  `post_image_meta` text COLLATE utf8mb4_unicode_ci,
  `post_mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_status` enum('open','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `comment_count` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_source` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_name`, `post_summary`, `post_content`, `meta_description`, `meta_keyword`, `post_status`, `post_visibility`, `post_author`, `post_language`, `post_type`, `post_guid`, `post_hits`, `like`, `post_image`, `post_image_meta`, `post_mime_type`, `comment_status`, `comment_count`, `post_source`, `created_at`, `updated_at`) VALUES
(1, 'Facebook Removes Trump Ad Over \'Nazi Hate Symbol\'', 'facebook-removes-trump-ad-over-nazi-hate-symbol', '<p>Facebook says it has removed adverts for US President Donald Trump&apos;s re-election campaign that featured a symbol used in Nazi Germany.<br></p>', '<p>The company said the offending ad contained an inverted red triangle similar to that used by the Nazis to label opponents such as communists.</p><p>Mr Trump&apos;s campaign team said they were aimed at the far-left activist group antifa, which it said uses the symbol.</p><p>Facebook said the ads violated its policy against organised hate.</p><p>\"We don&apos;t allow symbols that represent hateful organisations or hateful ideologies unless they are put up with context or condemnation,\" the social network&apos;s head of security policy, Nathaniel Gleicher, said on Thursday.</p><p>He added: \"That&apos;s what we saw in this case with this ad, and anywhere that that symbol is used we would take the same actions.\"</p><p><figure class=\"image\"><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/180D5/production/_112971589_hi062017586.jpg\" style=\"width: 624px; height: 396px;\" alt=\"A screenshot showing the symbol used in a Trump campaign ad and removed from Facebook\" title=\"A screenshot showing the symbol used in a Trump campaign ad and removed from Facebook\"><figcaption class=\"captionClass\">A screenshot showing the symbol used in a Trump campaign ad and removed from Facebook</figcaption></figure><br></p><p>The ads, which were posted on the site on pages belonging to President Trump and Vice-President Mike Pence, were online for about 24 hours and had received hundreds of thousands of views before they were taken down.</p><p>\"The inverted red triangle is a symbol used by antifa, so it was included in an ad about antifa,\" Tim Murtaugh, a spokesman for the Trump campaign, said in a statement.</p><p>\"We would note that Facebook still has an inverted red triangle emoji in use, which looks exactly the same,\" he added.</p><p>Mr Trump has recently accused antifa of starting riots at street protests across the US over the death in police custody of African American George Floyd.</p><p>The president said last month that he would designate the anti-fascist group a \"domestic terrorist organisation\", although legal experts have questioned his authority to do so.</p><p>Antifa is a far left protest movement that opposes neo-Nazis, fascism, white supremacists and racism. It is considered to be a loosely organised group of activists with no leaders.</p><p>Most members decry what they see as the nationalistic, anti-immigration and anti-Muslim policies of Mr Trump.</p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 3, 3, 'image1.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:00', '2022-06-11 17:00:00'),
(2, 'Facebook Hapus Iklan Trump Terkait \'Simbol Kebencian Nazi\'', 'facebook-hapus-iklan-trump-terkait-simbol-kebencian-nazi', '<p>Facebook mengatakan telah menghapus iklan untuk kampanye pemilihan ulang Presiden AS Donald Trump yang menampilkan simbol yang digunakan di Nazi Jerman.</p>', '<p>Perusahaan itu mengatakan iklan yang menyinggung berisi segitiga merah terbalik mirip dengan yang digunakan oleh Nazi untuk melabeli lawan seperti komunis.</p><p><span style=\"font-size: 1rem;\">Tim kampanye Trump mengatakan mereka ditujukan pada kelompok aktivis sayap kiri antifa, yang dikatakan menggunakan simbol tersebut.</span></p><p><span style=\"font-size: 1rem;\">Facebook mengatakan iklan tersebut melanggar kebijakannya terhadap kebencian terorganisir.</span></p><p><span style=\"font-size: 1rem;\">\"Kami tidak mengizinkan simbol yang mewakili organisasi kebencian atau ideologi kebencian kecuali jika mereka ditempatkan dengan konteks atau kecaman,\" kepala kebijakan keamanan jaringan sosial, Nathaniel Gleicher, mengatakan pada hari Kamis.</span></p><p><span style=\"font-size: 1rem;\">Dia menambahkan: \"Itulah yang kami lihat dalam kasus ini dengan iklan ini, dan di mana pun simbol itu digunakan, kami akan mengambil tindakan yang sama.\"</span></p><p></p><figure class=\"image\"><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/180D5/production/_112971589_hi062017586.jpg\" style=\"width: 624px; height: 396px;\" alt=\"A screenshot showing the symbol used in a Trump campaign ad and removed from Facebook\" title=\"A screenshot showing the symbol used in a Trump campaign ad and removed from Facebook\"><figcaption class=\"captionClass\">Tangkapan layar yang menunjukkan simbol yang digunakan dalam iklan kampanye Trump dan dihapus dari Facebook</figcaption></figure><p></p><p>Iklan, yang diposting di situs pada halaman milik Presiden Trump dan Wakil Presiden Mike Pence, online selama sekitar 24 jam dan telah menerima ratusan ribu tampilan sebelum dihapus.</p><p><span style=\"font-size: 1rem;\">\"Segitiga merah terbalik adalah simbol yang digunakan oleh antifa, sehingga dimasukkan dalam iklan tentang antifa,\" kata Tim Murtaugh, juru bicara kampanye Trump, dalam sebuah pernyataan.</span></p><p><span style=\"font-size: 1rem;\">\"Kami akan mencatat bahwa Facebook masih menggunakan emoji segitiga merah terbalik, yang terlihat persis sama,\" tambahnya.</span></p><p><span style=\"font-size: 1rem;\">Trump baru-baru ini menuduh antifa memulai kerusuhan di protes jalanan di seluruh AS atas kematian George Floyd dalam tahanan polisi.</span></p><p><span style=\"font-size: 1rem;\">Presiden mengatakan bulan lalu bahwa dia akan menunjuk kelompok anti-fasis sebagai \"organisasi teroris domestik\", meskipun para ahli hukum mempertanyakan wewenangnya untuk melakukannya.</span></p><p><span style=\"font-size: 1rem;\">Antifa adalah gerakan protes paling kiri yang menentang neo-Nazi, fasisme, supremasi kulit putih, dan rasisme. Ini dianggap sebagai kelompok aktivis yang terorganisir secara longgar tanpa pemimpin.</span></p><p><span style=\"font-size: 1rem;\">Sebagian besar anggota mengecam apa yang mereka lihat sebagai kebijakan nasionalistik, anti-imigrasi, dan anti-Muslim dari Trump.</span></p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 3, 1, 'image1.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:00', '2022-06-11 17:00:00'),
(3, 'فيسبوك يزيل إعلان ترامب فوق \'رمز الكراهية النازي\'', 'fysbok-yzyl-aal-n-tr-mb-fok-rmz-lkr-hy-ln-zy', '<p>قالت شركة فيسبوك إنها أزالت الإعلانات الخاصة بحملة إعادة انتخاب الرئيس الأمريكي دونالد ترامب والتي ظهرت فيها رمز مستخدم في ألمانيا النازية.</p>', '<p> قالت الشركة إن الإعلان المسيء يحتوي على مثلث أحمر مقلوب مشابه للمثلث الذي استخدمه النازيون لتسمية المعارضين مثل الشيوعيين. </p>\n                <p> قال فريق حملة السيد ترامب إنهم كانوا يستهدفون جماعة أنتيفا اليسارية المتطرفة ، والتي قال إنها تستخدم الرمز. </p>\n                <p> قال Facebook إن الإعلانات تنتهك سياستها ضد الكراهية المنظمة. </p>\n                <p> \"لا نسمح بالرموز التي تمثل المنظمات البغيضة أو الأيديولوجيات البغيضة ما لم يتم التعامل معها بالسياق أو الإدانة\" ، هذا ما قاله رئيس السياسة الأمنية للشبكة الاجتماعية ، ناثانيال جلايشر ، يوم الخميس. </p>\n                <p> وأضاف: \"هذا ما رأيناه في هذه الحالة مع هذا الإعلان ، وفي أي مكان يتم فيه استخدام هذا الرمز سنتخذ نفس الإجراءات.\" </p>\n                <p></p>\n                <figure class=\"image\"><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/180D5/production/_112971589_hi062017586.jpg\" style=\"width: 624px; height: 396px;\" alt=\"لقطة شاشة توضح الرمز المستخدم في إعلان حملة ترامب وإزالته من Facebook\" title=\"لقطة شاشة توضح الرمز المستخدم في إعلان حملة ترامب وإزالته من Facebook\">\n                    <figcaption class=\"captionClass\">لقطة شاشة توضح الرمز المستخدم في إعلان حملة ترامب وإزالته من Facebook</figcaption>\n                </figure><br>\n                <p></p>\n                <p> كانت الإعلانات ، التي نُشرت على الموقع على صفحات تخص الرئيس ترامب ونائبه مايك بنس ، على الإنترنت لمدة 24 ساعة تقريبًا وتلقت مئات الآلاف من المشاهدات قبل إزالتها. </p>\n                <p> قال تيم مورتو ، المتحدث باسم حملة ترامب ، في بيان: \"المثلث الأحمر المقلوب هو رمز تستخدمه أنتيفا ، لذلك تم تضمينه في إعلان عن أنتيفا\". </p>\n                <p> \"نلاحظ أن Facebook لا يزال يستخدم رمزًا تعبيريًا لمثلث أحمر مقلوب ، والذي يبدو متماثلًا تمامًا\" ، أضاف. </p>\n                <p> اتهم السيد ترامب مؤخرًا منظمة أنتيفا ببدء أعمال شغب في احتجاجات الشوارع في جميع أنحاء الولايات المتحدة على وفاة الأمريكي من أصل أفريقي جورج فلويد في حجز الشرطة. </p>\n                <p> قال الرئيس الشهر الماضي إنه سيعين المجموعة المناهضة للفاشية \"منظمة إرهابية محلية\" ، على الرغم من أن الخبراء القانونيين شككوا في سلطته للقيام بذلك. </p>\n                <p> أنتيفا هي حركة احتجاج يسارية متطرفة تعارض النازيين الجدد والفاشية وأنصار تفوق البيض والعنصرية. تعتبر مجموعة منظمة بشكل فضفاض من النشطاء بدون قادة. </p>\n                <p> شجب معظم الأعضاء ما يرون أنه سياسات السيد ترامب القومية والمناهضة للهجرة والمسلمين. </p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 3, 3, 'image1.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:00', '2022-06-11 17:00:00'),
(4, 'Tech Takeovers Feed Into China Cold War Fears', 'tech-takeovers-feed-into-china-cold-war-fears', '<p>The UK government is planning new measures to restrict foreign takeovers on national security grounds.<br></p>', '<h3><span style=\"font-size: 1rem;\">But security experts caution the UK has been late to the issue.</span></h3><p>It comes amid growing concern about the risk of China buying high-tech companies, especially in the economic turmoil resulting from the coronavirus pandemic.</p><p>At the height of the crisis, a boardroom manoeuvre nearly went unnoticed.</p><p>And it flared up into a row that goes to the heart of on an increasingly contentious issue - has the UK failed to stop high-tech industries passing into Chinese hands?</p><h3>Taking control</h3><p>In 2017, Imagination Technologies, a Hertfordshire-based company at the cutting edge of computer-chip design, whose tech is used on iPhones, was bought by Canyon Bridge Partners, a private equity firm based in the Cayman Islands.</p><p>But 99% of the funds for the purchase came from China Reform, backed by the state in Beijing.</p><p>And this spring, Canyon Bridge Partners tried to install new directors linked to China Reform.</p><p>One of those to raise the alarm, Sir Hossein Yassaie, a former chief executive of the company, feared assurances it would not be moved to China were at risk of being broken.</p><p>\"It looked like there was an attempt to basically change the ownership and control of the company,\" he told a documentary made for BBC Radio 4 .</p><p>\"My stance on Imagination is fundamentally about making sure a very important ecosystem... is maintained as an independent, properly governed supplier.\"</p><p>The issue was taken up by Tom Tugendhat MP, who chairs the Foreign Affairs Select Committee, which held a hearing in May.</p><p>Canyon Bridge denied China had any untoward influence over the purchase or its activities, arguing the decisions were purely commercial.</p><p>And some of the changes were halted.</p><p>But those involved believe it was an indication of a wider problem.</p><p>\"This is just part of an incremental process where technology is being moved out of the UK, and out of the West, and towards China,\" Mr Tugendhat says.</p><h3>&apos;World changed&apos;</h3><p>Has the UK been too ready to allow some of its \"crown jewel\" technology companies to be sold into foreign hands?</p><p>\"The simple answer unfortunately is, &apos;Yes.&apos;\" Sir Hossein says.</p><p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/170BC/production/_112969349_uk.jpg\" style=\"width: 624px;\"><br></p><p>And Elisabeth Braw, of the Royal United Services Institute think tank, believes many other cases in which cutting edge technology have shifted to China have gone unreported.</p><p>\"The UK has been late to understand this,\" she says.</p><p>\"It sort of goes against this idea that globalisation is a force for good, if you start saying, &apos;Well, we need to scrutinise foreign investors.&apos;</p><p>But actually the world has changed and China is exploiting globalisation for its own gains.\"</p><p>Theresa May&apos;s government announced plans to look at the issue in 2018.</p><p>A bill promising new powers to assess mergers and takeovers was promised in the Queen&apos;s Speech last December.</p><p>And in May, Prime Minister Boris Johnson said parliamentarians were \"right to be concerned\" about the buying up of UK technology by countries that had \"ulterior motives\", and promised new measures in the coming weeks.</p><p>Others have already acted.</p><p>The purchase of a robotics manufacturer by a Chinese company led Germany in 2017 to place new restrictions on takeovers.</p><p>US intelligence officials have also increasingly focused on looking for a hidden hand from the Chinese state in business deals.</p><p>\"You might see an acquisition and on its face it makes all the sense in the world,\" US National Counterintelligence and Security Center director Bill Evanina told BBC News.</p><p>\"But there needs to be intelligence services peeling back that onion to identify who the backdoor owners are and who the financiers of that acquisition are.\"</p><p>Mr Evanina says that, after having been \"a little bit slow, in the last two to three years\", the US government has become more active in warning the private sector.</p><p>In the UK, MI5 plays a similar role and informs decisions about whether technology takeovers are in the national interest - but few have been stopped.</p><h3>Strategic advantage</h3><p>One of the more surprising rows came after the gay dating site Grindr was purchased by a Chinese company.</p><p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/6334/production/_112969352_china.jpg\" style=\"width: 624px;\"><br></p><p>The US raised national security concerns because of the fear the personal data could be used to compromise or influence individuals.</p><p>And the company was eventually sold.</p><p>\"The regulator realised that having that information at the disposal of the Chinese government ultimately was a very bad idea for US national security,\" Ms Braw says.</p><p>\"We need to change our understanding of which companies are vital to national security and treat them just like we treated defence companies in the Cold War\".</p><p>One concern for Mr Evanina is the extent to which China can use a combination of acquisitions, its own technology companies and cyber-espionage to build up large databases of personal information.</p><p>\"The ability to have information on every human in the world that that human doesn&apos;t even have on themselves provides them with a strategic advantage, not only from an espionage perspective but a compromise perspective [and] understanding plans and intentions of companies,\" he says.</p><p><i>The New Tech Cold War will be broadcast on BBC Radio 4 at 11:00 on Friday and again on Tuesday at 16:00</i></p>', 'The UK government is planning new measures to restrict foreign takeovers on national security grounds.', 'Tecnhology, China, United Kindom', 'publish', 'public', 2, 1, 'post', NULL, 4, 3, 'image4.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:01', '2022-06-11 17:00:01'),
(5, 'Pengambilalihan Teknologi Memasukkan Ke dalam Ketakutan Perang Dingin China', 'pengambilalihan-teknologi-memasukkan-ke-dalam-ketakutan-perang-dingin-china', '<p>Pemerintah Inggris sedang merencanakan langkah-langkah baru untuk membatasi pengambilalihan asing dengan alasan keamanan nasional.</p>', '<p>Namun pakar keamanan memperingatkan Inggris terlambat menangani masalah ini.</p><p>Itu terjadi di tengah meningkatnya kekhawatiran tentang risiko China membeli perusahaan teknologi tinggi, terutama dalam gejolak ekonomi akibat pandemi virus corona.</p><p>Pada puncak krisis, manuver ruang rapat hampir tidak diperhatikan.</p><p>Dan itu berkobar menjadi pertikaian yang mengarah ke inti masalah yang semakin diperdebatkan - apakah Inggris telah gagal menghentikan industri teknologi tinggi yang beralih ke tangan China?</p><h3>Mengambil alih</h3><p>Pada tahun 2017, Imagination Technologies, sebuah perusahaan yang berbasis di Hertfordshire di ujung tombak desain chip komputer, yang teknologinya digunakan pada iPhone, dibeli oleh Canyon Bridge Partners, sebuah perusahaan ekuitas swasta yang berbasis di Kepulauan Cayman.</p><p><span style=\"font-size: 1rem;\">Tapi 99% dana untuk pembelian itu berasal dari China Reform, yang didukung oleh negara di Beijing.</span></p><p><span style=\"font-size: 1rem;\">Dan musim semi ini, Canyon Bridge Partners mencoba memasang direktur baru yang terkait dengan Reformasi China.</span></p><p><span style=\"font-size: 1rem;\">Salah satu dari mereka yang memperingatkan, Sir Hossein Yassaie, mantan kepala eksekutif perusahaan, khawatir jaminan bahwa perusahaan itu tidak akan dipindahkan ke China berisiko rusak.</span></p><p><span style=\"font-size: 1rem;\">\"Sepertinya ada upaya untuk mengubah kepemilikan dan kendali perusahaan pada dasarnya,\" katanya kepada sebuah film dokumenter yang dibuat untuk BBC Radio 4 .</span></p><p><span style=\"font-size: 1rem;\">\"Pendirian saya tentang Imajinasi pada dasarnya adalah memastikan ekosistem yang sangat penting ... dipertahankan sebagai pemasok independen yang diatur dengan benar.\"</span></p><p><span style=\"font-size: 1rem;\">Masalah ini diangkat oleh Tom Tugendhat MP, yang memimpin Komite Pemilihan Luar Negeri, yang mengadakan dengar pendapat pada bulan Mei.</span></p><p><span style=\"font-size: 1rem;\">Canyon Bridge membantah China memiliki pengaruh yang tidak diinginkan atas pembelian atau kegiatannya, dengan alasan keputusan itu murni komersial.</span></p><p><span style=\"font-size: 1rem;\">Dan beberapa perubahan dihentikan.</span></p><p><span style=\"font-size: 1rem;\">Tetapi mereka yang terlibat percaya itu adalah indikasi masalah yang lebih luas.</span></p><p><span style=\"font-size: 1rem;\">\"Ini hanya bagian dari proses tambahan di mana teknologi dipindahkan dari Inggris, dan keluar dari Barat, dan menuju China,\" kata Tugendhat.</span></p><h3>\'Dunia berubah\'</h3><p>Apakah Inggris terlalu siap untuk mengizinkan beberapa perusahaan teknologi \"permata mahkota\" dijual ke tangan asing?</p><p><span style=\"font-size: 1rem;\">\"Sayangnya, jawaban sederhananya adalah, \'Ya.\'\" kata Sir Hossein.</span></p><p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/170BC/production/_112969349_uk.jpg\" style=\"width: 624px;\"><br></p><p>Dan Elisabeth Braw, dari think tank Royal United Services Institute, percaya banyak kasus lain di mana teknologi canggih telah bergeser ke China tidak dilaporkan.</p><p><span style=\"font-size: 1rem;\">\"Inggris terlambat memahami hal ini,\" katanya.</span></p><p><span style=\"font-size: 1rem;\">\"Ini agak bertentangan dengan gagasan bahwa globalisasi adalah kekuatan untuk kebaikan, jika Anda mulai berkata, \'Ya, kita perlu meneliti investor asing.\'</span></p><p><span style=\"font-size: 1rem;\">Tapi sebenarnya dunia telah berubah dan China mengeksploitasi globalisasi untuk keuntungannya sendiri.\"</span></p><p><span style=\"font-size: 1rem;\">Pemerintah Theresa May mengumumkan rencana untuk melihat masalah ini pada tahun 2018.</span></p><p><span style=\"font-size: 1rem;\">Sebuah RUU yang menjanjikan kekuatan baru untuk menilai merger dan pengambilalihan dijanjikan dalam Pidato Ratu Desember lalu.</span></p><p><span style=\"font-size: 1rem;\">Dan pada bulan Mei, Perdana Menteri Boris Johnson mengatakan anggota parlemen \"benar untuk khawatir\" tentang pembelian teknologi Inggris oleh negara-negara yang memiliki \"motif tersembunyi\", dan menjanjikan langkah-langkah baru dalam beberapa minggu mendatang.</span></p><p><span style=\"font-size: 1rem;\">Yang lain sudah bertindak.</span></p><p><span style=\"font-size: 1rem;\">Pembelian produsen robotika oleh perusahaan China membuat Jerman pada 2017 memberlakukan pembatasan baru pada pengambilalihan.</span></p><p><span style=\"font-size: 1rem;\">Pejabat intelijen AS juga semakin fokus mencari tangan tersembunyi dari negara China dalam kesepakatan bisnis.</span></p><p><span style=\"font-size: 1rem;\">\"Anda mungkin melihat akuisisi dan secara langsung itu masuk akal di dunia,\" kata direktur Pusat Kontra Intelijen dan Keamanan Nasional AS Bill Evanina kepada BBC News.</span></p><p><span style=\"font-size: 1rem;\">\"Tetapi perlu ada badan intelijen yang mengupas bawang itu untuk mengidentifikasi siapa pemilik pintu belakang dan siapa pemodal akuisisi itu.\"</span></p><p><span style=\"font-size: 1rem;\">Mr Evanina mengatakan bahwa, setelah \"sedikit lambat, dalam dua sampai tiga tahun terakhir\", pemerintah AS menjadi lebih aktif dalam memperingatkan sektor swasta.</span></p><p><span style=\"font-size: 1rem;\">Di Inggris, MI5 memainkan peran serupa dan menginformasikan keputusan tentang apakah pengambilalihan teknologi merupakan kepentingan nasional - tetapi hanya sedikit yang dihentikan.</span></p><h3>Keunggulan strategis</h3><p>Salah satu baris yang lebih mengejutkan datang setelah situs kencan gay Grindr dibeli oleh sebuah perusahaan Cina.</p><p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/6334/production/_112969352_china.jpg\" style=\"width: 624px;\"><br></p><p>AS mengangkat masalah keamanan nasional karena takut data pribadi dapat digunakan untuk berkompromi atau mempengaruhi individu.</p><p><span style=\"font-size: 1rem;\">Dan perusahaan itu akhirnya dijual.</span></p><p><span style=\"font-size: 1rem;\">\"Regulator menyadari bahwa memiliki informasi itu untuk pemerintah China pada akhirnya adalah ide yang sangat buruk untuk keamanan nasional AS,\" kata Braw.</span></p><p><span style=\"font-size: 1rem;\">\"Kita perlu mengubah pemahaman kita tentang perusahaan mana yang penting bagi keamanan nasional dan memperlakukan mereka seperti kita memperlakukan perusahaan pertahanan di Perang Dingin\".</span></p><p><span style=\"font-size: 1rem;\">Satu kekhawatiran bagi Evanina adalah sejauh mana China dapat menggunakan kombinasi akuisisi, perusahaan teknologinya sendiri, dan spionase siber untuk membangun basis data besar informasi pribadi.</span></p><p><span style=\"font-size: 1rem;\">\"Kemampuan untuk memiliki informasi tentang setiap manusia di dunia yang bahkan tidak dimiliki manusia itu sendiri memberi mereka keuntungan strategis, tidak hanya dari perspektif spionase tetapi juga perspektif kompromi [dan] memahami rencana dan niat perusahaan,\" dia berkata.</span></p><p><span style=\"font-size: 1rem;\"><i>Perang Dingin Teknologi Baru akan disiarkan di Radio BBC 4 pada pukul 11:00 pada hari Jumat dan lagi pada hari Selasa pukul 16:00</i></span></p>', 'Pemerintah Inggris sedang merencanakan langkah-langkah baru untuk membatasi pengambilalihan asing dengan alasan keamanan nasional.', 'Teknologi, China, United Kindom', 'publish', 'public', 2, 2, 'post', NULL, 3, 3, 'image4.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:01', '2022-06-11 17:00:01'),
(6, 'الاستحواذ التكنولوجي يغذي مخاوف الحرب الباردة في الصين', 'l-stho-th-ltknology-yghthy-mkh-of-lhrb-lb-rd-fy-lsyn', '<p>تخطط حكومة المملكة المتحدة لإجراءات جديدة لتقييد عمليات الاستحواذ الأجنبية لأسباب تتعلق بالأمن القومي.</p>', '<h3><span style=\"font-size: 1rem;\">لكن خبراء أمنيين يحذرون من أن المملكة المتحدة تأخرت في معالجة هذه القضية.</span></h3>\n                <p>يأتي ذلك وسط قلق متزايد بشأن مخاطر شراء الصين لشركات التكنولوجيا الفائقة ، خاصة في ظل الاضطرابات الاقتصادية الناتجة عن جائحة فيروس كورونا.</p>\n                <p>في ذروة الأزمة ، كانت مناورة مجلس الإدارة كادت تمر مرور الكرام دون أن يلاحظها أحد.</p>\n                <p>واندلعت في صراع يذهب إلى قلب قضية مثيرة للجدل على نحو متزايد - هل فشلت المملكة المتحدة في وقف صناعات التكنولوجيا الفائقة التي تنتقل إلى أيدي الصينيين؟</p>\n                <h3>السيطرة</h3>\n                <p>في عام 2017 ، اشترت شركة كانيون بريدج بارتنرز Canyon Bridge Partners ، وهي شركة أسهم خاصة مقرها جزر كايمان ، شركة Imagination Technologies ، وهي شركة مقرها هيرتفوردشاير تتمتع بأحدث تصميم لشرائح الكمبيوتر ، وتستخدم تقنيتها في أجهزة iPhone.</p>\n                <p>لكن 99٪ من الأموال المخصصة للشراء جاءت من China Reform ، بدعم من الدولة في بكين.</p>\n                <p>وفي ربيع هذا العام ، حاول كانيون بريدج بارتنرز تعيين مديرين جدد مرتبطين بإصلاح الصين.</p>\n                <p>أحد أولئك الذين دقوا ناقوس الخطر ، وهو السير حسين ياساي ، الرئيس التنفيذي السابق للشركة ، يخشى أن تكون التأكيدات بأنه لن يتم نقلها إلى الصين معرضة لخطر الانهيار.</p>\n                <p>وقال في فيلم وثائقي أعد لراديو بي بي سي 4 \"يبدو أن هناك محاولة لتغيير ملكية الشركة والسيطرة عليها بشكل أساسي\".</p>\n                <p>\"موقفي من الخيال يتعلق بشكل أساسي بالتأكد من الحفاظ على نظام بيئي مهم للغاية ... كمورد مستقل ومحكم بشكل صحيح.\"</p>\n                <p>تم تناول هذه القضية من قبل النائب توم توجندهات ، الذي يرأس لجنة الشؤون الخارجية ، التي عقدت جلسة استماع في مايو.</p>\n                <p>نفى كانيون بريدج أن يكون للصين أي تأثير غير مرغوب فيه على الشراء أو أنشطته ، بحجة أن القرارات كانت تجارية بحتة.</p>\n                <p>وتوقفت بعض التغييرات.</p>\n                <p>لكن المتورطين يعتقدون أنه كان مؤشرا على مشكلة أوسع.</p>\n                <p>يقول توجندهات: \"هذا مجرد جزء من عملية تدريجية يتم فيها نقل التكنولوجيا خارج المملكة المتحدة ، ومن الغرب ، ونحو الصين\".</p>\n                <h3>\"العالم تغير\"</h3>\n                <p>هل كانت المملكة المتحدة مستعدة للغاية للسماح ببيع بعض شركات التكنولوجيا \"جوهرة التاج\" إلى أيدٍ أجنبية؟</p>\n                <p>\"الجواب البسيط للأسف هو نعم\". يقول السير حسين.</p>\n                <p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/170BC/production/_112969349_uk.jpg\" style=\"width: 624px;\"><br></p>\n                <p>وتعتقد إليزابيث براو ، من معهد رويال يونايتد للخدمات البحثية ، أن العديد من الحالات الأخرى التي تحولت فيها أحدث التقنيات إلى الصين لم يتم الإبلاغ عنها.</p>\n                <p>وتقول: \"تأخرت المملكة المتحدة في فهم هذا الأمر\".</p>\n                <p>\"إنها تتعارض نوعًا ما مع هذه الفكرة القائلة بأن العولمة قوة من أجل الخير ، إذا بدأت بالقول ،\" حسنًا ، نحتاج إلى التدقيق في المستثمرين الأجانب \".</p>\n                <p>لكن في الواقع ، تغير العالم وتستغل الصين العولمة لتحقيق مكاسبها الخاصة \".</p>\n                <p>أعلنت حكومة تيريزا ماي عن خطط للنظر في هذه القضية في عام 2018.</p>\n                <p>تم التعهد بمشروع قانون يعد بسلطات جديدة لتقييم عمليات الاندماج والاستحواذ في خطاب الملكة في ديسمبر الماضي.</p>\n                <p>وفي مايو ، قال رئيس الوزراء بوريس جونسون إن البرلمانيين \"على حق في القلق\" بشأن شراء التكنولوجيا البريطانية من قبل دول لديها \"دوافع خفية\" ، ووعد بإجراءات جديدة في الأسابيع المقبلة.</p>\n                <p>تصرف آخرون بالفعل.</p>\n                <p>أدى شراء شركة صينية لتصنيع الروبوتات إلى قيام ألمانيا في عام 2017 بفرض قيود جديدة على عمليات الاستحواذ.</p>\n                <p>كما ركز مسؤولو المخابرات الأمريكية بشكل متزايد على البحث عن يد خفية من الدولة الصينية في الصفقات التجارية.</p>\n                <p>وقال بيل إيفانينا ، مدير مركز مكافحة التجسس والأمن القومي الأمريكي لبي بي سي نيوز: \"قد ترى عملية استحواذ ويبدو أنها تبدو منطقية في العالم\".</p>\n                <p>\"ولكن يجب أن تكون هناك أجهزة استخباراتية تعمل على تقشير تلك البصلة لتحديد أصحاب الأبواب الخلفية وممولي عملية الاستحواذ هذه.\"</p>\n                <p>يقول إيفانينا إنه بعد أن كانت \"بطيئة بعض الشيء ، في العامين أو الثلاثة أعوام الماضية\" ، أصبحت حكومة الولايات المتحدة أكثر نشاطًا في تحذير القطاع الخاص.</p>\n                <p>في المملكة المتحدة ، يلعب MI5 دورًا مشابهًا ويبلغ القرارات حول ما إذا كانت عمليات الاستحواذ على التكنولوجيا في المصلحة الوطنية - ولكن تم إيقاف القليل منها.</p>\n                <h3>ميزة استراتيجية</h3>\n                <p>وجاء أحد الصفوف الأكثر إثارة للدهشة بعد أن اشترت شركة صينية موقع Grindr لمواعدة المثليين.</p>\n                <p><img src=\"https://ichef.bbci.co.uk/news/624/cpsprodpb/6334/production/_112969352_china.jpg\" style=\"width: 624px;\"><br></p>\n                <p>أثارت الولايات المتحدة مخاوف تتعلق بالأمن القومي بسبب الخوف من استخدام البيانات الشخصية للتغلب على الأفراد أو التأثير عليهم.</p>\n                <p>وتم بيع الشركة في النهاية.</p>\n                <p>تقول براو: \"أدركت الهيئة التنظيمية أن امتلاك هذه المعلومات تحت تصرف الحكومة الصينية كان في النهاية فكرة سيئة للغاية بالنسبة للأمن القومي للولايات المتحدة\".</p>\n                <p>\"نحتاج إلى تغيير فهمنا للشركات ذات الأهمية الحيوية للأمن القومي والتعامل معها تمامًا مثلما تعاملنا مع شركات الدفاع في الحرب الباردة\".</p>\n                <p>يتمثل أحد مخاوف السيد إيفانينا في المدى الذي يمكن أن تستخدم فيه الصين مجموعة من عمليات الاستحواذ وشركات التكنولوجيا الخاصة بها والتجسس الإلكتروني لبناء قواعد بيانات كبيرة من المعلومات الشخصية.</p>\n                <p>\"إن القدرة على الحصول على معلومات عن كل إنسان في العالم لا يمتلكها هذا الإنسان حتى على نفسه توفر له ميزة إستراتيجية ، ليس فقط من منظور تجسس ولكن من منظور حل وسط [و] فهم خطط الشركات ونواياها ،\" هو يقول.</p>\n                <p><i>سيتم بث The New Tech Cold War على راديو BBC 4 في الساعة 11:00 يوم الجمعة ومرة أخرى يوم الثلاثاء الساعة 16:00</i></p>', 'تخطط حكومة المملكة المتحدة لإجراءات جديدة لتقييد عمليات الاستحواذ الأجنبية لأسباب تتعلق بالأمن القومي.', 'تقنية, الصين, المملكة المتحدة', 'publish', 'public', 3, 3, 'post', NULL, 4, 3, 'image4.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:01', '2022-06-11 17:00:01'),
(7, 'Joy Is A Net Of Love By Which You Can Catch Souls', 'joy-is-a-net-of-love-by-which-you-can-catch-souls', NULL, '<p>My first reaction is what beauty? I&rsquo;ve definitely crossed over to the invisible side. I rather prefer it that way&hellip;</p><p>My whole life my weight has fluctuated quite a bit and my self-image with it. When I&rsquo;ve been fat, I&rsquo;ve been ugly &mdash; at least in my mind.</p><p>I noticed that the more weight I gained, the less teasing or ogling I&rsquo;d get from boys and men. Being fat was safer, damn it. I liked being safe. I hid there.</p><p>But at different times I would go on diets and lose weight. That happened in my late twenties, when I went down to what I weighted in sixth grade after the summer diet my grandmother put me on.</p><h3>Connecting the dots</h3><p>I feel the connection between the colorful visuals and the magical vibrant world I&rsquo;ve created in my writing. The pictures reflect who I am as a creative spirit.</p><p>This process has nudged me back from the ledge of self-loathing, especially where photos are concerned. Going forward in my life necessitates being seen in person, on paper, and perhaps even in some forms of media.</p><p>Yes, my beauty is about a lot more than gorgeous photos. But if it took seeing myself through Barbara&rsquo;s eyes to get on board with my full, vibrant, impish, playful, radiant self, so be it.</p><p>Now that I am &ldquo;out&rdquo; so to speak, it&rsquo;s up to me to feed myself with beautiful images and stories of women close to me in age who are enjoying their fine physical selves and letting others see them through their eyes, not vice versa.</p><p>Let&rsquo;s unsubscribe from magazine culture and sign up for honoring ourselves in the full glory of just how good it feels to be alive in our skins, with our eyes, our hair, our unique ways of moving and being and shining.</p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 1, 1, 'image7.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:02', '2022-06-11 17:00:02'),
(8, 'Sukacita Adalah Jaring Cinta Yang Dengannya Anda Dapat Menangkap Jiwa', 'sukacita-adalah-jaring-cinta-yang-dapat-menangkap-jiwa', NULL, '<p>Reaksi pertama saya adalah kecantikan apa? Saya pasti telah menyeberang ke sisi yang tidak terlihat. Saya lebih suka seperti itu&mldr;</p><p>Sepanjang hidup saya, berat badan saya sedikit berfluktuasi dan citra diri saya dengannya. Ketika saya gemuk, saya jelek — setidaknya dalam pikiran saya.</p><p>Saya perhatikan bahwa semakin berat badan saya bertambah, semakin sedikit ejekan atau ejekan yang saya dapatkan dari anak laki-laki dan laki-laki. Menjadi gemuk lebih aman, sialan. Saya suka merasa aman. Aku bersembunyi di sana.</p><p>Tetapi pada waktu yang berbeda saya akan melakukan diet dan menurunkan berat badan. Itu terjadi di usia akhir dua puluhan, ketika saya menurunkan berat badan saya di kelas enam setelah diet musim panas yang diberikan nenek saya.</p><h3>Menghubungkan titik-titik</h3><p>Saya merasakan hubungan antara visual yang penuh warna dan dunia magis yang semarak yang saya buat dalam tulisan saya. Gambar-gambar tersebut mencerminkan siapa saya sebagai seorang yang berjiwa kreatif.</p><p>Proses ini telah mendorong saya kembali dari jurang kebencian diri, terutama dalam hal foto. Melangkah ke depan dalam hidup saya membutuhkan terlihat secara langsung, di atas kertas, dan bahkan mungkin dalam beberapa bentuk media.</p><p>Ya, kecantikan saya lebih dari sekadar foto-foto cantik. Tetapi jika perlu melihat diri saya melalui mata Barbara untuk bergabung dengan diri saya yang penuh, bersemangat, nakal, menyenangkan, berseri-seri, biarlah.</p><p>Sekarang saya \"keluar\" sehingga untuk berbicara, terserah saya untuk memberi makan diri saya sendiri dengan gambar-gambar indah dan kisah-kisah wanita yang dekat dengan saya di usia yang menikmati diri fisik mereka yang baik dan membiarkan orang lain melihat mereka melalui mata mereka, bukan sebaliknya.</p><p>Mari berhenti berlangganan dari budaya majalah dan mendaftar untuk menghormati diri kita sendiri dalam kemuliaan penuh betapa menyenangkan rasanya hidup di kulit kita, dengan mata kita, rambut kita, cara unik kita bergerak dan menjadi dan bersinar.</p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 3, 2, 'image7.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:02', '2022-06-11 17:00:02'),
(9, 'الفرح هو شبكة الحب التي يمكنك من خلالها التقاط النفوس', 'lfrh-ho-shbk-lhb-lty-ymknk-mn-khl-lh-ltk-t-lnfos', NULL, '<p>أول رد فعل لي هو ما الجمال؟ لقد عبرت بالتأكيد إلى الجانب غير المرئي. أفضل ذلك بهذه الطريقة ...<br></p><p>طوال حياتي ، تذبذب وزني قليلاً وصورتي الذاتية معه. عندما كنت سمينًا ، كنت قبيحًا - على الأقل في ذهني.</p><p>لقد لاحظت أنه كلما زاد وزني ، كلما قلت مضايقاتي أو تقهقتي من الفتيان والرجال. كونك بدينًا كان أكثر أمانًا ، اللعنة. أحببت أن أكون آمنًا. اختبأت هناك.</p><p>لكن في أوقات مختلفة كنت أتبع نظامًا غذائيًا وأفقد الوزن. حدث ذلك في أواخر العشرينات من عمري ، عندما نزلت إلى ما كان وزني في الصف السادس بعد النظام الغذائي الصيفي الذي وضعتني جدتي عليه.</p><h3>توصيل النقاط</h3><p>أشعر بالارتباط بين المرئيات الملونة والعالم السحري النابض بالحياة الذي خلقته في كتاباتي. تعكس الصور من أنا كروح إبداعية.</p><p>دفعتني هذه العملية إلى العودة من حافة الكراهية الذاتية ، خاصةً عندما يتعلق الأمر بالصور. يتطلب المضي قدمًا في حياتي أن أرى شخصيًا ، على الورق ، وربما حتى في بعض وسائل الإعلام.</p><p>نعم ، إن جمالي يتعلق بأكثر من مجرد صور رائعة. ولكن إذا كان الأمر يتطلب رؤية نفسي من خلال عيني باربرا للانضمام إلى ذاتي الكاملة والنابضة بالحياة والشرقية والمرحة والمشرقة ، فليكن الأمر كذلك.</p><p>الآن بعد أن جئت إلى الخارج إذا جاز التعبير ، فإن الأمر متروك لي لإطعام نفسي بالصور والقصص الجميلة لنساء مقربات مني في السن اللائي يستمتعن بأنفسهن الجسدية الجيدة ويسمحون للآخرين برؤيتهم من خلال أعينهم ، وليس العكس.</p><p>دعنا نلغي الاشتراك في ثقافة المجلات واشترك في تكريم أنفسنا في المجد الكامل لمدى شعورنا بالرضا عن الحياة في بشرتنا ، بأعيننا وشعرنا وطرقنا الفريدة في الحركة والوجود والتألق.</p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 1, 1, 'image7.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:03', '2022-06-11 17:00:03'),
(10, 'The World Caters To Average People And Mediocre Lifestyles', 'the-world-caters-to-average-people-and-mediocre-lifestyles', NULL, '<p>Tolerably much and ouch the in began alas more ouch some then accommodating flimsy wholeheartedly after hello slightly the that cow pouted much a goodness bound rebuilt poetically jaguar groundhog.</p><h3>Design is future</h3><p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p><p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p><p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p><p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p><blockquote class=\"blockquote\">The advance of technology is based on making it fit in so that you don&apos;t really even notice it, so it&apos;s part of everyday life.<br>B. Johnso</blockquote>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 5, 3, 'image10.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:03', '2022-06-11 17:00:03'),
(11, 'Dunia Melayani Orang Biasa dan Gaya Hidup Biasa-biasa saja', 'dunia-melayani-orang-biasa-dan-gaya-hidup-biasa-biasa-saja', NULL, '<p>lumayan banyak dan aduh di mulai sayangnya lebih aduh beberapa kemudian menampung tipis sepenuh hati setelah halo sedikit sapi yang cemberut banyak kebaikan terikat dibangun kembali puitis jaguar groundhog.</p><h3>Desain adalah masa depan</h3><p>Disewa secara fisik tanpa hambatan bermain di rengekan sayang gorila koala tergantung dan banyak yikes dari jauh quetzal kebaikan dan dari untuk kebaikan meringis tidak bertanggung jawab dan meadowlark dekat kerang penting unblushingly erat neurotik lapar beberapa dan sayang mati-matian ini terpisah.</p><p><span style=\"font-size: 1rem;\">Tercecer sempit yikes meninggalkan ngengat di yikes membungkuk ini yang grizzly banyak halo di sendok-makan yang sayangnya memikirkan kembali banyak sopan kaya dan wow terhadap sering lancar di tangguh dapat diterima mengepak di samping dan jauh sekitar pedesaan hey mastodon goldfinch genting kebaikan menggerogoti ubur-ubur dan satu namun karena.</span></p><p><span style=\"font-size: 1rem;\">Singkat mendengar woodchuck sayang wow berang-berang yang sangat kencang ini hei halo jauh meadowlark meniru dengan mengerikan memeluk yang yikes minimal bulat cemberut genit saat berang-berang terlihat di atas maju energik melintasi jeeper ini murah hati sombong kurang parau sihir yang ditegakkan sejauh ini di mana kasar kemudian di bawah setelah jeez mempesona mabuk lebih banyak wow tanpa perasaan terlepas limpet.</span></p><p><span style=\"font-size: 1rem;\">Scallop atau jauh kasar dataran sangat jauh sejauh ini iguana cabul dewasa sebelum waktunya dan dan lebih sedikit ular berbisa sebaliknya caustic wow dekat ini sayangnya dan berikutnya dan memohon yikes mengartikulasikan sebagai dalmatian kurang terkekeh apalagi mengejek untuk terima kasih membabi buta merintih kurang di obyektif fantastis meringis liar beberapa jip wow dan mawar tumbuh lebih besar dari dachshund yang lugubrious seram irasional menarik.</span></p><blockquote class=\"blockquote\">Kemajuan teknologi didasarkan pada penyesuaian sehingga Anda tidak benar-benar menyadarinya, jadi itu adalah bagian dari kehidupan sehari-hari.<br>B. Johnso</blockquote>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 1, 1, 'image10.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:03', '2022-06-11 17:00:03'),
(12, 'يلبي العالم احتياجات الناس العاديين وأنماط الحياة المتواضعة', 'ylby-laa-lm-hty-g-t-ln-s-laa-dyyn-oanm-t-lhy-lmto-daa', NULL, '<p>بشكل محتمل ، بدأ الكثير من الأشخاص للأسف أكثر من ذلك ، ثم استوعبوا ضعيفًا من صميم القلب بعد مرحبًا قليلاً تلك البقرة التي عبست الكثير من الخير الملزم بإعادة بناء جرذ الأرض جاكوار شعريًا.</p>\n                <h3>التصميم هو المستقبل</h3>\n                <p>غير المقيّد المأجور جسديًا يلعب في غوريلا كوالا الغوريلا الغالي ، ويعتمد كثيرًا على الخير بعيدًا عن الكيتزال ومن أجل الخير الكئيب الذي لا يمكن تفسيره والمرج بالقرب من الإسكالوب الحاسم الذي لا يلين ، وهو عصبي شديد الجوع وعزيزي بشدة على هذا بعيدًا.</p>\n                <p>تنحني الفراشة التي كانت تتأرجح بصعوبة ضيقة في yikes هذا الأمر الذي أشيب كثيرًا مرحبًا على الملعقة التي أعيد التفكير فيها بشكل لائق وغنيًا ضد السوائل المتكررة بشكل رائع ومقبول إلى جانب ذلك وبالكثير تقريبًا فوق الحسون غير المستقر من الناحية الجيولوجية طائر الحسون الطيب الذي أصاب قنديل البحر و لكن بسبب واحد.</p>\n                <p>سمع لاكونيك عزيزي القندس المشدود ، يذهل هذا القندس المشدود بشكل فظيع ، مرحبًا بعيد المروج ، عانق بشكل فاضح لدرجة أن القندس كان بالإجماع يعبس بشكل غزلي كما كان القندس ينظر إلى الأمام نشيطًا عبر هذا الجيبير بشكل جيد أقل من ذلك السحر الصاخب الذي تم التمسك به بعيدًا ساحر في حالة سكر أكثر نجاحًا بفظاظة بغض النظر عن اللامبالاة.</p>\n                <p>الإسكالوب أو الخام البسيط بشكل ملحوظ حتى الآن الإغوانا البذيئة قبل النضوج وأقل الأفعى الخشخشة المعاكسة للكاوية ، واو هذا قريبًا للأسف وبعد ذلك وتعهد أن الصعاب تتجلى على أنها أقل دلماسيًا في حالة استهزاء أقل لأن الشكر العاطفي الأعمى كان أقل عبر خيالي موضوعي كشروا بعنف بعنف بعض سيارات الجيب المبهرة والوردية تفوقت على الكلب الألماني المثير للجاذبية بشكل غير عقلاني.</p>\n                <blockquote class=\"blockquote\">\n                    يعتمد تقدم التكنولوجيا على جعلها ملائمة بحيث لا تلاحظها حقًا ، لذا فهي جزء من الحياة اليومية.<br>جونسون</blockquote>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 5, 3, 'image10.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:04', '2022-06-11 17:00:04'),
(13, 'Travel And Transportation During The Coronavirus Pandemic', 'travel-and-transportation-during-the-coronavirus-pandemic', NULL, '<p>Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon. Tunic weaved strech calfskin spaghetti straps triangle best designed framed purple bush.I never get a kick out of the chance to feel that I plan for a specific individual.</p><p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove. A collection of textile samples lay spread out on the table – Samsa was a travelling salesman – and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p><p>You always pass failure on the way</p><p>It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer.</p><blockquote class=\"blockquote\">YOUR POSITIVE ACTION COMBINED WITH POSITIVE THINKING RESULTS IN SUCCESS.</blockquote><p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p><p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word “and” and the Little Blind Text should turn around and return to its own, safe country.</p><h3>Welcome to the New Normal?</h3><p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p><p>Gregor then turned to look out the window at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad. “How about if I sleep a little bit longer and forget all this nonsense”, he thought, but that was something he was unable to do because he was used to sleeping on his right, and in his present state couldn’t get into that position. However hard he threw himself onto his right, he always rolled back to where he was.</p><p>Wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 3, 3, 'image13.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:04', '2022-06-11 17:00:04'),
(14, 'Perjalanan Dan Transportasi Selama Pandemi Coronavirus', 'perjalanan-dan-transportasi-selama-pandemi-coronavirus', NULL, '<p>Strech lining hemline di atas lutut burgundy silk glossy complete hid zip little catch rayon. Tunik tenun strech kulit anak sapi spaghetti straps segitiga terbaik dirancang berbingkai ungu bush.Saya tidak pernah mendapatkan kesempatan untuk merasa bahwa saya berencana untuk individu tertentu.</p><p><span style=\"font-size: 1rem;\">Ketika dia mencapai bukit pertama Pegunungan Italic, dia memiliki pemandangan terakhir di cakrawala kota asalnya Bookmarksgrove. Kumpulan sampel tekstil terhampar di atas meja – Samsa adalah seorang penjual keliling – dan di atasnya tergantung sebuah gambar yang baru saja ia potong dari majalah bergambar dan disimpan dalam bingkai bagus berlapis emas.</span></p><p><span style=\"font-size: 1rem;\">Anda selalu melewati kegagalan di jalan</span></p><p><span style=\"font-size: 1rem;\">Itu menunjukkan seorang wanita yang mengenakan topi bulu dan boa bulu yang duduk tegak, mengangkat sarung bulu tebal yang menutupi seluruh lengan bawahnya ke arah penonton.</span></p><blockquote class=\"blockquote\">TINDAKAN POSITIF ANDA DIGABUNGKAN DENGAN POSITIF BERPIKIR MENGHASILKAN SUKSES.</blockquote><p>Terpisah mereka tinggal di Bookmarksgrove tepat di pantai Semantik, lautan bahasa yang besar. Sebuah sungai kecil bernama Duden mengalir melalui tempat mereka dan memasoknya dengan regelialia yang diperlukan. Ini adalah negara surgawi, di mana bagian-bagian kalimat yang dipanggang terbang ke mulut Anda.</p><p><span style=\"font-size: 1rem;\">Dalam perjalanannya dia bertemu dengan salinan. Salinan itu memperingatkan Teks Buta Kecil, bahwa dari mana asalnya akan ditulis ulang seribu kali dan semua yang tersisa dari asalnya adalah kata \"dan\" dan Teks Buta Kecil harus berbalik dan kembali ke asalnya, negara yang aman.</span></p><h3>Selamat datang di New Normal?</h3><p>Jauh jauh, di balik kata pegunungan, jauh dari negara Vokalia dan Consonantia, hiduplah teks-teks buta. Terpisah mereka tinggal di Bookmarksgrove tepat di pantai Semantik, lautan bahasa yang besar. Sebuah sungai kecil bernama Duden mengalir melalui tempat mereka dan memasoknya dengan regelialia yang diperlukan.</p><p><span style=\"font-size: 1rem;\">Gregor kemudian berbalik untuk melihat ke luar jendela pada cuaca yang membosankan. Tetesan hujan bisa terdengar menghantam kaca, yang membuatnya merasa sangat sedih. “Bagaimana jika aku tidur sedikit lebih lama dan melupakan semua omong kosong ini”, pikirnya, tetapi itu adalah sesuatu yang tidak dapat dia lakukan karena dia terbiasa tidur di sebelah kanannya, dan dalam keadaannya yang sekarang tidak bisa masuk ke dalamnya. posisi. Betapapun kerasnya dia melemparkan dirinya ke kanan, dia selalu berguling kembali ke tempat dia berada.</span></p><p><span style=\"font-size: 1rem;\">Ketenangan yang luar biasa telah menguasai seluruh jiwaku, seperti pagi musim semi yang manis ini yang aku nikmati dengan sepenuh hatiku. Saya sendirian, dan merasakan pesona keberadaan di tempat ini, yang diciptakan untuk kebahagiaan jiwa-jiwa seperti saya. Saya sangat bahagia, sahabatku, begitu tenggelam dalam perasaan indah dari keberadaan yang tenang, sehingga saya mengabaikan bakat saya.</span></p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 0, 0, 'image13.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:04', '2022-06-11 17:00:04');
INSERT INTO `posts` (`id`, `post_title`, `post_name`, `post_summary`, `post_content`, `meta_description`, `meta_keyword`, `post_status`, `post_visibility`, `post_author`, `post_language`, `post_type`, `post_guid`, `post_hits`, `like`, `post_image`, `post_image_meta`, `post_mime_type`, `comment_status`, `comment_count`, `post_source`, `created_at`, `updated_at`) VALUES
(15, 'السفر والمواصلات أثناء جائحة فيروس كورونا', 'lsfr-o-lmo-sl-t-athn-g-h-fyros-koron', NULL, '<p> حاشية بطانة من Strech فوق الركبة حرير بورجوندي لامع كامل سحاب خفي يمسك القليل من الحرير الصناعي. تونيك منسوج من جلد العجل ، أحزمة سباغيتي مثلثة مصممة بشكل أفضل شجيرة أرجوانية مؤطرة. </p>\n                <p> عندما وصلت إلى التلال الأولى للجبال الإيطالية ، كان لديها منظر أخير على أفق مسقط رأسها Bookmarksgrove. انتشرت مجموعة من عينات النسيج على الطاولة - كان سامسا بائعًا متجولًا - وفوقها علق صورة كان قد قطعها مؤخرًا من مجلة مصورة ووضعها في إطار مذهل جميل. </p>\n                <p> تمر دائمًا بالفشل في طريقك </p>\n                <p> يظهر في الصورة سيدة ترتدي قبعة من الفرو وأفعى من الفرو جلست منتصبة ، وهي ترفع غطاءً ثقيلًا من الفرو يغطي كامل ذراعها تجاه المشاهد. </p>\n                <blockquote class=\"blockquote\">\n                    يترافق عملك الإيجابي مع نتائج التفكير الإيجابي في النجاح.</blockquote>\n                <p> منفصلون يعيشون في Bookmarksgrove مباشرة على ساحل Semantics ، وهو محيط لغوي كبير. يتدفق نهر صغير يُدعى Duden من مكانه ويمدها بالراحة اللازمة. إنها دولة الفردوسية ، حيث تتطاير الأجزاء المحمصة من الجمل في فمك. </p>\n                <p> في طريقها التقت بنسخة. حذرت النسخة النص المكفوف الصغير ، من أن مصدره كان سيُعاد كتابته ألف مرة وكل ما تبقى من أصله سيكون كلمة \"و\" ويجب أن يستدير النص الصغير للمكفوفين ويعود إلى نصه ، بلد آمن. </p>\n                <h3> مرحبًا بك في الوضع العادي الجديد؟ </h3>\n                <p> بعيدًا ، بعيدًا ، خلف كلمة الجبال ، بعيدًا عن بلاد Vokalia و Consonantia ، تعيش النصوص العمياء. منفصلان يعيشون في Bookmarksgrove مباشرة على ساحل Semantics ، وهو محيط لغوي كبير. يتدفق نهر صغير يُدعى Duden من مكانه ويمده بالراحة اللازمة. </p>\n                <p>ثم التفت جريجور لينظر من النافذة إلى الطقس الباهت. كان من الممكن سماع قطرات المطر وهي تضرب النافذة ، مما جعله يشعر بالحزن الشديد. \"ماذا لو أنام لفترة أطول قليلاً ونسيت كل هذا الهراء\" ، هكذا فكر ، لكنه كان شيئًا لم يكن قادرًا على فعله لأنه اعتاد النوم على يمينه ، وفي حالته الحالية لا يمكنه الدخول في ذلك وضع. مهما ألقى بنفسه على يمينه ، كان يتراجع دائمًا إلى حيث كان.</p>\n                <p>استحوذ الصفاء الرائع على روحي بالكامل ، مثل صباح الربيع الحلو الذي أستمتع به من كل قلبي. أنا وحيد ، وأشعر بسحر الوجود في هذه البقعة ، التي تم إنشاؤها لنعمة أرواح مثل نفسي. أنا سعيد جدًا ، يا صديقي العزيز ، منغمس جدًا في الإحساس الرائع بالوجود الهادئ المحض ، لدرجة أنني أهمل مواهبي.</p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 3, 3, 'image13.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:05', '2022-06-11 17:00:05'),
(16, 'Refurbished Devices Marketplace Reebelo Bags Seed Funding', 'refurbished-devices-marketplace-reebelo-bags-seed-funding', NULL, '<p>Reebelo, a marketplace for pre-loved devices, has raised an undisclosed amount of seed funding in a round led by Germany-based June Fund.</p><p>Early-stage VC firm Antler also participated in the round, according to a statement. Singapore-based Reebelo was part of Antler’s third cohort of startups and was a graduate of HyperSpark, StartupX’s sustainability pre-accelerator run in partnership with investment giant Temasek.</p><p>According to a 2018 study by the National Environment Agency of Singapore, the city-state produces 60,000 tons of e-waste annually, and only 6% of that gets recycled. To help reduce that number, Reebelo’s recommerce marketplace enables consumers in Singapore to buy or sell used smartphones, tablets, and notebooks.</p><p>Recommerce, or reverse commerce, refers to the buying and selling of pre-owned goods, mainly electronic devices.</p><p>How is the startup different? Some recommerce players in Asia include Moby and Red White Mobile in Singapore, Budli in India, and Laku6 in Indonesia.</p><p>At its core, Reebelo is a company that buys used electronics from enterprises and individuals and then refurbishes and tests the devices before listing them on the website. The registered secondhand goods dealer also offers extended warranties to give customers peace of mind.</p><p>Under its partnership with environmental charity One Tree Planted, the startup said that one tree is planted for every device sold on its platform.</p><p>What are its challenges? So far, most people upgrade their devices once newer models are released, a spokesperson for the company told Tech in Asia. Nowadays, broken devices are also thrown away rather than repaired.</p><p>The company aims to change this behavior by allowing customers to sell their used devices for cash, giving their older gadgets a new lease on life.</p><p>“Reebelo’s ambitious vision is to build the circular economy for electronics,” Philip Franta, founder and CEO at Reebelo, said. “[We’re trying] to change the way people consume tech devices at a more sustainable pace – one device at a time.”</p><p>What’s the opportunity? Reebelo’s addressable market size in the region, according to the company, stands at US$4.2 billion. To capture a larger share of this, the startup aims to expand into new business lines such as device rentals and offer bundled business phones and laptops for companies.</p><p>It also plans to enter other markets across Asia Pacific and add support for more electronics categories in the future.</p><p>How much traction has it gotten? The startup claims to have served more than 210,000 users on its platform since January and is “aiming to keep growing in a sustainable way month on month.”</p><p>Who are the team members? The startup was founded just last year by Franta and Rastouil Fabien.</p><p>Franta previously served as chief business development officer for German healthtech firm Media4Care, while chief product officer Fabien served as an innovation consultant in France.</p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 2, 2, 'image16.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:05', '2022-06-11 17:00:05'),
(17, 'Perangkat Refurbished Marketplace Reebelo Bags Pendanaan Benih', 'perangkat-refurbished-marketplace-reebelo-bags-pendanaan-benih', NULL, '<p>Reebelo, pasar untuk perangkat pre-loved, telah mengumpulkan dana awal dalam jumlah yang tidak diungkapkan dalam putaran yang dipimpin oleh June Fund yang berbasis di Jerman.</p><p><span style=\"font-size: 1rem;\">Perusahaan VC tahap awal Antler juga berpartisipasi dalam putaran tersebut, menurut sebuah pernyataan. Reebelo yang berbasis di Singapura adalah bagian dari kelompok startup ketiga Antler dan merupakan lulusan HyperSpark, pra-akselerator keberlanjutan StartupX yang dijalankan dalam kemitraan dengan raksasa investasi Temasek.</span></p><p><span style=\"font-size: 1rem;\">Menurut sebuah studi tahun 2018 oleh Badan Lingkungan Nasional Singapura, negara kota itu menghasilkan 60.000 ton sampah elektronik setiap tahun, dan hanya 6% dari yang didaur ulang. Untuk membantu mengurangi jumlah tersebut, pasar recommerce Reebelo memungkinkan konsumen di Singapura untuk membeli atau menjual smartphone, tablet, dan notebook bekas.</span></p><p><span style=\"font-size: 1rem;\">Re-commerce, atau reverse commerce, mengacu pada pembelian dan penjualan barang bekas, terutama perangkat elektronik.</span></p><p><span style=\"font-size: 1rem;\">Apa bedanya dengan startup? Beberapa pemain recommerce di Asia antara lain Moby dan Red White Mobile di Singapura, Budli di India, dan Laku6 di Indonesia.</span></p><p><span style=\"font-size: 1rem;\">Pada intinya, Reebelo adalah perusahaan yang membeli barang elektronik bekas dari perusahaan dan individu, kemudian memperbarui dan menguji perangkat sebelum mencantumkannya di situs web. Dealer barang bekas yang terdaftar juga menawarkan perpanjangan garansi untuk memberikan ketenangan pikiran kepada pelanggan.</span></p><p><span style=\"font-size: 1rem;\">Di bawah kemitraannya dengan badan amal lingkungan One Tree Planted, startup tersebut mengatakan bahwa satu pohon ditanam untuk setiap perangkat yang dijual di platformnya.</span></p><p>Apa saja tantangannya? Sejauh ini, kebanyakan orang mengupgrade perangkat mereka begitu model yang lebih baru dirilis, juru bicara perusahaan mengatakan kepada Tech in Asia. Saat ini, perangkat yang rusak juga dibuang daripada diperbaiki.</p><p><span style=\"font-size: 1rem;\">Perusahaan bertujuan untuk mengubah perilaku ini dengan mengizinkan pelanggan untuk menjual perangkat bekas mereka secara tunai, memberikan gadget lama mereka kesempatan hidup baru.</span></p><p><span style=\"font-size: 1rem;\">“Visi ambisius Reebelo adalah membangun ekonomi sirkular untuk elektronik,” kata Philip Franta, pendiri dan CEO di Reebelo. “[Kami mencoba] untuk mengubah cara orang mengonsumsi perangkat teknologi dengan kecepatan yang lebih berkelanjutan – satu perangkat pada satu waktu.”</span></p><p><span style=\"font-size: 1rem;\">Apa peluangnya? Ukuran pasar Reebelo yang dapat dialamatkan di wilayah tersebut, menurut perusahaan, mencapai US$4,2 miliar. Untuk menangkap bagian yang lebih besar dari ini, startup bertujuan untuk memperluas ke lini bisnis baru seperti penyewaan perangkat dan menawarkan telepon bisnis dan laptop yang dibundel untuk perusahaan.</span></p><p><span style=\"font-size: 1rem;\">Ia juga berencana untuk memasuki pasar lain di Asia Pasifik dan menambahkan dukungan untuk lebih banyak kategori elektronik di masa depan.</span></p><p><span style=\"font-size: 1rem;\">Berapa banyak traksi yang didapatnya? Startup ini mengklaim telah melayani lebih dari 210.000 pengguna di platformnya sejak Januari dan “bertujuan untuk terus tumbuh secara berkelanjutan dari bulan ke bulan.”</span></p><p><span style=\"font-size: 1rem;\">Siapa saja anggota tim? Startup ini didirikan tahun lalu oleh Franta dan Rastouil Fabien.</span></p><p><span style=\"font-size: 1rem;\">Franta sebelumnya menjabat sebagai chief business development officer untuk perusahaan teknologi kesehatan Jerman Media4Care, sementara chief product officer Fabien menjabat sebagai konsultan inovasi di Prancis.</span></p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 1, 1, 'image16.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:05', '2022-06-11 17:00:05'),
(18, 'الأجهزة التي تم تجديدها سوق ريبيلو أكياس تمويل البذور', 'laghz-lty-tm-tgdydh-sok-rybylo-aky-s-tmoyl-lbthor', NULL, '<p>قامت شركة Reebelo ، وهي سوق للأجهزة المحبوبة مسبقًا ، بجمع مبلغ لم يكشف عنه من التمويل الأولي في جولة بقيادة صندوق يونيو في ألمانيا.</p>\n                <p>وبحسب بيان ، شاركت شركة Antler في مرحلة مبكرة من رأس المال المغامر أيضًا في الجولة. كانت شركة Reebelo التي تتخذ من سنغافورة مقراً لها جزءًا من المجموعة الثالثة من الشركات الناشئة لشركة Antler وتخرجت من HyperSpark ، وهو برنامج تسريع مسبق للاستدامة من StartupX يعمل بالشراكة مع شركة الاستثمار العملاقة Temasek.</p>\n                <p>وفقًا لدراسة أجرتها وكالة البيئة الوطنية في سنغافورة عام 2018 ، تنتج المدينة 60 ألف طن من النفايات الإلكترونية سنويًا ، ويتم إعادة تدوير 6٪ فقط منها. للمساعدة في تقليل هذا العدد ، يتيح سوق إعادة التجارة في Reebelo للمستهلكين في سنغافورة شراء أو بيع الهواتف الذكية والأجهزة اللوحية وأجهزة الكمبيوتر المحمولة المستعملة.</p>\n                <p> يشير مصطلح إعادة التجارة أو التجارة العكسية إلى شراء وبيع السلع المملوكة مسبقًا ، ولا سيما الأجهزة الإلكترونية. </p>\n                <p> كيف تختلف الشركة الناشئة؟ بعض لاعبي إعادة التجارة في آسيا يشملون Moby و Red White Mobile في سنغافورة ، و Budli في الهند ، و Laku6 في إندونيسيا. </p>\n                <p> في جوهرها ، Reebelo هي شركة تشتري الأجهزة الإلكترونية المستعملة من المؤسسات والأفراد ثم تقوم بتجديد الأجهزة واختبارها قبل إدراجها على موقع الويب. يقدم تاجر البضائع المستعملة المسجل أيضًا ضمانات ممتدة لمنح العملاء راحة البال. </p>\n                <p> في إطار شراكتها مع الجمعية الخيرية البيئية One Tree Planted ، قالت الشركة الناشئة إن شجرة واحدة تُزرع مقابل كل جهاز يُباع على منصتها. </p>\n                <p> ما هي تحدياتها؟ حتى الآن ، يقوم معظم الأشخاص بترقية أجهزتهم بمجرد طرح طرز جديدة ، كما قال متحدث باسم الشركة لـ Tech in Asia. في الوقت الحاضر ، يتم أيضًا التخلص من الأجهزة المكسورة بدلاً من إصلاحها. </p>\n                <p> تهدف الشركة إلى تغيير هذا السلوك من خلال السماح للعملاء ببيع أجهزتهم المستعملة نقدًا ، ومنح أجهزتهم القديمة فرصة جديدة للحياة. </p>\n                <p>قال فيليب فرانتا ، المؤسس والرئيس التنفيذي لشركة Reebelo ، \"تتمثل رؤية Reebelo الطموحة في بناء اقتصاد دائري للإلكترونيات\". \"[نحاول] تغيير الطريقة التي يستهلك بها الأشخاص الأجهزة التقنية بوتيرة أكثر استدامة - جهاز واحد في كل مرة.\"</p>\n                <p>ما هي الفرصة؟ يبلغ حجم سوق Reebelo القابل للتوجيه في المنطقة ، وفقًا للشركة ، 4.2 مليار دولار أمريكي. وللحصول على حصة أكبر من ذلك ، تهدف الشركة الناشئة إلى التوسع في خطوط أعمال جديدة مثل تأجير الأجهزة وتقديم هواتف الأعمال المجمعة وأجهزة الكمبيوتر المحمولة للشركات.</p>\n                <p> تخطط أيضًا لدخول أسواق أخرى عبر منطقة آسيا والمحيط الهادئ وإضافة دعم لمزيد من فئات الإلكترونيات في المستقبل. </p>\n                <p>ما مقدار الجر الذي حصلت عليه؟ تدعي الشركة الناشئة أنها قد خدمت أكثر من 210.000 مستخدم على نظامها الأساسي منذ كانون الثاني (يناير) و \"تهدف إلى الاستمرار في النمو بطريقة مستدامة شهرًا بعد شهر\".</p>\n                <p> من هم أعضاء الفريق؟ تأسست الشركة الناشئة العام الماضي فقط من قبل فرانتا وراستويل فابيان. </p>\n                <p> عمل فرانتا سابقًا كرئيس تنفيذي لتطوير الأعمال في شركة Media4Care الألمانية للتكنولوجيا الصحية ، بينما عمل فابيان كبير مسؤولي المنتجات كمستشار للابتكار في فرنسا. </p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 2, 2, 'image16.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:06', '2022-06-11 17:00:06'),
(19, 'Singapore Fintech Startup Raises Seed Funding To Digitize Corporate Loans', 'singapore-fintech-startup-raises-seed-funding-to-digitize-corporate-loans', NULL, '<p>Singapore-based iLex, which aims to transform the corporate lending market, announced that it has raised an undisclosed amount of seed funding from strategic investors in France, Hong Kong, Singapore, and the US.</p><p>The startup, which was launched just last year, wants to create an end-to-end digital trading platform for primary syndicated loans and secondary loans. To do this, it plans to create a data analytics tool to help participants make informed credit decisions. As transactions increasingly go online, it also aims to automate deal workflows and offer secure online trading and communications.</p><p>The market participants it currently supports include banks, private debt funds, pension funds, asset managers, life insurers, hedge funds, and sovereign wealth funds, among others.</p><p>The new funds, ILex said, will be used to develop the first version of its platform, which will feature its own AI matching engine, trading protocols, and data analytics tool.</p><p>What problem is it solving? While digitization has already occurred for some asset classes like equities and foreign exchanges, the corporate loan market still largely relies on inefficient manual processes, iLex CEO and founder Bertrand Billon said.</p><p>According to the company, the pain points in the market are evident: constrained market reach due to limited resources, lack of liquidity in secondary lending, low-level price discovery, limited market data, and compliance and operational risks.</p><p>To tackle these issues, the startup’s digital solutions will help users access global deals through its AI matching system, the company said in a statement. The firm will also automate trading execution – through productivity tools and a centralized audit trail – and will offer real-time data visualization as well as loan pricing and benchmarking mechanisms so users can gain deep market insights.</p><p>“I believe our difference lies in the technology that is driving our solutions and data offerings and, importantly, our strategic partnerships with industry players,” Billon said.</p><p>The company has so far formed partnerships with London-based information provider IHS Markit and financial data provider Refinitiv.</p><p>What’s the opportunity? In Asia Pacific, the primary syndicated loans market was worth around US$700 billon last year, while the secondary loans market was estimated at around US$50 billon, according to iLex.</p><p>Over the last five years, there have been 1,200 active lenders and over 12,000 borrowers in the region accessing capital through syndicated transactions.</p><p>But while corporate lending drives the overall economy, being the second-largest source of funding for businesses, less than 1% of fintech investments have gone into this sector, the company observed. ILex therefore positions itself as a pioneer in digitizing the industry.</p><p>What are its challenges? As with any other digital marketplace, iLex recognizes that it has to work hard to drive the adoption of its platform and increase deal flow and volumes.</p><p>To do this, it will focus on attracting and retaining sell-side arrangers and buy-side investors to become a “must-have” tool for market participants, the company said.</p><p><br></p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 4, 3, 'image19.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:06', '2022-06-11 17:00:06'),
(20, 'Startup Fintech Singapura Raih Seed Funding Untuk Mendigitalkan Pinjaman Korporasi', 'startup-fintech-singapura-raih-seed-funding-untuk-mendigitalkan-pinjaman-korporasi', NULL, '<p>iLex yang berbasis di Singapura, yang bertujuan untuk mengubah pasar pinjaman korporasi, mengumumkan bahwa mereka telah mengumpulkan sejumlah dana awal yang tidak diungkapkan dari investor strategis di Prancis, Hong Kong, Singapura, dan AS.</p><p><span style=\"font-size: 1rem;\">Startup yang baru diluncurkan tahun lalu ini ingin membuat platform trading digital end-to-end untuk pinjaman sindikasi primer dan pinjaman sekunder. Untuk melakukan ini, ia berencana untuk membuat alat analisis data untuk membantu peserta membuat keputusan kredit yang tepat. Karena transaksi semakin online, ini juga bertujuan untuk mengotomatiskan alur kerja kesepakatan dan menawarkan perdagangan dan komunikasi online yang aman.</span></p><p><span style=\"font-size: 1rem;\">Pelaku pasar saat ini mendukung antara lain bank, dana utang swasta, dana pensiun, manajer aset, asuransi jiwa, dana lindung nilai, dan dana kekayaan negara.</span></p><p><span style=\"font-size: 1rem;\">Dana baru, kata Ilex, akan digunakan untuk mengembangkan versi pertama platformnya, yang akan menampilkan mesin pencocokan AI, protokol perdagangan, dan alat analisis datanya sendiri.</span></p><p><span style=\"font-size: 1rem;\">Masalah apa yang dipecahkannya? Sementara digitalisasi telah terjadi untuk beberapa kelas aset seperti ekuitas dan valuta asing, pasar pinjaman korporasi sebagian besar masih bergantung pada proses manual yang tidak efisien, kata CEO dan pendiri iLex Bertrand Billon.</span></p><p><span style=\"font-size: 1rem;\">Menurut perusahaan, titik-titik sakit di pasar terlihat jelas: jangkauan pasar yang terbatas karena sumber daya yang terbatas, kurangnya likuiditas dalam pinjaman sekunder, penemuan harga tingkat rendah, data pasar yang terbatas, dan risiko kepatuhan dan operasional.</span></p><p><span style=\"font-size: 1rem;\">Untuk mengatasi masalah ini, solusi digital startup akan membantu pengguna mengakses kesepakatan global melalui sistem pencocokan AI-nya, kata perusahaan itu dalam sebuah pernyataan. Perusahaan juga akan mengotomatiskan eksekusi perdagangan – melalui alat produktivitas dan jejak audit terpusat – dan akan menawarkan visualisasi data waktu nyata serta penetapan harga pinjaman dan mekanisme pembandingan sehingga pengguna dapat memperoleh wawasan pasar yang mendalam.</span></p><p><span style=\"font-size: 1rem;\">“Saya yakin perbedaan kami terletak pada teknologi yang mendorong solusi dan penawaran data kami, dan yang terpenting, kemitraan strategis kami dengan para pemain industri,” kata Billon.</span></p><p><span style=\"font-size: 1rem;\">Perusahaan sejauh ini telah menjalin kemitraan dengan penyedia informasi IHS Markit yang berbasis di London dan penyedia data keuangan Refinitiv.</span></p><p><span style=\"font-size: 1rem;\">Apa peluangnya? Di Asia Pasifik, pasar pinjaman sindikasi primer bernilai sekitar US$700 miliar tahun lalu, sedangkan pasar pinjaman sekunder diperkirakan sekitar US$50 miliar, menurut iLex.</span></p><p><span style=\"font-size: 1rem;\">Selama lima tahun terakhir, ada 1.200 pemberi pinjaman aktif dan lebih dari 12.000 peminjam di wilayah tersebut mengakses modal melalui transaksi sindikasi.</span></p><p>Tetapi sementara pinjaman korporasi mendorong perekonomian secara keseluruhan, menjadi sumber pendanaan terbesar kedua untuk bisnis, kurang dari 1% investasi fintech telah masuk ke sektor ini, perusahaan mengamati. Oleh karena itu, ILex memposisikan dirinya sebagai pelopor dalam digitalisasi industri.</p><p><span style=\"font-size: 1rem;\">Apa saja tantangannya? Seperti halnya pasar digital lainnya, iLex menyadari bahwa ia harus bekerja keras untuk mendorong adopsi platformnya dan meningkatkan aliran dan volume kesepakatan.</span></p><p><span style=\"font-size: 1rem;\">Untuk melakukan ini, itu akan fokus pada menarik dan mempertahankan arranger sisi jual dan investor sisi beli untuk menjadi alat yang \"harus dimiliki\" bagi pelaku pasar, kata perusahaan.</span></p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 2, 2, 'image19.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:06', '2022-06-11 17:00:06'),
(21, 'شركة سنغافورة المالية الناشئة ترفع التمويل الأولي لرقمنة قروض الشركات', 'shrk-sngh-for-lm-ly-ln-sh-trfaa-ltmoyl-laoly-lrkmn-krod-lshrk-t', NULL, '<p>أعلنت شركة iLex ومقرها سنغافورة ، والتي تهدف إلى تغيير سوق إقراض الشركات ، أنها جمعت مبلغًا لم يكشف عنه من التمويل الأولي من مستثمرين استراتيجيين في فرنسا وهونغ كونغ وسنغافورة والولايات المتحدة.</p>\n                <p>تريد الشركة الناشئة ، التي تم إطلاقها العام الماضي فقط ، إنشاء منصة تداول رقمية شاملة للقروض المشتركة الأولية والقروض الثانوية. للقيام بذلك ، تخطط لإنشاء أداة لتحليل البيانات لمساعدة المشاركين على اتخاذ قرارات ائتمانية مستنيرة. نظرًا لأن المعاملات تنتقل عبر الإنترنت بشكل متزايد ، فإنها تهدف أيضًا إلى أتمتة سير عمل الصفقات وتوفير تداول واتصالات آمنة عبر الإنترنت.</p>\n                <p>يشمل المشاركون في السوق الذي تدعمه حاليًا البنوك ، وصناديق الدين الخاصة ، وصناديق التقاعد ، ومديري الأصول ، وشركات التأمين على الحياة ، وصناديق التحوط ، وصناديق الثروة السيادية ، من بين آخرين.</p>\n                <p>وقالت ILex ، إن الصناديق الجديدة ستُستخدم لتطوير الإصدار الأول من منصتها ، والتي ستتميز بمحرك مطابقة الذكاء الاصطناعي الخاص بها ، وبروتوكولات التداول ، وأداة تحليل البيانات.</p>\n                <p>ما المشكلة التي تحلها؟ قال بيرتراند بيلون ، الرئيس التنفيذي والمؤسس لشركة iLex ، إنه في حين أن الرقمنة قد حدثت بالفعل لبعض فئات الأصول مثل الأسهم والبورصات الأجنبية ، لا يزال سوق قروض الشركات يعتمد إلى حد كبير على العمليات اليدوية غير الفعالة.</p>\n                <p>وفقًا للشركة ، فإن نقاط الضعف في السوق واضحة: الوصول المقيد إلى السوق بسبب الموارد المحدودة ، ونقص السيولة في الإقراض الثانوي ، واكتشاف الأسعار المنخفضة المستوى ، وبيانات السوق المحدودة ، والامتثال والمخاطر التشغيلية.</p>\n                <p>لمعالجة هذه المشكلات ، ستساعد الحلول الرقمية للشركة الناشئة المستخدمين على الوصول إلى الصفقات العالمية من خلال نظام مطابقة الذكاء الاصطناعي ، حسبما ذكرت الشركة في بيان. ستقوم الشركة أيضًا بأتمتة تنفيذ التداول - من خلال أدوات الإنتاجية وتتبع التدقيق المركزي - وستوفر تصورًا للبيانات في الوقت الفعلي بالإضافة إلى آليات تسعير القروض والمعايير حتى يتمكن المستخدمون من اكتساب رؤى عميقة للسوق.</p>\n                <p>قال بيلون: \"أعتقد أن اختلافنا يكمن في التكنولوجيا التي تقود حلولنا وعروض البيانات ، والأهم من ذلك ، شراكاتنا الإستراتيجية مع اللاعبين في الصناعة\".</p>\n                <p>وقد أقامت الشركة حتى الآن شراكات مع مزود المعلومات IHS Markit ومقره لندن ومزود البيانات المالية Refinitiv.</p>\n                <p>ما هي الفرصة؟ في منطقة آسيا والمحيط الهادئ ، بلغت قيمة سوق القروض المشتركة الأولية حوالي 700 مليار دولار أمريكي العام الماضي ، في حين قدرت سوق القروض الثانوية بحوالي 50 مليار دولار أمريكي ، وفقًا لـ iLex.</p>\n                <p>على مدى السنوات الخمس الماضية ، كان هناك 1200 مقرض نشط وأكثر من 12000 مقترض في المنطقة يحصلون على رأس المال من خلال المعاملات المشتركة.</p>\n                <p>لكن في حين أن إقراض الشركات هو المحرك للاقتصاد العام ، كونه ثاني أكبر مصدر تمويل للشركات ، فقد ذهبت أقل من 1٪ من استثمارات التكنولوجيا المالية إلى هذا القطاع ، حسبما لاحظت الشركة. لذلك تضع ILex نفسها كشركة رائدة في رقمنة الصناعة.</p>\n                <p>ما هي تحدياتها؟ كما هو الحال مع أي سوق رقمي آخر ، تدرك iLex أنه يتعين عليها العمل بجد لدفع اعتماد نظامها الأساسي وزيادة تدفق الصفقات وأحجامها.</p>\n                <p>ولتحقيق ذلك ، ستركز على جذب منظمي جانب البيع ومستثمري جانب الشراء والاحتفاظ بهم لتصبح أداة \"لا غنى عنها\" للمشاركين في السوق ، على حد قول الشركة.</p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 4, 3, 'image19.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:07', '2022-06-11 17:00:07'),
(22, 'Envato - Top Digital Assets And Services', 'envato-top-digital-assets-and-services', '<p>Join millions and bring your ideas and projects to life with Envato - the world&apos;s leading marketplace and community for creative assets and creative people.</p><div><br></div>', '<p>Millions of people around the world choose our marketplace, studio and courses to buy files, hire freelancers, or learn the skills needed to build websites, videos, apps, graphics and more.</p><p>We’re a values-based organization focused on community, entrepreneurship, diversity, and integrity. Envato is growing fast, with over 7 million community members in 2016, and we were named one of Australia’s coolest companies for women and coolest companies in tech in 2015.</p><p><img src=\"../../../../storage/images/content22.png\"><br></p><p>We’ve got a lot going on at Envato, so here’s the overview of our main products and marketplaces:</p><ul><li>Envato Market is a collection of marketplaces for creative digital assets. This includes:</li><li>ThemeForest (website templates and WordPress themes)</li><li>CodeCanyon (Code, Plugins, and mobile)</li><li>VideoHive (motion graphics)</li><li>AudioJungle (stock music and audio)</li><li>GraphicRiver (graphics, vectors, and illustrations)</li><li>PhotoDune (photography)</li><li>3DOcean (3D models and materials)</li></ul><p>Reource: <a href=\"https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content\" target=\"_blank\">https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content</a><br></p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 4, 4, 'image22.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:07', '2022-06-11 17:00:07'),
(23, 'Envato - Aset dan Layanan Digital Teratas', 'envato-aset-dan-layanan-digital-teratas', '<p>Bergabunglah dengan jutaan orang dan wujudkan ide dan proyek Anda dengan Envato - pasar dan komunitas terkemuka di dunia untuk aset kreatif dan orang-orang kreatif.</p><div><br></div>', '<p>Jutaan orang di seluruh dunia memilih pasar, studio, dan kursus kami untuk membeli file, menyewa pekerja lepas, atau mempelajari keterampilan yang diperlukan untuk membuat situs web, video, aplikasi, grafik, dan banyak lagi.</p><p><span style=\"font-size: 1rem;\">Kami adalah organisasi berbasis nilai yang berfokus pada komunitas, kewirausahaan, keragaman, dan integritas. Envato berkembang pesat, dengan lebih dari 7 juta anggota komunitas pada tahun 2016, dan kami dinobatkan sebagai salah satu perusahaan paling keren di Australia untuk wanita dan perusahaan paling keren di bidang teknologi pada tahun 2015.</span></p><p><img src=\"../../../../storage/images/content22.png\"><br></p><p>Kami memiliki banyak hal yang terjadi di Envato, jadi inilah ikhtisar produk dan pasar utama kami:</p><ul><li><span style=\"font-size: 1rem;\">Envato Market adalah kumpulan pasar untuk aset digital kreatif. Ini termasuk:</span></li><li>ThemeForest (templat situs web dan tema WordPress)</li><li>CodeCanyon (Kode, Plugin, dan seluler)</li><li>VideoHive (grafik gerak)</li><li>AudioJungle (musik dan audio stok)</li><li>GraphicRiver (grafik, vektor, dan ilustrasi)</li><li>PhotoDune (fotografi)</li><li>3DOcean (model dan bahan 3D)</li></ul><p>Sumber: <a href=\"https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content\" target=\"_blank\">https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content</a><br></p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 3, 2, 'image22.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:07', '2022-06-11 17:00:07'),
(24, 'Envato - أفضل الأصول والخدمات الرقمية', 'envato-afdl-lasol-o-lkhdm-t-lrkmy', '<p>انضم إلى الملايين واجعل أفكارك ومشاريعك تنبض بالحياة مع Envato - السوق والمجتمع الرائدين في العالم للأصول الإبداعية والأشخاص المبدعين.</p>', '<p>يختار ملايين الأشخاص حول العالم سوقنا واستوديونا ودوراتنا التدريبية لشراء الملفات أو توظيف موظفين مستقلين أو تعلم المهارات اللازمة لإنشاء مواقع الويب ومقاطع الفيديو والتطبيقات والرسومات والمزيد.</p>\n                <p>نحن منظمة قائمة على القيم تركز على المجتمع وريادة الأعمال والتنوع والنزاهة. ينمو Envato بسرعة ، مع أكثر من 7 ملايين عضو في المجتمع في عام 2016 ، وتم اختيارنا كواحدة من أروع الشركات في أستراليا للنساء وأروع الشركات في مجال التكنولوجيا في عام 2015.</p>\n                <p><img src=\"../../../../storage/images/content22.png\"><br></p>\n                <p>لدينا الكثير مما يجري في Envato ، لذا إليك نظرة عامة على منتجاتنا وأسواقنا الرئيسية:</p>\n                <ul>\n                <li> سوق Envato عبارة عن مجموعة من الأسواق للأصول الرقمية الإبداعية. وهذا يشمل: </ li>\n                <li> ThemeForest (قوالب مواقع الويب وموضوعات WordPress) </li>\n                <li> CodeCanyon (الرمز والمكونات الإضافية والجوال) </li>\n                <li> VideoHive (الرسوم المتحركة) </li>\n                <li> AudioJungle (مخزون الموسيقى والصوت) </li>\n                <li> GraphicRiver (رسومات ومتجهات ورسوم توضيحية) </li>\n                <li> فوتودون (تصوير) </ li>\n                <li> 3DOcean (نماذج ومواد ثلاثية الأبعاد) </li>\n                </ul>\n                <p>الموارد: <a href=\"https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content\" target=\"_blank\">https://themeforest.net/category/site-templates?sort=date&amp;term=real%20estate#content</a><br></p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 4, 4, 'image22.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:08', '2022-06-11 17:00:08'),
(25, 'Bootstrap 5 Alpha Finally Launched!', 'bootstrap-5-alpha-finally-launched', '<p>Bootstrap 5’s very first alpha has arrived! We’ve been working hard for several months to refine the work we started in v4, and while we’re feeling great about our progress, there’s still even more to do.<br></p>', '<p>We’ve been focused on making the migration from v4 to v5 more approachable, but we’ve also not been afraid to step away from what’s outdated or no longer appropriate. As such, we’re very happy to say that with v5, Bootstrap no longer depends on jQuery and we’ve dropped support for Internet Explorer. We’re sharpening our focus on building tools that are more future-friendly, and while we’re not fully there yet, the promise of CSS variables, faster JavaScript, fewer dependencies, and better APIs certainly feel right to us.</p><p>Before you jump to updating, please remember v5 is now in alpha—breaking changes will continue to occur until our first beta. We haven’t finished adding or removing everything, so check for open issues and pull requests as you have questions or feedback.</p><p>Now let’s dig in with some highlights!</p><h3>New look and feel</h3><p>We’ve built on the improvements to our docs homepage in v4.5.0 with an updated look and feel for the rest of our docs. Our docs pages are no longer full-width to improve readability and make our site feel less app-like and more content-like. In addition, we’ve upgraded our sidebar to use expandable sections (powered by our own Collapse plugin) for faster navigation.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-home.png\" style=\"width: 645px;\"></p><p>We’re also sporting a brand new logo! More on that when v5 goes stable, but suffice to say we wanted to give the ol’ B in a rounded square a small upgrade.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-new-logo.png\" style=\"width: 645px;\"></p><p>Inspired by the CSS that created the very beginnings of this project, our logo embodies the feeling of a rule set—style bounded by curly braces. We love it and think you will, too. Expect to see it roll out to v4’s documentation, our blog, and more over time as we continue to refine things and ship new releases.</p><h3>jQuery and JavaScript</h3><p>jQuery brought unprecedented access to complex JavaScript behaviors to millions (billions?) of people over the last decade and a half. Personally, I’m forever grateful for the empowerment and support it gave me to continue writing front-end code, learning new things, and embracing plugins from the community. Perhaps most importantly, it’s forever changed JavaScript itself, and that in itself is a monument to jQuery’s success. Thank you to every jQuery contributor and maintainer who made that possible for folks like me.</p><p>Thanks to advancement made in front-end development tools and browser support, we’re now able to drop jQuery as a dependency, but you’d never notice otherwise. This migration was a huge undertaking by @Johann-S, our primary JavaScript maintainer these days. It marks one of the largest changes to the framework in years and means projects built on Bootstrap 5 will be significantly lighter on file size and page load moving forward.</p><p>In addition to dropping jQuery, we’ve made a handful of other changes and enhancements to our JavaScript in v5 that focus on code quality and bridging the gap between v4 and v5. One of our other larger changes was dropping the bulk of our Button plugin for an HTML and CSS only approach to toggle states. Now toggle buttons are powered by checkboxes and radio buttons and are much more reliable.</p><p>You can see the full list of JS related changes in the first v5 alpha project on GitHub.</p><p>Interested in helping out on Bootstrap’s JavaScript? We’re always looking for new contributors to the team to help write new plugins, review pull requests, and fix bugs. Let us know!</p><h3>CSS custom properties</h3><p>As mentioned, we’ve begun using CSS custom properties in Bootstrap 5 thanks to dropping support for Internet Explorer. In v4 we only included a handful of root variables for color and fonts, and now we’ve added them for a handful of components and layout options.</p><p>Take for example our .table component, where we’ve added a handful of local variables to make striped, hoverable, and active table styles easier:</p><pre class=\"language-css\"><code class=\"language-css\">.table {\n                --bs-table-bg: #{$table-bg};\n                --bs-table-accent-bg: transparent;\n                --bs-table-striped-color: #{$table-striped-color};\n                --bs-table-striped-bg: #{$table-striped-bg};\n                --bs-table-active-color: #{$table-active-color};\n                --bs-table-active-bg: #{$table-active-bg};\n                --bs-table-hover-color: #{$table-hover-color};\n                --bs-table-hover-bg: #{$table-hover-bg};\n\n                // Styles here...\n                }</code></pre><p>We’re working to utilize the superpowers of both Sass and CSS custom properties for a more flexible system. You can read more about this in the Tables docs page and expect to see more usage in components like buttons in the near future.</p><h3>Improved customizing docs</h3><p>We’ve hunkered down and improved our documentation in several places, giving more explanation, removing ambiguity, and providing much more support for extending Bootstrap. It all starts with a whole new Customize section.</p><p><img src=\"https://user-images.githubusercontent.com/98681/84740682-ac43c600-af62-11ea-88a4-79c1362061c8.png\" style=\"width: 645px;\"></p><p>v5’s Customize docs expand on v4’s Theming page with more content and code snippets for building on top of Bootstrap’s source Sass files. We’ve fleshed out more content here and even provided a starter npm project for you to get started with faster and easier. It’s also available as a template repo on GitHub, so you can freely fork and go.</p><p><img src=\"https://user-images.githubusercontent.com/98681/84801339-e5585680-afb3-11ea-8743-29647ff3f3a9.png\" style=\"width: 645px;\"></p><p>We’ve expanded our color palette in v5, too. With an extensive color system built-in, you can more easily customize the look and feel of your app without ever leaving the codebase. We’ve also done some work to improve color contrast, and even provided color contrast metrics in our Color docs. Hopefully, this will continue to help make Bootstrap-powered sites more accessible to folks all over.</p><h3>Updated forms</h3><p>In addition to the new Customize section, we’ve overhauled our Forms documentation and components. We’ve consolidated all our forms styles into a new Forms section (including the input group component) to give them the emphasis they deserve.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-forms.png\" style=\"width: 645px;\"></p><p>Alongside new docs pages, we’ve redesigned and de-duped all our form controls. In v4 we introduced an extensive suite of custom form controls—checks, radios, switches, files, and more—but those were in addition to whatever defaults each browser provided. With v5, we’ve gone fully custom.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-checks.png\" style=\"width: 645px;\">If you’re familiar with v4’s form markup, this shouldn’t look too far off for you. With a single set of form controls and a focus on redesigning existing elements vs generating new ones via pseudo-elements, we have a much more consistent look and feel.</p><pre class=\"language-html\"><code class=\"language-html\">&lt;div class=\"form-check\"&gt;\n                &lt;input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"flexCheckDefault\"&gt;\n                &lt;label class=\"form-check-label\" for=\"flexCheckDefault\"&gt;\n                    Default checkbox\n                &lt;/label&gt;\n                &lt;/div&gt;\n\n                &lt;div class=\"form-check\"&gt;\n                &lt;input class=\"form-check-input\" type=\"radio\" name=\"flexRadioDefault\" id=\"flexRadioDefault1\"&gt;\n                &lt;label class=\"form-check-label\" for=\"flexRadioDefault1\"&gt;\n                    Default radio\n                &lt;/label&gt;\n                &lt;/div&gt;\n\n                &lt;div class=\"form-check form-switch\"&gt;\n                &lt;input class=\"form-check-input\" type=\"checkbox\" id=\"flexSwitchCheckDefault\"&gt;\n                &lt;label class=\"form-check-label\" for=\"flexSwitchCheckDefault\"&gt;Default switch checkbox input&lt;/label&gt;\n                &lt;/div&gt;</code></pre><p>Every checkbox, radio, select, file, range, and more\n                includes a custom appearance to unify the style and behavior of form controls across OS and browser. These new form\n                controls are all built on completely semantic, standard form controls—no more superfluous markup, just form\n                controls and labels.</p><p>Be sure to explore the new forms docs and let us know what you\n                think.</p><h3>Utilities API</h3><p>We love seeing how many folks are building\n                new and interesting CSS libraries and toolkits, challenging the way we’ve built on the web for the last\n                decade-plus. It’s refreshing, to say the least, and affords us all an opportunity to discuss and iterate. As\n                such, we’ve implemented a brand new utility API into Bootstrap 5.</p><pre\n                class=\"language-sas\"><code class=\"language-sas\">$utilities: () !default;\n                $utilities: map-merge(\n                (\n                    // ...\n                    \"width\": (\n                    property: width,\n                    class: w,\n                    values: (\n                        25: 25%,\n                        50: 50%,\n                        75: 75%,\n                        100: 100%,\n                        auto: auto\n                    )\n                    ),\n                    // ...\n                    \"margin\": (\n                    responsive: true,\n                    property: margin,\n                    class: m,\n                    values: map-merge($spacers, (auto: auto))\n                    ),\n                    // ...\n                ), $utilities);</code></pre><p>Ever since utilities become a preferred way to build,\n                we’ve been working to find the right balance to implement them in Bootstrap while providing control and\n                customization. In v4, we did this with global $enable-* classes, and we’ve even carried that forward in v5.\n                But\n                with an API based approach, we’ve created a language and syntax in Sass to create your own utilities on the fly\n                while also being able to modify or remove those we provide. This is all thanks to @MartijnCuppens, who also maintains\n                the RFS project, and is responsible for the initial PR and subsequent improvements.</p><p>We think\n                this will be a game-changer for those who build on Bootstrap via our source files, and if you haven’t built a\n                Bootstrap-powered project that way yet, your mind will be blown.</p><p>Heads up! We’ve\n                moved some of our former v4 utilities to a new Helpers section. These helpers are snippets of code that are longer\n                than your usual property-value pairing for our utilities. Just our way of reorganizing things for easier naming and\n                improved documentation.</p><h3>Enhanced grid system</h3><p>By design Bootstrap\n                5 isn’t a complete departure from v4. We wanted everyone to be able to more easily upgrade to this future\n                version after hearing about the difficulties from the v3 to v4 upgrade path. We’ve kept the bulk of the build\n                system in place (minus jQuery) for this reason, and we’ve also built on the existing grid system instead of\n                replacing it with something newer and hipper.</p><p>Here’s a rundown of what’s\n                changed in our grid:</p><ul><li>We’ve added a new grid tier! Say hello to\n                xxl.</li><li>.gutter classes have been replaced with .g* utilities, much like our margin/padding\n                utilities. We’ve also added options to your grid gutter spacing that matches the spacing utilities\n                you’re already familiar with.</li><li>Form layout options have been replaced with the new\n                grid system.</li><li>Vertical spacing classes have been added.</li><li>Columns\n                are no longer position: relative by default.</li></ul><p>Here’s a quick example\n                of how to use the new grid gutter classes:</p><pre class=\"language-html\"><code\n                class=\"language-html\">&lt;div class=\"row g-5\"&gt;\n                &lt;div class=\"col\"&gt;...&lt;/div&gt;\n                &lt;div class=\"col\"&gt;...&lt;/div&gt;\n                &lt;div class=\"col\"&gt;...&lt;/div&gt;\n                &lt;/div&gt;</code></pre><p>Take a look at the redesigned and restructured Layout docs to learn more.</p><p>CSS’s grid layout is increasingly ready for prime time, and while we haven’t made use of it here yet, we’re continuing to experiment and learn from it. Look to future releases of v5 to embrace it in more ways.</p><h3>Docs</h3><p>We switched our documentation static site generator from Jekyll to Hugo. Jekyll has long been our generator of choice given how easy it is to get up and running, and its simplicity with deploying to GitHub Pages.</p><p>Unfortunately, we’ve reached two major issues with Jekyll over the years:</p><ul><li>Jekyll requires Ruby to be installed</li><li>Site generation was very slow</li></ul><p>Hugo on the other hand is written in Go, so it has no external runtime dependencies, and it’s much faster. We build our current master branch site, including the doc’s Sass -&gt; CSS in ~1.6s. Our local server reloads in milliseconds instead of 8-12 seconds, so working on the docs has become a pleasant experience again.</p><p>The Hugo switch wouldn’t have been possible without Hugo’s main developer work, Bjørn Erik Pedersen (@bep), who made quite a few codebase changes to make the transition possible and smooth!</p><p>Also a shoutout to @xhmikosr who led the charge here in converting hundreds of files and working with the Hugo developers to make sure our local development was fast, efficient, and maintainable.</p><h3>Coming soon: RTL, offcanvas, and more</h3><p>There’s a ton we just didn’t have time to tackle in our first alpha that’s still on the todo list for future alphas. We wanted to give them some love here so you know what’s on our radar throughout v5’s development.</p><ul><li>RTL is coming! We’ve spiked out a PR using RTLCSS and are continuing to explore logical properties as well. Personally, I’m sorry for taking so long for us to officially tackle this knowing all the effort that’s gone into it community efforts and pull requests to the project. Hopefully, the wait is worth it.</li><li>There’s a forked version of our modal that’s implementing an offcanvas menu. We still have some work to do here to get this right without adding too much overhead, but the idea of having an offcanvas wrapper to place any sidebar-worth content—navigation, shopping cart, etc—is huge. Personally, I know we’re behind the times on this one, but it should be awesome nonetheless.</li><li>We’re evaluating a number of other changes to our codebase, including the Sass module system, increased usage of CSS custom properties, embedding SVGs in our HTML instead of our CSS, and more.</li></ul><p>There’s a ton yet to come, including more documentation improvements, bug fixes, and quality of life changes. Be sure to review our open issues and PRs to see where you can help out by providing feedback, testing community PRs, or sharing your ideas.</p><h3>Get started</h3><p>Head to https://v5.getbootstrap.com to explore the new release. We’ve also published this updated as a pre-release to npm, so if you’re feeling bold or are curious about what’s new, you can pull the latest in that way.</p><p>npm i bootstrap@next</p><h3>What’s next</h3><p>We still have more work to do in v5, including some breaking changes, but we’re incredibly excited about this release. Let the feedback rip and we’ll do our best to keep up with y’all. Our goal is to ship another alpha within 3-4 weeks, and likely a couple more after that. We’ll also be shipping a v4.5.1 release to fix a couple of regressions and continue to bridge the gap between v4 and v5.</p><p>Beyond that, keep an eye for more updates to the Bootstrap Icons project, our RFS project (now enabled by default in v5), and the npm starter project.</p><h3>Support the team</h3><p>Visit our Open Collective page or our team members’ GitHub profiles to help support the maintainers contributing to Bootstrap.</p><p>&lt;3,</p><p>@mdo &amp; team</p>', NULL, NULL, 'publish', 'public', 2, 1, 'post', NULL, 5, 5, 'image25.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:08', '2022-06-11 17:00:08');
INSERT INTO `posts` (`id`, `post_title`, `post_name`, `post_summary`, `post_content`, `meta_description`, `meta_keyword`, `post_status`, `post_visibility`, `post_author`, `post_language`, `post_type`, `post_guid`, `post_hits`, `like`, `post_image`, `post_image_meta`, `post_mime_type`, `comment_status`, `comment_count`, `post_source`, `created_at`, `updated_at`) VALUES
(26, 'Bootstrap 5 Alpha Akhirnya Diluncurkan!', 'bootstrap-5-alpha-akhirnya-diluncurkan', '<p>Alpha pertama Bootstrap 5 telah tiba! Kami telah bekerja keras selama beberapa bulan untuk menyempurnakan pekerjaan yang kami mulai di v4, dan sementara kami merasa senang dengan kemajuan kami, masih ada lebih banyak lagi yang harus dilakukan.</p>', '<p>Kami telah fokus untuk membuat migrasi dari v4 ke v5 lebih mudah didekati, tetapi kami juga tidak takut untuk menjauh dari apa yang sudah ketinggalan zaman atau tidak lagi sesuai. Karena itu, kami sangat senang untuk mengatakan bahwa dengan v5, Bootstrap tidak lagi bergantung pada jQuery dan kami telah menghentikan dukungan untuk Internet Explorer. Kami mempertajam fokus kami untuk membangun alat yang lebih ramah masa depan, dan meskipun kami belum sepenuhnya melakukannya, janji variabel CSS, JavaScript yang lebih cepat, lebih sedikit ketergantungan, dan API yang lebih baik tentu terasa tepat bagi kami.</p><p>Sebelum Anda melompat ke pembaruan, harap diingat v5 sekarang dalam versi alfa—perubahan yang melanggar akan terus terjadi hingga beta pertama kami. Kami belum selesai menambahkan atau menghapus semuanya, jadi periksa masalah terbuka dan tarik permintaan jika Anda memiliki pertanyaan atau masukan.</p><p>Sekarang mari kita gali dengan beberapa sorotan!</p><h3>Tampilan dan nuansa baru</h3><p>Kami telah membangun peningkatan pada beranda dokumen kami di v4.5.0 dengan tampilan dan nuansa yang diperbarui untuk dokumen kami lainnya. Laman dokumen kami tidak lagi lebar penuh untuk meningkatkan keterbacaan dan membuat situs kami terasa kurang seperti aplikasi dan lebih seperti konten. Selain itu, kami telah meningkatkan bilah sisi untuk menggunakan bagian yang dapat diperluas (diberdayakan oleh plugin Ciutkan kami sendiri) untuk navigasi yang lebih cepat.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-home.png\" style=\"width: 645px;\"></p><p>Kami juga memakai logo baru! Lebih lanjut tentang itu ketika v5 menjadi stabil, tetapi cukup untuk mengatakan bahwa kami ingin memberikan peningkatan kecil pada kotak yang bulat.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-new-logo.png\" style=\"width: 645px;\"></p><p>Terinspirasi oleh CSS yang menciptakan awal dari proyek ini, logo kami mewujudkan perasaan set aturan—gaya yang dibatasi oleh kurung kurawal. Kami menyukainya dan berpikir Anda juga akan menyukainya. Harapkan untuk melihatnya diluncurkan ke dokumentasi v4, blog kami, dan lebih banyak lagi dari waktu ke waktu saat kami terus menyempurnakan berbagai hal dan mengirimkan rilis baru.</p><h3>jQuery dan JavaScript</h3><p>jQuery membawa akses yang belum pernah terjadi sebelumnya ke perilaku JavaScript yang kompleks ke jutaan (miliar?) orang selama satu setengah dekade terakhir. Secara pribadi, saya selalu bersyukur atas pemberdayaan dan dukungan yang diberikan kepada saya untuk terus menulis kode front-end, mempelajari hal-hal baru, dan merangkul plugin dari komunitas. Mungkin yang paling penting, itu selamanya mengubah JavaScript itu sendiri, dan itu sendiri merupakan monumen kesuksesan jQuery. Terima kasih kepada setiap kontributor dan pengelola jQuery yang memungkinkan hal itu bagi orang-orang seperti saya.</p><p>Berkat kemajuan yang dibuat dalam alat pengembangan front-end dan dukungan browser, kami sekarang dapat menghapus jQuery sebagai ketergantungan, tetapi Anda tidak akan pernah menyadari sebaliknya. Migrasi ini merupakan upaya besar oleh @Johann-S, pengelola JavaScript utama kami hari ini. Ini menandai salah satu perubahan terbesar pada kerangka kerja dalam beberapa tahun dan berarti proyek yang dibangun di Bootstrap 5 akan secara signifikan lebih ringan pada ukuran file dan pemuatan halaman ke depan.</p><p>Selain menjatuhkan jQuery, kami telah membuat beberapa perubahan dan penyempurnaan lain pada JavaScript kami di v5 yang berfokus pada kualitas kode dan menjembatani kesenjangan antara v4 dan v5. Salah satu perubahan kami yang lebih besar lainnya adalah menjatuhkan sebagian besar plugin Tombol kami untuk pendekatan HTML dan CSS saja untuk beralih status. Sekarang tombol sakelar didukung oleh kotak centang dan tombol radio dan jauh lebih andal.</p><p>Anda dapat melihat daftar lengkap perubahan terkait JS dalam proyek alfa v5 pertama di GitHub.</p><p>Tertarik untuk membantu JavaScript Bootstrap? Kami selalu mencari kontributor baru untuk tim untuk membantu menulis plugin baru, meninjau permintaan tarik, dan memperbaiki bug. Beritahu kami!</p><h3>Properti khusus CSS</h3><p>Seperti yang disebutkan, kami telah mulai menggunakan properti kustom CSS di Bootstrap 5 berkat penurunan dukungan untuk Internet Explorer. Di v4 kami hanya menyertakan beberapa variabel root untuk warna dan font, dan sekarang kami telah menambahkannya untuk beberapa komponen dan opsi tata letak.</p><p>Ambil contoh komponen .table kami, di mana kami telah menambahkan beberapa variabel lokal untuk membuat gaya tabel bergaris, melayang, dan aktif lebih mudah:</p><pre class=\"language-css\"><code class=\"language-css\">.table {--bs-table-bg: #{$table-bg};  --bs-table-accent-bg: transparent;  --bs-table-striped-color: #{$table-striped-color};  --bs-table-striped-bg: #{$table-striped-bg};  --bs-table-active-color: #{$table-active-color};  --bs-table-active-bg: #{$table-active-bg};  --bs-table-hover-color: #{$table-hover-color};  --bs-table-hover-bg: #{$table-hover-bg};  // Styles here...}</code></pre><p>Kami sedang berupaya memanfaatkan kekuatan super dari properti kustom Sass dan CSS untuk sistem yang lebih fleksibel. Anda dapat membaca lebih lanjut tentang ini di halaman dokumen Tabel dan berharap untuk melihat lebih banyak penggunaan dalam komponen seperti tombol dalam waktu dekat.</p><h3>Dokumen penyesuaian yang ditingkatkan</h3><p>Kami telah berjongkok dan meningkatkan dokumentasi kami di beberapa tempat, memberikan lebih banyak penjelasan, menghilangkan ambiguitas, dan memberikan lebih banyak dukungan untuk memperluas Bootstrap. Semuanya dimulai dengan bagian Kustomisasi yang sama sekali baru.</p><p><img src=\"https://user-images.githubusercontent.com/98681/84740682-ac43c600-af62-11ea-88a4-79c1362061c8.png\" style=\"width: 645px;\"></p><p>Dokumen Kustomisasi v5 diperluas di halaman Tema v4 dengan lebih banyak konten dan cuplikan kode untuk membangun di atas file Sass sumber Bootstrap. Kami telah menyempurnakan lebih banyak konten di sini dan bahkan menyediakan proyek npm pemula bagi Anda untuk memulai dengan lebih cepat dan lebih mudah. Ini juga tersedia sebagai repo template di GitHub, sehingga Anda dapat dengan bebas melakukan fork and go.</p><p><img src=\"https://user-images.githubusercontent.com/98681/84801339-e5585680-afb3-11ea-8743-29647ff3f3a9.png\" style=\"width: 645px;\"></p><p>Kami juga telah memperluas palet warna kami di v5. Dengan sistem warna bawaan yang ekstensif, Anda dapat lebih mudah menyesuaikan tampilan dan nuansa aplikasi Anda tanpa harus meninggalkan basis kode. Kami juga telah melakukan beberapa pekerjaan untuk meningkatkan kontras warna, dan bahkan menyediakan metrik kontras warna di dokumen Warna kami. Mudah-mudahan, ini akan terus membantu membuat situs yang didukung Bootstrap lebih mudah diakses oleh orang-orang di seluruh dunia.</p><h3>Formulir yang diperbarui</h3><p>Selain bagian Kustomisasi yang baru, kami telah merombak dokumentasi dan komponen Formulir kami. Kami telah menggabungkan semua gaya formulir kami ke dalam bagian Formulir baru (termasuk komponen grup input) untuk memberi mereka penekanan yang pantas mereka dapatkan.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-forms.png\" style=\"width: 645px;\"></p><p>Di samping halaman dokumen baru, kami telah mendesain ulang dan menghapus semua kontrol formulir kami. Di v4 kami memperkenalkan rangkaian ekstensif kontrol formulir khusus—pemeriksaan, radio, sakelar, file, dan lainnya—tetapi itu adalah tambahan dari default apa pun yang disediakan setiap browser. Dengan v5, kami telah sepenuhnya menyesuaikan.</p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-checks.png\" style=\"width: 645px;\">Jika Anda terbiasa dengan markup formulir v4, ini seharusnya tidak terlihat terlalu jauh untuk Anda. Dengan satu set kontrol formulir dan fokus pada mendesain ulang elemen yang ada vs menghasilkan yang baru melalui elemen semu, kami memiliki tampilan dan nuansa yang jauh lebih konsisten.</p><pre class=\"language-html\"><code class=\"language-html\">&lt;div class=\"form-check\"&gt;  &lt;input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"flexCheckDefault\"&gt;  &lt;label class=\"form-check-label\" for=\"flexCheckDefault\"&gt;    Default checkbox  &lt;/label&gt;&lt;/div&gt;&lt;div class=\"form-check\"&gt;  &lt;input class=\"form-check-input\" type=\"radio\" name=\"flexRadioDefault\" id=\"flexRadioDefault1\"&gt;  &lt;label class=\"form-check-label\" for=\"flexRadioDefault1\"&gt;    Default radio  &lt;/label&gt;&lt;/div&gt;&lt;div class=\"form-check form-switch\"&gt;  &lt;input class=\"form-check-input\" type=\"checkbox\" id=\"flexSwitchCheckDefault\"&gt;  &lt;label class=\"form-check-label\" for=\"flexSwitchCheckDefault\"&gt;Default switch checkbox input&lt;/label&gt;&lt;/div&gt;</code></pre><p>Setiap kotak centang, radio, pilih, file, rentang, dan lainnya menyertakan tampilan khusus untuk menyatukan gaya dan perilaku kontrol formulir di seluruh OS dan browser. Kontrol formulir baru ini semuanya dibangun di atas kontrol formulir standar yang sepenuhnya semantik—tidak ada lagi markup yang berlebihan, cukup kontrol dan label formulir.</p><p>Pastikan untuk menjelajahi dokumen formulir baru dan beri tahu kami pendapat Anda.</p><h3>API Utilitas</h3><p>Kami senang melihat berapa banyak orang yang membuat library dan toolkit CSS baru dan menarik, menantang cara kami membangun di web selama lebih dari satu dekade terakhir. Ini menyegarkan, untuk sedikitnya, dan memberi kita semua kesempatan untuk berdiskusi dan mengulangi. Karena itu, kami telah menerapkan API utilitas baru ke dalam Bootstrap 5.</p><pre class=\"language-sas\"><code class=\"language-sas\">$utilities: () !default;$utilities: map-merge(  (    // ...    \"width\": (      property: width,      class: w,      values: (        25: 25%,        50: 50%,        75: 75%,        100: 100%,        auto: auto      )    ),    // ...    \"margin\": (      responsive: true,      property: margin,      class: m,      values: map-merge($spacers, (auto: auto))    ),    // ...  ), $utilities);</code></pre><p>Sejak utilitas menjadi cara yang disukai untuk membangun, kami telah bekerja untuk menemukan keseimbangan yang tepat untuk menerapkannya di Bootstrap sambil memberikan kontrol dan penyesuaian. Di v4, kami melakukan ini dengan kelas $enable-* global, dan kami bahkan telah meneruskannya di v5. Tetapi dengan pendekatan berbasis API, kami telah membuat bahasa dan sintaks di Sass untuk membuat utilitas Anda sendiri dengan cepat sambil juga dapat memodifikasi atau menghapus yang kami sediakan. Ini semua berkat @MartijnCuppens, yang juga mengelola proyek RFS, dan bertanggung jawab atas PR awal dan perbaikan selanjutnya.</p><p><br></p><p>Kami pikir ini akan menjadi pengubah permainan bagi mereka yang membangun di Bootstrap melalui file sumber kami, dan jika Anda belum membangun proyek yang didukung Bootstrap seperti itu, pikiran Anda akan meledak.</p><p><br></p><p>Perhatian! Kami telah memindahkan beberapa utilitas v4 kami sebelumnya ke bagian Pembantu baru. Helper ini adalah potongan kode yang lebih panjang dari pasangan nilai properti Anda yang biasa untuk utilitas kami. Hanya cara kami mengatur ulang berbagai hal untuk penamaan yang lebih mudah dan dokumentasi yang lebih baik.</p><h3>Sistem jaringan yang ditingkatkan</h3><p>Secara desain Bootstrap 5 tidak sepenuhnya berangkat dari v4. Kami ingin semua orang dapat lebih mudah meningkatkan ke versi mendatang ini setelah mendengar tentang kesulitan dari jalur peningkatan v3 ke v4. Kami telah mempertahankan sebagian besar sistem build di tempatnya (minus jQuery) karena alasan ini, dan kami juga membangun sistem grid yang ada alih-alih menggantinya dengan sesuatu yang lebih baru dan lebih keren.</p><p>Berikut ini ikhtisar dari apa yang berubah di grid kami:</p><ul><li></li><li>Kami telah menambahkan tingkat kisi baru! Sampaikan salam untuk xxl.</li><li>kelas .gutter telah diganti dengan utilitas .g*, seperti utilitas margin/padding kami. Kami juga telah menambahkan opsi ke spasi talang grid Anda yang cocok dengan utilitas spasi yang sudah Anda kenal.</li><li>Opsi tata letak formulir telah diganti dengan sistem kisi baru.</li><li>Kelas jarak vertikal telah ditambahkan.</li><li>Kolom tidak lagi diposisikan: relatif secara default.</li></ul><p>Berikut adalah contoh singkat tentang cara menggunakan kelas talang grid baru:</p><pre class=\"language-html\"><code class=\"language-html\">&lt;div class=\"row g-5\"&gt;  &lt;div class=\"col\"&gt;...&lt;/div&gt;  &lt;div class=\"col\"&gt;...&lt;/div&gt;  &lt;div class=\"col\"&gt;...&lt;/div&gt;&lt;/div&gt;</code></pre><p>Lihat dokumen Tata Letak yang didesain ulang dan direstrukturisasi untuk mempelajari lebih lanjut.</p><p>Tata letak grid CSS semakin siap untuk prime time, dan sementara kami belum menggunakannya di sini, kami terus bereksperimen dan belajar darinya. Nantikan rilis v5 di masa mendatang untuk merangkulnya dengan lebih banyak cara.</p><h3>Dokumen</h3><p>Kami mengganti generator situs statis dokumentasi kami dari Jekyll ke Hugo. Jekyll telah lama menjadi generator pilihan kami mengingat betapa mudahnya untuk memulai dan menjalankannya, dan kesederhanaannya dengan penerapan ke GitHub Pages.</p><p>Sayangnya, kami telah mencapai dua masalah utama dengan Jekyll selama bertahun-tahun:</p><ul><li></li><li>Jekyll membutuhkan Ruby untuk diinstal</li><li>Pembuatan situs sangat lambat</li></ul><p>Hugo di sisi lain ditulis dalam Go, sehingga tidak memiliki ketergantungan runtime eksternal, dan jauh lebih cepat. Kami membangun situs cabang master kami saat ini, termasuk Sass dokumen -&gt; CSS dalam ~1.6s. Server lokal kami memuat ulang dalam milidetik, bukan 8-12 detik, jadi mengerjakan dokumen telah menjadi pengalaman yang menyenangkan lagi.</p><p>Hugo di sisi lain ditulis dalam Go, sehingga tidak memiliki ketergantungan runtime eksternal, dan jauh lebih cepat. Kami membangun situs cabang master kami saat ini, termasuk Sass dokumen -&gt; CSS dalam ~1.6s. Server lokal kami memuat ulang dalam milidetik, bukan 8-12 detik, jadi mengerjakan dokumen telah menjadi pengalaman yang menyenangkan lagi.</p><p>Juga teriakan kepada @xhmikosr yang memimpin tugas di sini dalam mengonversi ratusan file dan bekerja dengan pengembang Hugo untuk memastikan pengembangan lokal kami cepat, efisien, dan dapat dipelihara.</p><h3>Segera hadir: RTL, offcanvas, dan banyak lagi</h3><p>Ada banyak hal yang tidak sempat kami tangani di alfa pertama kami yang masih ada dalam daftar tugas untuk alfa masa depan. Kami ingin memberi mereka cinta di sini sehingga Anda tahu apa yang ada di radar kami selama pengembangan v5.</p><ul><li></li><li>RTL datang! Kami telah meningkatkan PR menggunakan RTLCSS dan terus mengeksplorasi properti logis juga. Secara pribadi, saya minta maaf karena membutuhkan waktu lama bagi kami untuk secara resmi menangani ini mengetahui semua upaya yang dilakukan untuk upaya komunitas dan menarik permintaan ke proyek. Semoga penantian itu sepadan.</li><li>Ada versi bercabang dari modal kami yang menerapkan menu offcanvas. Kami masih memiliki beberapa pekerjaan yang harus dilakukan di sini untuk melakukannya dengan benar tanpa menambahkan terlalu banyak overhead, tetapi gagasan memiliki pembungkus offcanvas untuk menempatkan konten bernilai bilah sisi — navigasi, keranjang belanja, dll — sangat besar. Secara pribadi, saya tahu kita ketinggalan zaman dalam hal ini, tetapi tetap saja itu harus luar biasa.</li><li>Kami sedang mengevaluasi sejumlah perubahan lain pada basis kode kami, termasuk sistem modul Sass, peningkatan penggunaan properti kustom CSS, penyematan SVG dalam HTML kami, bukan CSS kami, dan banyak lagi.</li></ul><p>Masih banyak yang akan datang, termasuk lebih banyak peningkatan dokumentasi, perbaikan bug, dan perubahan kualitas hidup. Pastikan untuk meninjau masalah terbuka dan PR kami untuk melihat di mana Anda dapat membantu dengan memberikan umpan balik, menguji PR komunitas, atau membagikan ide Anda.</p><h3>Memulai</h3><p>Buka https://v5.getbootstrap.com untuk menjelajahi rilis baru. Kami juga telah memublikasikan pembaruan ini sebagai pra-rilis ke npm, jadi jika Anda merasa berani atau ingin tahu tentang apa yang baru, Anda dapat menarik yang terbaru dengan cara itu.</p><p>npm i bootstrap@next</p><h3>Apa berikutnya</h3><p>Kami masih memiliki lebih banyak pekerjaan yang harus dilakukan di v5, termasuk beberapa perubahan penting, tetapi kami sangat senang dengan rilis ini. Biarkan umpan balik merobek dan kami akan melakukan yang terbaik untuk mengikuti Anda semua. Tujuan kami adalah mengirimkan alfa lain dalam waktu 3-4 minggu, dan kemungkinan beberapa lagi setelah itu. Kami juga akan mengirimkan rilis v4.5.1 untuk memperbaiki beberapa regresi dan terus menjembatani kesenjangan antara v4 dan v5.</p><p><span style=\"font-size: 1rem;\">Selain itu, perhatikan lebih banyak pembaruan untuk proyek Ikon Bootstrap, proyek RFS kami (sekarang diaktifkan secara default di v5), dan proyek pemula npm.</span></p><h3>Dukung tim</h3><p>Kunjungi halaman Kolektif Terbuka kami atau profil GitHub anggota tim kami untuk membantu mendukung pengelola yang berkontribusi pada Bootstrap.</p><p>&lt;3,</p><p>@mdo &amp; team</p>', NULL, NULL, 'publish', 'public', 2, 2, 'post', NULL, 2, 2, 'image25.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:08', '2022-06-11 17:00:08'),
(27, 'تم إطلاق Bootstrap 5 Alpha أخيرًا!', 'tm-tl-k-bootstrap-5-alpha-akhyr', '<p>وصل أول إصدار ألفا من Bootstrap 5! لقد عملنا بجد لعدة أشهر لتحسين العمل الذي بدأناه في الإصدار 4 ، وبينما نشعر بالرضا حيال تقدمنا ، لا يزال هناك المزيد للقيام به.</p>', '<p>لقد ركزنا على جعل الترحيل من الإصدار 4 إلى الإصدار 5 أكثر سهولة ، ولكننا لم نخاف أيضًا من الابتعاد عما عفا عليه الزمن أو لم يعد مناسبًا. على هذا النحو ، يسعدنا جدًا أن نقول إنه مع الإصدار 5 ، لم يعد Bootstrap يعتمد على jQuery وقد أسقطنا دعم Internet Explorer. نحن نعمل على زيادة تركيزنا على بناء أدوات أكثر ملاءمة للمستقبل ، وعلى الرغم من أننا لم نصل إلى هناك بالكامل بعد ، فإن الوعد بتقديم متغيرات CSS وجافا سكريبت أسرع وتبعيات أقل وواجهات برمجة تطبيقات أفضل تبدو مناسبة لنا بالتأكيد.</p><p><span style=\"font-size: 1rem;\">قبل أن تقفز إلى التحديث ، يرجى تذكر أن الإصدار 5 هو الآن في الإصدار الأولي - سيستمر حدوث التغييرات حتى الإصدار التجريبي الأول. لم ننتهي من إضافة أو إزالة كل شيء ، لذا تحقق من المشكلات المفتوحة واسحب الطلبات لأن لديك أسئلة أو تعليقات.</span><br></p><p><span style=\"font-size: 1rem;\">الآن دعونا نتعمق مع بعض النقاط البارزة!</span></p><h3>شكل ومظهر جديدان</h3><p><span style=\"font-size: 1rem;\">لقد قمنا ببناء التحسينات التي تم إجراؤها على الصفحة الرئيسية للمستندات في الإصدار v4.5.0 مع مظهر وأسلوب محدثين لبقية مستنداتنا. لم تعد صفحات مستنداتنا كاملة العرض لتحسين قابلية القراءة وجعل موقعنا يبدو أقل تشابهًا مع التطبيقات وأكثر تشابهًا مع المحتوى. بالإضافة إلى ذلك ، قمنا بترقية الشريط الجانبي لدينا لاستخدام أقسام قابلة للتوسيع (مدعومة من خلال المكوّن الإضافي Collapse الخاص بنا) للتنقل بشكل أسرع.</span><br></p><p><img src=\"https://blog.getbootstrap.com/assets/img/2020/06/v5-home.png\" style=\"width: 645px;\"></p>', NULL, NULL, 'publish', 'public', 3, 3, 'post', NULL, 5, 5, 'image25.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:09', '2022-06-11 17:00:09'),
(28, 'Stylish Getaways In Kintamani, Bali For Your Next Holiday', 'stylish-getaways-in-kintamani-bali-for-your-next-holiday', '<p>Stylish getaways in Kintamani, Bali for your next holiday</p>', '<p>Wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p><p><span style=\"font-size: 1rem;\">Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon. Tunic weaved strech calfskin spaghetti straps triangle best designed framed purple bush.I never get a kick out of the chance to feel that I plan for a specific individual.</span><br></p><p><span style=\"font-size: 1rem;\">Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</span><br></p><h5><span style=\"font-size: 1rem;\">Decide what to blog</span></h5><p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word “and” and the Little Blind Text should turn around and return to its own, safe country.</p><p><span style=\"font-size: 1rem;\">But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again. And if she hasn’t been rewritten, then they are still using her.</span><br></p><p><span style=\"font-size: 1rem;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</span><br></p><h5><span style=\"font-size: 1rem;\">Pick A Good Theme</span></h5><p>JNews is a theme designed to provide an “all-in-one” solution for every publishing need. With JNews, you can explore endless possibilities in crafting the best fully-functional website. We provide 140+ homepage that perfect for your News site, Magazine site, Blog site, Editorial site and for all kind of publishing website. Also provided automatic import feature to replicate one of the demos you like just by one click.</p><p><span style=\"font-size: 1rem;\">Customizing your website with JNews is easy &amp; fun. You can lively see the change you made and create a landing page with ease by utilizing Drag and Drop Header Builder, WPBakery Visual Composer &amp; Customizer. We fully integrate all elements of WPBakery Visual Composer, including FrontEnd Visual Composer Editor.</span><br></p><p><span style=\"font-size: 1rem;\"><b>The most complete solution for web publishing</b></span><br></p><ul><li><span style=\"font-size: 1rem;\">Responsive Design. Tested on Google Mobile Friendly</span></li><li>Header Builder with Live Preview</li><li>Optimized for Google Page Speed as SEO Signal</li><li>Website schema using JSON LD which is recommended by Google</li></ul><p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p><p><span style=\"font-size: 1rem;\">A collection of textile samples lay spread out on the table – Samsa was a travelling salesman – and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer.</span><br></p><p><span style=\"font-size: 1rem;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.</span><br></p><p><span style=\"font-size: 1rem;\">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table – Samsa was a travelling salesman – and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</span><br></p>', 'Stylish getaways in Kintamani, Bali for your next holiday', 'holiday,bali,indonesia', 'publish', 'public', 1, 1, 'post', NULL, 2, 2, 'image28.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:09', '2022-06-11 17:00:09'),
(29, 'Is Japan The Most Overrated Travel Destination In The World?', 'is-japan-the-most-overrated-travel-destination-in-the-world', NULL, '<p>Intro text we refine our methods of responsive web design, we&apos;ve increasingly focused on measure and its relationship to how people read.</p>\n            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. Even the all-powerful Pointing has no control about the blind texts it is an almost <a href=\"https://epic.jegtheme.com/is-japan-the-most-overrated-travel-destination-in-the-world/#\" style=\"text-decoration:none;\">unorthographic</a> life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&apos;t listen.</p>\n            <p>On the topic of alignment, it should be noted that users can choose from the options of None, Left, Right, and Center. In addition, they also get the options of Thumbnail, Medium, Large &amp; Fullsize.</p>\n            <p>And if she hasn&apos;t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\n            <p><img src=\"../../../../storage/images/image28.jpg\"><br></p>\n            <blockquote class=\"blockquote\">\n            <p>A wonderful serenity has taken possession of my entire soul</p>\n            </blockquote>\n            <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word “and” and the Little Blind Text should turn around and return to its own, safe country.A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>\n            <p>But nothing the copy said could convince her and so it didn&apos;t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\n            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\n            <br>', 'Vinales will be as tough for Rossi as Lorenzo – Suzuki MotoGP boss', 'Japan, Holiday', 'publish', 'public', 1, 1, 'post', NULL, 2, 2, 'image29.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:10', '2022-06-11 17:00:10'),
(30, 'Vinales Will Be As Tough For Rossi As Lorenzo – Suzuki Motogp Boss', 'vinales-will-be-as-tough-for-rossi-as-lorenzo-suzuki-motogp-boss', NULL, '<p>Intro text we refine our methods of responsive web design, we&apos;ve increasingly focused on measure and its relationship to how people read.</p>\n            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. Even the all-powerful Pointing has no control about the blind texts it is an almost <a href=\"https://epic.jegtheme.com/vinales-will-be-as-tough-for-rossi-as-lorenzo-suzuki-motogp-boss/#\" style=\"text-decoration:none;\">unorthographic</a> life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&apos;t listen.</p>\n            <p>On the topic of alignment, it should be noted that users can choose from the options of None, Left, Right, and Center. In addition, they also get the options of Thumbnail, Medium, Large &amp; Fullsize.</p>\n            <p>And if she hasn&apos;t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\n            <blockquote class=\"blockquote\">\n            <p>A wonderful serenity has taken possession of my entire soul</p>\n            </blockquote>\n            <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word “and” and the Little Blind Text should turn around and return to its own, safe country.A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>\n            <p>But nothing the copy said could convince her and so it didn&apos;t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\n            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>', 'Vinales will be as tough for Rossi as Lorenzo – Suzuki MotoGP boss', 'Sport, MotoGP,racing', 'publish', 'public', 1, 1, 'post', NULL, 2, 2, 'image30.jpg', NULL, '', 'open', 0, NULL, '2022-06-11 17:00:11', '2022-06-11 17:00:11'),
(31, 'Google Meet Adding Support For Anonymous Questions And Poll Responses', 'google-meet-adding-support-for-anonymous-questions-and-poll-responses', NULL, '<p>With the Duo migration underway, Google continues to add more enterprise-focused features to Meet. The latest lets Google Meet participants ask questions and answer polls anonymously.When a user responds to a Poll anonymously or posts a question anonymously, the details are kept anonymous to other participants, the meeting hosts, and your Google Workspace Admin. Note that Google retains your poll response and anonymous questions. This data is later anonymized or deleted.</p><p>According to Google, this has been a top request and geared towards large calls. It&apos;s meant to “encourage greater participation from meeting attendees who would prefer to not be identified by name.\" It&apos;s also ideal for public meetings to protect privacy.</p><p>Anonymous questions are allowed by default and can be disabled by meeting hosts from Meeting Activities &gt; Allow Questions in Q&amp;A &gt; Allow Anonymous questions. Meanwhile, anonymous polls are disabled by default but are a toggle switch away during the creation process.</p><p>These settings reset every meeting. Anonymous questions and polls in Google Meet are rolling out now and will be widely launched in the coming weeks. Availability is as follows:</p><h3>Q &amp; As</h3><p>Available to Google Workspace Essentials, Business Standard, Business Plus, Enterprise Starter, Enterprise Essentials, Enterprise Standard, Enterprise Plus, Teaching and Learning Upgrade, Education Plus and Nonprofits, as well as legacy G Suite Business customersNot available to Google Workspace Business Starter, Education Fundamentals, Education Standard, Frontline customers, or legacy G Suite Basic customers</p><h3>Polls</h3><p>Available to Google Workspace Essentials, Business Standard, Business Plus, Enterprise Starter, Enterprise Essentials, Enterprise Standard, Enterprise Plus, Teaching and Learning Upgrade, Education Plus and Nonprofits, as well as legacy G Suite Business customers.</p><p>Also available to Google Workspace Individual usersNot available to Google Workspace Business Starter, Education Fundamentals, Education Standard, Frontline customers, or legacy G Suite Basic customers</p><p>Source: <a href=\"https://dream-space-the-news.blogspot.com/2022/07/google-meet-adding-support-for.html#\">https://9to5google.com</a></p>', NULL, NULL, 'publish', 'public', 1, 1, 'post', NULL, 3, 3, 'image31.jpg', NULL, '', 'open', 0, NULL, '2022-10-17 00:59:47', '2022-10-17 00:59:47'),
(32, 'How To Make Alexa Your Preferred Hands-Free Voice Assistant On Your Android Phone', 'how-to-make-alexa-your-preferred-hands-free-voice-assistant-on-your-android-phone', NULL, '<p>As an Android phone user, it&apos;s almost second nature to go right to using Google Assistant. That&apos;s because Google has gone to great lengths to make its digital assistant so helpful that we love using it. But what if you use Alexa on all your smart speakers and would like to use it on your phone too? You&apos;re in luck. We can help you talk to Alexa hands-free on your phone.How to use Alexa, hands-free, on your Android phoneWhile Google Assistant is generally the default option on all of the best Android smartphones, it isn&apos;t the only voice assistant on the market. Many of the top smart speakers use Amazon&apos;s Alexa to help you out. But before we do that, ensure you have downloaded and set up the Alexa app on your phone if you haven&apos;t already. Here&apos;s how you can use that familiar helper on your phone too.1. Swipe down twice, or once with two fingers, on the notification bar of your Android smartphone and tap on the gear icon</p><p><img src=\"\"../../../../storage/images/image58.jpg\"></p><p>After selecting Amazon Alexa, you will see a pop-up saying, \"The assistant will be able to read your information about apps in use on your system, including information visible on your screen or accessible within the apps.\" If you are willing to allow Alexa to have that kind of access, then tap on OK. Alexa can now be with you everywhere you go. Google Assistant is a really great digital assistant, and so is Alexa. Whether your home is full of Echo Dots, the massive Echo Show 15, Fire TV, or other excellent Alexa devices, having the voice assistant you are most familiar with accessible hands-free on your phone just makes sense. Now the next time you need to add something to your Amazon Shopping list, you can just ask your phone. © Provided by Android Central Samsung Galaxy S22 Finding Alexa in the Galaxy The Samsung Galaxy S22 is a fantastic smartphone for many reasons from the cameras to the impressive performance. While it may have Google Assistant and Bixby onboard, Alexa is more than ready to take their place.</p>', 'How to make Alexa your preferred hands-free voice assistant on your Android phone', NULL, 'publish', 'public', 1, 1, 'post', NULL, 2, 1, 'image32.jpg', NULL, '', 'open', 0, NULL, '2022-10-29 02:56:54', '2022-10-29 02:56:54'),
(33, 'Tiktok Has Been Accused Of ‘Aggressive’ Data Harvesting. Is Your Information At Risk?', 'tiktok-has-been-accused-of-aggressive-data-harvesting-is-your-information-at-risk', '<p>Cybersecurity experts have warned Australian TikTok users that the Chinese government could use the app to harvest personal information, from in-app messages with friends to precise device locations.</p>', '<p>The warnings follow a report by Australian-US cybersecurity firm Internet 2.0, which found the most popular social media app of the year collects &ldquo;excessive&rdquo; amounts of information from its users.</p><p>Here&rsquo;s what you need to know about TikTok&rsquo;s data harvesting, and how to keep your information safe.</p><h3>What&rsquo;s different about the way TikTok collects data?</h3><p>TikTok&rsquo;s data collection methods include the ability to collect user contact lists, access calendars, scan hard drives including external ones and geolocate devices on an hourly basis.</p><p>&ldquo;When the app is in use, it has significantly more permissions than it really needs,&rdquo; said Robert Potter, co-CEO of Internet 2.0 and one of the editors of the report.</p><p>&ldquo;It grants those permissions by default. When a user doesn&rsquo;t give it permission &hellip; [TikTok] persistently asks.</p><p>&ldquo;If you tell Facebook you don&rsquo;t want to share something, it won&rsquo;t ask you again. TikTok is much more aggressive.&rdquo;</p><p>The report labelled the app&rsquo;s data collection practices &ldquo;overly intrusive&rdquo; and questioned their purpose.</p><p>&ldquo;The application can and will run successfully without any of this data being gathered. This leads us to believe that the only reason this information has been gathered is for data harvesting,&rdquo; it concluded.</p><p>Most of the concern in the report focuses on permissions sought on Android devices, because Apple&rsquo;s iOS significantly limits what information an app can gather. It has a justification system so that if a developer wants access to something it must justify why this is required before it is granted.</p><p>&ldquo;We believe the justification system iOS implements systematically limits a culture of &lsquo;grab what you can&rsquo; in data harvesting, &ldquo; the report states.</p><h3>Does TikTok have connections with the Chinese government?</h3><p>TikTok is owned by the Chinese multinational internet company ByteDance, which is headquartered in Beijing. Founder Zhang Yiming sits at No. 28 on Bloomberg&rsquo;s billionaires index.</p><p>Advertisement<br>ByteDance has denied a connection to the Chinese government in the past, and called the claim &ldquo;misinformation&rdquo; after various leaks suggested it censors material that does not align with Chinese foreign policy aims or mentions the country&rsquo;s human rights record.</p><p>&ldquo;They are consistent in saying their app doesn&rsquo;t connect to China, isn&rsquo;t accessible to Chinese authorities and wouldn&rsquo;t cooperate with Chinese authorities,&rdquo; Potter said.</p><p>But he said Internet 2.0&rsquo;s research found &ldquo;Chinese authorities can actually access device data&rdquo;. By sending tracked bots to the app, Internet 2.0 &ldquo;consistently saw &hellip; data geolocating back to China&rdquo;.</p><p>Potter has said it wasn&rsquo;t clear what data was being sent, just that the app was connecting to Chinese servers.</p><p>This month TikTok Australia admitted its staff in China were able to access Australian data.</p><p>&ldquo;Our security teams minimise the number of people who have access to data and limit it only to people who need that access in order to do their jobs,&rdquo; Brent Thomas, the company&rsquo;s Australian director of public policy, wrote in a letter. The letter was in response to questions from Senator James Paterson, the opposition&rsquo;s cyber security and foreign interference spokesperson. Thomas said Australian data had never been given to the Chinese government.</p><h3>Are you at risk?</h3><p>Under China&rsquo;s national security laws Chinese companies are, upon request from the government, required to share access to data they collect.</p><p>&ldquo;You&rsquo;re in a different digital ecosystem when you&rsquo;re on a mainstream Chinese app,&rdquo; Potter said. And &ldquo;who you are&rdquo; may determine the &ldquo;level of risk&rdquo; you are taking.</p><p>At an individual level, the average user might not be at immediate risk, Potter said. &ldquo;But if you&rsquo;re involved in something more sensitive or discussing topics that are sensitive &hellip; you&rsquo;ve become very interesting to them very quickly.&rdquo;</p><p>A dissident in the Chinese diaspora community, or a critic of the Chinese government, might be &ldquo;extremely concerned about their personal cyber security&rdquo; on TikTok, Paterson said.</p><p>TikTok told a 2020 Senate committee on foreign interference on social media that any request for Australian user data would need to go through a mutual legal assistance treaty process.</p><p>Other governments also use their national security laws to gain access to user data from TikTok. TikTok publishes a half-yearly transparency report for data requests from governments.</p><p>China is not on the list of countries, but the list reveals Australian governments in the second half of 2021 made 51 requests for data related to 57 user accounts, with TikTok handing over data 41% of the time. The US made 1,306 requests for 1,003 accounts, with data handed over 86% of the time.</p><h3>How can I keep my data safe?</h3><p>TikTok is now the most downloaded mobile entertainment app in Australia, with 7.38 million users over the age of 18.</p><p>If you decide to keep using TikTok, Potter suggests being &ldquo;specific and granular about the level of permissions shared with the app&rdquo;.</p><p>Set permissions manually via in-app settings and in the device&rsquo;s settings. Tom Kenyon, a director of Internet 2.0, also urged users to monitor those permissions regularly. &ldquo;In any update, they can change access to permissions. It&rsquo;s not set and forget.&rdquo;</p><p>Potter said users should continue to &ldquo;ignore requests for sharing information&rdquo;. He also urged young people to avoid using TikTok for &ldquo;general messaging&rdquo;.</p><p>&ldquo;If you want to share videos and look at cats, sure, go your hardest. If you&rsquo;re going to have a conversation with your friends about your sexual orientation, or human rights, I&rsquo;d be very wary.&rdquo;</p><p>Kenyon said young people just starting their careers should think beyond the short term.</p><p>Australian artist Kira Puru<br>Kira Puru: the 10 funniest things I have ever seen (on the internet)<br>Read more<br>He also urged senior public servants, public officials and members of parliament to &ldquo;delete TikTok and other social media&rdquo;. While the data already collected will not disappear from TikTok&rsquo;s database, deleting the application will stop data collection into the future. If they are wanting to continue activity across platforms, Kenyon suggested &ldquo;a separate, dedicated phone&rdquo;.</p><h3>Should TikTok be banned?</h3><p>Kenyon said that as it is an &ldquo;avenue for data to flow to China &hellip; I absolutely think [TikTok] should be banned&rdquo;.</p><p>But Potter said he is &ldquo;very rarely in favour of bans&rdquo;.</p><p>&ldquo;I am in favour of better regulation.&rdquo;</p><p>Potter said Australia must be clear &ldquo;that we expect social media companies operating in Australia to respect our norms of privacy and freedom of speech&rdquo;.</p><p>&ldquo;They need to be clear about how they operate. And if caught lying consistently, we need to have some way of holding those companies to account.</p><figure class=\"image\"><img src=\"../../../../storage/images/example-4220i.jpg\" alt=\"\" width=\"620\" height=\"411\"><figcaption>CaptionCyber security minister Clare O&rsquo;Neil says she is &lsquo;certainly&rsquo; concerned by the data collection practices of some apps. Photograph: Darren England/AAP</figcaption></figure><p>The federal minister for home affairs and cyber security, Clare O&rsquo;Neil, said in a statement that the Australian government &ldquo;has this report and has been well aware of these issues for some years&rdquo;.</p><p>&ldquo;Australians need to be mindful &hellip; that they are sharing a lot of detailed information about themselves with apps that aren&rsquo;t properly protecting that information.</p><p>&ldquo;I hope it concerns Australians because it certainly concerns me.&rdquo;</p><p>Australian influencers have vowed to stay on the app despite concerns about Chinese data harvesting.</p><p>The Internet 2.0 report will be presented on Monday to a US Senate hearing on TikTok. With 142.2 million users in North America, the US is &ldquo;obviously the dominant market for this app.&rdquo;</p><p>&ldquo;I would expect TikTok will come under very hard questions about how the app operates,&rdquo; Potter said.</p><h3>What does TikTok say about the report?</h3><p>TikTok has rejected the Internet 2.0 report as &ldquo;baseless&rdquo;.</p><p>A TikTok spokesperson said: &ldquo;The TikTok app is not unique in the amount of information it collects ... We collect information that users choose to provide to us and information that helps the app function, operate securely, and improve the user experience.</p><p>&ldquo;The IP address is in Singapore, the network traffic does not leave the region, and it is categorically untrue to imply there is communication with China. The researcher&rsquo;s conclusions reveal fundamental misunderstandings of how mobile apps work, and by their own admission, they do not have the correct testing environment to confirm their baseless claims.&rdquo;</p><p><em>With Josh Taylor</em></p><p>Sumber: <a href=\"https://www.theguardian.com/technology/2022/jul/19/tiktok-has-been-accused-of-aggressive-data-harvesting-is-your-information-at-risk\" target=\"_blank\" rel=\"noopener\">the Guardian</a></p>', 'Cybersecurity experts have warned Australian TikTok users that the Chinese government could use the app to harvest personal information, from in-app messages with friends to precise device locations.', 'TikTok, Social Media', 'publish', 'public', 1, 1, 'post', NULL, 2, 1, 'image33.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 18:36:36', '2022-11-02 18:36:36'),
(34, 'The Company Behind Vespa Built A Cargo Robot That Follows You Around', 'the-company-behind-vespa-built-a-cargo-robot-that-follows-you-around', '<p>The company behind Vespa built a cargo robot that follows you around.</p>', '<p>Ahen an unknown printer took a galley of type and their scrambled imaketype specimen book has follorrvived not only fiver centuriewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>Travel orem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a gallery Followe yof type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronics are o nic typesetting, remaining essentially unchanged.</p><p>Mravel orem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galleyof typed scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electro nic typesetting, remain ing essentially unchanged.</p><p>Struggling to sell one multi-million dollar home currently on the market won&rsquo;t stop actress and singer Jennifer Lopez from expanding her propestate holdings an eight-plus acre estate in Bel-Air anchored by a Struggling to sell one multi-million dollar home uiurrently on the market won&rsquo;t stop actress and singer Jennifer.</p><h3>Middle Post Heading</h3><p><img class=\"figure-img img-fluid\" src=\"http://localhost:8000/storage/images/34.jpg\" alt=\"\" width=\"640\" height=\"427\"></p><p>Our should never complain, complaining is a weak emotion, you got life, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success, I can. Look at the sunset, life is amazing, life is beautiful, life is what A federal government initiated report conducted by the.</p>', 'The company behind Vespa built a cargo robot that follows you around', 'Politics, News', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image34.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:21:18', '2022-11-02 21:21:18');
INSERT INTO `posts` (`id`, `post_title`, `post_name`, `post_summary`, `post_content`, `meta_description`, `meta_keyword`, `post_status`, `post_visibility`, `post_author`, `post_language`, `post_type`, `post_guid`, `post_hits`, `like`, `post_image`, `post_image_meta`, `post_mime_type`, `comment_status`, `comment_count`, `post_source`, `created_at`, `updated_at`) VALUES
(35, 'Are You Ready For Discover Sea Diving Position Fall Nation Area Down', 'are-you-ready-for-discover-sea-diving-position-fall-nation-area-down', NULL, '<p>Ahen an unknown printer took a galley of type and their scrambled imaketype specimen book has follorrvived not only fiver centuriewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>Travel orem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a gallery Followe yof type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronics are o nic typesetting, remaining essentially unchanged.</p><p>Mravel orem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galleyof typed scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electro nic typesetting, remain ing essentially unchanged.</p><blockquote><p>when an unknown printer took a galley of type and scrambled it to make a type area specimen book It has survived not only five centuries.but also the leap introduce electronic typesetting, remaining essentially unchanged.</p><p>Willum Skeener</p></blockquote><p>Struggling to sell one multi-million dollar home currently on the market won&rsquo;t stop actress and singer Jennifer Lopez from expanding her propestate holdings an eight-plus acre estate in Bel-Air anchored by a Struggling to sell one multi-million dollar home uiurrently on the market won&rsquo;t stop actress and singer Jennifer.</p><h3>Middle Post Heading</h3><p>Our should never complain, complaining is a weak emotion, you got life, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success, I can. Look at the sunset, life is amazing, life is beautiful, life is what A federal government initiated report conducted by the.</p><p>Prom should never complain, complaining is a weak emoti you got life, we breathing, we blessed. Surround yourself with an gels. They never said winning.</p><ul><li>Pasting their cartoon to form over bags</li><li>Certified emergency medical technician was</li><li>Galaxy&rsquo;s Edge the best thing about</li><li>Phone owner uses</li></ul><p>Prom should never complain, complaining is a weak emoti you got life, we breathing, we blessed. Surround yourself with an gels. They never said winning.Prom should never complain, com plaining is a weak emoti you got life, we breathing, we blessed urround yourself with angels. They never said winning.</p><p>Our should never complain, complaining is a weak emotion, you got life, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success, I can. Look at the sunset, life is amazing, life is beautiful, life is what A federal government initiated report conducted by the.</p><h3>Success is how high you bounce when you hit bottom</h3><p>Our should never complain, complaining is a weak emotion, you gotlife, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success I can. Look at the sunset.Nmply dummy text of the printing and typ esetting industry. Lorem Ipsum has been the industry&rsquo;s st andard dummy text ever since the 1500s, when an unknown printer took a galley of type andse aerr crambled it to make a type specimen book.</p><p>Our should never complain, complaining is a weak emotion, you gotlife, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success I can. Look at the sunset.Nmply dummy text of the printing and typ esetting industry. Lorem Ipsum has been the industry&rsquo;s st andard dummy.</p><ul><li>Crisp fresh iconic elegant timeless clean perfume</li><li>Neck straight sharp silhouette and dart detail</li><li>Machine wash cold slim fit premium stretch selvedge denim comfortable low waist</li></ul><p>Our should never complain, complaining is a weak emotion, you gotlife, we breathing, we blessed. Surround yourself with angels. They never said winning was easy. Some people can&rsquo;t handle success I can. Look at the sunset.Nmply dummy text of the printing and typ esetting industry. Lorem Ipsum has been the industry&rsquo;s st andard dummy.</p><p>&nbsp;</p>', 'Ahen an unknown printer took a galley of type and their scrambled imaketype specimen book has follorrvived not only fiver centuriewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lifestyle, Adventure', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image35.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:34:02', '2022-11-02 21:34:02'),
(36, 'Eum maiores odit minima ea sint eaque accusantium.', 'eum-maiores-odit-minima-ea-sint-eaque-accusantium', '<p>Expedita quidem fugiat quas quibusdam nulla aperiam et fugit. Saepe molestiae et animi ratione ipsam ab aut. Dolorem sit alias illo et qui velit.</p>', '<p>Amet enim voluptatibus omnis quos soluta ullam. Maiores sed quasi voluptatem eveniet nemo. Suscipit facilis exercitationem modi eveniet.</p><p>Adipisci hic voluptas neque tempore sint rerum. Ut ut quod dolores eveniet aliquam. Et amet voluptas corrupti omnis libero est at consequatur.</p><p>Autem voluptas animi dolores corporis. Minus deserunt sint natus. Sit omnis architecto quibusdam non omnis rem. Quam ut libero porro ipsam similique.</p><p>Nihil animi earum et qui possimus quia. Nobis aut quo debitis est.</p><p>Fugiat et aspernatur dicta eveniet ipsa voluptatem. Eveniet et quia dolorum pariatur vel consectetur fugiat.</p>', 'Eum blanditiis voluptatem aliquam repellat culpa rerum consequatur.', 'eius, aliquam, reprehenderit', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image36.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:39:01', '2022-11-02 21:39:01'),
(37, 'Rerum molestias et consectetur fuga eos itaque et.', 'rerum-molestias-et-consectetur-fuga-eos-itaque-et', '<p>Delectus et nihil dolorem nihil odio rerum. Inventore natus unde voluptas eligendi qui sequi hic. Quo suscipit debitis et. Eum voluptatibus ab minus amet perferendis necessitatibus nam. Cupiditate quo fuga et porro.</p>', '<p>Et perferendis necessitatibus molestiae inventore in et quo. Et velit sit optio at magni quidem consequatur. At voluptate voluptatem autem consectetur harum voluptatibus. Nihil perspiciatis ipsa ut ullam quis distinctio consequuntur.</p><p>Natus laudantium nulla suscipit qui autem. Ad praesentium odit voluptatem doloribus eaque officiis. Assumenda soluta non dicta eum. Maxime quam quia inventore distinctio. Sint et soluta ad nemo sed.</p><p>Commodi dicta soluta recusandae possimus et. Veniam dignissimos fugit rem perferendis consequatur. Recusandae omnis et atque minus tempore perferendis quos aut.</p><p>Et architecto cumque aut praesentium. Soluta saepe id suscipit iste sunt quas. Rerum est suscipit molestiae debitis dolorum impedit harum beatae. Nobis sequi qui quia fugit.</p><p>Minus totam vel incidunt voluptatum illo laborum consectetur nam. Quae quia qui repellendus vel pariatur. Id quis cupiditate ex quia. Reprehenderit ut cum nobis quo deleniti pariatur mollitia.</p>', 'Ea natus aut veritatis ut odit perspiciatis.', 'harum, et, quae', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image37.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:41:49', '2022-11-02 21:41:49'),
(38, 'A pariatur ipsa soluta consectetur est eum dignissimos.', 'a-pariatur-ipsa-soluta-consectetur-est-eum-dignissimos', '<p>Quam vero dolorum expedita rerum expedita. Voluptatem fuga a magnam magnam. Labore praesentium odio deserunt tempora.</p>', '<p>Quam ab ex amet laborum eius. Quos provident est labore non omnis delectus. Est iure quia incidunt et. Sit exercitationem rerum occaecati.</p><p>Consequatur dicta alias totam delectus quae saepe eaque aut. Aut itaque debitis quasi est. Mollitia explicabo quaerat quas quasi laborum dolores.</p><p>Esse soluta id rerum nihil doloremque optio explicabo nisi. Tenetur est tenetur repellendus tenetur dolor aut. Suscipit eos corrupti tempora reprehenderit accusamus delectus rerum. Et et dolorem optio repellat.</p><p>Magnam sit libero laboriosam animi voluptatem quos quia. Dolore ea facilis officiis nulla dolor modi. Tempora libero debitis esse fuga assumenda porro aut.</p><p>Nihil sint placeat asperiores beatae similique rem eum. Velit sit itaque minus ut totam. Aspernatur consectetur et sed temporibus accusamus. Consectetur omnis error repellendus nam.</p>', 'Cumque quae omnis a culpa necessitatibus non nihil vitae.', 'ducimus, itaque, quia', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image38.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:48:13', '2022-11-02 21:48:13'),
(39, 'Repellat quam perferendis a autem at distinctio libero.', 'repellat-quam-perferendis-a-autem-at-distinctio-libero', '<p>Vitae ut rem cupiditate sed vitae porro tempore aut. Quae perspiciatis est sed et omnis. Quibusdam incidunt temporibus error eum autem. Et molestiae nemo consectetur exercitationem.</p>', '<p>Quas explicabo quas quae ea dolor ipsa ea. Soluta minus nesciunt delectus quo necessitatibus ut. Quia numquam dolorem minima aliquid.</p><p>Illo cupiditate debitis temporibus quidem quia. Unde magni impedit qui dicta aut ut voluptas. Commodi est a rerum rem et aperiam accusamus.</p><p>Dolores ipsa placeat incidunt. Est laudantium similique quia est eius ipsa at. Consequatur consequatur enim eligendi minima dolores est. Ex id praesentium cumque ea laborum quibusdam aut.</p><p>Architecto illum vel voluptatem est. Sed deserunt quia et vero nulla libero. Et sapiente nihil et sed quia voluptatum qui. Amet voluptatem iste repudiandae minus quia.</p><p>Ad iste aliquam accusamus ut sapiente nostrum harum. In id aperiam id ut. Laboriosam voluptatem ea et non omnis.</p>', 'Non doloribus debitis molestias illo delectus.', 'illo, qui, qui', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image39.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:51:19', '2022-11-02 21:51:19'),
(40, 'Repellendus est est velit.', 'repellendus-est-est-velit', '<p>Occaecati adipisci labore natus itaque dolores et molestiae provident. Ut quo sed eos sequi modi neque saepe sit. Nihil facilis voluptatem qui fuga.</p>', '<p>Dignissimos hic ab corporis aspernatur earum. Quod veniam in voluptates ea ea velit. Voluptatibus quasi aspernatur ratione.</p><p>Occaecati odio nihil sapiente officia qui. Neque et temporibus reprehenderit non. Quam labore aliquam quas iusto inventore. Et et et suscipit deleniti blanditiis voluptatum.</p><p>Expedita quas deserunt sapiente recusandae. Provident velit architecto dolor. Ad omnis beatae nobis ut voluptas consequatur sint iusto. Nisi ipsa aut enim perferendis.</p><p>Quis ut dolorem et laudantium. Maiores distinctio vel quas voluptatem. Quaerat molestiae tempora autem. Reprehenderit optio commodi nesciunt ducimus.</p><p>Optio illum a asperiores beatae. Et quasi debitis minus velit et. Similique voluptatem pariatur dolores perspiciatis vel. Magnam autem consequuntur aut accusamus. Aliquid dolorem deserunt maxime illum explicabo.</p>', 'Quidem tempora praesentium vel necessitatibus.', 'incidunt, ea, expedita', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image40.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:54:06', '2022-11-02 21:54:06'),
(41, 'Porro enim debitis natus.', 'porro-enim-debitis-natus', '<p>Quia impedit doloribus harum blanditiis. In voluptatem aliquam sed id reiciendis quis.</p>', '<p>Consequatur nulla qui sit. Harum enim molestiae et illum labore dolores fuga aperiam. Voluptatibus qui sint culpa. Autem aspernatur quaerat ab error amet deleniti provident qui.</p><p>Et illo sunt assumenda. Nemo est id aliquam quos vitae omnis debitis. Tenetur recusandae vel ullam pariatur provident perspiciatis. Illo excepturi et voluptatibus.</p><p>Commodi enim sapiente quod. Assumenda voluptas facere vitae ex et omnis. Reiciendis et amet quidem cupiditate voluptates omnis sint.</p><p>Vitae atque dolor dignissimos inventore quos minus vel. Sapiente dignissimos aut omnis corrupti reprehenderit enim iure. Modi similique sit ut cupiditate explicabo inventore quasi.</p><p>Dolorum in voluptatem vel inventore totam. Inventore alias vitae mollitia reprehenderit ut eos. Velit ea dicta voluptatem harum animi. Nihil amet voluptatem aperiam quia doloremque.</p>', 'Officiis nesciunt excepturi quasi in.', 'explicabo, fuga, cum', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image41.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:56:54', '2022-11-02 21:56:54'),
(42, 'Sit delectus et cum ea voluptatem omnis porro.', 'sit-delectus-et-cum-ea-voluptatem-omnis-porro', '<p>Sequi officia iure mollitia tenetur occaecati. Excepturi dicta sed consequatur reiciendis ut incidunt. In non omnis nulla recusandae dicta voluptas.</p>', '<p>Amet iure voluptas quibusdam enim pariatur. Debitis delectus delectus dolores itaque quasi. Exercitationem excepturi et dolores accusamus est voluptatem architecto. Qui natus odio dolor sunt aut quidem explicabo.</p><p>Facilis illo eaque necessitatibus debitis aut. Ex et aliquid consequatur et. Distinctio tempore hic ducimus dolores. Temporibus sit tenetur suscipit enim deserunt ipsam.</p><p>Provident sunt iste tempore fugit asperiores. Aliquam ad eos voluptas est quia. Est voluptatem officiis pariatur dolor. Beatae perferendis est aut odit labore.</p><p>Et dicta accusantium quo impedit fuga. Vitae porro hic mollitia sed debitis. Porro voluptas ducimus iste voluptatem facere. Fugiat illo dolorum sunt omnis quod eveniet maiores.</p><p>Aliquam maiores provident sint ut maiores voluptatem dolor. Qui aut cumque ut neque laudantium.</p>', 'Natus ea est nostrum veniam veritatis facilis deleniti ut.', 'rem, qui, qui', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image42.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 21:59:02', '2022-11-02 21:59:02'),
(43, 'Velit eum quas at deleniti distinctio eum.', 'velit-eum-quas-at-deleniti-distinctio-eum', '<p>Labore itaque ullam quo laudantium laudantium omnis tempore et. Accusantium provident aut voluptatibus. Minus ab sit ad. Reiciendis accusantium laborum deleniti.</p>', '<p>Fugiat pariatur eaque iusto nobis enim odit maiores exercitationem. Qui non corporis adipisci perspiciatis qui numquam expedita. Ipsa quod quos esse at enim. Saepe voluptatibus iusto placeat ratione pariatur voluptate ipsum.</p><p>Odio dolor illo aliquid. Eius enim numquam blanditiis aut maxime numquam optio. Ipsa assumenda cupiditate inventore aut eaque id qui.</p><p>Aperiam eum porro ut velit dolor nisi explicabo. Quia quia suscipit non labore. Voluptatum beatae vitae laborum itaque officiis.</p><p>Possimus fugiat possimus et dicta. Pariatur aut eos laborum ad repellat iusto. Veritatis architecto vitae quod error. Esse similique quos labore est.</p><p>In vero vel deleniti itaque. Est ea doloremque laudantium quod. Voluptas blanditiis et impedit modi nemo exercitationem dolorem. Fugit pariatur similique maiores quasi.</p>', 'Ea saepe consequatur error.', 'qui, distinctio, aut', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image43.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 22:03:36', '2022-11-02 22:03:36'),
(44, 'Illo sed quam tempore accusamus sit esse iure.', 'illo-sed-quam-tempore-accusamus-sit-esse-iure', '<p>Alias excepturi maxime at modi. Sed eveniet dolorem vel velit totam fugit sed. Impedit non soluta numquam vitae architecto suscipit minima. Consectetur itaque similique aut minus qui iure. Eligendi inventore totam qui occaecati.</p>', '<p>Tempore quasi quia veniam quia molestias. Dolor voluptate id veritatis dignissimos similique voluptatibus. Optio a et eligendi nulla. Ducimus et tenetur inventore ipsa natus. Voluptatum nisi qui soluta cumque.</p><p>Harum et tempora aperiam. Non et ut sequi odio ullam. Aut quo sint id voluptas eum nemo autem.</p><p>Facere eos earum accusantium modi harum. Illo eligendi dolores hic et aut iusto. Suscipit sed qui illo impedit sunt. Inventore beatae modi sint sunt cupiditate dolorum doloremque earum.</p><p>Sit eos in maiores quaerat qui. Et dolorem iste laudantium neque est ipsa. Quasi natus expedita dignissimos incidunt quia praesentium non cum.</p><p>Cumque voluptatum delectus eligendi vel odit. Odit quaerat veritatis sed iure perferendis veniam. Eligendi eos in repellat dicta ex dolor.</p>', 'Laudantium porro laudantium vel a ut vitae.', 'hic, fuga, nihil', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image44.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 22:18:36', '2022-11-02 22:18:36'),
(45, 'Sed rerum rerum eius eos.', 'sed-rerum-rerum-eius-eos', '<p>Velit ea enim cumque consequatur in eum aliquid ratione. Architecto a ab numquam et. Ipsam nihil consequatur corrupti voluptatem.</p>', '<p>Reprehenderit nostrum dolorum cum ut. Officia et saepe sed nostrum est dolor quaerat. Repellat dicta recusandae eaque cum et. Animi ea id alias numquam sint mollitia dolore.</p><p>Quis at explicabo quas officiis quae. Sit necessitatibus consectetur vitae quos illo quia. Est ut voluptas voluptatem facere.</p><p>Voluptatem excepturi dolores impedit aut dolore quod mollitia. Et tenetur iste repellat velit repellat iste et aut. Quis sunt saepe accusamus ipsam recusandae ullam.</p><p>Sit quos quasi atque tenetur ex quam. Ad architecto nihil quisquam facilis. Similique pariatur eum eligendi quod quam quia vel perferendis. Tempore necessitatibus nemo enim porro labore accusamus accusamus suscipit. Tempora perspiciatis est dolores sed voluptas sed temporibus nobis.</p><p>Error commodi porro dolorem aut non. Eveniet mollitia repellendus mollitia aperiam quod eos. Sed et numquam saepe aut dolor. Rem laborum et non consequuntur error.</p>', 'Magni voluptatem dolores voluptatem nesciunt.', 'velit, sit, ut', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image45.jpg', NULL, '', 'open', 0, NULL, '2022-11-02 22:21:46', '2022-11-02 22:21:46'),
(46, 'Possimus ea doloribus minus.', 'possimus-ea-doloribus-minus', '<p>Porro magnam perspiciatis omnis ut ut. Temporibus est neque et perspiciatis et. Hic facilis placeat veniam praesentium quae eius. Nesciunt quasi quia exercitationem. Deleniti quas et quam nihil sit sed quia occaecati.</p>', '<p>Nulla voluptas dolorem tempore consequuntur hic tempore nostrum deserunt. Nihil dignissimos vero repellat error officiis adipisci culpa odio. Voluptas et ea excepturi minima dignissimos exercitationem.</p><p>Ut molestiae sit assumenda aut similique quo autem. Aut at impedit eligendi exercitationem in et. Illum et non facilis magnam eos. Corrupti maiores voluptas labore dolorum est.</p><p>Quisquam consequatur minus veniam ex eos tempora ea. Qui dicta eos dolore cum.</p><p>Qui recusandae neque minus quis ut. Dicta exercitationem asperiores ab ab doloribus. Non consequatur quasi enim veritatis dolores et omnis. Corporis enim quaerat omnis eligendi.</p><p>Minus inventore et minima aut ut voluptates voluptas. Molestiae est aut molestias non eos necessitatibus voluptatem cupiditate. Non inventore fugit dolores dicta eum asperiores dignissimos. Error vel provident aut aperiam et. Fugiat ipsa quaerat ut earum omnis.</p>', 'Omnis asperiores sint officiis quidem nemo labore et veniam.', 'et, asperiores, tempore', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image46.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:12:45', '2022-11-03 01:12:45'),
(47, 'Nulla sunt qui laborum eaque.', 'nulla-sunt-qui-laborum-eaque', '<p>Voluptatem est quae doloribus quidem. Blanditiis enim molestiae iusto neque ut unde. Maiores quia quis harum voluptatum et. Quas rem modi fuga dolore nihil voluptas rerum.</p>', '<p>Possimus minus animi est dolores sapiente. Et quo asperiores dolores iure voluptatum voluptate modi. Eum sunt nobis aspernatur suscipit quibusdam quas ex.</p><p>Ratione et provident cumque. Totam id ratione modi molestiae. Quae occaecati est vitae ex incidunt dolor dolorem eius.</p><p>Mollitia fugiat suscipit ducimus animi maxime esse veritatis. Sint neque velit quia et soluta veniam illum fugiat.</p><p>Nulla sint error aut unde quas in qui. Voluptatem qui expedita aut nesciunt voluptate voluptatibus. Voluptatibus delectus ut voluptas et voluptatem rem numquam.</p><p>Ullam molestias eveniet officiis. Ex porro qui sit nam dolor amet aliquam. Ratione dolores laudantium rerum. Sint non natus dolores esse.</p>', 'Atque occaecati odio blanditiis praesentium ratione.', 'consequuntur, earum, nulla', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image47.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:15:48', '2022-11-03 01:15:48'),
(48, 'Laborum omnis magni doloribus aut eum voluptatem.', 'laborum-omnis-magni-doloribus-aut-eum-voluptatem', '<p>Placeat quos officia repudiandae sequi recusandae. Aut voluptatibus laudantium quis alias sapiente voluptas voluptatem. Ea assumenda enim explicabo sit fugit. Ut ea qui quidem vero consectetur aut dolore. Voluptas explicabo occaecati aut eius.</p>', '<p>Rerum laboriosam at laborum magnam. Odio in et nulla. Rerum id modi ea quidem et nostrum eos. Doloribus rerum ex aut. Aperiam mollitia quisquam voluptas provident ea.</p><p>Debitis id mollitia molestias neque. Vitae aut et voluptatibus officia ut reiciendis. Non eveniet debitis laboriosam explicabo.</p><p>Sunt tempore consequatur amet. Sint et dolor ut modi aliquid quis.</p><p>Libero enim explicabo odio dolor dolore culpa quis ad. Atque similique dolorum iusto delectus velit nam. Nemo vel ullam velit quo. Quia quas ratione qui ipsa minus voluptatum et consequuntur.</p><p>Doloribus enim accusamus ut rerum nulla deleniti et. Omnis in perspiciatis minima dolor dolor. Qui illo et est asperiores rem.</p>', 'Quas voluptatem ut fugiat autem.', 'et, quas, cum', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image48.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:20:01', '2022-11-03 01:20:01'),
(49, 'Et provident in labore et quia.', 'et-provident-in-labore-et-quia', '<p>Soluta ullam et non tempora vel est laborum. Odio dicta aut consectetur aperiam expedita assumenda. Voluptatem maxime saepe provident eligendi eligendi.</p>', '<p>Provident perferendis eos maiores dolore quo sint rerum qui. Natus facilis ut voluptate quia. Delectus eligendi occaecati repudiandae illo sed dignissimos et. Veniam debitis eaque praesentium quasi facilis ipsa.</p><p>Consequuntur sed omnis molestiae amet tempore. Vel consequatur quisquam velit voluptatum aliquam porro. Molestiae consequatur dolor architecto aut. Maxime quidem reprehenderit sit facere et amet sit nesciunt. Magnam aut id officia esse laudantium.</p><p>Porro ea quisquam dolores a quidem ex quas. Assumenda non repudiandae aut at id tempore. Quia voluptas perspiciatis incidunt dolor ut similique neque. Dignissimos voluptatem minima et praesentium.</p><p>Culpa aut deleniti ut velit consequatur aut sint minus. Eum ea exercitationem aut sed sint. Laudantium sint rerum sint. Aut exercitationem doloribus sed vel deserunt voluptatibus repellendus.</p><p>Corporis ea qui voluptates tempore voluptatem. Ipsa fugiat debitis quibusdam hic. Quia quisquam quod commodi est.</p>', 'Unde ullam voluptas repellendus dolorum ducimus voluptatem iusto.', 'in, et, et', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image49.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:21:54', '2022-11-03 01:21:54'),
(50, 'Amet delectus inventore sunt minus expedita eligendi.', 'amet-delectus-inventore-sunt-minus-expedita-eligendi', '<p>Nihil accusamus dolor repudiandae nulla vero sed quos. Distinctio laudantium sit necessitatibus quae non quo. Ratione soluta facere corporis sit ipsum impedit corrupti. Inventore delectus sed magnam autem.</p>', '<p>Et qui ut quidem accusantium et. Reiciendis quia id et esse et qui. Asperiores et consectetur enim corrupti est quia. Quod adipisci et excepturi tempore deleniti.</p><p>Aut porro sequi autem accusantium praesentium enim voluptatem qui. Sunt alias itaque ratione reiciendis explicabo ullam. Et minus aut accusantium soluta libero.</p><p>Nam laudantium expedita officia ullam sit rerum. Quaerat omnis error dolorum unde quis. Dolor et aliquid cupiditate ullam ex rerum. Consectetur explicabo tenetur tempore porro laboriosam voluptas ea. Dolores cumque temporibus qui optio voluptas.</p><p>Eos consequatur rerum earum nulla sunt ut. Quis nulla veniam excepturi voluptas. Laudantium veritatis aut alias eaque debitis amet eos quam. Ea deserunt voluptas ullam rerum quia.</p><p>Quia et est quis sed quidem molestiae ut libero. Voluptas unde amet perferendis. Quae iusto ipsum at atque et laudantium veritatis.</p>', 'Et hic voluptas et soluta.', 'consequuntur, quia, autem', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image50.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:21:54', '2022-11-03 01:21:54'),
(51, 'Et et autem numquam ullam aut.', 'et-et-autem-numquam-ullam-aut', '<p>Minus iusto eum quia eum quam ipsam ad. Repellat harum suscipit et ut corrupti neque rerum ipsam. Cumque dolor nihil quis optio ad ratione voluptatem. Aperiam sed ratione est qui.</p>', '<p>Aut quam molestias voluptatem et iure. Rerum saepe aut quo quae consectetur voluptas. Vitae dolorem nihil reprehenderit qui. Quia minus eligendi est ea sed vitae.</p><p>Qui maxime fugit quo eos sapiente modi. Repudiandae eveniet minus cumque qui recusandae nostrum pariatur. Ipsa est autem nobis ratione. Enim sit ex nesciunt autem rerum totam aut quae.</p><p>Nostrum nulla minima sint iure rem aut. Adipisci amet consectetur qui qui. Qui ipsa in eum in. Enim quaerat temporibus aperiam ex modi repellat ipsum totam.</p><p>Quaerat necessitatibus nostrum maxime suscipit. Quisquam omnis voluptatibus temporibus quod recusandae debitis. Eaque esse sit qui sed ab.</p><p>Nostrum voluptas nam molestiae architecto. Maxime et iure est ex. Reiciendis consequatur corrupti minus voluptatem aut facere. Laudantium ut aliquid velit laudantium itaque quia.</p>', 'Modi ut rerum aspernatur vel aut sint.', 'sit, deleniti, eum', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image51.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 01:24:37', '2022-11-03 01:24:37'),
(52, 'How To Burn Calories With Pleasant Activities', 'how-to-burn-calories-with-pleasant-activities', '<p>How to Burn Calories with Pleasant Activities<br></p>', '<p>This oven-baked method will ensure your pork has a delicious crust and a perfectly cooked interior. Just follow these simple rules and prepare yourself to reconsider everything you know about this weeknight-friendly cut.</p><p>Pair this delicious dish with a risotto and a nice bottle of wine. This Italian favorite is easy to make and sure to impress your guests.</p><h3>Ingredients</h3><ul><li>2 cups half and half</li><li>1/4 cup limoncello</li><li>3 Tbsp granulated sugar</li><li>1/4 tsp vanilla extract</li><li>1/2 tsp finely grated lemon zest</li><li>1/8 tsp kosher salt</li><li>3 large eggs</li><li>Unsalted butter, for buttering the casserole dish</li><li>5 cups challah (about 8 oz)</li></ul><p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Sed ab iste laudantium repudiandae incidunt cum et.', 'est, ut, consequatur', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image52.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 20:59:03', '2022-11-03 20:59:03'),
(53, 'Doloribus odio qui repellat facilis maiores in maxime.', 'doloribus-odio-qui-repellat-facilis-maiores-in-maxime', '<p>Deleniti voluptate asperiores ut. Est molestiae illo quisquam. Ullam ab placeat quasi vero.</p>', '<p>Numquam ut dolor aspernatur omnis. Magnam et enim quae assumenda et. Est debitis itaque cum illo et odio. Vero molestiae harum qui nihil tempora voluptas.</p><p>Vitae tempora dolorem est rerum nobis tempore et. Qui at temporibus doloribus amet. Eos rem ullam aliquid eum laborum aut.</p><p>Ullam et facere ut doloremque molestias. Temporibus sint tempora est aut quasi natus accusamus. Dolorem aperiam ea voluptatibus aspernatur. Est exercitationem id fuga impedit earum voluptas laborum ex.</p><p>Exercitationem voluptas laudantium sed aspernatur dolores eum. Saepe omnis occaecati nemo iure consequuntur. Et qui qui sint aut ducimus.</p><p>Sunt est error nesciunt assumenda adipisci aperiam. Placeat maxime quidem omnis ut error. Aspernatur vel rem molestiae quia rerum fuga. Dolore consectetur nesciunt est laborum necessitatibus tempore. Mollitia minima libero consectetur.</p>', 'Aut quia corporis adipisci eveniet.', 'suscipit, consectetur, vero', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image53.jpg', NULL, '', 'open', 0, NULL, '2022-11-03 20:59:03', '2022-11-03 20:59:03'),
(54, 'Saepe voluptas quisquam repellendus eius.', 'saepe-voluptas-quisquam-repellendus-eius', '<p>Esse consequuntur consequuntur inventore enim nihil ea. Necessitatibus voluptatem est quaerat laboriosam fuga deserunt et. Rem consequatur hic quam perspiciatis natus. Earum explicabo ipsa sequi aliquam maiores vel eius.</p>', '<p>Asperiores inventore impedit facilis facilis corporis dicta. Ut et quia tenetur voluptates illum. Voluptatem deserunt odio commodi recusandae recusandae aut sed. Rem deleniti aut maiores sed optio ipsa tempora nostrum.</p><p>Aliquam non dolores voluptatibus nostrum quidem. Assumenda ea eos molestiae nam. Quia non nihil et est molestiae illo nostrum.</p><p>Nam est magni aut alias neque. Et ea exercitationem aspernatur. Magnam excepturi consequatur magnam mollitia ab nobis.</p><p>Non itaque recusandae fugiat molestiae corrupti alias aut. Totam quia dolores ut sint. Ipsam consequatur assumenda suscipit eos quas ea.</p><p>Eos nam voluptatem id rem. Qui inventore quo magnam aut qui provident. Autem ipsum esse cum quae ut consequatur. Inventore quas quibusdam eveniet assumenda libero et.</p>', 'Doloribus tenetur maxime laborum ut.', 'est, consequuntur, pariatur', 'publish', 'public', 1, 1, 'post', NULL, 0, 0, 'image54.jpg', NULL, '', 'open', 0, NULL, '2022-11-04 03:59:51', '2022-11-04 03:59:51'),
(55, 'Artificial Intelligence Crash Course 2023: A Comprehensive Guide To Ai', 'artificial-intelligence-crash-course-2023-a-comprehensive-guide-to-ai', NULL, '<p>Artificial Intelligence, or AI, is a rapidly growing field that is changing the way we live and work. From self-driving cars to intelligent virtual assistants, AI is transforming industries across the board. If you\\\'re looking to learn about AI, you\\\'re in the right place. In this comprehensive video course, we\\\'ll cover all the key topics in AI, including machine learning, neural networks, natural language processing, and more.</p>\r\n<p>First, let\\\'s start with the basics. What is AI? Simply put, AI refers to the ability of machines to perform tasks that typically require human intelligence, such as recognizing speech, making decisions, and solving problems. There are a number of different techniques used in AI, including machine learning, neural networks, and natural language processing.</p>\r\n<p>Machine learning is a subset of AI that involves training machines to learn from data. Essentially, a machine is given a large set of data and uses that data to identify patterns and make predictions. For example, a machine learning algorithm might be trained on a dataset of customer purchase histories to identify which products are most likely to be purchased together.</p>\r\n<p>Neural networks are another important technique in AI. Neural networks are modeled after the structure of the human brain and are designed to learn from data. They are particularly useful for tasks such as image recognition and natural language processing. Essentially, a neural network consists of a large number of interconnected nodes, or \"neurons,\" that work together to analyze data and make predictions.</p>\r\n<p>Natural language processing, or NLP, is another important area of AI. NLP refers to the ability of machines to understand and process human language. This includes tasks such as speech recognition, sentiment analysis, and language translation. NLP is particularly important for applications such as virtual assistants and chatbots, which rely on natural language input from users.</p>\r\n<p>Of course, these are just a few of the many techniques and applications of AI. In this video course, we\\\'ll dive deeper into each of these areas and explore how they are being used in real-world applications.</p>\r\n<p>One of the most exciting aspects of AI is its potential to transform industries across the board. For example, in healthcare, AI is being used to analyze medical images and diagnose diseases. In finance, AI is being used to detect fraud and predict market trends. And in manufacturing, AI is being used to optimize supply chains and improve quality control.</p>\r\n<p>But with great power comes great responsibility. As AI continues to advance, there are also concerns about its potential impact on society. For example, there are concerns about job displacement as AI takes over tasks that were previously performed by humans. There are also concerns about bias in AI systems, which can perpetuate existing social inequalities.</p>\r\n<p>In this video course, we\\\'ll explore both the potential and the challenges of AI. We\\\'ll look at how AI is being used to solve some of the world\\\'s most pressing problems, and we\\\'ll also examine the ethical implications of AI and how we can ensure that it is developed and used in a responsible way.</p>\r\n<p>Whether you\\\'re a complete beginner or an experienced practitioner, this video course is the perfect way to learn about AI. With engaging visuals, easy-to-understand explanations, and practical examples, you\\\'ll gain a deep understanding of the key concepts and applications of AI. So what are you waiting for? Sign up today and join the AI revolution!</p>', NULL, NULL, 'publish', 'public', 1, 1, 'video_url', NULL, 0, 0, 'image55.jpg', NULL, '', 'open', 0, 'https://www.youtube.com/watch?v=xabR5c0LsYQ', '2023-06-03 02:55:02', '2023-06-03 02:55:02'),
(56, 'Top 10 Amazing Future Technologies That Will Change Our World', 'top-10-amazing-future-technologies-that-will-change-our-world', NULL, '<p>In this video, we\'re going to take a look at 10 amazing future technologies that will change our world. From Sand batteries to AI image-generation, these technologies are poised to have a big impact on the way we live our lives.</p><p>So check out this video and learn about some of the most exciting technologies that will change our world in the future! From self-driving cars to implantable medical devices, these technologies are poised to have a big impact on the way we live our lives!</p><p>The future is here and it\'s amazing. In this video, I\'m going to show you the top 10 technologies that will change our world in the next 5 years. You will be so amazed by how much we have advanced over the past few years, you\'ll wonder why we don\'t live in a sci-fi movie! So sit back, relax and enjoy.</p><p>From VR to AI, from Drones to Self-driving cars, this video will make you dream about the future. Discover the top 10 technologies that will change our world and will give you a glimpse of what our kids can expect.</p>', NULL, NULL, 'publish', 'public', 1, 1, 'video_url', NULL, 0, 0, 'image56.jpg', NULL, '', 'open', 0, 'https://www.youtube.com/watch?v=-1ZFq5HUfzM', '2023-06-03 09:56:45', '2023-06-03 09:56:45'),
(57, 'Top 7 Technology Trends In 2023', 'top-7-technology-trends-in-2023', NULL, '<p>In this video TOP 7 Technology Trends in 2023. What kind of future technology should we expect? Let\'s talk about latest technology in 2023</p>', NULL, NULL, 'publish', 'public', 1, 1, 'video_url', NULL, 0, 0, 'image57.jpg', NULL, '', 'open', 0, 'https://www.youtube.com/watch?v=ZSiXZxVpVhs', '2023-06-03 09:58:20', '2023-06-03 09:58:20'),
(58, 'What Is 5G And How Does It Work? Ksat Explains', 'what-is-5g-and-how-does-it-work-ksat-explains', NULL, '<p>In this KSAT Explains, we breakdown what 5G means, what regulations are in place for the devices to be installed and what doctors are saying about the potential health risks associated with the technology.</p>', NULL, NULL, 'publish', 'public', 1, 1, 'video_url', NULL, 0, 0, 'image58.jpg', NULL, '', 'open', 0, 'https://www.youtube.com/watch?v=AMqkz79KrnM', '2023-06-03 09:59:17', '2023-06-03 09:59:17'),
(59, 'Mindfulness: Meditation 1 - Mindfulness Of Body And Breath', 'mindfulness-meditation-1-mindfulness-of-body-and-breath', NULL, '<p>A download of guided meditations aimed to complement the learnings found in Prof Mark William\'s and Dr Danny Penman\'s guide to freeing yourself from the stresses of everyday life. Containing all the meditations that are mentioned in the book this is an invaluable resource to cement their teachings on how to find Mindfulness, and how to keep it.</p>', NULL, NULL, 'publish', 'public', 1, 1, 'audio_embed', NULL, 0, 0, NULL, NULL, '', 'open', 0, '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/709659910&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/hachetteaudiouk\" title=\"Hachette Audio UK\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Hachette Audio UK</a> · <a href=\"https://soundcloud.com/hachetteaudiouk/meditation-1-mindfulness-of-body-and-breath\" title=\"Mindfulness: Meditation 1 - Mindfulness Of Body And Breath\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Mindfulness: Meditation 1 - Mindfulness Of Body And Breath</a></div>', '2023-06-04 04:36:43', '2023-06-04 04:36:43'),
(60, 'Soundhelix Song 1 Mp3', 'soundhelix-song-1-mp3', NULL, '<p>A download of guided meditations aimed to complement the learnings found in Prof Mark William\'s and Dr Danny Penman\'s guide to freeing yourself from the stresses of everyday life. Containing all the meditations that are mentioned in the book this is an invaluable resource to cement their teachings on how to find Mindfulness, and how to keep it.</p>', NULL, NULL, 'publish', 'public', 1, 1, 'audio_file', NULL, 0, 0, 'image60.jpg', NULL, '', 'open', 0, 'SoundHelix.mp3', '2023-06-04 04:41:08', '2023-06-04 04:41:08'),
(61, 'About', 'about', NULL, '<p style=\"text-align: left;\"><strong>Laramagz &ndash; Laravel News &amp; Blog CMS Script</strong> is a complete solution for any kind of News, Magazine and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 9 framework integration with the AdminLTE template.</p><p style=\"text-align: left;\">Laramagz is fully responsive for any device with four attractive templates. Laravel 9 PHP Framework is used to develop this system so Laramagz theme is ready to use, If you&rsquo;re a developer, you can also easy to modify theme. and front-end build websites based on Bootstrap.</p><p style=\"text-align: left;\">&nbsp;</p><div class=\"ratio ratio-16x9\"><iframe class=\"responsive-iframe\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/mRlP799y8B8\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', NULL, NULL, 'publish', 'public', 2, 1, 'page', NULL, 0, 0, NULL, NULL, '', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(62, 'Tentang', 'tentang', NULL, '<p style=\"text-align: left;\"><strong>Laramagz &ndash; Laravel News &amp; Blog CMS Script </strong>adalah solusi lengkap untuk semua jenis Portal Berita, Majalah, dan Blog. Cms ini Mencakup hampir semua yang Anda butuhkan. CMS (Content Mangement System) Administrator System atau Backend ini bisa anda gunakan integrasi framework Laravel 9 ini dengan template AdminLTE.</p><p style=\"text-align: left;\">Laramagz sepenuhnya responsif untuk perangkat apa pun dengan empat templat menarik. Laravel 9 PHP Framework digunakan untuk mengembangkan sistem ini sehingga tema Laramagz siap digunakan, Jika Anda seorang pengembang, Anda juga dapat memodifikasi tema dengan mudah. dan membangun situs web front-end berdasarkan Bootstrap.</p><p style=\"text-align: left;\">&nbsp;</p><div class=\"ratio ratio-16x9\"><iframe class=\"responsive-iframe\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/mRlP799y8B8\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', NULL, NULL, 'publish', 'public', 2, 2, 'page', NULL, 0, 0, NULL, NULL, '', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(63, 'حول', 'hol', NULL, '<p><strong>Laramagz - Laravel News &amp; Blog CMS Script</strong> هو حل كامل لأي نوع من بوابة الأخبار والمجلات والمدونات. يشمل هذا سم كل ما تحتاجه تقريبًا. يمكنك استخدام نظام إدارة CMS (نظام إدارة المحتوى) أو الواجهة الخلفية لتكامل إطار عمل Laravel 9 مع قالب AdminLTE.</p><p>Laramagz مستجيب تمامًا لأي جهاز بأربعة قوالب جذابة. يتم استخدام Laravel 9 PHP Framework لتطوير هذا النظام بحيث تكون سمة Laramagz جاهزة للاستخدام ، إذا كنت مطورًا ، فيمكنك أيضًا تعديل السمة بسهولة. وإنشاء مواقع ويب للواجهة الأمامية استنادًا إلى Bootstrap.</p><p style=\"text-align: left;\">&nbsp;</p><div class=\"ratio ratio-16x9\"><iframe class=\"responsive-iframe\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/mRlP799y8B8\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', NULL, NULL, 'publish', 'public', 3, 3, 'page', NULL, 0, 0, NULL, NULL, '', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44');
INSERT INTO `posts` (`id`, `post_title`, `post_name`, `post_summary`, `post_content`, `meta_description`, `meta_keyword`, `post_status`, `post_visibility`, `post_author`, `post_language`, `post_type`, `post_guid`, `post_hits`, `like`, `post_image`, `post_image_meta`, `post_mime_type`, `comment_status`, `comment_count`, `post_source`, `created_at`, `updated_at`) VALUES
(64, 'Terms & Conditions', 'terms-conditions', NULL, '<p>&lt;h3&gt;Terms and Conditions&lt;/h3&gt;&lt;p&gt;Last updated: July 18, 2021&lt;/p&gt;&lt;p&gt;Please read these terms and conditions carefully before using Our Service.&lt;/p&gt;&lt;h3&gt;Interpretation and Definitions&lt;/h3&gt;&lt;h4&gt;Interpretation&lt;/h4&gt;&lt;p&gt;The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.&lt;/p&gt;&lt;h3&gt;Definitions&lt;/h3&gt;&lt;p&gt;For the purposes of these Terms and Conditions:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Affiliate&lt;/strong&gt; means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Country&lt;/strong&gt; refers to:&nbsp; Indonesia&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Company&lt;/strong&gt; (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Retenvi, Jalan Alimudin Umar.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Device&lt;/strong&gt; means any device that can access the Service such as a computer, a cellphone or a digital tablet.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Service&lt;/strong&gt; refers to the Website.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Terms and Conditions&lt;/strong&gt; (also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the &lt;a href=\"https://www.termsfeed.com/terms-conditions-generator/\" target=\"_blank\"&gt;Terms and Conditions Generator&lt;/a&gt;.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Third-party Social Media Service&lt;/strong&gt; means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Website&lt;/strong&gt; refers to Retenvi, accessible from &lt;a href=\"https://retenvi.com\" rel=\"external nofollow noopener\" target=\"_blank\"&gt;https://retenvi.com&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;You&lt;/strong&gt; means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h3&gt;Acknowledgment&lt;/h3&gt;&lt;p&gt;These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.&lt;/p&gt;&lt;p&gt;Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.&lt;/p&gt;&lt;p&gt;By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.&lt;/p&gt;&lt;p&gt;You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.&lt;/p&gt;&lt;p&gt;Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.&lt;/p&gt;&lt;h3&gt;Links to Other Websites&lt;/h3&gt;&lt;p&gt;Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.&lt;/p&gt;&lt;p&gt;The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.&lt;/p&gt;&lt;p&gt;We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.&lt;/p&gt;&lt;h3&gt;Termination&lt;/h3&gt;&lt;p&gt;We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.&lt;/p&gt;&lt;p&gt;Upon termination, Your right to use the Service will cease immediately.&lt;/p&gt;&lt;h3&gt;Limitation of Liability&lt;/h3&gt;&lt;p&gt;Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven&apos;t purchased anything through the Service.&lt;/p&gt;&lt;p&gt;To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.&lt;/p&gt;&lt;p&gt;Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party&apos;s liability will be limited to the greatest extent permitted by law.&lt;/p&gt;&lt;h3&gt;\"AS IS\" and \"AS AVAILABLE\" Disclaimer&lt;/h3&gt;&lt;p&gt;The Service is provided to You \"AS IS\" and \"AS AVAILABLE\" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.&lt;/p&gt;&lt;p&gt;Without limiting the foregoing, neither the Company nor any of the company&apos;s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.&lt;/p&gt;&lt;p&gt;Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.&lt;/p&gt;&lt;h3&gt;Governing Law&lt;/h3&gt;&lt;p&gt;The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.&lt;/p&gt;&lt;h3&gt;Disputes Resolution&lt;/h3&gt;&lt;p&gt;If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.&lt;/p&gt;&lt;h3&gt;For European Union (EU) Users&lt;/h3&gt;&lt;p&gt;If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.&lt;/p&gt;&lt;h3&gt;United States Legal Compliance&lt;/h3&gt;&lt;p&gt;You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a \"terrorist supporting\" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.&lt;/p&gt;&lt;h3&gt;Severability and Waiver&lt;/h3&gt;&lt;h4&gt;Severability&lt;/h4&gt;&lt;p&gt;If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.&lt;/p&gt;&lt;h3&gt;Waiver&lt;/h3&gt;&lt;p&gt;Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party&apos;s ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.&lt;/p&gt;&lt;h3&gt;Translation Interpretation&lt;/h3&gt;&lt;p&gt;These Terms and Conditions may have been translated if We have made them available to You on our Service.You agree that the original English text shall prevail in the case of a dispute.&lt;/p&gt;&lt;h3&gt;Changes to These Terms and Conditions&lt;/h3&gt;&lt;p&gt;We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days&apos; notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.&lt;/p&gt;&lt;p&gt;By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.&lt;/p&gt;&lt;h3&gt;Contact Us&lt;/h3&gt;&lt;p&gt;If you have any questions about these Terms and Conditions, You can contact us:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;By email: cs@retenvi.com&lt;/li&gt;&lt;/ul&gt;<br></p>', NULL, NULL, 'publish', 'public', 1, 1, 'page', NULL, 0, 0, NULL, NULL, '', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(65, 'Privacy Policy', 'privacy-policy', NULL, '<h1>Privacy Policy</h1><p>Last updated: July 23, 2022</p><p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p><p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.termsfeed.com/privacy-policy-generator/\" target=\"_blank\">TermsFeed Privacy Policy Generator</a>.</p><h1>Interpretation and Definitions</h1><h2>Interpretation</h2><p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p><h2>Definitions</h2><p>For the purposes of this Privacy Policy:</p><ul><li><p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p></li><li><p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Retenvi.</p></li><li><p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p></li><li><p><strong>Country</strong> refers to:  Indonesia</p></li><li><p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p></li><li><p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p></li><li><p><strong>Service</strong> refers to the Website.</p></li><li><p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p></li><li><p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p></li><li><p><strong>Website</strong> refers to Retenvi, accessible from <a href=\"https://retenvi.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://retenvi.com</a></p></li><li><p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p></li></ul><h1>Collecting and Using Your Personal Data</h1><h2>Types of Data Collected</h2><h3>Personal Data</h3><p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p><ul><li><p>Email address</p></li><li><p>Usage Data</p></li></ul><h3>Usage Data</h3><p>Usage Data is collected automatically when using the Service.</p><p>Usage Data may include information such as Your Device&apos;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p><p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p><p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p><h3>Tracking Technologies and Cookies</h3><p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p><ul><li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li><li><strong>Flash Cookies.</strong> Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read \"Where can I change the settings for disabling, or deleting local shared objects?\" available at <a href=\"https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_\" rel=\"external nofollow noopener\" target=\"_blank\">https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_</a></li><li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li></ul><p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on <a href=\"https://www.termsfeed.com/blog/cookies/#What_Are_Cookies\" target=\"_blank\">TermsFeed website</a> article.</p><p>We use both Session and Persistent Cookies for the purposes set out below:</p><ul><li><p><strong>Necessary / Essential Cookies</strong></p><p>Type: Session Cookies</p><p>Administered by: Us</p><p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p></li><li><p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p><p>Type: Persistent Cookies</p><p>Administered by: Us</p><p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p></li><li><p><strong>Functionality Cookies</strong></p><p>Type: Persistent Cookies</p><p>Administered by: Us</p><p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p></li></ul><p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p><h2>Use of Your Personal Data</h2><p>The Company may use Personal Data for the following purposes:</p><ul><li><p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p></li><li><p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p></li><li><p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p></li><li><p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&apos;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p></li><li><p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p></li><li><p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p></li><li><p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p></li><li><p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p></li></ul><p>We may share Your personal information in the following situations:</p><ul><li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service,  to contact You.</li><li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li><li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li><li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li><li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li><li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li></ul><h2>Retention of Your Personal Data</h2><p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p><p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p><h2>Transfer of Your Personal Data</h2><p>Your information, including Personal Data, is processed at the Company&apos;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p><p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p><p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p><h2>Disclosure of Your Personal Data</h2><h3>Business Transactions</h3><p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p><h3>Law enforcement</h3><p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p><h3>Other legal requirements</h3><p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p><ul><li>Comply with a legal obligation</li><li>Protect and defend the rights or property of the Company</li><li>Prevent or investigate possible wrongdoing in connection with the Service</li><li>Protect the personal safety of Users of the Service or the public</li><li>Protect against legal liability</li></ul><h2>Security of Your Personal Data</h2><p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p><h1>Detailed Information on the Processing of Your Personal Data</h1><p>The Service Providers We use may have access to Your Personal Data. These third-party vendors collect, store, use, process and transfer information about Your activity on Our Service in accordance with their Privacy Policies.</p><h2>Usage, Performance and Miscellaneous</h2><p>We may use third-party Service Providers to provide better improvement of our Service.</p><ul><li><p><strong>Google Places</strong></p><p>Google Places is a service that returns information about places using HTTP requests. It is operated by Google</p><p>Google Places service may collect information from You and from Your Device for security purposes.</p><p>The information gathered by Google Places is held in accordance with the Privacy Policy of Google: <a href=\"https://www.google.com/intl/en/policies/privacy/\" rel=\"external nofollow noopener\" target=\"_blank\">https://www.google.com/intl/en/policies/privacy/</a></p></li></ul><h1>Children&apos;s Privacy</h1><p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p><p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&apos;s consent before We collect and use that information.</p><h1>Links to Other Websites</h1><p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&apos;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p><p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p><h1>Changes to this Privacy Policy</h1><p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p><p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p><p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p><h1>Contact Us</h1><p>If you have any questions about this Privacy Policy, You can contact us:</p><ul><li>By email: cs@retenvi.com</li></ul>', NULL, NULL, 'publish', 'public', 1, 1, 'page', NULL, 0, 0, NULL, NULL, '', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(66, 'Picone', 'picone', NULL, '<p>Image description</p>', NULL, NULL, 'inherit', 'public', 2, 1, 'gallery', '/storage/images/gallery.jpg', 0, 0, NULL, '{\"file\":\"gallery.jpg\",\"type\":\"jpeg\",\"size\":614182,\"dimension\":\"1920x1080\",\"attr_image_alt\":\"another text\"}', 'image/jpeg', 'open', 0, NULL, '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `post_term`
--

CREATE TABLE `post_term` (
  `post_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_term`
--

INSERT INTO `post_term` (`post_id`, `term_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(1, 34, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(2, 5, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(2, 35, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(3, 6, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(3, 36, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(4, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(4, 37, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(4, 40, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(5, 8, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(5, 38, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(5, 41, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(6, 9, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(6, 39, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(6, 42, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(7, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(7, 43, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(7, 46, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(7, 49, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(8, 8, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(8, 44, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(8, 47, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(8, 50, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(9, 6, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(9, 45, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(9, 48, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(9, 51, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(10, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(10, 49, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(10, 52, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(10, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(11, 8, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(11, 50, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(11, 53, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(11, 56, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(12, 9, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(12, 51, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(12, 54, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(12, 57, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(13, 10, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(13, 58, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(13, 61, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(14, 11, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(14, 59, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(14, 62, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(15, 12, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(15, 60, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(15, 63, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(16, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(16, 67, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(17, 5, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(17, 68, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(18, 6, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(18, 69, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(19, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(19, 67, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(19, 70, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(20, 5, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(20, 68, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(20, 71, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(21, 6, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(21, 69, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(21, 72, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(22, 13, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(22, 76, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(22, 79, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(22, 82, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(23, 14, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(23, 77, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(23, 80, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(23, 83, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(24, 15, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(24, 78, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(24, 81, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(24, 84, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(25, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(25, 85, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(25, 88, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(25, 91, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(25, 94, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(26, 8, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(26, 86, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(26, 89, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(26, 92, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(26, 95, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(27, 9, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(27, 87, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(27, 90, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(27, 93, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(27, 96, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(28, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(28, 97, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(28, 100, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(29, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(29, 97, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(29, 103, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(30, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(30, 106, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(30, 109, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(31, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(31, 112, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(32, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(32, 113, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(33, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(33, 34, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(33, 116, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(34, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(34, 117, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(34, 118, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(35, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(35, 1, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(35, 120, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(35, 119, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(36, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(36, 120, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(36, 119, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(37, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(37, 120, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(37, 119, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(38, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(38, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(39, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(39, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(39, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(40, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(40, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(40, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(41, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(41, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(41, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(42, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(42, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(42, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(43, 16, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(43, 120, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(43, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(43, 122, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(44, 19, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(44, 121, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(44, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(45, 4, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(45, 122, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(45, 55, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(46, 7, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(46, 112, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(46, 123, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(47, 10, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(47, 124, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(47, 125, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(48, 10, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(48, 126, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(48, 128, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(48, 127, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(49, 10, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(49, 126, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(49, 128, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(49, 127, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(50, 10, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(50, 126, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(50, 128, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(50, 127, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(51, 10, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(51, 129, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(51, 117, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(51, 127, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(52, 16, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(52, 130, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(52, 131, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(52, 132, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(53, 28, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(53, 133, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(53, 130, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(53, 134, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(53, 135, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(54, 28, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(54, 133, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(54, 130, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(54, 134, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(55, 7, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(56, 7, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(57, 7, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(58, 7, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(59, 25, '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(60, 22, '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `post_id` bigint UNSIGNED NOT NULL,
  `translation_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`post_id`, `translation_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 6),
(17, 6),
(18, 6),
(19, 7),
(20, 7),
(21, 7),
(22, 8),
(23, 8),
(24, 8),
(25, 9),
(26, 9),
(27, 9),
(28, 10),
(29, 11),
(30, 12),
(31, 13),
(32, 14),
(33, 15),
(34, 16),
(35, 17),
(36, 18),
(37, 19),
(38, 20),
(39, 21),
(40, 22),
(41, 23),
(42, 24),
(43, 25),
(44, 26),
(45, 27),
(46, 28),
(47, 29),
(48, 30),
(49, 31),
(50, 32),
(51, 33),
(52, 34),
(53, 35),
(54, 36),
(55, 37),
(56, 38),
(57, 39),
(58, 40),
(59, 41),
(60, 42),
(61, 43),
(62, 43),
(63, 43),
(64, 44),
(65, 45);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2024-05-28 20:39:41', '2024-05-28 20:39:41'),
(2, 'admin', 'web', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(3, 'author', 'web', '2024-05-28 20:39:42', '2024-05-28 20:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(51, 3),
(88, 3),
(89, 3),
(92, 3),
(93, 3),
(95, 3),
(97, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_information', 'company_name', 'Laramagz', NULL, NULL),
(2, 'site_information', 'site_name', 'Laramagz', NULL, NULL),
(3, 'site_information', 'site_url', 'http://localhost:8000', NULL, NULL),
(4, 'site_information', 'site_email', 'example@mail.com', NULL, NULL),
(5, 'site_information', 'site_phone', '463.385.7397', NULL, NULL),
(6, 'site_information', 'street', '2711 Bicetown Road', NULL, NULL),
(7, 'site_information', 'city', 'Huntington', NULL, NULL),
(8, 'site_information', 'postal_code', '11743', NULL, NULL),
(9, 'site_information', 'state', 'New York', NULL, NULL),
(10, 'site_information', 'country', 'United States', NULL, NULL),
(11, 'site_information', 'site_description', 'LaraMagz is a Content Management System (CMS) built on the Laravel framework', NULL, NULL),
(12, 'site_information', 'contact_description', '{\"id\":\"Hubungi kami dengan mudah untuk pertanyaan, informasi tambahan, atau untuk terhubung langsung dengan tim kami. Kami di sini untuk membantu Anda dengan layanan terbaik. Jangan ragu untuk mengirim pesan, email kepada kami, atau menghubungi melalui saluran media sosial kami. Kami menantikan kabar dari Anda!\",\"en\":\"Get in touch effortlessly for inquiries, additional information, or to connect directly with our team. We\'re here to assist you with the best service possible. Feel free to send a message, email us, or reach out through our social media channels. We look forward to hearing from you!\",\"ar\":\"\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639\\u0646\\u0627 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a\\u0629 \\u0623\\u0648 \\u0644\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0645\\u0639 \\u0641\\u0631\\u064a\\u0642\\u0646\\u0627. \\u0646\\u062d\\u0646 \\u0647\\u0646\\u0627 \\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u062a\\u0643 \\u0628\\u0623\\u0641\\u0636\\u0644 \\u062e\\u062f\\u0645\\u0629 \\u0645\\u0645\\u0643\\u0646\\u0629. \\u0644\\u0627 \\u062a\\u062a\\u0631\\u062f\\u062f \\u0641\\u064a \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u0623\\u0648 \\u0645\\u0631\\u0627\\u0633\\u0644\\u062a\\u0646\\u0627 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0639\\u0628\\u0631 \\u0642\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627. \\u0646\\u062d\\u0646 \\u0646\\u062a\\u0637\\u0644\\u0639 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u0627\\u0639 \\u0645\\u0646\\u0643!\"}', NULL, NULL),
(13, 'site_information', 'meta_keyword', 'website, news, laravel, php, cms', NULL, NULL),
(14, 'site_information', 'links', '[{\"id\":\"1\",\"name\":\"Instagram\",\"url\":\"https://www.instagram.com/retenvi\",\"icon\":\"fab fa-instagram\",\"color\":\"#885343\"},{\"id\":\"2\",\"name\":\"Youtube\",\"url\":\"https://www.youtube.com/channel/UCUYm8eLTfJDyHSHBLgFU5Gg\",\"icon\":\"fab fa-youtube\",\"color\":\"#C4302B\"}]', NULL, NULL),
(15, 'site_information', 'version', '3.0.0', NULL, NULL),
(16, 'site_config', 'maintenance', 'n', NULL, NULL),
(17, 'site_config', 'current_theme', 'magz', NULL, NULL),
(18, 'site_config', 'current_theme_dir', 'magz', NULL, NULL),
(19, 'site_config', 'register', 'n', NULL, NULL),
(20, 'site_config', 'email_verification', 'n', NULL, NULL),
(21, 'site_config', 'display_language', 'y', NULL, NULL),
(22, 'site_config', 'default_language', 'en', NULL, NULL),
(23, 'site_config', 'credentials_file', 'service-account-credentials.json', NULL, NULL),
(24, 'site_config', 'disqus_shortname', '', NULL, NULL),
(25, 'site_config', 'mailchimp', '', NULL, NULL),
(26, 'site_config', 'comment_approval', 'n', NULL, NULL),
(27, 'site_config', 'number_nested_comments', '5', NULL, NULL),
(28, 'site_config', 'send_comment_reply_email', 'n', NULL, NULL),
(29, 'logo_image', 'favicon', '', NULL, NULL),
(30, 'logo_image', 'logo_web_light', '', NULL, NULL),
(31, 'logo_image', 'logo_web_dark', '', NULL, NULL),
(32, 'logo_image', 'ogi_homepage', '', NULL, NULL),
(33, 'logo_image', 'ogi_category', '', NULL, NULL),
(34, 'logo_image', 'ogi_contact', '', NULL, NULL),
(35, 'logo_image', 'ogi_page', '', NULL, NULL),
(36, 'logo_image', 'ogi_popular_post', '', NULL, NULL),
(37, 'logo_image', 'ogi_posts', '', NULL, NULL),
(38, 'logo_image', 'ogi_search', '', NULL, NULL),
(39, 'logo_image', 'ogi_article_post', '', NULL, NULL),
(40, 'logo_image', 'ogi_video_post', '', NULL, NULL),
(41, 'logo_image', 'ogi_audio_post', '', NULL, NULL),
(42, 'logo_image', 'ogi_tag', '', NULL, NULL),
(43, 'logo_image', 'logo_dashboard', '', NULL, NULL),
(44, 'logo_image', 'logo_auth', '', NULL, NULL),
(45, 'google', 'measurement_id', '', NULL, NULL),
(46, 'google', 'property_id', '', NULL, NULL),
(47, 'google', 'publisher_id', '', NULL, NULL),
(48, 'google', 'google_site_verification', '', NULL, NULL),
(49, 'permalinks', 'permalink_type', 'custom', NULL, NULL),
(50, 'permalinks', 'permalink', 'news', NULL, NULL),
(51, 'permalinks', 'permalink_old_custom', 'news', NULL, NULL),
(52, 'permalinks', 'page_permalink_type', 'with_prefix', NULL, NULL),
(53, 'permalinks', 'category_permalink_type', 'with_prefix_category', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `language_id` bigint UNSIGNED NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `slug`, `taxonomy`, `description`, `image`, `parent`, `language_id`, `translation`, `created_at`, `updated_at`) VALUES
(1, 'Adventure', 'adventure', 'category', NULL, 'category-adventure.jpg', 0, 1, '{\"id\":\"petualangan\",\"ar\":\"mf-mr\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(2, 'Petualangan', 'petualangan', 'category', NULL, 'category-adventure.jpg', 0, 2, '{\"en\":\"adventure\",\"ar\":\"mf-mr\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(3, 'مفامرة', 'mf-mr', 'category', NULL, 'category-adventure.jpg', 0, 3, '{\"en\":\"adventure\",\"id\":\"petualangan\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(4, 'News', 'news', 'category', NULL, 'category-news.jpg', 0, 1, '{\"id\":\"berita\",\"ar\":\"akhb-r\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(5, 'Berita', 'berita', 'category', NULL, 'category-news.jpg', 0, 2, '{\"en\":\"news\",\"ar\":\"akhb-r\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(6, 'أخبار', 'akhb-r', 'category', NULL, 'category-news.jpg', 0, 3, '{\"en\":\"news\",\"id\":\"berita\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(7, 'Technology', 'technology', 'category', NULL, 'category-technology.jpg', 0, 1, '{\"id\":\"teknologi\",\"ar\":\"tkny\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(8, 'Teknologi', 'teknologi', 'category', NULL, 'category-technology.jpg', 0, 2, '{\"en\":\"technology\",\"ar\":\"tkny\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(9, 'تقنية', 'tkny', 'category', NULL, 'category-technology.jpg', 0, 3, '{\"en\":\"technology\",\"id\":\"teknologi\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(10, 'Business', 'business', 'category', NULL, 'category-business.jpg', 0, 1, '{\"id\":\"bisnis\",\"ar\":\"aam-l\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(11, 'Bisnis', 'bisnis', 'category', NULL, 'category-business.jpg', 0, 2, '{\"en\":\"business\",\"ar\":\"aam-l\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(12, 'اعمال', 'aam-l', 'category', NULL, 'category-business.jpg', 0, 3, '{\"en\":\"business\",\"id\":\"bisnis\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(13, 'Marketplace', 'marketplace', 'category', NULL, 'category-marketplace.jpg', 0, 1, '{\"id\":\"pasar\",\"ar\":\"lmtgr\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(14, 'Pasar', 'pasar', 'category', NULL, 'category-marketplace.jpg', 0, 2, '{\"en\":\"marketplace\",\"ar\":\"lmtgr\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(15, 'المتجر', 'lmtgr', 'category', NULL, 'category-marketplace.jpg', 0, 3, '{\"en\":\"marketplace\",\"id\":\"pasar\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(16, 'Lifestyle', 'lifestyle', 'category', NULL, 'category-lifestyle.jpg', 0, 1, '{\"id\":\"gaya-hidup\",\"ar\":\"aslob-lhy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(17, 'Gaya Hidup', 'gaya-hidup', 'category', NULL, 'category-lifestyle.jpg', 0, 2, '{\"en\":\"lifestyle\",\"ar\":\"aslob-lhy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(18, 'أسلوب الحياة', 'aslob-lhy', 'category', NULL, 'category-lifestyle.jpg', 0, 3, '{\"en\":\"lifestyle\",\"id\":\"gaya-hidup\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(19, 'Sport', 'sport', 'category', NULL, 'category-sport.jpg', 0, 1, '{\"id\":\"olahraga\",\"ar\":\"ry-d\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(20, 'Olahraga', 'olahraga', 'category', NULL, 'category-sport.jpg', 0, 2, '{\"en\":\"sport\",\"ar\":\"ry-d\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(21, 'رياضة', 'ry-d', 'category', NULL, 'category-sport.jpg', 0, 3, '{\"en\":\"sport\",\"id\":\"olahraga\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(22, 'Science', 'science', 'category', NULL, 'category-science.jpg', 0, 1, '{\"id\":\"Sains\",\"ar\":\"aalom\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(23, 'Sains', 'sains', 'category', NULL, 'category-science.jpg', 0, 2, '{\"en\":\"science\",\"ar\":\"aalom\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(24, 'علوم', 'aalom', 'category', NULL, 'category-science.jpg', 0, 3, '{\"en\":\"science\",\"id\":\"sains\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(25, 'Health', 'health', 'category', NULL, 'category-health.jpg', 0, 1, '{\"id\":\"kesehatan\",\"ar\":\"sh\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(26, 'Kesehatan', 'kesehatan', 'category', NULL, 'category-health.jpg', 0, 2, '{\"en\":\"health\",\"ar\":\"sh\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(27, 'صحة', 'sh', 'category', NULL, 'category-health.jpg', 0, 3, '{\"en\":\"health\",\"id\":\"kesehatan\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(28, 'Medical', 'medical', 'category', NULL, 'subcategory-medical.jpg', 25, 1, '{\"id\":\"medis\",\"ar\":\"tby\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(29, 'Medis', 'medis', 'category', NULL, 'subcategory-medical.jpg', 26, 2, '{\"en\":\"medical\",\"ar\":\"tby\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(30, 'طبي', 'tby', 'category', NULL, 'subcategory-medical.jpg', 27, 3, '{\"en\":\"medical\",\"id\":\"medis\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(31, 'Football', 'football', 'category', NULL, 'subcategory-football.jpg', 19, 1, '{\"id\":\"sepak-bola\",\"ar\":\"kr-lkdm\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(32, 'Sepak bola', 'sepak-bola', 'category', NULL, 'subcategory-football.jpg', 20, 2, '{\"en\":\"football\",\"ar\":\"kr-lkdm\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(33, 'كرة القدم', 'kr-lkdm', 'category', NULL, 'subcategory-football.jpg', 21, 3, '{\"en\":\"football\",\"id\":\"sepak-bola\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(34, 'Social Media', 'social-media', 'tag', NULL, NULL, 0, 1, '{\"id\":\"media-sosial\",\"ar\":\"os-l-lto-sl-l-gtm-aay\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(35, 'Media Sosial', 'media-sosial', 'tag', NULL, NULL, 0, 2, '{\"en\":\"social-media\",\"ar\":\"os-l-lto-sl-l-gtm-aay\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(36, 'وسائل التواصل الاجتماعي', 'os-l-lto-sl-l-gtm-aay', 'tag', NULL, NULL, 0, 3, '{\"en\":\"social-media\",\"id\":\"media-sosial\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(37, 'Facebook', 'facebook', 'tag', NULL, NULL, 0, 1, '{\"id\":\"facebook\",\"ar\":\"fysbok\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(38, 'Facebook', 'facebook', 'tag', NULL, NULL, 0, 2, '{\"en\":\"facebook\",\"ar\":\"fysbok\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(39, 'فيسبوك', 'fysbok', 'tag', NULL, NULL, 0, 3, '{\"en\":\"facebook\",\"id\":\"facebook\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(40, 'Donald Trump', 'donald-trump', 'tag', NULL, NULL, 0, 1, '{\"id\":\"donald-trump\",\"ar\":\"don-ld-trmb\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(41, 'Donald Trump', 'donald-trump', 'tag', NULL, NULL, 0, 2, '{\"en\":\"donald-trump\",\"ar\":\"don-ld-trmb\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(42, 'دونالد ترمب', 'don-ld-trmb', 'tag', NULL, NULL, 0, 3, '{\"en\":\"donald-trump\",\"id\":\"donald-trump\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(43, 'United States', 'united-states', 'tag', NULL, NULL, 0, 1, '{\"id\":\"united-states\",\"ar\":\"lol-y-t-lmthd-lamryky\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(44, 'United States', 'united-states', 'tag', NULL, NULL, 0, 2, '{\"en\":\"united-states\",\"ar\":\"lol-y-t-lmthd-lamryky\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(45, 'الولايات المتحدة الأمريكية', 'lol-y-t-lmthd-lamryky', 'tag', NULL, NULL, 0, 3, '{\"en\":\"united-states\",\"id\":\"united-states\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(46, 'China', 'china', 'tag', NULL, NULL, 0, 1, '{\"id\":\"china\",\"ar\":\"lsyn\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(47, 'China', 'china', 'tag', NULL, NULL, 0, 2, '{\"en\":\"china\",\"ar\":\"lsyn\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(48, 'الصين', 'lsyn', 'tag', NULL, NULL, 0, 3, '{\"en\":\"china\",\"id\":\"china\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(49, 'Beauty', 'beauty', 'tag', NULL, NULL, 0, 1, '{\"id\":\"kecantikan\",\"ar\":\"gm-l\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(50, 'Kecantikan', 'kecantikan', 'tag', NULL, NULL, 0, 2, '{\"en\":\"beauty\",\"ar\":\"gm-l\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(51, 'جمال', 'gm-l', 'tag', NULL, NULL, 0, 3, '{\"en\":\"beauty\",\"id\":\"kecantikan\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(52, 'Fashion', 'fashion', 'tag', NULL, NULL, 0, 1, '{\"id\":\"mode\",\"ar\":\"mod\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(53, 'Mode', 'mode', 'tag', NULL, NULL, 0, 2, '{\"en\":\"fashion\",\"ar\":\"mod\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(54, 'موضة', 'mod', 'tag', NULL, NULL, 0, 3, '{\"en\":\"fashion\",\"id\":\"mode\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(55, 'Lifestyle', 'lifestyle', 'tag', NULL, NULL, 0, 1, '{\"id\":\"gaya-hidup\",\"ar\":\"aslob-lhy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(56, 'Gaya Hidup', 'gaya-hidup', 'tag', NULL, NULL, 0, 2, '{\"en\":\"lifestyle\",\"ar\":\"aslob-lhy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(57, 'أسلوب الحياة', 'aslob-lhy', 'tag', NULL, NULL, 0, 3, '{\"en\":\"lifestyle\",\"id\":\"gaya-hidup\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(58, 'Couple', 'couple', 'tag', NULL, NULL, 0, 1, '{\"id\":\"pasangan\",\"ar\":\"zog\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(59, 'Pasangan', 'pasangan', 'tag', NULL, NULL, 0, 2, '{\"en\":\"couple\",\"ar\":\"zog\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(60, 'زوج', 'zog', 'tag', NULL, NULL, 0, 3, '{\"en\":\"couple\",\"id\":\"pasangan\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(61, 'Romantic', 'romantic', 'tag', NULL, NULL, 0, 1, '{\"id\":\"romantis\",\"ar\":\"rom-nsy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(62, 'Romantis', 'romantis', 'tag', NULL, NULL, 0, 2, '{\"en\":\"romantic\",\"ar\":\"rom-nsy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(63, 'رومانسي', 'rom-nsy', 'tag', NULL, NULL, 0, 3, '{\"en\":\"romantic\",\"id\":\"romantis\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(64, 'Stay Home', 'stay-home', 'tag', NULL, NULL, 0, 1, '{\"id\":\"tetap-di-rumah\",\"ar\":\"bk-fy-lmnzl\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(65, 'Tetap di rumah', 'tetap-di-rumah', 'tag', NULL, NULL, 0, 2, '{\"en\":\"stay-home\",\"ar\":\"bk-fy-lmnzl\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(66, 'ابق في المنزل', 'bk-fy-lmnzl', 'tag', NULL, NULL, 0, 3, '{\"en\":\"stay-home\",\"id\":\"tetap-di-rumah\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(67, 'Explore Bali', 'explore-bali', 'tag', NULL, NULL, 0, 1, '{\"id\":\"jelajahi-bali\",\"ar\":\"ktshf-b-ly\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(68, 'Jelajahi Bali', 'jelajahi-bali', 'tag', NULL, NULL, 0, 2, '{\"en\":\"explore-bali\",\"ar\":\"ktshf-b-ly\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(69, 'اكتشف بالي', 'ktshf-b-ly', 'tag', NULL, NULL, 0, 3, '{\"en\":\"explore-bali\",\"id\":\"jelajahi-bali\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(70, 'Startups', 'startups', 'tag', NULL, NULL, 0, 1, '{\"id\":\"startups\",\"ar\":\"lshrk-t-ln-sh\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(71, 'Startups', 'startups', 'tag', NULL, NULL, 0, 2, '{\"en\":\"startups\",\"ar\":\"lshrk-t-ln-sh\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(72, 'الشركات الناشئة', 'lshrk-t-ln-sh', 'tag', NULL, NULL, 0, 3, '{\"en\":\"startups\",\"id\":\"startups\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(73, 'Investments', 'investments', 'tag', NULL, NULL, 0, 1, '{\"id\":\"investasi\",\"ar\":\"l-stthm-r-t\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(74, 'Investasi', 'investasi', 'tag', NULL, NULL, 0, 2, '{\"en\":\"investments\",\"ar\":\"l-stthm-r-t\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(75, 'الاستثمارات', 'l-stthm-r-t', 'tag', NULL, NULL, 0, 3, '{\"en\":\"investments\",\"id\":\"investasi\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(76, 'Envato', 'envato', 'tag', NULL, NULL, 0, 1, '{\"id\":\"envato\",\"ar\":\"nf-to\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(77, 'Envato', 'envato', 'tag', NULL, NULL, 0, 2, '{\"en\":\"envato\",\"ar\":\"nf-to\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(78, 'إنفاتو', 'nf-to', 'tag', NULL, NULL, 0, 3, '{\"en\":\"envato\",\"id\":\"envato\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(79, 'Creative Market', 'creative-market', 'tag', NULL, NULL, 0, 1, '{\"id\":\"pasar-kreatif\",\"ar\":\"sok-bd-aay\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(80, 'Pasar Kreatif', 'pasar-kreatif', 'tag', NULL, NULL, 0, 2, '{\"en\":\"creative-market\",\"ar\":\"sok-bd-aay\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(81, 'سوق إبداعي', 'sok-bd-aay', 'tag', NULL, NULL, 0, 3, '{\"en\":\"creative-market\",\"id\":\"pasar-kreatif\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(82, 'Digital Creative', 'digital-creative', 'tag', NULL, NULL, 0, 1, '{\"id\":\"kreatif-digital\",\"ar\":\"l-bd-aa-lrkmy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(83, 'Kreatif Digital', 'kreatif-digital', 'tag', NULL, NULL, 0, 2, '{\"en\":\"digital-creative\",\"ar\":\"l-bd-aa-lrkmy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(84, 'الإبداع الرقمي', 'l-bd-aa-lrkmy', 'tag', NULL, NULL, 0, 3, '{\"en\":\"digital-creative\",\"id\":\"kreatif-digital\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(85, 'Framework', 'framework', 'tag', NULL, NULL, 0, 1, '{\"id\":\"framework\",\"ar\":\"t-r-laaml\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(86, 'Framework', 'framework', 'tag', NULL, NULL, 0, 2, '{\"en\":\"framework\",\"ar\":\"t-r-laaml\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(87, 'إطار العمل', 't-r-laaml', 'tag', NULL, NULL, 0, 3, '{\"en\":\"framework\",\"id\":\"framework\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(88, 'Bootstrap', 'bootstrap', 'tag', NULL, NULL, 0, 1, '{\"id\":\"bootstrap\",\"ar\":\"ltmhyd\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(89, 'Bootstrap', 'bootstrap', 'tag', NULL, NULL, 0, 2, '{\"en\":\"bootstrap\",\"ar\":\"ltmhyd\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(90, 'التمهيد', 'ltmhyd', 'tag', NULL, NULL, 0, 3, '{\"en\":\"bootstrap\",\"id\":\"bootstrap\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(91, 'HTML', 'html', 'tag', NULL, NULL, 0, 1, '{\"id\":\"html\",\"ar\":\"lgh-lbrmg\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(92, 'HTML', 'html', 'tag', NULL, NULL, 0, 2, '{\"en\":\"html\",\"ar\":\"lgh-lbrmg\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(93, 'لغة البرمجة', 'lgh-lbrmg', 'tag', NULL, NULL, 0, 3, '{\"en\":\"html\",\"id\":\"html\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(94, 'CSS', 'css', 'tag', NULL, NULL, 0, 1, '{\"id\":\"css\",\"ar\":\"lmghlk\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(95, 'CSS', 'css', 'tag', NULL, NULL, 0, 2, '{\"en\":\"css\",\"ar\":\"lmghlk\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(96, 'المغلق', 'lmghlk', 'tag', NULL, NULL, 0, 3, '{\"en\":\"css\",\"id\":\"css\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(97, 'Holiday', 'holiday', 'tag', NULL, NULL, 0, 1, '{\"id\":\"liburan\",\"ar\":\"yom-l-g-z\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(98, 'Liburan', 'liburan', 'tag', NULL, NULL, 0, 2, '{\"en\":\"holiday\",\"ar\":\"yom-l-g-z\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(99, 'يوم الاجازة', 'yom-l-g-z', 'tag', NULL, NULL, 0, 3, '{\"en\":\"holiday\",\"id\":\"liburan\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(100, 'Indonesia', 'indonesia', 'tag', NULL, NULL, 0, 1, '{\"id\":\"indonesia\",\"ar\":\"ndonysy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(101, 'Indonesia', 'indonesia', 'tag', NULL, NULL, 0, 2, '{\"en\":\"indonesia\",\"ar\":\"ndonysy\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(102, 'إندونيسيا', 'ndonysy', 'tag', NULL, NULL, 0, 3, '{\"en\":\"indonesia\",\"id\":\"indonesia\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(103, 'Japan', 'japan', 'tag', NULL, NULL, 0, 1, '{\"id\":\"jepang\",\"ar\":\"ly-b-n\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(104, 'Jepang', 'jepang', 'tag', NULL, NULL, 0, 2, '{\"en\":\"japan\",\"ar\":\"ly-b-n\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(105, 'اليابان', 'ly-b-n', 'tag', NULL, NULL, 0, 3, '{\"en\":\"japan\",\"id\":\"jepang\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(106, 'Sport', 'sport', 'tag', NULL, NULL, 0, 1, '{\"id\":\"olahraga\",\"ar\":\"ry-d\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(107, 'Olahraga', 'olahraga', 'tag', NULL, NULL, 0, 2, '{\"en\":\"sport\",\"ar\":\"ry-d\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(108, 'رياضة', 'ry-d', 'tag', NULL, NULL, 0, 3, '{\"en\":\"sport\",\"id\":\"olahraga\"}', '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(109, 'MotoGP', 'motogp', 'tag', NULL, NULL, 0, 1, '{\"id\":\"motogp\",\"ar\":\"moto-gy-by\"}', '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(110, 'MotoGP', 'motogp', 'tag', NULL, NULL, 0, 2, '{\"en\":\"motogp\",\"ar\":\"moto-gy-by\"}', '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(111, 'موتو جي بي', 'moto-gy-by', 'tag', NULL, NULL, 0, 3, '{\"en\":\"motogp\",\"id\":\"motogp\"}', '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(112, 'Google', 'google', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(113, 'Android', 'android', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(114, 'Saham', 'saham', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(115, 'Elon Musk', 'elon-musk', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(116, 'TikTok', 'tiktok', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(117, 'Politics', 'politics', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(118, 'News', 'news', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(119, 'Beach', 'beach', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(120, 'Adventure', 'adventure', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(121, 'Athlete', 'athlete', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(122, 'Wildlife', 'wildlife', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(123, 'Oculus', 'oculus', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(124, 'Furniture', 'furniture', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(125, 'Decoration', 'decoration', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(126, 'Bitcoin', 'bitcoin', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(127, 'Dollar', 'dollar', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(128, 'Crypto', 'crypto', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(129, 'Economic', 'economic', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(130, 'Health', 'health', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(131, 'Recipes', 'recipes', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(132, 'Food', 'food', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(133, 'Clinic', 'clinic', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(134, 'Doctor', 'doctor', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(135, 'Dentist', 'dentist', 'tag', NULL, NULL, 0, 1, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme`, `page`, `url`, `title`, `slug`, `template`, `setting`, `created_at`, `updated_at`) VALUES
(1, 'magz', 'all', NULL, 'All', 'all', NULL, '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\"},\"widget\":{\"post_sidebar-zMsEVWBETfhZw2Ei\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Populer\",\"en\":\"Popular\",\"ar\":\"\\u0634\\u0627\\u0626\\u0639\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Dengan berlangganan Anda akan menerima artikel baru di email Anda.\",\"en\":\"By subscribing you will receive new articles in your email.\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0633\\u0648\\u0641 \\u062a\\u062a\\u0644\\u0642\\u0649 \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0641\\u064a \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a.\"},\"layout_type\":\"card\"},\"post_sidebar-82DEHGCnuLXWX3LK\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Direkomendasikan\",\"en\":\"Recommended\",\"ar\":\"\\u0645\\u064f\\u0633\\u062a\\u064e\\u062d\\u0633\\u064e\\u0646\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"ads_sidebar-veFRxP5K8IaYxwmk\":{\"active\":\"true\",\"title\":{\"id\":\"Disponsori\",\"en\":\"Sponsored\",\"ar\":\"\\u0628\\u0631\\u0639\\u0627\\u064a\\u0629\"},\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"]},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(2, 'magz', 'home', '/', 'Home', 'home', 'home', '{\"body\":{\"widget\":{\"headline\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"true\",\"carousel_autoplay\":\"true\",\"layout_type\":\"none\",\"title\":\"\",\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\",\"default\":\"true\"},\"featured\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"true\",\"carousel_autoplay\":\"true\",\"layout_type\":\"none\",\"title\":\"\",\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\",\"default\":\"true\"},\"post-LE6uRpoqNFxZ8UFg\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"two-column\",\"title\":{\"id\":\"Berita Lain\",\"en\":\"Just Another News\",\"ar\":\"\\u0645\\u062c\\u0631\\u062f \\u062e\\u0628\\u0631 \\u0622\\u062e\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\",\"default\":\"false\"},\"ads-tV0RBIG8d1ii0JsG\":{\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\",\"active\":\"true\"},\"video-8q0Dw1DvAzKlMSbm\":{\"post_type\":\"video_by_category\",\"category\":\"technology\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"one-column\",\"title\":{\"id\":\"Teknologi\",\"en\":\"Technology\",\"ar\":\"\\u062a\\u0642\\u0646\\u064a\\u0629\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"section-Melwbi0YEpOdy9cQ\":{\"active\":\"true\",\"widget\":{\"list_label-2X6GNu9ozi4TOqfq\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"ordered-lists\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10,\"title\":{\"id\":\"Tag Tren\",\"en\":\"Trending Tags\",\"ar\":\"\\u062a\\u062a\\u062c\\u0647 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a\"},\"description\":\"\"},\"mini_post-iStrA3TcuGGndFl7\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"true\",\"carousel_autoplay\":\"true\",\"layout_type\":\"vertical-slider\",\"title\":{\"id\":\"Berita Hangat\",\"en\":\"Hot News\",\"ar\":\"\\u0623\\u062e\\u0628\\u0627\\u0631 \\u0639\\u0627\\u062c\\u0644\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"}}},\"audio-b7RqkJVW956l1LUc\":{\"post_type\":\"audio\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"two-column\",\"title\":{\"id\":\"Suara\",\"en\":\"Sound\",\"ar\":\"\\u0635\\u0648\\u062a\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"video-Jy2ux4tdghVKwyKz\":{\"post_type\":\"video\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"two-column\",\"title\":{\"id\":\"Video Lain\",\"en\":\"Just Another Video\",\"ar\":\"\\u0645\\u062c\\u0631\\u062f \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0622\\u062e\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"posts\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"one-column\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\",\"default\":\"true\"},\"bottom_post\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"true\",\"carousel_autoplay\":\"true\",\"layout_type\":\"horizontal-slider\",\"title\":{\"id\":\"Terbaik Minggu Ini\",\"en\":\"Best of the Week\",\"ar\":\"\\u0623\\u0641\\u0636\\u0644 \\u0645\\u0627 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0633\\u0628\\u0648\\u0639\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"week\",\"number_of_posts\":8,\"active\":\"true\",\"default\":\"true\"}}},\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"post_sidebar-zMsEVWBETfhZw2Ei\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Populer\",\"en\":\"Popular\",\"ar\":\"\\u0634\\u0627\\u0626\\u0639\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Dengan berlangganan Anda akan menerima artikel baru di email Anda.\",\"en\":\"By subscribing you will receive new articles in your email.\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0633\\u0648\\u0641 \\u062a\\u062a\\u0644\\u0642\\u0649 \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0641\\u064a \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a.\"},\"layout_type\":\"card\"},\"post_sidebar-82DEHGCnuLXWX3LK\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Direkomendasikan\",\"en\":\"Recommended\",\"ar\":\"\\u0645\\u064f\\u0633\\u062a\\u064e\\u062d\\u0633\\u064e\\u0646\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"ads_sidebar-veFRxP5K8IaYxwmk\":{\"active\":\"true\",\"title\":{\"id\":\"Disponsori\",\"en\":\"Sponsored\",\"ar\":\"\\u0628\\u0631\\u0639\\u0627\\u064a\\u0629\"},\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(3, 'magz', 'page', '/page/{title}', 'Page', 'page', 'page', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-0cY7Lh6caYytrSbj\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-OR8Crs0d7rVO0zjs\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(4, 'magz', 'posts', '/news/latest', 'Posts', 'posts', 'posts', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-0cY7Lh6caYytrSbj\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-OR8Crs0d7rVO0zjs\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(5, 'magz', 'videos', '/videos/latest', 'Videos', 'videos', 'videos', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-N1Jn0twR6miuSvkV\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-gRWg9faVJU31qNO2\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(6, 'magz', 'audios', '/audios/latest', 'Audios', 'audios', 'audios', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-N1Jn0twR6miuSvkV\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-gRWg9faVJU31qNO2\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(7, 'magz', 'single-post', '/news/{postTitle}', 'Single Post', 'single-post', 'default', '{\"body\":{\"widget\":{\"related_post\":{\"carousel\":\"true\",\"carousel_autoplay\":\"true\",\"layout_type\":\"none\",\"title\":{\"id\":\"Anda Mungkin Juga Menyukai\",\"en\":\"You May Also Like\",\"ar\":\"\\u0631\\u0628\\u0645\\u0627 \\u064a\\u0639\\u062c\\u0628\\u0643 \\u0623\\u064a\\u0636\\u0627\"},\"order\":\"random\",\"popular_based\":\"all\",\"number_of_posts\":2,\"active\":\"true\",\"default\":\"true\"}}},\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"left\",\"custom\":\"true\"},\"widget\":{\"ads_sidebar-50qSTsOqn7y4XPc8\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-k7RgWwF6HFlU75ir\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(8, 'magz', 'contact', '/contact', 'Contact', 'contact', 'default', '{\"body\":{\"config\":{\"title\":{\"id\":\"Kontak\",\"en\":\"Contact\",\"ar\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\"},\"url\":{\"id\":\"\\/kontak\",\"en\":\"\\/contact\",\"ar\":\"\\/ts-l\"}},\"widget\":{\"contact_information\":{\"active\":\"true\"},\"captcha\":{\"active\":\"true\"},\"map\":{\"active\":\"true\",\"google_map_code\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d387191.33750346623!2d-73.97968099999999!3d40.6974881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sKota%20New%20York%2C%20New%20York%2C%20Amerika%20Serikat!5e0!3m2!1sid!2sid!4v1702001456770!5m2!1sid!2sid\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(9, 'magz', 'category', '/category/{categoryName}', 'Category', 'category', 'default', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-zx0XOIvM5O9yt97q\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-sZtZ0RWnm6UOlaNX\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(10, 'magz', 'tag', '/tag/{TagName}', 'Tag', 'tag', 'default', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-BetFLUqsgxnheK0M\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-6MWciqIpa2GnycLX\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Pos Terbaru\",\"en\":\"Recent Post\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":5,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":\"\",\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44'),
(11, 'magz', 'popular', '/news/popular', 'Popular Post', 'popular-post', 'default', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"right\",\"custom\":\"false\"},\"widget\":{\"ads_sidebar-g7FZH1zE2wcDSelA\":{\"active\":\"true\",\"title\":\"\",\"ad_type\":\"image\",\"ga_client\":\"\",\"ga_slot\":\"\",\"ga_size\":\"\",\"ga_format\":\"\",\"ga_full_width_responsive\":\"\",\"ad_width\":\"\",\"ad_height\":\"\",\"ad_image\":\"\",\"ad_url\":\"\",\"ad_script\":\"\"},\"post_sidebar-82DEHGCnuLXWX3LK\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Direkomendasikan\",\"en\":\"Recommended\",\"ar\":\"\\u0645\\u064f\\u0633\\u062a\\u064e\\u062d\\u0633\\u064e\\u0646\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"},\"newsletter_sidebar\":{\"active\":\"true\",\"title\":{\"id\":\"Berlangganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":\"\",\"layout_type\":\"card\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44');
INSERT INTO `themes` (`id`, `theme`, `page`, `url`, `title`, `slug`, `template`, `setting`, `created_at`, `updated_at`) VALUES
(12, 'magz', 'search', '/search?q={keyword}', 'Search', 'search', 'default', '{\"sidebar\":{\"config\":{\"active\":\"true\",\"position\":\"left\",\"custom\":\"true\"},\"widget\":{\"post_sidebar-82DEHGCnuLXWX3LK\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"first-large-thumb\",\"title\":{\"id\":\"Direkomendasikan\",\"en\":\"Recommended\",\"ar\":\"\\u0645\\u064f\\u0633\\u062a\\u064e\\u062d\\u0633\\u064e\\u0646\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":4,\"active\":\"true\"}}},\"footer\":{\"config\":{\"active\":\"true\",\"exist\":[\"about\",\"links\",\"menu_link\",\"box_label\",\"newsletter_footer\",\"post_footer\"],\"custom\":\"false\"},\"widget\":{\"section\":{\"left_column\":{\"about\":{\"active\":\"true\",\"title\":{\"id\":\"Info perusahaan\",\"en\":\"Company Info\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"},\"logo\":\"true\",\"link\":\"true\"},\"links\":{\"active\":\"true\",\"title\":{\"id\":\"Ikuti kami\",\"en\":\"Follow Us\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"}},\"menu_link\":{\"active\":\"true\"}},\"middle_column\":{\"box_label\":{\"active\":\"true\",\"term_type\":\"tags\",\"layout_type\":\"box\",\"title\":{\"id\":\"Tag Populer\",\"en\":\"Popular Tags\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\"},\"description\":\"\",\"order\":\"popular\",\"popular_based\":\"all\",\"number_of_posts\":10},\"newsletter_footer\":{\"active\":\"true\",\"title\":{\"id\":\"Langganan\",\"en\":\"Newsletter\",\"ar\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\"},\"description\":{\"id\":\"Ikuti kami dan tetap berhubungan untuk mendapatkan berita terbaru\",\"en\":\"Follow us and stay in touch to get the latest news\",\"ar\":\"\\u062a\\u0627\\u0628\\u0639\\u0646\\u0627 \\u0648\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"layout_type\":\"form\"}},\"right_column\":{\"post_footer\":{\"post_type\":\"post\",\"category\":\"none\",\"carousel\":\"false\",\"carousel_autoplay\":\"none\",\"layout_type\":\"list-post-with-link\",\"title\":{\"id\":\"Berita Terbaru\",\"en\":\"Latest News\",\"ar\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0623\\u062e\\u0628\\u0627\\u0631\"},\"description\":\"\",\"order\":\"latest\",\"popular_based\":\"none\",\"number_of_posts\":4,\"active\":\"true\"}}}}}}', '2024-05-28 20:39:44', '2024-05-28 20:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `value`) VALUES
(1, '{\"en\":1,\"id\":2,\"ar\":3}'),
(2, '{\"en\":4,\"id\":5,\"ar\":6}'),
(3, '{\"en\":7,\"id\":8,\"ar\":9}'),
(4, '{\"en\":10,\"id\":11,\"ar\":12}'),
(5, '{\"en\":13,\"id\":14,\"ar\":15}'),
(6, '{\"en\":16,\"id\":17,\"ar\":18}'),
(7, '{\"en\":19,\"id\":20,\"ar\":21}'),
(8, '{\"en\":22,\"id\":23,\"ar\":24}'),
(9, '{\"en\":25,\"id\":26,\"ar\":37}'),
(10, '{\"en\":28}'),
(11, '{\"en\":29}'),
(12, '{\"en\":30}'),
(13, '{\"en\":31}'),
(14, '{\"en\":32}'),
(15, '{\"en\":33}'),
(16, '{\"en\":34}'),
(17, '{\"en\":35}'),
(18, '{\"en\":36}'),
(19, '{\"en\":37}'),
(20, '{\"en\":38}'),
(21, '{\"en\":39}'),
(22, '{\"en\":40}'),
(23, '{\"en\":41}'),
(24, '{\"en\":42}'),
(25, '{\"en\":43}'),
(26, '{\"en\":44}'),
(27, '{\"en\":45}'),
(28, '{\"en\":46}'),
(29, '{\"en\":47}'),
(30, '{\"en\":48}'),
(31, '{\"en\":49}'),
(32, '{\"en\":50}'),
(33, '{\"en\":51}'),
(34, '{\"en\":52}'),
(35, '{\"en\":53}'),
(36, '{\"en\":54}'),
(37, '{\"en\":55}'),
(38, '{\"en\":56}'),
(39, '{\"en\":57}'),
(40, '{\"en\":58}'),
(41, '{\"en\":59}'),
(42, '{\"en\":60}'),
(43, '{\"en\":61,\"id\":62,\"ar\":63}'),
(44, '{\"en\":64}'),
(45, '{\"en\":65}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` longtext COLLATE utf8mb4_unicode_ci,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` bigint UNSIGNED NOT NULL,
  `darkmode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `banned_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `photo`, `about`, `links`, `occupation`, `language`, `darkmode`, `active`, `banned_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mark Otto', 'superadmin@retenvi.com', NULL, 'superadmin', '$2y$12$O6eHOJ1Zo/Gm7p.gofKCxOPB6rwytJ5FBMYm5JNBwC1EArLZZZsNe', 'mark-otto.jpg', 'I am a web artisan', '[{\"id\":1,\"label\":\"Facebook\",\"url\":\"https://www.facebook.com/markotto\",\"icon\":\"fa-brands fa-facebook\",\"color\":\"#395693\"},{\"id\":2,\"label\":\"Twitter\",\"url\":\"https://www.twitter.com/markotto\",\"icon\":\"fa-brands fa-x-twitter\",\"color\":\"#0051B3\"},{\"id\":3,\"label\":\"Youtube\",\"url\":\"https://www.youtube.com/c/markotto\",\"icon\":\"fab fa-youtube\",\"color\":\"#C4302B\"},{\"id\":4,\"label\":\"Instagram\",\"url\":\"https://www.instagram.com/markotto\",\"icon\":\"fab fa-instagram\",\"color\":\"#885343\"}]', 'Website Manager', 1, '0', '1', NULL, NULL, '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(2, 'John Doe', 'admin@retenvi.com', NULL, 'admin', '$2y$12$VC9e.P4rQna3gCq.brGb/uiV0X2H3lgO8gLTvY1jX/WU2Jos4jRmu', 'john-doe.jpg', 'Someone who likes to write and teach', '[{\"id\":1,\"label\":\"Facebook\",\"url\":\"https://www.facebook.com/johndoe\",\"icon\":\"fa-brands fa-facebook\",\"color\":\"#395693\"},{\"id\":2,\"label\":\"Twitter\",\"url\":\"https://www.twitter.com/johndoe\",\"icon\":\"fa-brands fa-x-twitter\",\"color\":\"#0051B3\"},{\"id\":3,\"label\":\"Youtube\",\"url\":\"https://www.youtube.com/c/johndoe\",\"icon\":\"fab fa-youtube\",\"color\":\"#C4302B\"},{\"id\":4,\"label\":\"Instagram\",\"url\":\"https://www.instagram.com/johndoe\",\"icon\":\"fab fa-instagram\",\"color\":\"#885343\"}]', 'Content creator', 1, '0', '1', NULL, NULL, '2024-05-28 20:39:42', '2024-05-28 20:39:42'),
(3, 'Jacob Thornton', 'author@retenvi.com', NULL, 'author', '$2y$12$pPGc5ItzYg.53MYncIFoqOklOEhDsnxJfH8JQ9gYdu/.On3p9Dh1m', 'jacob-thornton.jpg', 'Hi I am Jacob', NULL, 'Freelancer', 1, '0', '1', NULL, NULL, '2024-05-28 20:39:42', '2024-05-28 20:39:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_bannable_type_bannable_id_index` (`bannable_type`,`bannable_id`),
  ADD KEY `bans_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  ADD KEY `bans_expired_at_index` (`expired_at`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fileponds`
--
ALTER TABLE `fileponds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_items_language_foreign` (`language`);

--
-- Indexes for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_languages_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_languages_language_id_foreign` (`language_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_author_foreign` (`post_author`),
  ADD KEY `posts_post_language_foreign` (`post_language`);

--
-- Indexes for table `post_term`
--
ALTER TABLE `post_term`
  ADD KEY `post_term_post_id_foreign` (`post_id`),
  ADD KEY `post_term_term_id_foreign` (`term_id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD KEY `post_translations_post_id_foreign` (`post_id`),
  ADD KEY `post_translations_translation_id_foreign` (`translation_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terms_language_id_foreign` (`language_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_language_foreign` (`language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fileponds`
--
ALTER TABLE `fileponds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_language_foreign` FOREIGN KEY (`language`) REFERENCES `menu_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_languages_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_author_foreign` FOREIGN KEY (`post_author`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_post_language_foreign` FOREIGN KEY (`post_language`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_term`
--
ALTER TABLE `post_term`
  ADD CONSTRAINT `post_term_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_term_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `terms`
--
ALTER TABLE `terms`
  ADD CONSTRAINT `terms_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_language_foreign` FOREIGN KEY (`language`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
