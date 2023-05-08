-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2023 at 10:40 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkstecfw_hks09`
--

-- --------------------------------------------------------

--
-- Table structure for table `hk_commentmeta`
--

CREATE TABLE `hk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk_comments`
--

CREATE TABLE `hk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_comments`
--

INSERT INTO `hk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-04-22 15:28:33', '2023-04-22 15:28:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk_links`
--

CREATE TABLE `hk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk_options`
--

CREATE TABLE `hk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_options`
--

INSERT INTO `hk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://hks09.com/dev', 'yes'),
(2, 'home', 'http://hks09.com/dev', 'yes'),
(3, 'blogname', 'Hunja Kalyanam Sansthan (India)', 'yes'),
(4, 'blogdescription', 'Home', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hkskundali@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:130:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"services/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"services/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"services/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"services/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"services/(.+?)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:27:\"services/(.+?)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:35:\"services/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:42:\"services/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:31:\"services/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:18:\"service/([^/]+)/?$\";s:29:\"index.php?service=$matches[1]\";s:58:\"product-categorys/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?product-categorys=$matches[1]&feed=$matches[2]\";s:53:\"product-categorys/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?product-categorys=$matches[1]&feed=$matches[2]\";s:34:\"product-categorys/([^/]+)/embed/?$\";s:50:\"index.php?product-categorys=$matches[1]&embed=true\";s:46:\"product-categorys/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?product-categorys=$matches[1]&paged=$matches[2]\";s:28:\"product-categorys/([^/]+)/?$\";s:39:\"index.php?product-categorys=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:65:\"/home2/mkstecfw/hks09.com/dev/wp-content/themes/hks09/archive.php\";i:1;s:87:\"/home2/mkstecfw/hks09.com/dev/wp-content/themes/hks09/page-template/page-ourproduct.php\";i:2;s:63:\"/home2/mkstecfw/hks09.com/dev/wp-content/themes/hks09/index.php\";i:3;s:63:\"/home2/mkstecfw/hks09.com/dev/wp-content/themes/hks09/style.css\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'hks09', 'yes'),
(41, 'stylesheet', 'hks09', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '20', 'yes'),
(82, 'page_on_front', '12', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '9', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1697729313', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'hk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:3:\"add\";a:0:{}s:11:\"footer-Area\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1683264514;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1683300514;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683300538;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683300539;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683473314;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682177855;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(133, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(135, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1683263044;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(136, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683263047;s:7:\"checked\";a:1:{s:5:\"hks09\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(138, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"hkskundali@gmail.com\";s:7:\"version\";s:3:\"6.2\";s:9:\"timestamp\";i:1682177328;}', 'no'),
(144, 'can_compress_scripts', '0', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'finished_updating_comment_type', '1', 'yes'),
(168, 'acf_version', '6.1.4', 'yes'),
(169, 'current_theme', 'hks09', 'yes'),
(170, 'theme_mods_hks09', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(179, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(194, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":0}', 'yes'),
(215, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiTnpJMFkyTmpZelE0TXpaak5HVmhNR05sWlRrMVpUWTFPR05oWWpCbU56ZzNPR1UzTkRBeFlUQmhPREl3WVdNMVpXRTBNelF4IjtzOjM6InVybCI7czoyMDoiaHR0cDovL2hrczA5LmNvbS9kZXYiO30=', 'yes'),
(220, 'options_logo', '8', 'no'),
(221, '_options_logo', 'field_644813cd0aefc', 'no'),
(222, 'options_reach_us', 'Kamrup, Aasam', 'no'),
(223, '_options_reach_us', 'field_6448142e0aefd', 'no'),
(224, 'options_talk_to_astrologers', '+91 6000 533 566', 'no'),
(225, '_options_talk_to_astrologers', 'field_644814430aefe', 'no'),
(226, 'options_phone_number', '+91 6000 533 566', 'no'),
(227, '_options_phone_number', 'field_644814600aeff', 'no'),
(228, 'options_need_our_help', '<h2>Need <span>Our Help</span></h2>\r\n<p>Donec id elit non mi porta gravida at eget metus. Donec id elit non Vestibulum id ligula porta felis euism od semper. Nulla vitae elit libero</p>\r\n                      ', 'no'),
(229, '_options_need_our_help', 'field_6448160d9dc0c', 'no'),
(230, 'options_need_our_help2', '<h2>Need <span>Our Help</span></h2>\r\n<p>Need help with designing your brand new website or you have any idea and thinking of getting it’s branding done then get a FREE quote today.</p>\r\n                        ', 'no'),
(231, '_options_need_our_help2', 'field_644816269dc0d', 'no'),
(232, 'options_contact_us_today', '<h2>Contact <span>Us Today</span></h2>\r\n<h4>Hunja Kalyanam Sansthan (India)</h4>\r\n<p>H.No.-7 (14), By Lane - 4 Anand Nagar, Adabari, Pandu, Guwahati, Assam 781012</p>\r\n<p>Call Us <span>+91 6000 533 566</span> </p>\r\n<p>Email : hkskundali@gmail.com</p>', 'no'),
(233, '_options_contact_us_today', 'field_6448164e9dc0e', 'no'),
(234, 'options_facebook_link', '#', 'no'),
(235, '_options_facebook_link', 'field_6448178406a7f', 'no'),
(236, 'options_instagram_link', '#', 'no'),
(237, '_options_instagram_link', 'field_6448178f06a80', 'no'),
(238, 'options_youtube_link', '#', 'no'),
(239, '_options_youtube_link', 'field_6448179c06a81', 'no'),
(244, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1682446941;s:7:\"version\";s:5:\"5.7.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(245, 'secret_key', 'pwe5jWQ=_<X!1ppFS`W$6Gzzp,[g;h&~qW>6cn+zi1j_Il1P|iMbse|3 `5j;|V$', 'no'),
(247, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(273, 'category_children', 'a:0:{}', 'yes'),
(309, 'product-categorys_children', 'a:0:{}', 'yes'),
(332, '_site_transient_timeout_php_check_7fd916da55255947442737a51af03cd0', '1683545755', 'no'),
(333, '_site_transient_php_check_7fd916da55255947442737a51af03cd0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(358, '_transient_timeout_acf_plugin_updates', '1683435846', 'no'),
(359, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:9:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:315:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6Ik56STBZMk5qWXpRNE16WmpOR1ZoTUdObFpUazFaVFkxT0dOaFlqQm1OemczT0dVM05EQXhZVEJoT0RJd1lXTTFaV0UwTXpReCIsIndwX3VybCI6Imh0dHBzOlwvXC9oa3MwOS5jb21cL2RldiIsIndwX3ZlcnNpb24iOiI2LjIiLCJwaHBfdmVyc2lvbiI6IjguMS4xOCIsImJsb2NrX2NvdW50IjowfQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:13:\"license_valid\";b:1;}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.4\";}}', 'no'),
(360, '_site_transient_timeout_theme_roots', '1683264846', 'no'),
(361, '_site_transient_theme_roots', 'a:1:{s:5:\"hks09\";s:7:\"/themes\";}', 'no'),
(362, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683263048;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":9:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:315:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6Ik56STBZMk5qWXpRNE16WmpOR1ZoTUdObFpUazFaVFkxT0dOaFlqQm1OemczT0dVM05EQXhZVEJoT0RJd1lXTTFaV0UwTXpReCIsIndwX3VybCI6Imh0dHBzOlwvXC9oa3MwOS5jb21cL2RldiIsIndwX3ZlcnNpb24iOiI2LjIiLCJwaHBfdmVyc2lvbiI6IjguMS4xOCIsImJsb2NrX2NvdW50IjowfQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:13:\"license_valid\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.4\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `hk_postmeta`
--

CREATE TABLE `hk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_postmeta`
--

INSERT INTO `hk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_lock', '1682178161:1'),
(6, 8, '_wp_attached_file', '2023/04/logo-2.png'),
(7, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:678;s:6:\"height\";i:678;s:4:\"file\";s:18:\"2023/04/logo-2.png\";s:8:\"filesize\";i:175323;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:74236;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27907;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-2-678x198.png\";s:5:\"width\";i:678;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47694;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 9, '_wp_attached_file', '2023/04/cropped-logo-2.png'),
(9, 9, '_wp_attachment_context', 'site-icon'),
(10, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2023/04/cropped-logo-2.png\";s:8:\"filesize\";i:152733;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:77664;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28475;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-512x198.png\";s:5:\"width\";i:512;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63873;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66734;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40649;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:26:\"cropped-logo-2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37120;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:24:\"cropped-logo-2-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2909;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 7, '_wp_trash_meta_status', 'publish'),
(12, 7, '_wp_trash_meta_time', '1682178188'),
(13, 2, '_wp_trash_meta_status', 'publish'),
(14, 2, '_wp_trash_meta_time', '1682178535'),
(15, 2, '_wp_desired_post_slug', 'sample-page'),
(16, 3, '_wp_trash_meta_status', 'draft'),
(17, 3, '_wp_trash_meta_time', '1682178537'),
(18, 3, '_wp_desired_post_slug', 'privacy-policy'),
(19, 12, '_edit_last', '1'),
(20, 12, '_edit_lock', '1682946998:1'),
(21, 12, '_wp_page_template', 'page-template/page-home.php'),
(22, 14, '_edit_last', '1'),
(23, 14, '_edit_lock', '1682750926:1'),
(24, 14, '_wp_page_template', 'page-template/page-about.php'),
(25, 16, '_edit_last', '1'),
(26, 16, '_wp_page_template', 'page-template/page-ourservice.php'),
(27, 16, '_edit_lock', '1682181119:1'),
(28, 18, '_edit_last', '1'),
(29, 18, '_wp_page_template', 'page-template/page-ourproduct.php'),
(30, 18, '_edit_lock', '1682946862:1'),
(31, 20, '_edit_last', '1'),
(32, 20, '_wp_page_template', 'default'),
(33, 20, '_edit_lock', '1682178508:1'),
(34, 22, '_menu_item_type', 'post_type'),
(35, 22, '_menu_item_menu_item_parent', '0'),
(36, 22, '_menu_item_object_id', '12'),
(37, 22, '_menu_item_object', 'page'),
(38, 22, '_menu_item_target', ''),
(39, 22, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(40, 22, '_menu_item_xfn', ''),
(41, 22, '_menu_item_url', ''),
(43, 23, '_menu_item_type', 'post_type'),
(44, 23, '_menu_item_menu_item_parent', '0'),
(45, 23, '_menu_item_object_id', '14'),
(46, 23, '_menu_item_object', 'page'),
(47, 23, '_menu_item_target', ''),
(48, 23, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(49, 23, '_menu_item_xfn', ''),
(50, 23, '_menu_item_url', ''),
(52, 24, '_menu_item_type', 'post_type'),
(53, 24, '_menu_item_menu_item_parent', '0'),
(54, 24, '_menu_item_object_id', '20'),
(55, 24, '_menu_item_object', 'page'),
(56, 24, '_menu_item_target', ''),
(57, 24, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(58, 24, '_menu_item_xfn', ''),
(59, 24, '_menu_item_url', ''),
(61, 25, '_menu_item_type', 'post_type'),
(62, 25, '_menu_item_menu_item_parent', '0'),
(63, 25, '_menu_item_object_id', '18'),
(64, 25, '_menu_item_object', 'page'),
(65, 25, '_menu_item_target', ''),
(66, 25, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(67, 25, '_menu_item_xfn', ''),
(68, 25, '_menu_item_url', ''),
(70, 26, '_menu_item_type', 'post_type'),
(71, 26, '_menu_item_menu_item_parent', '0'),
(72, 26, '_menu_item_object_id', '16'),
(73, 26, '_menu_item_object', 'page'),
(74, 26, '_menu_item_target', ''),
(75, 26, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(76, 26, '_menu_item_xfn', ''),
(77, 26, '_menu_item_url', ''),
(79, 27, '_edit_last', '1'),
(80, 27, '_edit_lock', '1682448871:1'),
(81, 27, '_wp_page_template', 'page-template/page-contact.php'),
(82, 29, '_menu_item_type', 'post_type'),
(83, 29, '_menu_item_menu_item_parent', '0'),
(84, 29, '_menu_item_object_id', '27'),
(85, 29, '_menu_item_object', 'page'),
(86, 29, '_menu_item_target', ''),
(87, 29, '_menu_item_classes', 'a:1:{i:0;s:11:\"menu-button\";}'),
(88, 29, '_menu_item_xfn', ''),
(89, 29, '_menu_item_url', ''),
(91, 30, '_edit_last', '1'),
(92, 30, '_edit_lock', '1682445683:1'),
(93, 35, '_edit_last', '1'),
(94, 35, '_edit_lock', '1682447942:1'),
(95, 43, '_edit_last', '1'),
(96, 43, '_edit_lock', '1682446763:1'),
(97, 27, 'contact_phone_no', '+8100-123-13312<br>+1123-123-44565'),
(98, 27, '_contact_phone_no', 'field_644819424f532'),
(99, 27, 'contact_email_address', '<p><a href=\"#\"><span class=\"__cf_email__\" data-cfemail=\"7f17100d100c1c100f1a3f1a071e120f131a511c1012\">[email&#160;protected]</span></a><br><a href=\"#\"><span class=\"__cf_email__\" data-cfemail=\"6f2306190a2f0a170e021f030a410c0002\">[email&#160;protected]</span></a></p>'),
(100, 27, '_contact_email_address', 'field_644819684f533'),
(101, 27, 'contact_address', '<p>123, A Street B Block Dewas,<br>M.P. #455001</p>'),
(102, 27, '_contact_address', 'field_644819884f534'),
(103, 47, 'contact_phone_no', '+8100-123-13312<br>+1123-123-44565'),
(104, 47, '_contact_phone_no', 'field_644819424f532'),
(105, 47, 'contact_email_address', '<p><a href=\"#\"><span class=\"__cf_email__\" data-cfemail=\"7f17100d100c1c100f1a3f1a071e120f131a511c1012\">[email&#160;protected]</span></a><br><a href=\"#\"><span class=\"__cf_email__\" data-cfemail=\"6f2306190a2f0a170e021f030a410c0002\">[email&#160;protected]</span></a></p>'),
(106, 47, '_contact_email_address', 'field_644819684f533'),
(107, 47, 'contact_address', '<p>123, A Street B Block Dewas,<br>M.P. #455001</p>'),
(108, 47, '_contact_address', 'field_644819884f534'),
(109, 48, '_form', '<div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n<div class=\"hs_kd_six_sec_input_wrapper\"><label>Name</label>\n[text* first_name class:require]</div></div>\n<div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n<div class=\"hs_kd_six_sec_input_wrapper\">\n<label>Email</label>\n[email* email class:require]\n</div>\n</div>\n<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n<div class=\"hs_kd_six_sec_input_wrapper\">\n<label>Message</label>\n[textarea message 40x6 class:require]\n</div>\n</div>\n<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n<div class=\"response\"></div>\n<div class=\"hs_contact_indx_form_btn\">\n<ul>\n<li>\n<button  class=\"hs_btn_hover submitForm\">Send a Message</button>\n\n</li>\n\n<li>[response]</li>\n</ul>\n</div>\n</div>'),
(110, 48, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@hks09.com>\";s:9:\"recipient\";s:20:\"hkskundali@gmail.com\";s:4:\"body\";s:37:\"Name : [first_name]\nEmail : [message]\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(111, 48, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@hks09.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(112, 48, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(113, 48, '_additional_settings', ''),
(114, 48, '_locale', 'en_US'),
(127, 1, '_wp_trash_meta_status', 'publish'),
(128, 1, '_wp_trash_meta_time', '1682447917'),
(129, 1, '_wp_desired_post_slug', 'hello-world'),
(130, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(131, 50, '_edit_last', '1'),
(132, 50, '_edit_lock', '1682616174:1'),
(133, 51, '_wp_attached_file', '2023/04/blog1.jpg'),
(134, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:840;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2023/04/blog1.jpg\";s:8:\"filesize\";i:87696;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"blog1-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13278;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8614;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"blog1-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64504;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:17:\"blog1-840x198.jpg\";s:5:\"width\";i:840;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52264;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 50, '_thumbnail_id', '51'),
(138, 53, '_edit_last', '1'),
(139, 53, '_edit_lock', '1682616058:1'),
(140, 53, '_thumbnail_id', '51'),
(143, 55, '_edit_last', '1'),
(144, 55, '_edit_lock', '1682616045:1'),
(145, 55, '_thumbnail_id', '51'),
(154, 58, '_wp_attached_file', '2023/04/about_img.jpg'),
(155, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:470;s:6:\"height\";i:392;s:4:\"file\";s:21:\"2023/04/about_img.jpg\";s:8:\"filesize\";i:46190;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"about_img-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20901;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"about_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7681;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:21:\"about_img-470x198.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26388;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 14, '_thumbnail_id', '58'),
(157, 59, '_edit_last', '1'),
(158, 59, '_edit_lock', '1682619872:1'),
(159, 60, '_edit_last', '1'),
(160, 60, '_edit_lock', '1682619847:1'),
(161, 63, '_edit_last', '1'),
(162, 63, '_edit_lock', '1682711673:1'),
(163, 69, '_wp_attached_file', '2023/04/pgress_img.jpg'),
(164, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:570;s:6:\"height\";i:395;s:4:\"file\";s:22:\"2023/04/pgress_img.jpg\";s:8:\"filesize\";i:51805;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"pgress_img-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19577;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"pgress_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8959;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"pgress_img-570x198.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36289;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 14, 'about_title', 'Our Horoscope Progress'),
(166, 14, '_about_title', 'field_644c18e14bafb'),
(167, 14, 'about_image', '69'),
(168, 14, '_about_image', 'field_644c191c4bafc'),
(169, 14, 'faq_section_0_faq_title', 'Raboto Font use for this site'),
(170, 14, '_faq_section_0_faq_title', 'field_644c198c4bafe'),
(171, 14, 'faq_section_0_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(172, 14, '_faq_section_0_faq_content', 'field_644c19bc4baff'),
(173, 14, 'faq_section_1_faq_title', 'Cryptocurrency - Who Are Involved With It ?'),
(174, 14, '_faq_section_1_faq_title', 'field_644c198c4bafe'),
(175, 14, 'faq_section_1_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(176, 14, '_faq_section_1_faq_content', 'field_644c19bc4baff'),
(177, 14, 'faq_section_2_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(178, 14, '_faq_section_2_faq_title', 'field_644c198c4bafe'),
(179, 14, 'faq_section_2_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(180, 14, '_faq_section_2_faq_content', 'field_644c19bc4baff'),
(181, 14, 'faq_section_3_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(182, 14, '_faq_section_3_faq_title', 'field_644c198c4bafe'),
(183, 14, 'faq_section_3_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(184, 14, '_faq_section_3_faq_content', 'field_644c19bc4baff'),
(185, 14, 'faq_section', '4'),
(186, 14, '_faq_section', 'field_644c194b4bafd'),
(187, 70, 'about_title', 'Our Horoscope Progress'),
(188, 70, '_about_title', 'field_644c18e14bafb'),
(189, 70, 'about_image', '69'),
(190, 70, '_about_image', 'field_644c191c4bafc'),
(191, 70, 'faq_section_0_faq_title', 'Raboto Font use for this site'),
(192, 70, '_faq_section_0_faq_title', 'field_644c198c4bafe'),
(193, 70, 'faq_section_0_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(194, 70, '_faq_section_0_faq_content', 'field_644c19bc4baff'),
(195, 70, 'faq_section_1_faq_title', 'Cryptocurrency - Who Are Involved With It ?'),
(196, 70, '_faq_section_1_faq_title', 'field_644c198c4bafe'),
(197, 70, 'faq_section_1_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(198, 70, '_faq_section_1_faq_content', 'field_644c19bc4baff'),
(199, 70, 'faq_section_2_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(200, 70, '_faq_section_2_faq_title', 'field_644c198c4bafe'),
(201, 70, 'faq_section_2_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(202, 70, '_faq_section_2_faq_content', 'field_644c19bc4baff'),
(203, 70, 'faq_section_3_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(204, 70, '_faq_section_3_faq_title', 'field_644c198c4bafe'),
(205, 70, 'faq_section_3_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(206, 70, '_faq_section_3_faq_content', 'field_644c19bc4baff'),
(207, 70, 'faq_section', '4'),
(208, 70, '_faq_section', 'field_644c194b4bafd'),
(209, 14, 'our_expert_content', ' <h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(210, 14, '_our_expert_content', 'field_644c1fcf59c2e'),
(211, 76, 'about_title', 'Our Horoscope Progress'),
(212, 76, '_about_title', 'field_644c18e14bafb'),
(213, 76, 'about_image', '69'),
(214, 76, '_about_image', 'field_644c191c4bafc'),
(215, 76, 'faq_section_0_faq_title', 'Raboto Font use for this site'),
(216, 76, '_faq_section_0_faq_title', 'field_644c198c4bafe'),
(217, 76, 'faq_section_0_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(218, 76, '_faq_section_0_faq_content', 'field_644c19bc4baff'),
(219, 76, 'faq_section_1_faq_title', 'Cryptocurrency - Who Are Involved With It ?'),
(220, 76, '_faq_section_1_faq_title', 'field_644c198c4bafe'),
(221, 76, 'faq_section_1_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(222, 76, '_faq_section_1_faq_content', 'field_644c19bc4baff'),
(223, 76, 'faq_section_2_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(224, 76, '_faq_section_2_faq_title', 'field_644c198c4bafe'),
(225, 76, 'faq_section_2_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(226, 76, '_faq_section_2_faq_content', 'field_644c19bc4baff'),
(227, 76, 'faq_section_3_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(228, 76, '_faq_section_3_faq_title', 'field_644c198c4bafe'),
(229, 76, 'faq_section_3_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(230, 76, '_faq_section_3_faq_content', 'field_644c19bc4baff'),
(231, 76, 'faq_section', '4'),
(232, 76, '_faq_section', 'field_644c194b4bafd'),
(233, 76, 'our_expert_content', ' <h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(234, 76, '_our_expert_content', 'field_644c1fcf59c2e'),
(235, 77, '_wp_attached_file', '2023/04/online3.jpg'),
(236, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2023/04/online3.jpg\";s:8:\"filesize\";i:3702;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 78, '_wp_attached_file', '2023/04/online4.jpg'),
(238, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2023/04/online4.jpg\";s:8:\"filesize\";i:4823;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 79, '_wp_attached_file', '2023/04/online2.jpg'),
(240, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2023/04/online2.jpg\";s:8:\"filesize\";i:3765;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 80, '_wp_attached_file', '2023/04/online1.jpg'),
(242, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2023/04/online1.jpg\";s:8:\"filesize\";i:3702;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 14, 'about_expert', 'a:4:{i:0;s:2:\"77\";i:1;s:2:\"78\";i:2;s:2:\"79\";i:3;s:2:\"80\";}'),
(244, 14, '_about_expert', 'field_644c203ae79de'),
(245, 81, 'about_title', 'Our Horoscope Progress'),
(246, 81, '_about_title', 'field_644c18e14bafb'),
(247, 81, 'about_image', '69'),
(248, 81, '_about_image', 'field_644c191c4bafc'),
(249, 81, 'faq_section_0_faq_title', 'Raboto Font use for this site'),
(250, 81, '_faq_section_0_faq_title', 'field_644c198c4bafe'),
(251, 81, 'faq_section_0_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(252, 81, '_faq_section_0_faq_content', 'field_644c19bc4baff'),
(253, 81, 'faq_section_1_faq_title', 'Cryptocurrency - Who Are Involved With It ?'),
(254, 81, '_faq_section_1_faq_title', 'field_644c198c4bafe'),
(255, 81, 'faq_section_1_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(256, 81, '_faq_section_1_faq_content', 'field_644c19bc4baff'),
(257, 81, 'faq_section_2_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(258, 81, '_faq_section_2_faq_title', 'field_644c198c4bafe'),
(259, 81, 'faq_section_2_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(260, 81, '_faq_section_2_faq_content', 'field_644c19bc4baff'),
(261, 81, 'faq_section_3_faq_title', 'Risks & Rewards Of Investing In Bitcoin ?'),
(262, 81, '_faq_section_3_faq_title', 'field_644c198c4bafe'),
(263, 81, 'faq_section_3_faq_content', 'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.'),
(264, 81, '_faq_section_3_faq_content', 'field_644c19bc4baff'),
(265, 81, 'faq_section', '4'),
(266, 81, '_faq_section', 'field_644c194b4bafd'),
(267, 81, 'our_expert_content', ' <h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(268, 81, '_our_expert_content', 'field_644c1fcf59c2e'),
(269, 81, 'about_expert', 'a:4:{i:0;s:2:\"77\";i:1;s:2:\"78\";i:2;s:2:\"79\";i:3;s:2:\"80\";}'),
(270, 81, '_about_expert', 'field_644c203ae79de'),
(271, 83, '_edit_last', '1'),
(272, 83, '_edit_lock', '1682713785:1'),
(273, 84, '_edit_last', '1'),
(274, 84, '_edit_lock', '1682716184:1'),
(275, 83, 'fab_icon', 'flaticon-success'),
(276, 83, '_fab_icon', 'field_644c250d9fb85'),
(277, 86, '_edit_last', '1'),
(278, 86, '_edit_lock', '1682714336:1'),
(279, 86, 'fab_icon', 'flaticon-marry-me'),
(280, 86, '_fab_icon', 'field_644c250d9fb85'),
(281, 87, '_edit_last', '1'),
(282, 87, '_edit_lock', '1682713775:1'),
(283, 87, 'fab_icon', 'flaticon-islamic-temple'),
(284, 87, '_fab_icon', 'field_644c250d9fb85'),
(285, 88, '_edit_last', '1'),
(286, 88, '_edit_lock', '1682714316:1'),
(287, 88, 'fab_icon', 'flaticon-pregnancy'),
(288, 88, '_fab_icon', 'field_644c250d9fb85'),
(289, 89, '_edit_last', '1'),
(290, 89, '_edit_lock', '1682713808:1'),
(291, 89, 'fab_icon', 'flaticon-engagement-ring'),
(292, 89, '_fab_icon', 'field_644c250d9fb85'),
(293, 90, '_edit_last', '1'),
(294, 90, '_edit_lock', '1682947040:1'),
(295, 90, 'fab_icon', 'flaticon-animal'),
(296, 90, '_fab_icon', 'field_644c250d9fb85'),
(297, 91, '_edit_last', '1'),
(298, 91, '_edit_lock', '1682714340:1'),
(299, 91, 'fab_icon', 'flaticon-giftboxes'),
(300, 91, '_fab_icon', 'field_644c250d9fb85'),
(301, 92, '_edit_last', '1'),
(302, 92, '_edit_lock', '1682714331:1'),
(303, 92, 'fab_icon', 'flaticon-baby-with-diaper'),
(304, 92, '_fab_icon', 'field_644c250d9fb85'),
(305, 94, '_edit_last', '1'),
(306, 94, '_edit_lock', '1682715786:1'),
(307, 95, '_edit_last', '1'),
(308, 95, '_edit_lock', '1682715829:1'),
(309, 96, '_edit_last', '1'),
(310, 96, '_edit_lock', '1682745277:1'),
(311, 97, '_wp_attached_file', '2023/04/1.jpg'),
(312, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:555;s:6:\"height\";i:457;s:4:\"file\";s:13:\"2023/04/1.jpg\";s:8:\"filesize\";i:56136;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"1-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12819;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9608;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"1-555x198.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21796;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(313, 96, '_thumbnail_id', '97'),
(314, 98, '_edit_last', '1'),
(315, 98, '_edit_lock', '1682745936:1'),
(316, 99, '_wp_attached_file', '2023/04/2.jpg'),
(317, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:221;s:4:\"file\";s:13:\"2023/04/2.jpg\";s:8:\"filesize\";i:9885;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5269;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"2-268x198.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9757;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 98, '_thumbnail_id', '99'),
(319, 100, '_edit_last', '1'),
(320, 100, '_edit_lock', '1682746207:1'),
(321, 101, '_wp_attached_file', '2023/04/3.jpg'),
(322, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:221;s:4:\"file\";s:13:\"2023/04/3.jpg\";s:8:\"filesize\";i:7512;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4126;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"3-268x198.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7365;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 100, '_thumbnail_id', '101'),
(324, 102, '_edit_last', '1'),
(325, 102, '_edit_lock', '1682745917:1'),
(326, 103, '_wp_attached_file', '2023/04/4.jpg'),
(327, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:221;s:4:\"file\";s:13:\"2023/04/4.jpg\";s:8:\"filesize\";i:13087;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6898;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"4-268x198.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12770;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 102, '_thumbnail_id', '103'),
(329, 104, '_edit_last', '1'),
(330, 104, '_edit_lock', '1682745895:1'),
(331, 105, '_wp_attached_file', '2023/04/5.jpg'),
(332, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:221;s:4:\"file\";s:13:\"2023/04/5.jpg\";s:8:\"filesize\";i:6811;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3832;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"5-268x198.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6699;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 104, '_thumbnail_id', '105'),
(334, 106, '_edit_last', '1'),
(335, 106, '_edit_lock', '1682745716:1'),
(336, 107, '_wp_attached_file', '2023/04/6.jpg'),
(337, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:221;s:4:\"file\";s:13:\"2023/04/6.jpg\";s:8:\"filesize\";i:12550;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6105;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:13:\"6-268x198.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11964;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 106, '_thumbnail_id', '107'),
(339, 108, '_edit_last', '1'),
(340, 108, '_edit_lock', '1682750918:1'),
(341, 112, '_wp_attached_file', '2023/04/banner.png'),
(342, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:989;s:6:\"height\";i:868;s:4:\"file\";s:18:\"2023/04/banner.png\";s:8:\"filesize\";i:549274;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"banner-300x263.png\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:73549;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28619;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"banner-768x674.png\";s:5:\"width\";i:768;s:6:\"height\";i:674;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:365661;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-940x198.png\";s:5:\"width\";i:940;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:167706;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 12, 'banner_0_banner_image', '128'),
(344, 12, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(345, 12, 'banner', '1'),
(346, 12, '_banner', 'field_644cae041be3e'),
(347, 113, 'banner_0_banner_image', ''),
(348, 113, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(349, 113, 'banner', '1'),
(350, 113, '_banner', 'field_644cae041be3e'),
(351, 114, 'banner_0_banner_image', '58'),
(352, 114, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(353, 114, 'banner', '1'),
(354, 114, '_banner', 'field_644cae041be3e'),
(355, 12, 'home_about_iage', '58'),
(356, 12, '_home_about_iage', 'field_644cb9a73e47a'),
(357, 12, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(358, 12, '_home_about_content', 'field_644cb9bc3e47b'),
(359, 114, 'home_about_iage', ''),
(360, 114, '_home_about_iage', 'field_644cb9a73e47a'),
(361, 114, 'home_about_content', ''),
(362, 114, '_home_about_content', 'field_644cb9bc3e47b'),
(363, 118, 'banner_0_banner_image', '58'),
(364, 118, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(365, 118, 'banner', '1'),
(366, 118, '_banner', 'field_644cae041be3e'),
(367, 118, 'home_about_iage', '58'),
(368, 118, '_home_about_iage', 'field_644cb9a73e47a'),
(369, 118, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(370, 118, '_home_about_content', 'field_644cb9bc3e47b'),
(371, 12, 'stop_self-sabotage_content', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(372, 12, '_stop_self-sabotage_content', 'field_644cbb146c98a'),
(373, 121, 'banner_0_banner_image', '58'),
(374, 121, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(375, 121, 'banner', '1'),
(376, 121, '_banner', 'field_644cae041be3e'),
(377, 121, 'home_about_iage', '58'),
(378, 121, '_home_about_iage', 'field_644cb9a73e47a'),
(379, 121, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(380, 121, '_home_about_content', 'field_644cb9bc3e47b'),
(381, 121, 'stop_self-sabotage_content', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(382, 121, '_stop_self-sabotage_content', 'field_644cbb146c98a'),
(383, 12, 'stop_self', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(384, 12, '_stop_self', 'field_644cbb146c98a'),
(385, 121, 'stop_self', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(386, 121, '_stop_self', 'field_644cbb146c98a'),
(387, 12, 'speak_to_our_expert', '<h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(388, 12, '_speak_to_our_expert', 'field_644cbcfa0484d'),
(389, 124, 'banner_0_banner_image', '58'),
(390, 124, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(391, 124, 'banner', '1'),
(392, 124, '_banner', 'field_644cae041be3e'),
(393, 124, 'home_about_iage', '58'),
(394, 124, '_home_about_iage', 'field_644cb9a73e47a'),
(395, 124, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(396, 124, '_home_about_content', 'field_644cb9bc3e47b'),
(397, 124, 'stop_self-sabotage_content', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(398, 124, '_stop_self-sabotage_content', 'field_644cbb146c98a'),
(399, 124, 'stop_self', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(400, 124, '_stop_self', 'field_644cbb146c98a'),
(401, 124, 'speak_to_our_expert', '<h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(402, 124, '_speak_to_our_expert', 'field_644cbcfa0484d'),
(403, 12, 'speak_to_our_expert_gallery', 'a:4:{i:0;s:2:\"80\";i:1;s:2:\"79\";i:2;s:2:\"78\";i:3;s:2:\"77\";}'),
(404, 12, '_speak_to_our_expert_gallery', 'field_644cbd7591f14'),
(405, 126, 'banner_0_banner_image', '58'),
(406, 126, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(407, 126, 'banner', '1'),
(408, 126, '_banner', 'field_644cae041be3e'),
(409, 126, 'home_about_iage', '58'),
(410, 126, '_home_about_iage', 'field_644cb9a73e47a'),
(411, 126, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(412, 126, '_home_about_content', 'field_644cb9bc3e47b'),
(413, 126, 'stop_self-sabotage_content', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(414, 126, '_stop_self-sabotage_content', 'field_644cbb146c98a'),
(415, 126, 'stop_self', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(416, 126, '_stop_self', 'field_644cbb146c98a'),
(417, 126, 'speak_to_our_expert', '<h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(418, 126, '_speak_to_our_expert', 'field_644cbcfa0484d'),
(419, 126, 'speak_to_our_expert_gallery', 'a:4:{i:0;s:2:\"80\";i:1;s:2:\"79\";i:2;s:2:\"78\";i:3;s:2:\"77\";}'),
(420, 126, '_speak_to_our_expert_gallery', 'field_644cbd7591f14'),
(421, 128, '_wp_attached_file', '2023/05/HKS.BANNER.PNG.png'),
(422, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4728;s:6:\"height\";i:2967;s:4:\"file\";s:26:\"2023/05/HKS.BANNER.PNG.png\";s:8:\"filesize\";i:704198;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"HKS.BANNER.PNG-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44704;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"HKS.BANNER.PNG-1024x643.png\";s:5:\"width\";i:1024;s:6:\"height\";i:643;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:272556;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"HKS.BANNER.PNG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21830;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"HKS.BANNER.PNG-768x482.png\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:181675;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"HKS.BANNER.PNG-1536x964.png\";s:5:\"width\";i:1536;s:6:\"height\";i:964;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:484483;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"HKS.BANNER.PNG-2048x1285.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1285;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:722319;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"HKS.BANNER.PNG-940x198.png\";s:5:\"width\";i:940;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:132328;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 129, 'banner_0_banner_image', '128'),
(424, 129, '_banner_0_banner_image', 'field_644cae2a1be3f'),
(425, 129, 'banner', '1'),
(426, 129, '_banner', 'field_644cae041be3e'),
(427, 129, 'home_about_iage', '58'),
(428, 129, '_home_about_iage', 'field_644cb9a73e47a'),
(429, 129, 'home_about_content', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                         '),
(430, 129, '_home_about_content', 'field_644cb9bc3e47b'),
(431, 129, 'stop_self-sabotage_content', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(432, 129, '_stop_self-sabotage_content', 'field_644cbb146c98a');
INSERT INTO `hk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(433, 129, 'stop_self', '<h1>STOP SELF-SABOTAGE: USING<br> THE ZODIAC TO GET YOUR LIFE BACK ON TRACK</h1>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec<br> sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>\r\n              '),
(434, 129, '_stop_self', 'field_644cbb146c98a'),
(435, 129, 'speak_to_our_expert', '<h2>speak to <span>our expert !</span></h2>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.</p>'),
(436, 129, '_speak_to_our_expert', 'field_644cbcfa0484d'),
(437, 129, 'speak_to_our_expert_gallery', 'a:4:{i:0;s:2:\"80\";i:1;s:2:\"79\";i:2;s:2:\"78\";i:3;s:2:\"77\";}'),
(438, 129, '_speak_to_our_expert_gallery', 'field_644cbd7591f14');

-- --------------------------------------------------------

--
-- Table structure for table `hk_posts`
--

CREATE TABLE `hk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_posts`
--

INSERT INTO `hk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-04-22 15:28:33', '2023-04-22 15:28:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-04-25 18:38:37', '2023-04-25 18:38:37', '', 0, 'http://hks09.com/dev/?p=1', 0, 'post', '', 1),
(2, 1, '2023-04-22 15:28:33', '2023-04-22 15:28:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://hks09.com/dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-04-22 15:48:55', '2023-04-22 15:48:55', '', 0, 'http://hks09.com/dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-04-22 15:28:33', '2023-04-22 15:28:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://hks09.com/dev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-04-22 15:48:57', '2023-04-22 15:48:57', '', 0, 'http://hks09.com/dev/?page_id=3', 0, 'page', '', 0),
(7, 1, '2023-04-22 15:43:08', '2023-04-22 15:43:08', '{\n    \"blogdescription\": {\n        \"value\": \"Home\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-04-22 15:42:41\"\n    },\n    \"site_icon\": {\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-04-22 15:43:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '071b2dff-5b1c-479f-9605-c672e2c6005b', '', '', '2023-04-22 15:43:08', '2023-04-22 15:43:08', '', 0, 'http://hks09.com/dev/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2023-04-22 15:42:59', '2023-04-22 15:42:59', '', 'logo (2)', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2023-04-22 15:42:59', '2023-04-22 15:42:59', '', 0, 'http://hks09.com/dev/wp-content/uploads/2023/04/logo-2.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2023-04-22 15:43:06', '2023-04-22 15:43:06', 'http://hks09.com/dev/wp-content/uploads/2023/04/cropped-logo-2.png', 'cropped-logo-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-2-png', '', '', '2023-04-22 15:43:06', '2023-04-22 15:43:06', '', 0, 'http://hks09.com/dev/wp-content/uploads/2023/04/cropped-logo-2.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2023-04-22 15:48:55', '2023-04-22 15:48:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://hks09.com/dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-04-22 15:48:55', '2023-04-22 15:48:55', '', 2, 'http://hks09.com/dev/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-04-22 15:48:57', '2023-04-22 15:48:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://hks09.com/dev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-04-22 15:48:57', '2023-04-22 15:48:57', '', 3, 'http://hks09.com/dev/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-04-22 15:49:22', '2023-04-22 15:49:22', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-05-01 13:18:31', '2023-05-01 13:18:31', '', 0, 'http://hks09.com/dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-04-22 15:49:22', '2023-04-22 15:49:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-22 15:49:22', '2023-04-22 15:49:22', '', 12, 'http://hks09.com/dev/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-04-22 15:49:48', '2023-04-22 15:49:48', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p><br />\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                          ', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-04-28 19:38:44', '2023-04-28 19:38:44', '', 0, 'http://hks09.com/dev/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-04-22 15:49:48', '2023-04-22 15:49:48', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-04-22 15:49:48', '2023-04-22 15:49:48', '', 14, 'http://hks09.com/dev/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-04-22 15:49:59', '2023-04-22 15:49:59', '', 'Our Services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2023-04-22 16:32:28', '2023-04-22 16:32:28', '', 0, 'http://hks09.com/dev/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-04-22 15:49:59', '2023-04-22 15:49:59', '', 'Our Services', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-04-22 15:49:59', '2023-04-22 15:49:59', '', 16, 'http://hks09.com/dev/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-04-22 15:50:37', '2023-04-22 15:50:37', '', 'Our Products', '', 'publish', 'closed', 'closed', '', 'our-products', '', '', '2023-04-22 16:34:30', '2023-04-22 16:34:30', '', 0, 'http://hks09.com/dev/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-04-22 15:50:37', '2023-04-22 15:50:37', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-04-22 15:50:37', '2023-04-22 15:50:37', '', 18, 'http://hks09.com/dev/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-04-22 15:50:50', '2023-04-22 15:50:50', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2023-04-22 15:50:50', '2023-04-22 15:50:50', '', 0, 'http://hks09.com/dev/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-04-22 15:50:50', '2023-04-22 15:50:50', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-04-22 15:50:50', '2023-04-22 15:50:50', '', 20, 'http://hks09.com/dev/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:18', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:18', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:18', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:18', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:18', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2023-04-22 16:00:43', '2023-04-22 16:00:43', '<h2>Need Help <span>Contact Us</span></h2>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-04-25 18:20:17', '2023-04-25 18:20:17', '', 0, 'http://hks09.com/dev/?page_id=27', 0, 'page', '', 0),
(28, 1, '2023-04-22 16:00:43', '2023-04-22 16:00:43', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-04-22 16:00:43', '2023-04-22 16:00:43', '', 27, 'http://hks09.com/dev/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-04-22 16:21:26', '2023-04-22 16:00:57', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2023-04-22 16:21:26', '2023-04-22 16:21:26', '', 0, 'http://hks09.com/dev/?p=29', 6, 'nav_menu_item', '', 0),
(30, 1, '2023-04-25 17:57:09', '2023-04-25 17:57:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Header Section', 'header-section', 'publish', 'closed', 'closed', '', 'group_644813cd24f32', '', '', '2023-04-25 17:57:09', '2023-04-25 17:57:09', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2023-04-25 17:57:09', '2023-04-25 17:57:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_644813cd0aefc', '', '', '2023-04-25 17:57:09', '2023-04-25 17:57:09', '', 30, 'http://hks09.com/dev/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2023-04-25 17:57:09', '2023-04-25 17:57:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Reach Us', 'reach_us', 'publish', 'closed', 'closed', '', 'field_6448142e0aefd', '', '', '2023-04-25 17:57:09', '2023-04-25 17:57:09', '', 30, 'http://hks09.com/dev/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2023-04-25 17:57:09', '2023-04-25 17:57:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Talk to Astrologers', 'talk_to_astrologers', 'publish', 'closed', 'closed', '', 'field_644814430aefe', '', '', '2023-04-25 17:57:09', '2023-04-25 17:57:09', '', 30, 'http://hks09.com/dev/?post_type=acf-field&p=33', 2, 'acf-field', '', 0),
(34, 1, '2023-04-25 17:57:09', '2023-04-25 17:57:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_644814600aeff', '', '', '2023-04-25 17:57:09', '2023-04-25 17:57:09', '', 30, 'http://hks09.com/dev/?post_type=acf-field&p=34', 3, 'acf-field', '', 0),
(35, 1, '2023-04-25 18:05:35', '2023-04-25 18:05:35', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Footer Setting', 'footer-setting', 'publish', 'closed', 'closed', '', 'group_6448160cc29da', '', '', '2023-04-25 18:10:46', '2023-04-25 18:10:46', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2023-04-25 18:05:35', '2023-04-25 18:05:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'NEED OUR HELP', 'need_our_help', 'publish', 'closed', 'closed', '', 'field_6448160d9dc0c', '', '', '2023-04-25 18:05:35', '2023-04-25 18:05:35', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2023-04-25 18:05:35', '2023-04-25 18:05:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'NEED OUR HELP2', 'need_our_help2', 'publish', 'closed', 'closed', '', 'field_644816269dc0d', '', '', '2023-04-25 18:05:35', '2023-04-25 18:05:35', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2023-04-25 18:05:35', '2023-04-25 18:05:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'CONTACT US TODAY', 'contact_us_today', 'publish', 'closed', 'closed', '', 'field_6448164e9dc0e', '', '', '2023-04-25 18:05:35', '2023-04-25 18:05:35', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=38', 2, 'acf-field', '', 0),
(39, 1, '2023-04-25 18:10:46', '2023-04-25 18:10:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Facebook link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_6448178406a7f', '', '', '2023-04-25 18:10:46', '2023-04-25 18:10:46', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=39', 3, 'acf-field', '', 0),
(40, 1, '2023-04-25 18:10:46', '2023-04-25 18:10:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Instagram link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_6448178f06a80', '', '', '2023-04-25 18:10:46', '2023-04-25 18:10:46', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=40', 4, 'acf-field', '', 0),
(41, 1, '2023-04-25 18:10:46', '2023-04-25 18:10:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Youtube link', 'youtube_link', 'publish', 'closed', 'closed', '', 'field_6448179c06a81', '', '', '2023-04-25 18:10:46', '2023-04-25 18:10:46', '', 35, 'http://hks09.com/dev/?post_type=acf-field&p=41', 5, 'acf-field', '', 0),
(42, 1, '2023-04-25 18:16:45', '2023-04-25 18:16:45', '<h2>Need Help <span>Contact Us</span></h2>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-04-25 18:16:45', '2023-04-25 18:16:45', '', 27, 'http://hks09.com/dev/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-04-25 18:19:04', '2023-04-25 18:19:04', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"page-template/page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact Content', 'contact-content', 'publish', 'closed', 'closed', '', 'group_6448194249ac2', '', '', '2023-04-25 18:19:13', '2023-04-25 18:19:13', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=43', 0, 'acf-field-group', '', 0),
(44, 1, '2023-04-25 18:19:04', '2023-04-25 18:19:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact Phone No', 'contact_phone_no', 'publish', 'closed', 'closed', '', 'field_644819424f532', '', '', '2023-04-25 18:19:04', '2023-04-25 18:19:04', '', 43, 'http://hks09.com/dev/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2023-04-25 18:19:04', '2023-04-25 18:19:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact Email Address', 'contact_email_address', 'publish', 'closed', 'closed', '', 'field_644819684f533', '', '', '2023-04-25 18:19:04', '2023-04-25 18:19:04', '', 43, 'http://hks09.com/dev/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(46, 1, '2023-04-25 18:19:04', '2023-04-25 18:19:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Contact Address', 'contact_address', 'publish', 'closed', 'closed', '', 'field_644819884f534', '', '', '2023-04-25 18:19:04', '2023-04-25 18:19:04', '', 43, 'http://hks09.com/dev/?post_type=acf-field&p=46', 2, 'acf-field', '', 0),
(47, 1, '2023-04-25 18:20:17', '2023-04-25 18:20:17', '<h2>Need Help <span>Contact Us</span></h2>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-04-25 18:20:17', '2023-04-25 18:20:17', '', 27, 'http://hks09.com/dev/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-04-25 18:22:21', '2023-04-25 18:22:21', '<div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\r\n<div class=\"hs_kd_six_sec_input_wrapper\"><label>Name</label>\r\n[text* first_name class:require]</div></div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\r\n<div class=\"hs_kd_six_sec_input_wrapper\">\r\n<label>Email</label>\r\n[email* email class:require]\r\n</div>\r\n</div>\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n<div class=\"hs_kd_six_sec_input_wrapper\">\r\n<label>Message</label>\r\n[textarea message 40x6 class:require]\r\n</div>\r\n</div>\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n<div class=\"response\"></div>\r\n<div class=\"hs_contact_indx_form_btn\">\r\n<ul>\r\n<li>\r\n<button  class=\"hs_btn_hover submitForm\">Send a Message</button>\r\n\r\n</li>\r\n\r\n<li>[response]</li>\r\n</ul>\r\n</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@hks09.com>\nhkskundali@gmail.com\nName : [first_name]\r\nEmail : [message]\nReply-To: [email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@hks09.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-04-25 18:41:44', '2023-04-25 18:41:44', '', 0, 'http://hks09.com/dev/?post_type=wpcf7_contact_form&#038;p=48', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2023-04-25 18:38:37', '2023-04-25 18:38:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-04-25 18:38:37', '2023-04-25 18:38:37', '', 1, 'http://hks09.com/dev/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-04-25 18:42:32', '2023-04-25 18:42:32', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN.', '', 'publish', 'open', 'open', '', 'rahu-enters-cancer-and-ketu-enters-capricorn', '', '', '2023-04-27 17:23:35', '2023-04-27 17:23:35', '', 0, 'http://hks09.com/dev/?p=50', 0, 'post', '', 0),
(51, 1, '2023-04-25 18:39:38', '2023-04-25 18:39:38', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2023-04-25 18:39:38', '2023-04-25 18:39:38', '', 50, 'http://hks09.com/dev/wp-content/uploads/2023/04/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2023-04-25 18:42:32', '2023-04-25 18:42:32', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN.', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-04-25 18:42:32', '2023-04-25 18:42:32', '', 50, 'http://hks09.com/dev/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-04-27 16:55:36', '2023-04-27 16:55:36', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN2', '', 'publish', 'open', 'open', '', 'rahu-enters-cancer-and-ketu-enters-capricorn2', '', '', '2023-04-27 17:23:21', '2023-04-27 17:23:21', '', 0, 'http://hks09.com/dev/?p=53', 0, 'post', '', 0),
(54, 1, '2023-04-27 16:55:36', '2023-04-27 16:55:36', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN2', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-04-27 16:55:36', '2023-04-27 16:55:36', '', 53, 'http://hks09.com/dev/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-04-27 16:55:59', '2023-04-27 16:55:59', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN3', '', 'publish', 'open', 'open', '', 'rahu-enters-cancer-and-ketu-enters-capricorn3', '', '', '2023-04-27 17:23:07', '2023-04-27 17:23:07', '', 0, 'http://hks09.com/dev/?p=55', 0, 'post', '', 0),
(56, 1, '2023-04-27 16:55:59', '2023-04-27 16:55:59', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dlore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n                                                ex ea odo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n                                                mollit anim id est labrum. Sed ut perspiciatis unde omnis iste natus error sit.<br><br>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore atis et quasi architecto\r\n                                                beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit rnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam\r\n                                                est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non mquam eius modi tempora incidunt ut labore et dolore.</p>\r\n', 'RAHU ENTERS CANCER AND KETU ENTERS CAPRICORN3', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2023-04-27 16:55:59', '2023-04-27 16:55:59', '', 55, 'http://hks09.com/dev/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-04-27 18:21:30', '2023-04-27 18:21:30', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p><br />\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                          ', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-04-27 18:21:30', '2023-04-27 18:21:30', '', 14, 'http://hks09.com/dev/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-04-27 18:22:11', '2023-04-27 18:22:11', '', 'about_img', '', 'inherit', 'open', 'closed', '', 'about_img', '', '', '2023-04-27 18:22:11', '2023-04-27 18:22:11', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/about_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2023-04-27 18:25:43', '2023-04-27 18:25:43', 'a:28:{s:8:\"taxonomy\";s:7:\"service\";s:11:\"object_type\";a:1:{i:0;s:8:\"services\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"Our Service\";s:13:\"singular_name\";s:7:\"Service\";s:9:\"menu_name\";s:11:\"Our Service\";s:9:\"all_items\";s:15:\"All Our Service\";s:9:\"edit_item\";s:12:\"Edit Service\";s:9:\"view_item\";s:12:\"View Service\";s:11:\"update_item\";s:14:\"Update Service\";s:12:\"add_new_item\";s:15:\"Add New Service\";s:13:\"new_item_name\";s:16:\"New Service Name\";s:12:\"search_items\";s:18:\"Search Our Service\";s:13:\"popular_items\";s:19:\"Popular Our Service\";s:26:\"separate_items_with_commas\";s:32:\"Separate our service with commas\";s:19:\"add_or_remove_items\";s:25:\"Add or remove our service\";s:21:\"choose_from_most_used\";s:37:\"Choose from the most used our service\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:20:\"No our service found\";s:8:\"no_terms\";s:14:\"No our service\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:27:\"Our Service list navigation\";s:10:\"items_list\";s:16:\"Our Service list\";s:13:\"back_to_items\";s:21:\"← Go to our service\";s:9:\"item_link\";s:12:\"Service Link\";s:21:\"item_link_description\";s:19:\"A link to a service\";}s:11:\"description\";s:0:\"\";s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Our Service', 'our-service', 'publish', 'closed', 'closed', '', 'taxonomy_644abe05cdfbc', '', '', '2023-04-27 18:26:52', '2023-04-27 18:26:52', '', 0, 'http://hks09.com/dev/?post_type=acf-taxonomy&#038;p=59', 0, 'acf-taxonomy', '', 0);
INSERT INTO `hk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2023-04-27 18:26:22', '2023-04-27 18:26:22', 'a:34:{s:9:\"post_type\";s:8:\"services\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"Services\";s:13:\"singular_name\";s:8:\"Services\";s:9:\"menu_name\";s:8:\"Services\";s:9:\"all_items\";s:12:\"All Services\";s:9:\"edit_item\";s:13:\"Edit Services\";s:9:\"view_item\";s:13:\"View Services\";s:10:\"view_items\";s:13:\"View Services\";s:12:\"add_new_item\";s:16:\"Add New Services\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:12:\"New Services\";s:17:\"parent_item_colon\";s:16:\"Parent Services:\";s:12:\"search_items\";s:15:\"Search Services\";s:9:\"not_found\";s:17:\"No services found\";s:18:\"not_found_in_trash\";s:26:\"No services found in Trash\";s:8:\"archives\";s:17:\"Services Archives\";s:10:\"attributes\";s:19:\"Services Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:20:\"Insert into services\";s:21:\"uploaded_to_this_item\";s:25:\"Uploaded to this services\";s:17:\"filter_items_list\";s:20:\"Filter services list\";s:14:\"filter_by_date\";s:23:\"Filter services by date\";s:21:\"items_list_navigation\";s:24:\"Services list navigation\";s:10:\"items_list\";s:13:\"Services list\";s:14:\"item_published\";s:19:\"Services published.\";s:24:\"item_published_privately\";s:29:\"Services published privately.\";s:22:\"item_reverted_to_draft\";s:27:\"Services reverted to draft.\";s:14:\"item_scheduled\";s:19:\"Services scheduled.\";s:12:\"item_updated\";s:17:\"Services updated.\";s:9:\"item_link\";s:13:\"Services Link\";s:21:\"item_link_description\";s:21:\"A link to a services.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:7:\"service\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'post_type_644abe3098469', '', '', '2023-04-27 18:26:22', '2023-04-27 18:26:22', '', 0, 'http://hks09.com/dev/?post_type=acf-post-type&#038;p=60', 0, 'acf-post-type', '', 0),
(63, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"page-template/page-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Content Section', 'about-content-section', 'publish', 'closed', 'closed', '', 'group_644c18e039366', '', '', '2023-04-28 19:36:53', '2023-04-28 19:36:53', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Title', 'about_title', 'publish', 'closed', 'closed', '', 'field_644c18e14bafb', '', '', '2023-04-28 19:33:22', '2023-04-28 19:33:22', '', 63, 'http://hks09.com/dev/?post_type=acf-field&#038;p=64', 1, 'acf-field', '', 0),
(65, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'About Image', 'about_image', 'publish', 'closed', 'closed', '', 'field_644c191c4bafc', '', '', '2023-04-28 19:33:22', '2023-04-28 19:33:22', '', 63, 'http://hks09.com/dev/?post_type=acf-field&#038;p=65', 2, 'acf-field', '', 0),
(66, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Faq Section', 'faq_section', 'publish', 'closed', 'closed', '', 'field_644c194b4bafd', '', '', '2023-04-28 19:33:22', '2023-04-28 19:33:22', '', 63, 'http://hks09.com/dev/?post_type=acf-field&#038;p=66', 4, 'acf-field', '', 0),
(67, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Faq Title', 'faq_title', 'publish', 'closed', 'closed', '', 'field_644c198c4bafe', '', '', '2023-04-28 19:09:13', '2023-04-28 19:09:13', '', 66, 'http://hks09.com/dev/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2023-04-28 19:09:13', '2023-04-28 19:09:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Faq Content', 'faq_content', 'publish', 'closed', 'closed', '', 'field_644c19bc4baff', '', '', '2023-04-28 19:09:13', '2023-04-28 19:09:13', '', 66, 'http://hks09.com/dev/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2023-04-28 19:09:54', '2023-04-28 19:09:54', '', 'pgress_img', '', 'inherit', 'open', 'closed', '', 'pgress_img', '', '', '2023-04-28 19:09:54', '2023-04-28 19:09:54', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/pgress_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-04-28 19:12:02', '2023-04-28 19:12:02', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p><br />\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                          ', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-04-28 19:12:02', '2023-04-28 19:12:02', '', 14, 'http://hks09.com/dev/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-04-28 19:33:22', '2023-04-28 19:33:22', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'About Cms Section', 'about_cms_section', 'publish', 'closed', 'closed', '', 'field_644c1f2d71fdf', '', '', '2023-04-28 19:33:22', '2023-04-28 19:33:22', '', 63, 'http://hks09.com/dev/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2023-04-28 19:33:22', '2023-04-28 19:33:22', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Faq Pannel', 'faq_pannel', 'publish', 'closed', 'closed', '', 'field_644c1f6371fe0', '', '', '2023-04-28 19:33:22', '2023-04-28 19:33:22', '', 63, 'http://hks09.com/dev/?post_type=acf-field&p=72', 3, 'acf-field', '', 0),
(73, 1, '2023-04-28 19:35:12', '2023-04-28 19:35:12', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'OUR EXPERT', 'our_expert', 'publish', 'closed', 'closed', '', 'field_644c1fb859c2d', '', '', '2023-04-28 19:35:12', '2023-04-28 19:35:12', '', 63, 'http://hks09.com/dev/?post_type=acf-field&p=73', 5, 'acf-field', '', 0),
(74, 1, '2023-04-28 19:35:12', '2023-04-28 19:35:12', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'OUR EXPERT CONTENT', 'our_expert_content', 'publish', 'closed', 'closed', '', 'field_644c1fcf59c2e', '', '', '2023-04-28 19:35:12', '2023-04-28 19:35:12', '', 63, 'http://hks09.com/dev/?post_type=acf-field&p=74', 6, 'acf-field', '', 0),
(75, 1, '2023-04-28 19:36:53', '2023-04-28 19:36:53', 'a:19:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:12:\"preview_size\";s:6:\"medium\";}', 'About Expert', 'about_expert', 'publish', 'closed', 'closed', '', 'field_644c203ae79de', '', '', '2023-04-28 19:36:53', '2023-04-28 19:36:53', '', 63, 'http://hks09.com/dev/?post_type=acf-field&p=75', 7, 'acf-field', '', 0),
(76, 1, '2023-04-28 19:37:02', '2023-04-28 19:37:02', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p><br />\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                          ', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-04-28 19:37:02', '2023-04-28 19:37:02', '', 14, 'http://hks09.com/dev/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-04-28 19:37:27', '2023-04-28 19:37:27', '', 'online3', '', 'inherit', 'open', 'closed', '', 'online3', '', '', '2023-04-28 19:37:27', '2023-04-28 19:37:27', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/online3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2023-04-28 19:37:48', '2023-04-28 19:37:48', '', 'online4', '', 'inherit', 'open', 'closed', '', 'online4', '', '', '2023-04-28 19:37:48', '2023-04-28 19:37:48', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/online4.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2023-04-28 19:38:16', '2023-04-28 19:38:16', '', 'online2', '', 'inherit', 'open', 'closed', '', 'online2', '', '', '2023-04-28 19:38:16', '2023-04-28 19:38:16', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/online2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2023-04-28 19:38:35', '2023-04-28 19:38:35', '', 'online1', '', 'inherit', 'open', 'closed', '', 'online1', '', '', '2023-04-28 19:38:35', '2023-04-28 19:38:35', '', 14, 'http://hks09.com/dev/wp-content/uploads/2023/04/online1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2023-04-28 19:38:44', '2023-04-28 19:38:44', '<h2>HoroScope Revels The Will Of God</h2>\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p><br />\r\n<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</p>\r\n                          ', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-04-28 19:38:44', '2023-04-28 19:38:44', '', 14, 'http://hks09.com/dev/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-04-28 19:55:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-28 19:55:50', '0000-00-00 00:00:00', '', 0, 'http://hks09.com/dev/?post_type=services&p=82', 0, 'services', '', 0),
(83, 1, '2023-04-28 19:57:39', '2023-04-28 19:57:39', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Career', '', 'publish', 'closed', 'closed', '', 'career', '', '', '2023-04-28 20:32:09', '2023-04-28 20:32:09', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=83', 0, 'services', '', 0),
(84, 1, '2023-04-28 19:57:33', '2023-04-28 19:57:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Fab Icon', 'fab-icon', 'publish', 'closed', 'closed', '', 'group_644c250cd581c', '', '', '2023-04-28 19:57:33', '2023-04-28 19:57:33', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=84', 0, 'acf-field-group', '', 0),
(85, 1, '2023-04-28 19:57:33', '2023-04-28 19:57:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Fab Icon', 'fab_icon', 'publish', 'closed', 'closed', '', 'field_644c250d9fb85', '', '', '2023-04-28 19:57:33', '2023-04-28 19:57:33', '', 84, 'http://hks09.com/dev/?post_type=acf-field&p=85', 0, 'acf-field', '', 0),
(86, 1, '2023-04-28 19:58:42', '2023-04-28 19:58:42', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'marriage', '', 'publish', 'closed', 'closed', '', 'marriage', '', '', '2023-04-28 20:32:56', '2023-04-28 20:32:56', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=86', 0, 'services', '', 0),
(87, 1, '2023-04-28 19:59:21', '2023-04-28 19:59:21', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Worship lesson', '', 'publish', 'closed', 'closed', '', 'worship-lesson', '', '', '2023-04-28 20:31:55', '2023-04-28 20:31:55', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=87', 0, 'services', '', 0),
(88, 1, '2023-04-28 20:00:09', '2023-04-28 20:00:09', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Pregnancy', '', 'publish', 'closed', 'closed', '', 'pregnancy', '', '', '2023-04-28 20:40:59', '2023-04-28 20:40:59', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=88', 0, 'services', '', 0),
(89, 1, '2023-04-28 20:00:54', '2023-04-28 20:00:54', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Manglik Dosha', '', 'publish', 'closed', 'closed', '', 'manglik-dosha', '', '', '2023-04-28 20:32:19', '2023-04-28 20:32:19', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=89', 0, 'services', '', 0),
(90, 1, '2023-04-28 20:01:35', '2023-04-28 20:01:35', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Kundali Dosh', '', 'publish', 'closed', 'closed', '', 'kundli-dosha', '', '', '2023-05-01 13:19:40', '2023-05-01 13:19:40', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=90', 0, 'services', '', 0),
(91, 1, '2023-04-28 20:02:10', '2023-04-28 20:02:10', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Festivals', '', 'publish', 'closed', 'closed', '', 'festivals', '', '', '2023-04-28 20:32:42', '2023-04-28 20:32:42', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=91', 0, 'services', '', 0),
(92, 1, '2023-04-28 20:02:48', '2023-04-28 20:02:48', 'Proin gravida nibh vel velit auctor aliquet. Aenean .', 'Name Analysis', '', 'publish', 'closed', 'closed', '', 'name-analysis', '', '', '2023-04-28 20:41:13', '2023-04-28 20:41:13', '', 0, 'http://hks09.com/dev/?post_type=services&#038;p=92', 0, 'services', '', 0),
(93, 1, '2023-04-28 20:40:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-28 20:40:37', '0000-00-00 00:00:00', '', 0, 'http://hks09.com/dev/?post_type=services&p=93', 0, 'services', '', 0),
(94, 1, '2023-04-28 21:05:28', '2023-04-28 21:05:28', 'a:34:{s:9:\"post_type\";s:7:\"product\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"products\";s:13:\"singular_name\";s:7:\"product\";s:9:\"menu_name\";s:7:\"product\";s:9:\"all_items\";s:11:\"All product\";s:9:\"edit_item\";s:12:\"Edit product\";s:9:\"view_item\";s:12:\"View product\";s:10:\"view_items\";s:12:\"View product\";s:12:\"add_new_item\";s:15:\"Add New product\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:11:\"New product\";s:17:\"parent_item_colon\";s:15:\"Parent product:\";s:12:\"search_items\";s:14:\"Search product\";s:9:\"not_found\";s:16:\"No product found\";s:18:\"not_found_in_trash\";s:25:\"No product found in Trash\";s:8:\"archives\";s:16:\"product Archives\";s:10:\"attributes\";s:18:\"product Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:19:\"Insert into product\";s:21:\"uploaded_to_this_item\";s:24:\"Uploaded to this product\";s:17:\"filter_items_list\";s:19:\"Filter product list\";s:14:\"filter_by_date\";s:22:\"Filter product by date\";s:21:\"items_list_navigation\";s:23:\"product list navigation\";s:10:\"items_list\";s:12:\"product list\";s:14:\"item_published\";s:18:\"product published.\";s:24:\"item_published_privately\";s:28:\"product published privately.\";s:22:\"item_reverted_to_draft\";s:26:\"product reverted to draft.\";s:14:\"item_scheduled\";s:18:\"product scheduled.\";s:12:\"item_updated\";s:16:\"product updated.\";s:9:\"item_link\";s:12:\"product Link\";s:21:\"item_link_description\";s:20:\"A link to a product.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";}', 'products', 'products', 'publish', 'closed', 'closed', '', 'post_type_644c3509016d3', '', '', '2023-04-28 21:05:28', '2023-04-28 21:05:28', '', 0, 'http://hks09.com/dev/?post_type=acf-post-type&#038;p=94', 0, 'acf-post-type', '', 0),
(95, 1, '2023-04-28 21:06:10', '2023-04-28 21:06:10', 'a:28:{s:8:\"taxonomy\";s:17:\"product-categorys\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:17:\"Product categorys\";s:13:\"singular_name\";s:16:\"Product category\";s:9:\"menu_name\";s:16:\"Product category\";s:9:\"all_items\";s:20:\"All Product category\";s:9:\"edit_item\";s:22:\"Edit Product categorys\";s:9:\"view_item\";s:22:\"View Product categorys\";s:11:\"update_item\";s:24:\"Update Product categorys\";s:12:\"add_new_item\";s:25:\"Add New Product categorys\";s:13:\"new_item_name\";s:26:\"New Product categorys Name\";s:11:\"parent_item\";s:24:\"Parent Product categorys\";s:17:\"parent_item_colon\";s:25:\"Parent Product categorys:\";s:12:\"search_items\";s:23:\"Search Product category\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:25:\"No product category found\";s:8:\"no_terms\";s:19:\"No product category\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:14:\"filter_by_item\";s:27:\"Filter by product categorys\";s:21:\"items_list_navigation\";s:32:\"Product category list navigation\";s:10:\"items_list\";s:21:\"Product category list\";s:13:\"back_to_items\";s:26:\"← Go to product category\";s:9:\"item_link\";s:22:\"Product categorys Link\";s:21:\"item_link_description\";s:29:\"A link to a product categorys\";}s:11:\"description\";s:0:\"\";s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:1;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Product categorys', 'product-categorys', 'publish', 'closed', 'closed', '', 'taxonomy_644c351fdb266', '', '', '2023-04-28 21:06:10', '2023-04-28 21:06:10', '', 0, 'http://hks09.com/dev/?post_type=acf-taxonomy&#038;p=95', 0, 'acf-taxonomy', '', 0),
(96, 1, '2023-04-29 05:16:26', '2023-04-29 05:16:26', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>', 'Gemstone', '', 'publish', 'closed', 'closed', '', 'gemstone', '', '', '2023-04-29 05:16:58', '2023-04-29 05:16:58', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2023-04-29 05:16:51', '2023-04-29 05:16:51', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2023-04-29 05:16:51', '2023-04-29 05:16:51', '', 96, 'http://hks09.com/dev/wp-content/uploads/2023/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2023-04-29 05:17:49', '2023-04-29 05:17:49', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>', 'Yantra', '', 'publish', 'closed', 'closed', '', 'yantra', '', '', '2023-04-29 05:27:49', '2023-04-29 05:27:49', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2023-04-29 05:17:45', '2023-04-29 05:17:45', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2023-04-29 05:17:45', '2023-04-29 05:17:45', '', 98, 'http://hks09.com/dev/wp-content/uploads/2023/04/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2023-04-29 05:18:58', '2023-04-29 05:18:58', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>\r\n                                                          ', 'Yantra2', '', 'publish', 'closed', 'closed', '', 'yantra2', '', '', '2023-04-29 05:28:08', '2023-04-29 05:28:08', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2023-04-29 05:18:52', '2023-04-29 05:18:52', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2023-04-29 05:18:52', '2023-04-29 05:18:52', '', 100, 'http://hks09.com/dev/wp-content/uploads/2023/04/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2023-04-29 05:20:00', '2023-04-29 05:20:00', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>\r\n                                                          ', 'Yantra3', '', 'publish', 'closed', 'closed', '', 'yantra3', '', '', '2023-04-29 05:27:31', '2023-04-29 05:27:31', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2023-04-29 05:19:58', '2023-04-29 05:19:58', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2023-04-29 05:19:58', '2023-04-29 05:19:58', '', 102, 'http://hks09.com/dev/wp-content/uploads/2023/04/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2023-04-29 05:20:48', '2023-04-29 05:20:48', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>', 'Rudrasha Yantra', '', 'publish', 'closed', 'closed', '', 'rudrasha-yantra', '', '', '2023-04-29 05:26:37', '2023-04-29 05:26:37', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2023-04-29 05:20:42', '2023-04-29 05:20:42', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2023-04-29 05:20:42', '2023-04-29 05:20:42', '', 104, 'http://hks09.com/dev/wp-content/uploads/2023/04/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2023-04-29 05:21:32', '2023-04-29 05:21:32', '<h3>₹ 400 &nbsp;<del>₹ 200</del>&nbsp; <span>(60% off)</span></h3>\r\n', 'Navha yantra', '', 'publish', 'closed', 'closed', '', 'navha-yantra', '', '', '2023-04-29 05:21:32', '2023-04-29 05:21:32', '', 0, 'http://hks09.com/dev/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2023-04-29 05:21:28', '2023-04-29 05:21:28', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2023-04-29 05:21:28', '2023-04-29 05:21:28', '', 106, 'http://hks09.com/dev/wp-content/uploads/2023/04/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2023-04-29 05:42:37', '2023-04-29 05:42:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"page-template/page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Content Section', 'home-content-section', 'publish', 'closed', 'closed', '', 'group_644cadd801b98', '', '', '2023-04-29 06:49:09', '2023-04-29 06:49:09', '', 0, 'http://hks09.com/dev/?post_type=acf-field-group&#038;p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2023-04-29 05:42:37', '2023-04-29 05:42:37', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner Section', '', 'publish', 'closed', 'closed', '', 'field_644cadd91be3d', '', '', '2023-04-29 05:43:23', '2023-04-29 05:43:23', '', 108, 'http://hks09.com/dev/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2023-04-29 05:42:37', '2023-04-29 05:42:37', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_644cae041be3e', '', '', '2023-04-29 06:31:42', '2023-04-29 06:31:42', '', 108, 'http://hks09.com/dev/?post_type=acf-field&#038;p=110', 1, 'acf-field', '', 0),
(111, 1, '2023-04-29 05:42:37', '2023-04-29 05:42:37', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_644cae2a1be3f', '', '', '2023-04-29 05:42:37', '2023-04-29 05:42:37', '', 110, 'http://hks09.com/dev/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2023-04-29 05:51:59', '2023-04-29 05:51:59', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2023-04-29 05:51:59', '2023-04-29 05:51:59', '', 12, 'http://hks09.com/dev/wp-content/uploads/2023/04/banner.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2023-04-29 06:15:12', '2023-04-29 06:15:12', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:15:12', '2023-04-29 06:15:12', '', 12, 'http://hks09.com/dev/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-04-29 06:30:14', '2023-04-29 06:30:14', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:30:14', '2023-04-29 06:30:14', '', 12, 'http://hks09.com/dev/?p=114', 0, 'revision', '', 0),
(115, 1, '2023-04-29 06:31:42', '2023-04-29 06:31:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Home About Section', 'home_about_section', 'publish', 'closed', 'closed', '', 'field_644cb9913e479', '', '', '2023-04-29 06:31:42', '2023-04-29 06:31:42', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=115', 2, 'acf-field', '', 0),
(116, 1, '2023-04-29 06:31:42', '2023-04-29 06:31:42', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Home About Iage', 'home_about_iage', 'publish', 'closed', 'closed', '', 'field_644cb9a73e47a', '', '', '2023-04-29 06:31:42', '2023-04-29 06:31:42', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=116', 3, 'acf-field', '', 0),
(117, 1, '2023-04-29 06:31:42', '2023-04-29 06:31:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Home About Content', 'home_about_content', 'publish', 'closed', 'closed', '', 'field_644cb9bc3e47b', '', '', '2023-04-29 06:31:42', '2023-04-29 06:31:42', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=117', 4, 'acf-field', '', 0),
(118, 1, '2023-04-29 06:33:30', '2023-04-29 06:33:30', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:33:30', '2023-04-29 06:33:30', '', 12, 'http://hks09.com/dev/?p=118', 0, 'revision', '', 0),
(119, 1, '2023-04-29 06:37:27', '2023-04-29 06:37:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'STOP SELF-SABOTAGE', 'stop_self-sabotage', 'publish', 'closed', 'closed', '', 'field_644cbb036c989', '', '', '2023-04-29 06:37:27', '2023-04-29 06:37:27', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=119', 5, 'acf-field', '', 0),
(120, 1, '2023-04-29 06:37:27', '2023-04-29 06:37:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'STOP SELF-SABOTAGE CONTENT', 'stop_self', 'publish', 'closed', 'closed', '', 'field_644cbb146c98a', '', '', '2023-04-29 06:41:57', '2023-04-29 06:41:57', '', 108, 'http://hks09.com/dev/?post_type=acf-field&#038;p=120', 6, 'acf-field', '', 0),
(121, 1, '2023-04-29 06:38:08', '2023-04-29 06:38:08', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:38:08', '2023-04-29 06:38:08', '', 12, 'http://hks09.com/dev/?p=121', 0, 'revision', '', 0),
(122, 1, '2023-04-29 06:45:26', '2023-04-29 06:45:26', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'SPEAK TO OUR EXPERT', 'speak_to_our_expert', 'publish', 'closed', 'closed', '', 'field_644cbcea0484c', '', '', '2023-04-29 06:45:26', '2023-04-29 06:45:26', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=122', 7, 'acf-field', '', 0),
(123, 1, '2023-04-29 06:45:26', '2023-04-29 06:45:26', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'SPEAK TO OUR EXPERT', 'speak_to_our_expert', 'publish', 'closed', 'closed', '', 'field_644cbcfa0484d', '', '', '2023-04-29 06:49:09', '2023-04-29 06:49:09', '', 108, 'http://hks09.com/dev/?post_type=acf-field&#038;p=123', 8, 'acf-field', '', 0),
(124, 1, '2023-04-29 06:45:59', '2023-04-29 06:45:59', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:45:59', '2023-04-29 06:45:59', '', 12, 'http://hks09.com/dev/?p=124', 0, 'revision', '', 0),
(125, 1, '2023-04-29 06:49:09', '2023-04-29 06:49:09', 'a:19:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:12:\"preview_size\";s:6:\"medium\";}', 'SPEAK TO OUR EXPERT GALLERY', 'speak_to_our_expert_gallery', 'publish', 'closed', 'closed', '', 'field_644cbd7591f14', '', '', '2023-04-29 06:49:09', '2023-04-29 06:49:09', '', 108, 'http://hks09.com/dev/?post_type=acf-field&p=125', 9, 'acf-field', '', 0),
(126, 1, '2023-04-29 06:49:30', '2023-04-29 06:49:30', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-04-29 06:49:30', '2023-04-29 06:49:30', '', 12, 'http://hks09.com/dev/?p=126', 0, 'revision', '', 0),
(127, 1, '2023-05-01 13:03:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-05-01 13:03:50', '0000-00-00 00:00:00', '', 0, 'https://hks09.com/dev/?p=127', 0, 'post', '', 0),
(128, 1, '2023-05-01 13:17:46', '2023-05-01 13:17:46', '', 'HKS.BANNER.PNG.', '', 'inherit', 'open', 'closed', '', 'hks-banner-png', '', '', '2023-05-01 13:17:46', '2023-05-01 13:17:46', '', 12, 'http://hks09.com/dev/wp-content/uploads/2023/05/HKS.BANNER.PNG.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2023-05-01 13:18:31', '2023-05-01 13:18:31', '<h2>About <span>Hunja Kalyanam Sansthan</span></h2>\r\n<h4><span></span></h4>', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-01 13:18:31', '2023-05-01 13:18:31', '', 12, 'https://hks09.com/dev/?p=129', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk_termmeta`
--

CREATE TABLE `hk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk_terms`
--

CREATE TABLE `hk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_terms`
--

INSERT INTO `hk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Nemu', 'header-nemu', 0),
(3, 'Horoscope News', 'horoscope-news', 0),
(4, 'Astrology News', 'astrology-news', 0),
(5, 'Puja Accessories', 'puja-accessories', 0),
(6, 'Religion Spiritual', 'religion-spiritual', 0),
(7, 'Feng Shui Products', 'feng-shui-products', 0),
(8, 'Lucky Stones', 'lucky-stones', 0),
(9, 'Paid Services', 'paid-services', 0),
(10, 'Free Services', 'free-services', 0),
(11, 'Yantra', 'yantra', 0),
(12, 'Gemstone', 'gemstone', 0),
(13, 'Books', 'books', 0),
(14, 'Pendal', 'pendal', 0),
(15, 'Puja Accessories', 'puja-accessories', 0),
(16, 'Feng Shui Products', 'feng-shui-products', 0),
(17, 'Lucky Stones', 'lucky-stones', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk_term_relationships`
--

CREATE TABLE `hk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_term_relationships`
--

INSERT INTO `hk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(29, 2, 0),
(50, 3, 0),
(50, 4, 0),
(50, 5, 0),
(50, 6, 0),
(50, 7, 0),
(50, 8, 0),
(53, 3, 0),
(53, 4, 0),
(53, 5, 0),
(53, 6, 0),
(53, 7, 0),
(53, 8, 0),
(55, 3, 0),
(55, 4, 0),
(55, 5, 0),
(55, 6, 0),
(55, 7, 0),
(55, 8, 0),
(83, 9, 0),
(86, 9, 0),
(87, 9, 0),
(88, 10, 0),
(89, 10, 0),
(90, 10, 0),
(91, 9, 0),
(92, 10, 0),
(96, 11, 0),
(96, 12, 0),
(96, 13, 0),
(96, 14, 0),
(96, 15, 0),
(96, 16, 0),
(96, 17, 0),
(98, 11, 0),
(98, 12, 0),
(98, 13, 0),
(98, 14, 0),
(98, 15, 0),
(98, 16, 0),
(98, 17, 0),
(100, 11, 0),
(100, 12, 0),
(100, 13, 0),
(100, 14, 0),
(100, 15, 0),
(100, 16, 0),
(100, 17, 0),
(102, 11, 0),
(102, 12, 0),
(102, 13, 0),
(102, 15, 0),
(102, 16, 0),
(102, 17, 0),
(106, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk_term_taxonomy`
--

CREATE TABLE `hk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_term_taxonomy`
--

INSERT INTO `hk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 3),
(7, 7, 'category', '', 0, 3),
(8, 8, 'category', '', 0, 3),
(9, 9, 'service', '', 0, 4),
(10, 10, 'service', '', 0, 4),
(11, 11, 'product-categorys', '', 0, 5),
(12, 12, 'product-categorys', '', 0, 4),
(13, 13, 'product-categorys', '', 0, 4),
(14, 14, 'product-categorys', '', 0, 3),
(15, 15, 'product-categorys', '', 0, 4),
(16, 16, 'product-categorys', '', 0, 4),
(17, 17, 'product-categorys', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hk_usermeta`
--

CREATE TABLE `hk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_usermeta`
--

INSERT INTO `hk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'hk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'hk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"d30ff26a8b53f6c964007f01499ba9755c945c8f85f57262eda68c87d9fc5191\";a:4:{s:10:\"expiration\";i:1684155830;s:2:\"ip\";s:11:\"49.37.26.41\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1682946230;}}'),
(17, 1, 'hk_dashboard_quick_press_last_post_id', '127'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"49.37.26.0\";}'),
(19, 1, 'hk_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'hk_user-settings-time', '1682446600'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(24, 1, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(25, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(27, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(28, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(29, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `hk_users`
--

CREATE TABLE `hk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hk_users`
--

INSERT INTO `hk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bl9jIAFg.pWGEFhfqiwfH8w.qSbNaW/', 'admin', 'hkskundali@gmail.com', 'http://hks09.com/dev', '2023-04-22 15:28:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hk_commentmeta`
--
ALTER TABLE `hk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hk_comments`
--
ALTER TABLE `hk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `hk_links`
--
ALTER TABLE `hk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `hk_options`
--
ALTER TABLE `hk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `hk_postmeta`
--
ALTER TABLE `hk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hk_posts`
--
ALTER TABLE `hk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `hk_termmeta`
--
ALTER TABLE `hk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hk_terms`
--
ALTER TABLE `hk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `hk_term_relationships`
--
ALTER TABLE `hk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `hk_term_taxonomy`
--
ALTER TABLE `hk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `hk_usermeta`
--
ALTER TABLE `hk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hk_users`
--
ALTER TABLE `hk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hk_commentmeta`
--
ALTER TABLE `hk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hk_comments`
--
ALTER TABLE `hk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hk_links`
--
ALTER TABLE `hk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hk_options`
--
ALTER TABLE `hk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `hk_postmeta`
--
ALTER TABLE `hk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `hk_posts`
--
ALTER TABLE `hk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `hk_termmeta`
--
ALTER TABLE `hk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hk_terms`
--
ALTER TABLE `hk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hk_term_taxonomy`
--
ALTER TABLE `hk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hk_usermeta`
--
ALTER TABLE `hk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hk_users`
--
ALTER TABLE `hk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
