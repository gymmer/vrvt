-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2016-10-25 13:58:26
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrvt`
--

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_commentmeta`
--

CREATE TABLE `vrvt_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_comments`
--

CREATE TABLE `vrvt_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_links`
--

CREATE TABLE `vrvt_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_options`
--

CREATE TABLE `vrvt_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_options`
--

INSERT INTO `vrvt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8000', 'yes'),
(2, 'home', 'http://localhost:8000', 'yes'),
(3, 'blogname', '虚拟现实与可视化技术研究所', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gaoyan@mail.bnu.edu.cn', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'ag:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/archives/%post_id%', 'yes'),
(29, 'rewrite_rules', 'a:85:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:56:"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:51:"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:32:"archives/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:44:"archives/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:26:"archives/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:53:"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:48:"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:29:"archives/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:41:"archives/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:23:"archives/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:54:"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:49:"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:30:"archives/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:42:"archives/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:24:"archives/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:56:"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:51:"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:32:"archives/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:44:"archives/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:26:"archives/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:83:"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:78:"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:59:"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:71:"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:53:"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:70:"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:65:"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:46:"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:58:"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:40:"archives/date/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:57:"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:52:"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:33:"archives/date/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:45:"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:27:"archives/date/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:37:"archives/[0-9]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"archives/[0-9]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"archives/[0-9]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"archives/([0-9]+)/embed/?$";s:34:"index.php?p=$matches[1]&embed=true";s:30:"archives/([0-9]+)/trackback/?$";s:28:"index.php?p=$matches[1]&tb=1";s:50:"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?p=$matches[1]&feed=$matches[2]";s:45:"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?p=$matches[1]&feed=$matches[2]";s:38:"archives/([0-9]+)/page/?([0-9]{1,})/?$";s:41:"index.php?p=$matches[1]&paged=$matches[2]";s:45:"archives/([0-9]+)/comment-page-([0-9]{1,})/?$";s:41:"index.php?p=$matches[1]&cpage=$matches[2]";s:34:"archives/([0-9]+)(?:/([0-9]+))?/?$";s:40:"index.php?p=$matches[1]&page=$matches[2]";s:26:"archives/[0-9]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"archives/[0-9]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"archives/[0-9]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:1;s:35:"easy-wp-cleaner/easy-wp-cleaner.php";i:2;s:37:"tinymce-advanced/tinymce-advanced.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:60:"D:\\wamp64\\www\\vrvt/wp-content/themes/twentysixteen/style.css";i:2;s:68:"D:\\wamp64\\www\\vrvt/wp-content/themes/twentysixteen/pages/message.php";i:3;s:59:"D:\\wamp64\\www\\vrvt/wp-content/themes/twentysixteen/page.php";i:4;s:61:"D:\\wamp64\\www\\vrvt/wp-content/themes/twentysixteen/single.php";i:5;s:62:"D:\\wamp64\\www\\vrvt/wp-content/themes/twentysixteen/archive.php";}', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Shanghai', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'vrvt_user_roles', 'a:8:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:71:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:8:"backwpup";b:1;s:13:"backwpup_jobs";b:1;s:18:"backwpup_jobs_edit";b:1;s:19:"backwpup_jobs_start";b:1;s:16:"backwpup_backups";b:1;s:25:"backwpup_backups_download";b:1;s:23:"backwpup_backups_delete";b:1;s:13:"backwpup_logs";b:1;s:20:"backwpup_logs_delete";b:1;s:17:"backwpup_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:14:"backwpup_admin";a:2:{s:4:"name";s:14:"BackWPup Admin";s:12:"capabilities";a:11:{s:4:"read";b:1;s:8:"backwpup";b:1;s:13:"backwpup_jobs";b:1;s:18:"backwpup_jobs_edit";b:1;s:19:"backwpup_jobs_start";b:1;s:16:"backwpup_backups";b:1;s:25:"backwpup_backups_download";b:1;s:23:"backwpup_backups_delete";b:1;s:13:"backwpup_logs";b:1;s:20:"backwpup_logs_delete";b:1;s:17:"backwpup_settings";b:1;}}s:14:"backwpup_check";a:2:{s:4:"name";s:21:"BackWPup jobs checker";s:12:"capabilities";a:11:{s:4:"read";b:1;s:8:"backwpup";b:1;s:13:"backwpup_jobs";b:1;s:18:"backwpup_jobs_edit";b:0;s:19:"backwpup_jobs_start";b:0;s:16:"backwpup_backups";b:1;s:25:"backwpup_backups_download";b:0;s:23:"backwpup_backups_delete";b:0;s:13:"backwpup_logs";b:1;s:20:"backwpup_logs_delete";b:0;s:17:"backwpup_settings";b:0;}}s:15:"backwpup_helper";a:2:{s:4:"name";s:20:"BackWPup jobs helper";s:12:"capabilities";a:11:{s:4:"read";b:1;s:8:"backwpup";b:1;s:13:"backwpup_jobs";b:1;s:18:"backwpup_jobs_edit";b:0;s:19:"backwpup_jobs_start";b:1;s:16:"backwpup_backups";b:1;s:25:"backwpup_backups_download";b:1;s:23:"backwpup_backups_delete";b:1;s:13:"backwpup_logs";b:1;s:20:"backwpup_logs_delete";b:1;s:17:"backwpup_settings";b:0;}}}', 'yes'),
(93, 'WPLANG', 'zh_CN', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1477425262;a:1:{s:22:"backwpup_check_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477445956;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477445965;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1477446461;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(178, 'db_upgraded', '', 'yes'),
(142, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"gaoyan@mail.bnu.edu.cn";s:7:"version";s:5:"4.5.4";s:9:"timestamp";i:1476409236;}', 'yes'),
(535, '_site_transient_timeout_theme_roots', '1477404581', 'no'),
(536, '_site_transient_theme_roots', 'a:1:{s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(539, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477402787;s:7:"checked";a:1:{s:13:"twentysixteen";s:0:"";}s:8:"response";a:1:{s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentysixteen";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"1.3";s:7:"updated";s:19:"2015-12-12 22:56:24";s:7:"package";s:77:"https://downloads.wordpress.org/translation/theme/twentysixteen/1.3/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(538, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1477402784;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(201, 'current_theme', 'twentysixteen', 'yes'),
(202, 'theme_switched', '', 'yes'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(397, '_transient_timeout_plugin_slugs', '1477369278', 'no'),
(398, '_transient_plugin_slugs', 'a:2:{i:0;s:35:"easy-wp-cleaner/easy-wp-cleaner.php";i:1;s:37:"tinymce-advanced/tinymce-advanced.php";}', 'no'),
(287, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:178:"print,copy,cut,paste,pastetext,searchreplace,wp_page,undo,redo,wp_adv,fullscreen,wp_help,nonbreaking,charmap,table,emoticons,insertdatetime,image,media,anchor,link,unlink,wp_more";s:9:"toolbar_2";s:227:"removeformat,forecolor,backcolor,bold,italic,underline,strikethrough,hr,subscript,superscript,bullist,numlist,alignleft,aligncenter,alignright,alignjustify,outdent,indent,ltr,rtl,visualchars,visualblocks,blockquote,wp_code,code";s:9:"toolbar_3";s:50:"styleselect,formatselect,fontselect,fontsizeselect";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"menubar,advlist";s:7:"plugins";s:102:"anchor,visualchars,visualblocks,nonbreaking,emoticons,insertdatetime,table,print,searchreplace,advlist";}', 'yes'),
(181, 'can_compress_scripts', '1', 'no'),
(182, 'theme_mods_twentysixteen', 'a:1:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:14;}}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(531, '_site_transient_timeout_available_translations', '1477409848', 'no');
INSERT INTO `vrvt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(532, '_site_transient_available_translations', 'a:86:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 10:29:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-01 16:18:09";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-03 15:05:04";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-03 15:05:13";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 04:42:01";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 22:25:56";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 11:46:15";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 18:54:55";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:07:58";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 19:02:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-21 15:44:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-03 13:43:01";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-17 15:19:09";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 09:14:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-07 18:41:52";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-19 13:41:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 10:27:20";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-04 13:42:56";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 10:14:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-27 16:24:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 13:50:08";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-21 02:17:37";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 14:12:34";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-13 10:00:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 16:23:26";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 20:20:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-18 10:43:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 01:34:25";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(331, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1477046589', 'no'),
(332, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6076";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3748";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3721";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3222";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2858";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2532";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2269";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2147";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2091";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2090";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2029";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1987";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1954";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1927";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1751";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1637";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1607";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1460";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1364";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1297";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1283";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1143";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1128";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1064";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1019";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1011";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"962";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"953";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"952";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"927";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"923";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"920";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"855";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"843";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"832";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"818";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"791";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"788";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"780";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"770";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"761";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"755";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"743";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"732";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"729";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"729";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"714";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"711";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"710";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"703";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"694";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"654";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"647";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"640";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"630";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"620";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"613";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"613";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"608";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"608";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"597";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"581";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"580";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"579";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"578";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"547";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"547";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"536";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"536";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"536";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"533";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"529";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"515";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"505";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"501";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"495";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"480";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"466";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"465";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"463";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"461";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"453";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"439";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"439";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"435";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"433";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"432";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"430";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"426";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"424";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"419";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"418";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"414";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"411";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"409";}}', 'no'),
(288, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(289, 'tadv_version', '4000', 'yes'),
(339, 'backwpup_cfg_hash', 'e33c01', 'no'),
(340, 'backwpup_jobs', 'a:1:{i:1;a:10:{s:5:"jobid";i:1;s:10:"backuptype";s:7:"archive";s:4:"type";a:5:{i:0;s:7:"DBCHECK";i:1;s:6:"DBDUMP";i:2;s:4:"FILE";i:3;s:5:"WPEXP";i:4;s:8:"WPPLUGIN";}s:12:"destinations";a:0:{}s:4:"name";s:13:"Job with ID 1";s:14:"mailaddresslog";s:22:"gaoyan@mail.bnu.edu.cn";s:20:"mailaddresssenderlog";s:73:"BackWPup 虚拟现实与可视化技术研究所 <gaoyan@mail.bnu.edu.cn>";s:13:"mailerroronly";b:1;s:13:"archiveformat";s:4:".zip";s:11:"archivename";s:33:"backwpup_e33c01_%Y-%m-%d_%H-%i-%s";}}', 'no'),
(341, 'backwpup_version', '3.3.4', 'no'),
(342, 'backwpup_cfg_showadminbar', '', 'no'),
(343, 'backwpup_cfg_showfoldersize', '', 'no'),
(344, 'backwpup_cfg_protectfolders', '1', 'no'),
(345, 'backwpup_cfg_jobmaxexecutiontime', '30', 'no'),
(346, 'backwpup_cfg_jobstepretry', '3', 'no'),
(347, 'backwpup_cfg_jobrunauthkey', 'e4f0e5f1', 'no'),
(348, 'backwpup_cfg_loglevel', 'normal_translated', 'no'),
(349, 'backwpup_cfg_jobwaittimems', '0', 'no'),
(350, 'backwpup_cfg_jobdooutput', '0', 'no'),
(351, 'backwpup_cfg_maxlogs', '30', 'no'),
(352, 'backwpup_cfg_gzlogs', '0', 'no'),
(353, 'backwpup_cfg_logfolder', 'uploads/backwpup-e33c01-logs/', 'no'),
(354, 'backwpup_cfg_httpauthuser', '', 'no'),
(355, 'backwpup_cfg_httpauthpassword', '', 'no'),
(361, 'backwpup_messages', 'a:0:{}', 'no'),
(471, '_transient_timeout_dash_5438fb5baf31c513fff2b9a1067656a6', '1477400176', 'no'),
(472, '_transient_dash_5438fb5baf31c513fff2b9a1067656a6', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://cn.wordpress.org/2016/04/17/coleman/\'>WordPress 4.5“Coleman”</a> <span class="rss-date">2016年4月17日</span><div class="rssSummary">WordPress 4.5简体中文版现已开放下载。</div></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-4-7-to-introduce-user-specific-language-setting-for-the-admin\'>WPTavern: WordPress 4.7 to Introduce User-Specific Language Setting for the Admin</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/linkedin-learning-is-offering-free-access-this-week-to-its-library-of-more-than-5000-courses\'>WPTavern: LinkedIn Learning Is Offering Free Access This Week to Its Library of More Than 5,000 Courses</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/automattic-releases-free-wordpress-stickers-app-for-ios-10\'>WPTavern: Automattic Releases Free WordPress Stickers App for iOS 10</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>热门插件:</span> Clef Two-Factor Authentication&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=wpclef&amp;_wpnonce=d48645a363&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="安装Clef Two-Factor Authentication">(安装)</a></li></ul></div>', 'no'),
(540, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477402785;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:35:"easy-wp-cleaner/easy-wp-cleaner.php";O:8:"stdClass":7:{s:2:"id";s:5:"63147";s:4:"slug";s:15:"easy-wp-cleaner";s:6:"plugin";s:35:"easy-wp-cleaner/easy-wp-cleaner.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:46:"https://wordpress.org/plugins/easy-wp-cleaner/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/easy-wp-cleaner.1.3.zip";s:14:"upgrade_notice";s:100:"Fixed designing issue in help section.\nadded horizontal rular in settings tab for better indication.";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.4.1.zip";}}}', 'no'),
(511, 'category_children', 'a:4:{i:17;a:2:{i:0;i:5;i:1;i:6;}i:18;a:3:{i:0;i:7;i:1;i:8;i:2;i:15;}i:19;a:3:{i:0;i:9;i:1;i:10;i:2;i:11;}i:20;a:3:{i:0;i:12;i:1;i:13;i:2;i:16;}}', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_postmeta`
--

CREATE TABLE `vrvt_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_postmeta`
--

INSERT INTO `vrvt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1477359856:1'),
(358, 107, '_edit_last', '1'),
(354, 105, '_edit_last', '1'),
(355, 105, '_edit_lock', '1477313155:1'),
(340, 96, '_menu_item_url', '/'),
(339, 96, '_menu_item_xfn', ''),
(338, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(337, 96, '_menu_item_target', ''),
(336, 96, '_menu_item_object', 'custom'),
(335, 96, '_menu_item_object_id', '96'),
(334, 96, '_menu_item_menu_item_parent', '0'),
(333, 96, '_menu_item_type', 'custom'),
(43, 28, '_edit_last', '1'),
(44, 28, '_edit_lock', '1476966670:1'),
(45, 30, '_edit_last', '1'),
(46, 30, '_edit_lock', '1477397652:1'),
(47, 32, '_edit_last', '1'),
(48, 32, '_edit_lock', '1477397873:1'),
(49, 34, '_edit_last', '1'),
(50, 34, '_edit_lock', '1477397888:1'),
(51, 36, '_edit_last', '1'),
(52, 36, '_edit_lock', '1476966575:1'),
(53, 39, '_edit_last', '1'),
(54, 39, '_edit_lock', '1477397374:1'),
(55, 41, '_edit_last', '1'),
(56, 41, '_edit_lock', '1476422006:1'),
(57, 43, '_edit_last', '1'),
(58, 43, '_edit_lock', '1476422037:1'),
(65, 51, '_edit_last', '1'),
(66, 51, '_edit_lock', '1477364766:1'),
(77, 63, '_edit_last', '1'),
(78, 63, '_edit_lock', '1477397147:1'),
(79, 65, '_edit_last', '1'),
(80, 65, '_edit_lock', '1476422330:1'),
(359, 107, '_edit_lock', '1477312897:1'),
(350, 103, '_edit_last', '1'),
(351, 103, '_edit_lock', '1477313144:1'),
(346, 101, '_edit_last', '1'),
(347, 101, '_edit_lock', '1477312684:1'),
(342, 98, '_edit_last', '1'),
(343, 98, '_edit_lock', '1477312969:1'),
(90, 69, '_menu_item_type', 'post_type'),
(91, 69, '_menu_item_menu_item_parent', '328'),
(92, 69, '_menu_item_object_id', '63'),
(93, 69, '_menu_item_object', 'page'),
(94, 69, '_menu_item_target', ''),
(95, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 69, '_menu_item_xfn', ''),
(97, 69, '_menu_item_url', ''),
(362, 107, '_oembed_d806b03212cedcb2ce9bac2c42b0074d', '{{unknown}}'),
(754, 304, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:787;s:6:"height";i:517;s:4:"file";s:21:"2016/10/kjgzz2012.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"kjgzz2012-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"kjgzz2012-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"kjgzz2012-768x505.jpg";s:5:"width";i:768;s:6:"height";i:505;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(752, 303, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:761;s:6:"height";i:1110;s:4:"file";s:15:"2016/10/3-4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"3-4-206x300.jpg";s:5:"width";i:206;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"3-4-702x1024.jpg";s:5:"width";i:702;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(751, 303, '_wp_attached_file', '2016/10/3-4.jpg'),
(744, 295, '_edit_last', '1'),
(743, 295, '_edit_lock', '1477374647:1'),
(368, 107, '_oembed_e1e328d14424cde1dfbd31faf5b1c9c3', '{{unknown}}'),
(363, 107, '_oembed_5d48b718125ac8050d467c45df26f96c', '{{unknown}}'),
(753, 304, '_wp_attached_file', '2016/10/kjgzz2012.jpg'),
(366, 107, '_oembed_3cf294664c8e6ce6646bb803a78818ea', '{{unknown}}'),
(153, 76, '_menu_item_type', 'post_type'),
(154, 76, '_menu_item_menu_item_parent', '287'),
(155, 76, '_menu_item_object_id', '51'),
(156, 76, '_menu_item_object', 'page'),
(157, 76, '_menu_item_target', ''),
(158, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 76, '_menu_item_xfn', ''),
(160, 76, '_menu_item_url', ''),
(365, 107, '_oembed_d3de3e6401079d880e6f57093a764210', '{{unknown}}'),
(180, 79, '_menu_item_type', 'post_type'),
(181, 79, '_menu_item_menu_item_parent', '0'),
(182, 79, '_menu_item_object_id', '36'),
(183, 79, '_menu_item_object', 'page'),
(184, 79, '_menu_item_target', ''),
(185, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 79, '_menu_item_xfn', ''),
(187, 79, '_menu_item_url', ''),
(189, 80, '_menu_item_type', 'post_type'),
(190, 80, '_menu_item_menu_item_parent', '79'),
(191, 80, '_menu_item_object_id', '43'),
(192, 80, '_menu_item_object', 'page'),
(193, 80, '_menu_item_target', ''),
(194, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 80, '_menu_item_xfn', ''),
(196, 80, '_menu_item_url', ''),
(198, 81, '_menu_item_type', 'post_type'),
(199, 81, '_menu_item_menu_item_parent', '79'),
(200, 81, '_menu_item_object_id', '41'),
(201, 81, '_menu_item_object', 'page'),
(202, 81, '_menu_item_target', ''),
(203, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 81, '_menu_item_xfn', ''),
(205, 81, '_menu_item_url', ''),
(367, 107, '_oembed_46b0417ecd4f0b29156cf72861e26e66', '{{unknown}}'),
(207, 82, '_menu_item_type', 'post_type'),
(208, 82, '_menu_item_menu_item_parent', '79'),
(209, 82, '_menu_item_object_id', '39'),
(210, 82, '_menu_item_object', 'page'),
(211, 82, '_menu_item_target', ''),
(212, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(213, 82, '_menu_item_xfn', ''),
(214, 82, '_menu_item_url', ''),
(364, 107, '_oembed_128f66d05448b64758c2b76de17d8168', '{{unknown}}'),
(225, 84, '_menu_item_type', 'post_type'),
(226, 84, '_menu_item_menu_item_parent', '0'),
(227, 84, '_menu_item_object_id', '9'),
(228, 84, '_menu_item_object', 'page'),
(229, 84, '_menu_item_target', ''),
(230, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(231, 84, '_menu_item_xfn', ''),
(232, 84, '_menu_item_url', ''),
(380, 103, '_wp_old_slug', '%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a03-%e6%88%91%e9%99%a2%e9%a2%85%e9%9d%a2%e5%bd%a2%e6%80%81%e4%bf%a1%e6%81%af%e5%ad%a6%e7%a0%94%e7%a9%b6%e4%b8%8e%e5%ba%94%e7%94%a8%e8%8e%b7%e4%b8%ad'),
(733, 289, '_menu_item_url', ''),
(732, 289, '_menu_item_xfn', ''),
(731, 289, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(730, 289, '_menu_item_target', ''),
(729, 289, '_menu_item_object', 'category'),
(728, 289, '_menu_item_object_id', '16'),
(727, 289, '_menu_item_menu_item_parent', '286'),
(726, 289, '_menu_item_type', 'taxonomy'),
(375, 109, '_wp_old_slug', '%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a05-%e7%83%ad%e7%83%88%e5%ba%86%e7%a5%9d%e8%b5%b5%e5%9b%bd%e5%85%b4%e8%80%81%e5%b8%88%e8%8e%b7%e5%be%97%e6%9c%80%e5%8f%97%e6%9c%ac%e7%a7%91%e7%94%9f%e6%ac%a2'),
(297, 92, '_menu_item_type', 'post_type'),
(298, 92, '_menu_item_menu_item_parent', '0'),
(299, 92, '_menu_item_object_id', '28'),
(300, 92, '_menu_item_object', 'page'),
(301, 92, '_menu_item_target', ''),
(302, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(303, 92, '_menu_item_xfn', ''),
(304, 92, '_menu_item_url', ''),
(392, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:450;s:4:"file";s:19:"2016/10/slide-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-1-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slide-1-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slide-1-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"slide-1-1200x450.jpg";s:5:"width";i:1200;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(306, 93, '_menu_item_type', 'post_type'),
(307, 93, '_menu_item_menu_item_parent', '92'),
(308, 93, '_menu_item_object_id', '30'),
(309, 93, '_menu_item_object', 'page'),
(310, 93, '_menu_item_target', ''),
(311, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(312, 93, '_menu_item_xfn', ''),
(313, 93, '_menu_item_url', ''),
(315, 94, '_menu_item_type', 'post_type'),
(316, 94, '_menu_item_menu_item_parent', '92'),
(317, 94, '_menu_item_object_id', '34'),
(318, 94, '_menu_item_object', 'page'),
(319, 94, '_menu_item_target', ''),
(320, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(321, 94, '_menu_item_xfn', ''),
(322, 94, '_menu_item_url', ''),
(369, 109, '_edit_last', '1'),
(324, 95, '_menu_item_type', 'post_type'),
(325, 95, '_menu_item_menu_item_parent', '92'),
(326, 95, '_menu_item_object_id', '32'),
(327, 95, '_menu_item_object', 'page'),
(328, 95, '_menu_item_target', ''),
(329, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(330, 95, '_menu_item_xfn', ''),
(331, 95, '_menu_item_url', ''),
(370, 109, '_edit_lock', '1477313161:1'),
(391, 120, '_wp_attached_file', '2016/10/slide-1.jpg'),
(393, 109, '_thumbnail_id', '120'),
(396, 121, '_wp_attached_file', '2016/10/slide-2.jpg'),
(397, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:450;s:4:"file";s:19:"2016/10/slide-2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-2-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slide-2-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slide-2-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"slide-2-1200x450.jpg";s:5:"width";i:1200;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(398, 107, '_thumbnail_id', '121'),
(401, 123, '_wp_attached_file', '2016/10/slide-3.jpg'),
(402, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:450;s:4:"file";s:19:"2016/10/slide-3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-3-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slide-3-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slide-3-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"slide-3-1200x450.jpg";s:5:"width";i:1200;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(403, 105, '_thumbnail_id', '123'),
(406, 124, '_wp_attached_file', '2016/10/slide-4.jpg'),
(407, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:450;s:4:"file";s:19:"2016/10/slide-4.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-4-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slide-4-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slide-4-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"slide-4-1200x450.jpg";s:5:"width";i:1200;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(408, 103, '_thumbnail_id', '124'),
(411, 125, '_wp_attached_file', '2016/10/slide-5.jpg'),
(412, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:450;s:4:"file";s:19:"2016/10/slide-5.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-5-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slide-5-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slide-5-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"slide-5-1200x450.jpg";s:5:"width";i:1200;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(413, 98, '_thumbnail_id', '125'),
(416, 137, '_menu_item_type', 'taxonomy'),
(417, 137, '_menu_item_menu_item_parent', '285'),
(418, 137, '_menu_item_object_id', '5'),
(419, 137, '_menu_item_object', 'category'),
(420, 137, '_menu_item_target', ''),
(421, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(422, 137, '_menu_item_xfn', ''),
(423, 137, '_menu_item_url', ''),
(425, 138, '_menu_item_type', 'taxonomy'),
(426, 138, '_menu_item_menu_item_parent', '285'),
(427, 138, '_menu_item_object_id', '6'),
(428, 138, '_menu_item_object', 'category'),
(429, 138, '_menu_item_target', ''),
(430, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(431, 138, '_menu_item_xfn', ''),
(432, 138, '_menu_item_url', ''),
(434, 139, '_menu_item_type', 'taxonomy'),
(435, 139, '_menu_item_menu_item_parent', '288'),
(436, 139, '_menu_item_object_id', '7'),
(437, 139, '_menu_item_object', 'category'),
(438, 139, '_menu_item_target', ''),
(439, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(440, 139, '_menu_item_xfn', ''),
(441, 139, '_menu_item_url', ''),
(443, 140, '_menu_item_type', 'taxonomy'),
(444, 140, '_menu_item_menu_item_parent', '288'),
(445, 140, '_menu_item_object_id', '8'),
(446, 140, '_menu_item_object', 'category'),
(447, 140, '_menu_item_target', ''),
(448, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(449, 140, '_menu_item_xfn', ''),
(450, 140, '_menu_item_url', ''),
(452, 141, '_menu_item_type', 'taxonomy'),
(453, 141, '_menu_item_menu_item_parent', '287'),
(454, 141, '_menu_item_object_id', '9'),
(455, 141, '_menu_item_object', 'category'),
(456, 141, '_menu_item_target', ''),
(457, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(458, 141, '_menu_item_xfn', ''),
(459, 141, '_menu_item_url', ''),
(461, 142, '_menu_item_type', 'taxonomy'),
(462, 142, '_menu_item_menu_item_parent', '287'),
(463, 142, '_menu_item_object_id', '10'),
(464, 142, '_menu_item_object', 'category'),
(465, 142, '_menu_item_target', ''),
(466, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(467, 142, '_menu_item_xfn', ''),
(468, 142, '_menu_item_url', ''),
(470, 143, '_menu_item_type', 'taxonomy'),
(471, 143, '_menu_item_menu_item_parent', '287'),
(472, 143, '_menu_item_object_id', '11'),
(473, 143, '_menu_item_object', 'category'),
(474, 143, '_menu_item_target', ''),
(475, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(476, 143, '_menu_item_xfn', ''),
(477, 143, '_menu_item_url', ''),
(479, 144, '_menu_item_type', 'taxonomy'),
(480, 144, '_menu_item_menu_item_parent', '286'),
(481, 144, '_menu_item_object_id', '12'),
(482, 144, '_menu_item_object', 'category'),
(483, 144, '_menu_item_target', ''),
(484, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(485, 144, '_menu_item_xfn', ''),
(486, 144, '_menu_item_url', ''),
(488, 145, '_menu_item_type', 'taxonomy'),
(489, 145, '_menu_item_menu_item_parent', '286'),
(490, 145, '_menu_item_object_id', '13'),
(491, 145, '_menu_item_object', 'category'),
(492, 145, '_menu_item_target', ''),
(493, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(494, 145, '_menu_item_xfn', ''),
(495, 145, '_menu_item_url', ''),
(559, 193, '_edit_last', '1'),
(560, 195, '_edit_lock', '1477397387:1'),
(558, 193, '_edit_lock', '1477397391:1'),
(561, 195, '_edit_last', '1'),
(562, 201, '_menu_item_type', 'post_type'),
(563, 201, '_menu_item_menu_item_parent', '84'),
(564, 201, '_menu_item_object_id', '195'),
(565, 201, '_menu_item_object', 'page'),
(566, 201, '_menu_item_target', ''),
(567, 201, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(568, 201, '_menu_item_xfn', ''),
(569, 201, '_menu_item_url', ''),
(682, 284, '_menu_item_menu_item_parent', '288'),
(571, 202, '_menu_item_type', 'post_type'),
(572, 202, '_menu_item_menu_item_parent', '84'),
(573, 202, '_menu_item_object_id', '193'),
(574, 202, '_menu_item_object', 'page'),
(575, 202, '_menu_item_target', ''),
(576, 202, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(577, 202, '_menu_item_xfn', ''),
(578, 202, '_menu_item_url', ''),
(681, 284, '_menu_item_type', 'taxonomy'),
(616, 242, '_wp_old_slug', '%e5%85%9a%e5%be%b7%e9%b9%8f__trashed'),
(589, 238, '_edit_lock', '1477366044:1'),
(590, 238, '_edit_last', '1'),
(593, 240, '_edit_lock', '1477366111:1'),
(594, 240, '_edit_last', '1'),
(599, 242, '_edit_lock', '1477366028:1'),
(600, 242, '_edit_last', '1'),
(683, 284, '_menu_item_object_id', '15'),
(684, 284, '_menu_item_object', 'category'),
(685, 284, '_menu_item_target', ''),
(686, 284, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(687, 284, '_menu_item_xfn', ''),
(688, 284, '_menu_item_url', ''),
(690, 285, '_menu_item_type', 'taxonomy'),
(691, 285, '_menu_item_menu_item_parent', '0'),
(692, 285, '_menu_item_object_id', '17'),
(693, 285, '_menu_item_object', 'category'),
(694, 285, '_menu_item_target', ''),
(695, 285, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(696, 285, '_menu_item_xfn', ''),
(697, 285, '_menu_item_url', ''),
(699, 286, '_menu_item_type', 'taxonomy'),
(700, 286, '_menu_item_menu_item_parent', '0'),
(701, 286, '_menu_item_object_id', '20'),
(702, 286, '_menu_item_object', 'category'),
(703, 286, '_menu_item_target', ''),
(704, 286, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(705, 286, '_menu_item_xfn', ''),
(706, 286, '_menu_item_url', ''),
(708, 287, '_menu_item_type', 'taxonomy'),
(709, 287, '_menu_item_menu_item_parent', '0'),
(710, 287, '_menu_item_object_id', '19'),
(711, 287, '_menu_item_object', 'category'),
(712, 287, '_menu_item_target', ''),
(713, 287, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(714, 287, '_menu_item_xfn', ''),
(715, 287, '_menu_item_url', ''),
(717, 288, '_menu_item_type', 'taxonomy'),
(718, 288, '_menu_item_menu_item_parent', '0'),
(719, 288, '_menu_item_object_id', '18'),
(720, 288, '_menu_item_object', 'category'),
(721, 288, '_menu_item_target', ''),
(722, 288, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(723, 288, '_menu_item_xfn', ''),
(724, 288, '_menu_item_url', ''),
(755, 305, '_wp_attached_file', '2016/10/kjjb2d.png'),
(756, 305, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:428;s:6:"height";i:649;s:4:"file";s:18:"2016/10/kjjb2d.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"kjjb2d-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"kjjb2d-198x300.png";s:5:"width";i:198;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(757, 306, '_wp_attached_file', '2016/10/zl1.bmp'),
(758, 306, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:471;s:6:"height";i:670;s:4:"file";s:15:"2016/10/zl1.bmp";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(759, 307, '_wp_attached_file', '2016/10/zmqzs.bmp'),
(760, 307, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1011;s:6:"height";i:674;s:4:"file";s:17:"2016/10/zmqzs.bmp";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(761, 308, '_wp_attached_file', '2016/10/zz1.png'),
(762, 308, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1006;s:6:"height";i:589;s:4:"file";s:15:"2016/10/zz1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"zz1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"zz1-300x176.png";s:5:"width";i:300;s:6:"height";i:176;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:15:"zz1-768x450.png";s:5:"width";i:768;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(763, 309, '_wp_attached_file', '2016/10/zz2.bmp'),
(764, 309, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:486;s:6:"height";i:670;s:4:"file";s:15:"2016/10/zz2.bmp";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(765, 323, '_edit_lock', '1477391860:1'),
(766, 323, '_edit_last', '1'),
(767, 326, '_edit_lock', '1477399818:1'),
(768, 326, '_edit_last', '1'),
(769, 328, '_menu_item_type', 'post_type'),
(770, 328, '_menu_item_menu_item_parent', '0'),
(771, 328, '_menu_item_object_id', '323'),
(772, 328, '_menu_item_object', 'page'),
(773, 328, '_menu_item_target', ''),
(774, 328, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(775, 328, '_menu_item_xfn', ''),
(776, 328, '_menu_item_url', ''),
(778, 329, '_menu_item_type', 'post_type'),
(779, 329, '_menu_item_menu_item_parent', '328'),
(780, 329, '_menu_item_object_id', '326'),
(781, 329, '_menu_item_object', 'page'),
(782, 329, '_menu_item_target', ''),
(783, 329, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(784, 329, '_menu_item_xfn', ''),
(785, 329, '_menu_item_url', ''),
(787, 326, '_wp_page_template', 'pages/message.php'),
(788, 195, '_wp_page_template', 'pages/boss.php'),
(789, 193, '_wp_page_template', 'pages/organization.php'),
(790, 63, '_wp_page_template', 'pages/contact.php'),
(791, 39, '_wp_page_template', 'pages/recent.php'),
(792, 32, '_wp_page_template', 'pages/direction.php');

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_posts`
--

CREATE TABLE `vrvt_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_posts`
--

INSERT INTO `vrvt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(9, 1, '2016-10-14 13:06:32', '2016-10-14 05:06:32', '一级菜单页面，不可用', '实验室概况', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2016-10-24 21:24:47', '2016-10-24 13:24:47', '', 0, 'http://localhost:8000/?page_id=9', 0, 'page', '', 0),
(96, 1, '2016-10-14 13:33:31', '2016-10-14 05:33:31', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=96', 1, 'nav_menu_item', '', 0),
(28, 1, '2016-10-14 13:13:20', '2016-10-14 05:13:20', '一级菜单页面，不可用', '科学研究', '', 'publish', 'closed', 'closed', '', 'research', '', '', '2016-10-20 20:28:17', '2016-10-20 12:28:17', '', 0, 'http://localhost:8000/?page_id=28', 0, 'page', '', 0),
(30, 1, '2016-10-14 13:13:37', '2016-10-14 05:13:37', '', '总体目标', '', 'publish', 'closed', 'closed', '', 'goal', '', '', '2016-10-14 13:13:37', '2016-10-14 05:13:37', '', 28, 'http://localhost:8000/?page_id=30', 0, 'page', '', 0),
(32, 1, '2016-10-14 13:14:00', '2016-10-14 05:14:00', '已被模板代替', '研究方向', '', 'publish', 'closed', 'closed', '', 'direction', '', '', '2016-10-25 20:20:00', '2016-10-25 12:20:00', '', 28, 'http://localhost:8000/?page_id=32', 0, 'page', '', 0),
(34, 1, '2016-10-14 13:14:28', '2016-10-14 05:14:28', '<h1>国家级、省部级、境外合作科研项目</h1>\r\n<table style="width: 865.383px;" border="1" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td style="width: 38px;">序号</td>\r\n<td style="width: 100px;">项目来源</td>\r\n<td style="width: 117px;">项目下达部门</td>\r\n<td style="width: 87px;">项目级别</td>\r\n<td style="width: 16px;">项目编号</td>\r\n<td style="width: 194px;">项目名称</td>\r\n<td style="width: 102px;">负责人</td>\r\n<td style="width: 95px;">开始年月</td>\r\n<td style="width: 77.3833px;">结束年月</td>\r\n</tr>\r\n<thead>\r\n<tbody>\r\n<tr>\r\n<td style="width: 38px;">1</td>\r\n<td style="width: 100px;">国家863计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">2008AA01Z301</td>\r\n<td style="width: 194px;">三维模型智能处理与检索平台</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">2</td>\r\n<td style="width: 100px;">国家863计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">一般项目</td>\r\n<td style="width: 16px;">2009AA01Z126</td>\r\n<td style="width: 194px;">多处理器片上系统运行中低功耗关键技术研究</td>\r\n<td style="width: 102px;">骆祖莹</td>\r\n<td style="width: 95px;">200907</td>\r\n<td style="width: 77.3833px;">201106</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">3</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重大项目课题</td>\r\n<td style="width: 16px;">2012BAH33F04</td>\r\n<td style="width: 194px;">“虚拟旅游与文化资源协同系统研发与应用”课题4“文化资源数字化建设相关标准”</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201412</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">4</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">60736008</td>\r\n<td style="width: 194px;">颅面形态学与颅面重构的研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">5</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61170170</td>\r\n<td style="width: 194px;">盘B样条和球B样条造型的理论及其应用</td>\r\n<td style="width: 102px;">武仲科</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201512</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">6</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61170203</td>\r\n<td style="width: 194px;">大规模三维模型数据库中物理属性方法研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201512</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">7</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61073034</td>\r\n<td style="width: 194px;">无线移动实时数据广播中的高性能并发控制</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">8</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60876025</td>\r\n<td style="width: 194px;">基于单点SOR方法的高性能芯片电热统计分析算法研究</td>\r\n<td style="width: 102px;">骆祖莹</td>\r\n<td style="width: 95px;">200812</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">9</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60872127</td>\r\n<td style="width: 194px;">全向摄像机的高精度标定研究</td>\r\n<td style="width: 102px;">段福庆</td>\r\n<td style="width: 95px;">200901</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">10</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60673100</td>\r\n<td style="width: 194px;">基于Web的音频识别与检索关键技术研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200701</td>\r\n<td style="width: 77.3833px;">200912</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">11</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">10971243</td>\r\n<td style="width: 194px;">基于区间值信息测度的区间值模糊控制研究</td>\r\n<td style="width: 102px;">曾文艺</td>\r\n<td style="width: 95px;">201001</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">12</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">60803082</td>\r\n<td style="width: 194px;">基于球B样条的Willis环建模、分割及定位关键技术研究</td>\r\n<td style="width: 102px;">王醒策</td>\r\n<td style="width: 95px;">200901</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">13</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61001168</td>\r\n<td style="width: 194px;">基于对称群的三维模型空间特征分析</td>\r\n<td style="width: 102px;">樊亚春</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">14</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61003134</td>\r\n<td style="width: 194px;">基于统计分割的脑血管三维模型重构研究</td>\r\n<td style="width: 102px;">田沄</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">15</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61003133</td>\r\n<td style="width: 194px;">基于面部软组织厚度的人脸老化模拟方法研究</td>\r\n<td style="width: 102px;">邓擎琼</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">16</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">主任基金</td>\r\n<td style="width: 16px;">60940032</td>\r\n<td style="width: 194px;">实时数据广播中的并发控制</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201001</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">17</td>\r\n<td style="width: 100px;">省级自然科学基金项目</td>\r\n<td style="width: 117px;">北京市自然科学基金委员会</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">4081002</td>\r\n<td style="width: 194px;">虚拟环境中脑血管可视化、导航和监测技术</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">18</td>\r\n<td style="width: 100px;">省科技厅项目</td>\r\n<td style="width: 117px;">北京市科学技术委员会</td>\r\n<td style="width: 87px;">北京市科技专项</td>\r\n<td style="width: 16px;">Z111101055311056</td>\r\n<td style="width: 194px;">数字化技术在北京胡同虚拟展示中的应用研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">19</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">中华人民共和国教育部</td>\r\n<td style="width: 87px;">新世纪优秀人才支持计划</td>\r\n<td style="width: 16px;">NCET-10-0239</td>\r\n<td style="width: 194px;">数据广播中的移动实时事务处理</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">20</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">中国软件评测中心</td>\r\n<td style="width: 87px;">一般项目</td>\r\n<td style="width: 16px;">P2011005EA</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">肖明忠</td>\r\n<td style="width: 95px;">201106</td>\r\n<td style="width: 77.3833px;">201205</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">21</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重大项目子课题</td>\r\n<td style="width: 16px;">2006BAK01A0703</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">200701</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">22</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重点项目子课题</td>\r\n<td style="width: 16px;">2006BAC18B0606</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">23</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">科技部信息中心</td>\r\n<td style="width: 87px;">重大项目子课题</td>\r\n<td style="width: 16px;">2010GXS1k013-02</td>\r\n<td style="width: 194px;">“软科学研究计划管理数字化平台”子课题“国家软科学研究计划网络申报受理业务规范、数据规范”</td>\r\n<td style="width: 102px;">栾华</td>\r\n<td style="width: 95px;">201103</td>\r\n<td style="width: 77.3833px;">201203</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>其他重要科研项目</h1>\r\n<table style="width: 866px;" border="1" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td style="width: 50px;">序号</td>\r\n<td style="width: 235.067px;">项目来源</td>\r\n<td style="width: 83.9333px;">时间</td>\r\n<td style="width: 243px;">项目名称</td>\r\n<td style="width: 77px;">负责人</td>\r\n<td style="width: 74px;">开始年月</td>\r\n<td style="width: 71px;">结束年月</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style="width: 50px;">1</td>\r\n<td style="width: 235.067px;">国家科技资源管理预研项目</td>\r\n<td style="width: 83.9333px;">201001</td>\r\n<td style="width: 243px;">全国科研项目预算数据库共享示范系统</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">201011</td>\r\n<td style="width: 71px;">201111</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">2</td>\r\n<td style="width: 235.067px;">中央高校基本科研业务费专项资金资助</td>\r\n<td style="width: 83.9333px;">201001</td>\r\n<td style="width: 243px;">文化遗产保护中大数据集全自动配准和匹配技术</td>\r\n<td style="width: 77px;">武仲科</td>\r\n<td style="width: 74px;">201001</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">3</td>\r\n<td style="width: 235.067px;">北京神威华安信息技术有限公司</td>\r\n<td style="width: 83.9333px;">201110</td>\r\n<td style="width: 243px;">联网电脑内容检查系统</td>\r\n<td style="width: 77px;">徐鹏飞</td>\r\n<td style="width: 74px;">201110</td>\r\n<td style="width: 71px;">201310</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">4</td>\r\n<td style="width: 235.067px;">科技部信息中心</td>\r\n<td style="width: 83.9333px;">201108</td>\r\n<td style="width: 243px;">2012年度生物中心部分社发领域预备项目视频评审技术服务</td>\r\n<td style="width: 77px;">王学松</td>\r\n<td style="width: 74px;">201101</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">5</td>\r\n<td style="width: 235.067px;">中央高校基本科研业务费专项资金资助</td>\r\n<td style="width: 83.9333px;">201104</td>\r\n<td style="width: 243px;">多模态信息检索中的关键学习算法研究</td>\r\n<td style="width: 77px;">常亮</td>\r\n<td style="width: 74px;">201101</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">6</td>\r\n<td style="width: 235.067px;">“985工程”科技创新平台建设子课题</td>\r\n<td style="width: 83.9333px;">200904</td>\r\n<td style="width: 243px;">虚拟现实技术在教育中的应用</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">200904</td>\r\n<td style="width: 71px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">7</td>\r\n<td style="width: 235.067px;">“985工程”科技创新平台建设子课题</td>\r\n<td style="width: 83.9333px;">200912</td>\r\n<td style="width: 243px;">虚拟技术与图像处理在认知神经科学中的应用</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">201001</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">8</td>\r\n<td style="width: 235.067px;">“211”工程科技创新平台建设项目子课题</td>\r\n<td style="width: 83.9333px;">200810</td>\r\n<td style="width: 243px;">应用心理学体系建设与社会服务能力的提高</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">200912</td>\r\n<td style="width: 71px;">201112</td>\r\n</tr>\r\n</tbody>\r\n</table>', '承担项目', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2016-10-25 16:10:24', '2016-10-25 08:10:24', '', 28, 'http://localhost:8000/?page_id=34', 0, 'page', '', 0),
(36, 1, '2016-10-14 13:15:08', '2016-10-14 05:15:08', '一级菜单页面，不可用', '学术成果', '', 'publish', 'closed', 'closed', '', 'achieve', '', '', '2016-10-25 11:08:00', '2016-10-25 03:08:00', '', 0, 'http://localhost:8000/?page_id=36', 0, 'page', '', 0),
(39, 1, '2016-10-14 13:15:32', '2016-10-14 05:15:32', '已被模板代替', '近期成果', '', 'publish', 'closed', 'closed', '', 'recent', '', '', '2016-10-25 20:11:41', '2016-10-25 12:11:41', '', 36, 'http://localhost:8000/?page_id=39', 0, 'page', '', 0),
(41, 1, '2016-10-14 13:15:49', '2016-10-14 05:15:49', '', '学术论文', '', 'publish', 'closed', 'closed', '', 'paper', '', '', '2016-10-25 11:08:00', '2016-10-25 03:08:00', '', 36, 'http://localhost:8000/?page_id=41', 0, 'page', '', 0),
(43, 1, '2016-10-14 13:16:19', '2016-10-14 05:16:19', '', '发明专利', '', 'publish', 'closed', 'closed', '', 'patent', '', '', '2016-10-25 11:08:00', '2016-10-25 03:08:00', '', 36, 'http://localhost:8000/?page_id=43', 0, 'page', '', 0),
(51, 1, '2016-10-14 13:18:58', '2016-10-14 05:18:58', '', '文章投稿指南', '', 'publish', 'closed', 'closed', '', 'submit', '', '', '2016-10-25 11:08:28', '2016-10-25 03:08:28', '', 0, 'http://localhost:8000/?page_id=51', 0, 'page', '', 0),
(63, 1, '2016-10-14 13:20:55', '2016-10-14 05:20:55', '已被模板代替', '联系方式', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-10-25 20:06:43', '2016-10-25 12:06:43', '', 323, 'http://localhost:8000/?page_id=63', 0, 'page', '', 0),
(65, 1, '2016-10-14 13:21:08', '2016-10-14 05:21:08', '', 'ENGLISH', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2016-10-14 13:21:08', '2016-10-14 05:21:08', '', 0, 'http://localhost:8000/?page_id=65', 0, 'page', '', 0),
(69, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 323, 'http://localhost:8000/?p=69', 30, 'nav_menu_item', '', 0),
(76, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=76', 23, 'nav_menu_item', '', 0),
(79, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=79', 16, 'nav_menu_item', '', 0),
(80, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 36, 'http://localhost:8000/?p=80', 19, 'nav_menu_item', '', 0),
(81, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 36, 'http://localhost:8000/?p=81', 18, 'nav_menu_item', '', 0),
(82, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 36, 'http://localhost:8000/?p=82', 17, 'nav_menu_item', '', 0),
(84, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=84', 2, 'nav_menu_item', '', 0),
(289, 1, '2016-10-25 11:17:23', '2016-10-25 03:17:23', ' ', '', '', 'publish', 'closed', 'closed', '', '289', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 20, 'http://localhost:8000/?p=289', 28, 'nav_menu_item', '', 0),
(92, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=92', 12, 'nav_menu_item', '', 0),
(93, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 28, 'http://localhost:8000/?p=93', 13, 'nav_menu_item', '', 0),
(94, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 28, 'http://localhost:8000/?p=94', 15, 'nav_menu_item', '', 0),
(95, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 28, 'http://localhost:8000/?p=95', 14, 'nav_menu_item', '', 0),
(98, 1, '2016-10-19 10:41:29', '2016-10-19 02:41:29', '2013年12月26-27日，中国虚拟教育师范院校发展专题研讨会在北京师范大学京师大厦第一会议室成功举行，本次会议由北京师范大学信息科学与技术学院和虚拟现实应用教育部工程研究中心承办，周明全教授任大会主席。来自全国师范院校和知名高校的专家、学者近百人参加了会议。\r\n\r\n    即将过去的2013年，教育领域面临着许多变革，中国教育的发展为师范教育提出了许多新的课题。随着虚拟教育技术的发展，大学教学和管理将泛在化和全球化；在信息技术高速发展的新形势下，如何提高中国基础教育管理技术和管理水平？MOOCs的发展将促进大学功能的加速转变，对师范院校的人才培养、科学研究、社会服务和文化传承方面将起到一定的催化作用；作为中国基础教育母机的师范教育，如何开展师范教育和基础教育的MOOCs体系建设？另外，大数据时代的到来，为我们提供了哪些机遇和挑战？26日上午，国内知名教育专家围绕以上问题进行了主题报告。中国教育学会会长、原北京师范大学校长钟秉林教授，北京大学校长助理李晓明教授，清华大学孙茂松教授，北京师范大学教育学部黄荣怀教授和北京师范大学信息科学与技术学院周明全教授分别结合以上问题作了不同的主题报告。专家报告结合实例，深入浅出，与会者受益匪浅。\r\n\r\n    下午，与会人员及专家就当前教育领域存在的问题进行了深入讨论，起草了中国虚拟教育的建议书；最后，参观了虚拟现实教育部工程应用研究中心，各单位间达成了系列合作意向。\r\n\r\n    本次会议是一次及时而重要的学术会议，加深了与会人员对当前教育领域存在问题的认识，增强了加强虚拟教育发展的紧迫感和责任感；而且就中国虚拟教育下一步的发展达成了共识。一元复苏，万象更新；我们相信，迎着信息时代的春风，中国的教育必将有一个百花盛开的春天！\r\n\r\n                                     北京师范大学 信息科学与技术学院\r\n\r\n                                     虚拟现实应用教育部工程研究中心', '中国虚拟教育师范院校发展专题研讨会召开', '', 'publish', 'open', 'open', '', '%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a01-%e4%b8%ad%e5%9b%bd%e8%99%9a%e6%8b%9f%e6%95%99%e8%82%b2%e5%b8%88%e8%8c%83%e9%99%a2%e6%a0%a1%e5%8f%91%e5%b1%95%e4%b8%93%e9%a2%98%e7%a0%94%e8%ae%a8%e4%bc%9a%e5%8f%ac', '', '', '2016-10-24 20:42:00', '2016-10-24 12:42:00', '', 0, 'http://localhost:8000/?p=98', 0, 'post', '', 0),
(101, 1, '2016-10-19 10:43:44', '2016-10-19 02:43:44', '北京师范大学信息科学与技术学院VR实验室元旦联欢会，于2013年12月30日在VR演播室成功举办，实验室师生积极参与其中。\r\n\r\n    联欢会下午3时正式开始。经过紧锣密鼓的筹备，原本布置简约的演播室焕然一新，张灯结彩，充满节日的喜庆气氛。首先，周明全院长以热情洋溢的诗朗诵，开启了整台联欢会的序幕。联欢会的节目形式丰富多彩，内容新颖活泼。情歌对唱，演绎深情款款；吉他弹唱，渲染浪漫气氛；爵士舞蹈，彰显青春活力。周院长即兴演唱经典老歌，气氛热烈；蔺东辉老师深情演绎革命红歌，催人奋进。来自巴基斯坦的两位留学生——阿里和阿卜杜拉，为大家带来具有异域特色的歌舞表演，令人耳目一新。其间，还有活泼有趣的游戏环节“谁是卧底”。师生积极参与，同场竞技；观众静观局势，忍俊不禁。\r\n\r\n\r\n\r\n\r\n\r\n周老师在活动现场\r\n\r\n周老师在师生联欢活动现场\r\n\r\n      此台联欢会全部由实验室师生自主策划并表演，为多才多艺的教师和学生提供了展示个人风采的舞台。整台联欢会历时近3个小时，在欢乐的气氛中圆满结束，通过活动增进了师生之间的感情，为师生带来新年的第一份祝福。\r\n\r\n\r\n\r\n强大的活动准备组织团队\r\n\r\n强大的活动组织团队\r\n', 'VR实验室举办2014元旦师生联欢会', '', 'publish', 'open', 'open', '', '%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a02-vr%e5%ae%9e%e9%aa%8c%e5%ae%a4%e4%b8%be%e5%8a%9e2014%e5%85%83%e6%97%a6%e5%b8%88%e7%94%9f%e8%81%94%e6%ac%a2%e4%bc%9anew', '', '', '2016-10-24 20:38:03', '2016-10-24 12:38:03', '', 0, 'http://localhost:8000/?p=101', 0, 'post', '', 0),
(103, 1, '2016-10-20 10:44:21', '2016-10-20 02:44:21', '近日， 2013年中国计算机大会（CCF CNCC 2013)在长沙举行，由我院周明全教授主持完成的“颅面形态信息学研究与应用”从众多评选项目中脱颖而出，荣获中国计算机学会科技进步二等奖。\r\n\r\n      中国计算机学会科学技术奖是我国计算机领域的专业技术最高奖励。本次共评选出一等奖3项，二等奖5项。高校系统中仅有国防科技大学、清华大学与北京师范大学三所学校获得。本次获奖标志着我校在计算机领域的科研得到了同行的认可，促使我校计算机应用的科研水平更上新的台阶。\r\n\r\n      “颅面形态信息学研究与应用”项目运用计算机技术研究数字化的面貌和颅骨的形态结构，变化规律、相互关系，形成了基于颅骨的面貌复原、身份认证、数字化头颅修复工程。在历时17年的研究和应用工作中，与人类学专家、考古学家，医生充分结合，解决了计算机复杂图形处理的关键技术，形成了颅面形态信息学的基础理论、知识体系、基本方法和领域应用的系列成果。项目成果已应用于公安刑侦、颅面医学、考古学与人类学等领域，并形成部颁标准，取得了良好的经济和社会效益。研究工作被中央电视台《走进科学》、《科技人生》等栏目报道。', '我院“颅面形态信息学研究与应用”获中国计算机学会科技进步二等奖', '', 'publish', 'open', 'open', '', '%e6%88%91%e9%99%a2%e9%a2%85%e9%9d%a2%e5%bd%a2%e6%80%81%e4%bf%a1%e6%81%af%e5%ad%a6%e7%a0%94%e7%a9%b6%e4%b8%8e%e5%ba%94%e7%94%a8%e8%8e%b7%e4%b8%ad', '', '', '2016-10-24 20:45:44', '2016-10-24 12:45:44', '', 0, 'http://localhost:8000/?p=103', 0, 'post', '', 0),
(105, 1, '2016-10-21 10:45:14', '2016-10-21 02:45:14', '息科学与技术学院邀请新加坡南洋理工大学计算机工程学院贺英副教授来访，并于6月17日至28日为研究生和教师开设“离散微分几何和数字几何处理选讲（Topics on Discrete Differential Geometry & Digital Geometry Processing）”短期课程，课时30小时。\r\n\r\n      本课程旨在介绍几何建模领域中的国际最新研究热点，包括离散测地线（discrete geodesics），离散热核 (discrete heat kernel)，共形参数化 (conformal map) 等。\r\n\r\n时间：6月17日-21日，24-28日上午8：30-11：30\r\n\r\n地点：电子楼500\r\n\r\n主讲人：贺英\r\n\r\n具体内容：\r\n\r\n6月17日：geodesics on smooth surfaces\r\n\r\n6月18日: discrete geodesics, approximate geodesic algorithms\r\n\r\n6月19日: exact geodesic algorithms\r\n\r\n6月20日: geodesic loops and offsets\r\n\r\n6月21日: all-pairs geodesics\r\n\r\n6月24日: exponential map\r\n\r\n6月25日: parallel algorithms for discrete geodesics\r\n\r\n6月26日: heat kernel signature\r\n\r\n6月27日: heat kernel and distance\r\n\r\n6月28日: applications in digital geometry processing\r\n\r\n主讲人贺英简介：\r\n\r\n      贺英：南洋理工大学计算机工程学院副教授。他分别在1997年7月和2000年7月于清华大学获得学士和硕士学位（电机工程）， 在2004年5月和2006年5月于纽约州立大学石溪分校（Stony Brook University）获得硕士和博士学位（计算机科学）。他在2006年6月作为助理教授加入南洋理工大学计算机工程学院，并于2012年2月 （共经过5年8个月）晋升为具有终身职位的副教授（tenured associate professor）。（注：南洋理工大学的终身职位一般需要9年助理教授的工作时间）\r\n\r\n      作为项目负责人（Principal Investigator）, 贺英教授主持了新加坡国家研究基金（National Research Foundation）和南洋理工大学近两百万新币(S$ 1,945,500.00 注：1S$≈5.10人民币)的研究项目。作为副项目负责人（Co-Principal Investigator），贺英教授参与了新加坡科技局（A*STAR）和新加坡教育部(Ministry of Education)的S$1,910,064.00研究项目。\r\n\r\n      贺英教授长期担任诸多国际著名的几何建模和计算机图形学会议的程序委员会成员（Program Committee Member）， 包括ACM Symposium on Solid and Physical Modeling (SPM), ACM Symposium on Interactive 3D Graphics and Games (I3D), ACM SIGGRAPH Asia (SA) Technical Sketches & Posters, IEEE Shape Modeling International (SMI), Computer Animation and Social Agents (CASA), Geometric Modeling and Processing (GMP)， 等等。贺英教授将担任Geometric Modeling and Processing 2014大会的程序委员会共同主席 （Program Co-Chair）。\r\n\r\n他现在领导一个包括9名博士生和两名博士后的几何建模团队 (Geometric Modeling Group http://gmp.sce.ntu.edu.sg) 。经过贺英教授指导的已经毕业或出站的博士生和博士后中，有3人已经在国内的高校中任教，包括中南大学，厦门大学和宁波大学，另有1人在University of Technology, Sydney担任研究职位。', '新加坡南洋理工大学贺英副教授来访', '', 'publish', 'open', 'open', '', '%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a04-2013%e5%b9%b4%e4%bf%a1%e7%81%ab%e7%9b%b8%e4%bc%a0%e7%b3%bb%e5%88%97%e6%b4%bb%e5%8a%a8%e4%b9%8b%ef%bc%88%e5%85%ab%ef%bc%89', '', '', '2016-10-24 20:45:55', '2016-10-24 12:45:55', '', 0, 'http://localhost:8000/?p=105', 0, 'post', '', 0),
(107, 1, '2016-10-19 11:09:14', '2016-10-19 03:09:14', '<p style="margin: 10px 0px; padding: 0px; border: 0px; color: #000000; font-family: \'Lucida Grande\', Arial, sans-serif; font-size: 15.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;">请大家积极投稿！</p>\r\n<p style="margin: 10px 0px; padding: 0px; border: 0px; color: #000000; font-family: \'Lucida Grande\', Arial, sans-serif; font-size: 15.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;"></p>\r\n\r\n<table style="margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; color: #000000; font-family: \'Lucida Grande\', Arial, sans-serif; font-size: 15.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; width: 571px;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td valign="top" width="87">\r\n<p align="center"><strong>CAD\'14</strong></p>\r\n</td>\r\n<td colspan="2" valign="top" width="484">\r\n<p align="left"><strong>the 11th Annual   International CAD Conference and Exhibition</strong></p>\r\n<p align="left">June 23-26,   2014, Hong Kong</p>\r\n<p align="left">http://www.cadconferences.com/</p>\r\n<p align="left"><strong>Deadline:</strong><span class="Apple-converted-space"> </span><strong>January 6, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" width="87">\r\n<p align="center"><strong>CGI 2014</strong></p>\r\n</td>\r\n<td colspan="2" valign="top" width="484">\r\n<p align="left"><strong>Computer   Graphics International 2014 - 31th Anniversary</strong></p>\r\n<p align="left">Sydney on June 10-13, 2014</p>\r\n<p align="left">http://rp-www.cs.usyd.edu.au/~cgi14/welcome/index.php</p>\r\n<p align="left"><strong>Deadline: 20   February 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" width="87">\r\n<p align="center"><strong>CASA 2014</strong></p>\r\n</td>\r\n<td colspan="2" valign="top" width="484">\r\n<p align="left"><strong>the 27th International Conference on Computer Animation   and Social Agents</strong></p>\r\n<p align="left">May 26-28, 2014, Houston, Texas, USA</p>\r\n<p align="left">http://graphics.cs.uh.edu/casa2014/</p>\r\n<p align="left"><strong>Deadline: February 12, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" width="87">\r\n<p align="center"><strong>MICCAI 2014</strong></p>\r\n</td>\r\n<td colspan="2" valign="top" width="484">\r\n<p align="left"><strong>MICCAI 2014</strong></p>\r\n<p align="left">Venue: Massachusetts Institute of Technology (MIT), Boston, MA. USA.\r\nConference Dates: Sep 14 -18, 2014\r\nhttp://miccai2014.org/dates.html\r\nDeadline: March 1，2014</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" width="87">\r\n<p align="center"><strong>SIGGRAPH 2014</strong></p>\r\n</td>\r\n<td colspan="2" valign="top" width="484">\r\n<p align="left"><strong>the 41th International Conference and Exhibition on   Computer Graphics and Interactive Techniques   </strong></p>\r\n<p align="left">August 10 to 14 2014 in Vancouver, Canada</p>\r\n<p align="left">http://s2014.siggraph.org/</p>\r\n<p align="left"><strong>Deadline: 17 January 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="center"><strong>PG 2014</strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>The 22th Pacific Conference on Computer Graphics and   Applications</strong></p>\r\n<p align="left">Seoul on Oct 8-10, 2014</p>\r\n<p align="left"><a href="http://graphics.ewha.ac.kr/PG14/">http://graphics.ewha.ac.kr/PG14/</a></p>\r\n<p align="left"><strong>Deadline: May 23, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="center"><strong>SGP 2014</strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>The Symposium on Geometry Processing 2014</strong></p>\r\n<p align="left">9-11 July in   Cardiff, United Kingdom.</p>\r\n<p align="left">http://www.cs.cf.ac.uk/sgp2014/cfp.html</p>\r\n<p align="left"><strong>Deadline: April 10, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="left"><strong>UIST 2014</strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>27TH ACM USER INTERFACE SOFTWARE AND TECHNOLOGY SYMPOSIUM</strong></p>\r\nHonolulu,   Hawaii, USA from October 5th to October 8th, 2014\r\n\r\n<a href="http://www.acm.org/uist/uist2014/index.php">http://www.acm.org/uist/uist2014/index.php</a>\r\n<p align="left"><strong>Deadline:</strong><strong><span class="Apple-converted-space"> </span>March   01,2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="left"><strong>IEEE VIS 2014</strong></p>\r\n<p align="left"><strong> </strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>IEEE Visualization 2014</strong></p>\r\n<p align="left">Paris, November 9-14</p>\r\n<p align="left"><a href="http://ieeevis.org/">http://ieeevis.org/</a></p>\r\n<p align="left"><strong>Deadline</strong><strong>：</strong><strong>March 21, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="center"><strong>SMI 2014</strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>Shape Modeling International</strong></p>\r\n<p align="left">Oct 28 - 30, 2014, in the Chinese University of Hong Kong http://spring.mae.cuhk.edu.hk/~smi2014/home/home-callforpapers.html</p>\r\n<p align="left"><strong>Deadline: June 27, 2014</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top" width="93">\r\n<p align="center"><strong>WSCG 2014</strong></p>\r\n</td>\r\n<td valign="top" width="478">\r\n<p align="left"><strong>22-th International Conference in Central Europe on   Computer Graphics, Visualization and Computer Vision 2014</strong></p>\r\n<p align="left">Pilsen [Plzen] close to Prague [Praha], Czech Republic, June 24-27, 2013</p>\r\n<p align="left">http://www.wscg.eu/</p>\r\n<p align="left"><strong>Deadline: March 5, 2014</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2014年上半年图形学国际会议列表', '', 'publish', 'open', 'open', '', '2014%e5%b9%b4%e4%b8%8a%e5%8d%8a%e5%b9%b4%e5%9b%be%e5%bd%a2%e5%ad%a6%e5%9b%bd%e9%99%85%e4%bc%9a%e8%ae%ae%e5%88%97%e8%a1%a8new', '', '', '2016-10-19 13:38:51', '2016-10-19 05:38:51', '', 0, 'http://localhost:8000/?p=107', 0, 'post', '', 0),
(109, 1, '2016-10-22 11:41:41', '2016-10-22 03:41:41', '4月20日，北京师范大学第七届“最受本科生欢迎的十佳教师”颁奖典礼在敬文讲堂圆满落幕。此次活动由教务处和校团委、学生会联合主办，得到了广大同学的热烈支持。到场嘉宾有北京师范大学副校长韩震、校团委书记柏贞尧、教务处副处长何丽平，以及各位获奖教师。\r\n\r\n我院阳光帅气的赵国兴老师获得第七届“最受本科生欢迎的十佳教师”称号。颁奖辞写到：高瞻远瞩，析离散之精微；深入浅出，解数学之奥妙。你用丰富的言语为枯燥的定理涂上缤纷的颜色，让复杂繁琐的演算变为灵动跳跃的音符，让知识鲜活在你的三尺讲堂，让思维闪烁在我们的脑海。\r\n\r\n同学们用欢呼声将获奖教师迎上领奖台。在接受了学生代表的证书与鲜花后，赵老师接受了主持人简短的采访。赵老师讲述了自己与师大的情缘，及对教学工作的观点看法，表达了自己的喜悦和对领导、同学的感谢之情，并谦虚地表示与师大的老前辈相比，他还有很多不足，需要继续努力。\r\n\r\n北京师范大学第七届“最受本科生欢迎的十佳教师”评选活动获得了校领导的高度重视和广大同学的热情参与，为我校深化教育教学改革提供了良好平台。本次活动即能激励教师积极开展本科教学工作，营造良好教风和学风，又为同学们提供了向辛勤工作的师长表达感谢的机会。', '热烈庆祝赵国兴老师获得“最受本科生欢迎的十佳教师”称号', '', 'publish', 'open', 'open', '', '%e7%83%ad%e7%83%88%e5%ba%86%e7%a5%9d%e8%b5%b5%e5%9b%bd%e5%85%b4%e8%80%81%e5%b8%88%e8%8e%b7%e5%be%97%e6%9c%80%e5%8f%97%e6%9c%ac%e7%a7%91%e7%94%9f%e6%ac%a2', '', '', '2016-10-24 20:46:01', '2016-10-24 12:46:01', '', 0, 'http://localhost:8000/?p=109', 0, 'post', '', 0),
(120, 1, '2016-10-19 13:38:14', '2016-10-19 05:38:14', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2016-10-19 13:38:14', '2016-10-19 05:38:14', '', 109, 'http://localhost:8000/wp-content/uploads/2016/10/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2016-10-19 13:38:46', '2016-10-19 05:38:46', '', 'slide-2', '', 'inherit', 'open', 'closed', '', 'slide-2', '', '', '2016-10-19 13:38:46', '2016-10-19 05:38:46', '', 107, 'http://localhost:8000/wp-content/uploads/2016/10/slide-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2016-10-19 13:39:21', '2016-10-19 05:39:21', '', 'slide-3', '', 'inherit', 'open', 'closed', '', 'slide-3', '', '', '2016-10-19 13:39:21', '2016-10-19 05:39:21', '', 105, 'http://localhost:8000/wp-content/uploads/2016/10/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2016-10-19 13:40:00', '2016-10-19 05:40:00', '', 'slide-4', '', 'inherit', 'open', 'closed', '', 'slide-4', '', '', '2016-10-19 13:40:00', '2016-10-19 05:40:00', '', 103, 'http://localhost:8000/wp-content/uploads/2016/10/slide-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2016-10-19 13:40:18', '2016-10-19 05:40:18', '', 'slide-5', '', 'inherit', 'open', 'closed', '', 'slide-5', '', '', '2016-10-19 13:40:18', '2016-10-19 05:40:18', '', 98, 'http://localhost:8000/wp-content/uploads/2016/10/slide-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 17, 'http://localhost:8000/?p=137', 6, 'nav_menu_item', '', 0),
(138, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 17, 'http://localhost:8000/?p=138', 7, 'nav_menu_item', '', 0),
(139, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 18, 'http://localhost:8000/?p=139', 9, 'nav_menu_item', '', 0),
(140, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 18, 'http://localhost:8000/?p=140', 10, 'nav_menu_item', '', 0),
(141, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 19, 'http://localhost:8000/?p=141', 21, 'nav_menu_item', '', 0),
(142, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 19, 'http://localhost:8000/?p=142', 22, 'nav_menu_item', '', 0),
(143, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 19, 'http://localhost:8000/?p=143', 24, 'nav_menu_item', '', 0),
(144, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 20, 'http://localhost:8000/?p=144', 26, 'nav_menu_item', '', 0),
(145, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 20, 'http://localhost:8000/?p=145', 27, 'nav_menu_item', '', 0),
(193, 1, '2016-10-24 21:23:09', '2016-10-24 13:23:09', '已被模板代替', '组织机构', '', 'publish', 'closed', 'closed', '', 'organization', '', '', '2016-10-25 19:43:33', '2016-10-25 11:43:33', '', 9, 'http://localhost:8000/?page_id=193', 0, 'page', '', 0),
(195, 1, '2016-10-24 21:23:53', '2016-10-24 13:23:53', '已被模板代替', '研究所领导', '', 'publish', 'closed', 'closed', '', 'boss', '', '', '2016-10-25 19:58:22', '2016-10-25 11:58:22', '', 9, 'http://localhost:8000/?page_id=195', 0, 'page', '', 0),
(201, 1, '2016-10-24 21:25:50', '2016-10-24 13:25:50', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 9, 'http://localhost:8000/?p=201', 4, 'nav_menu_item', '', 0),
(202, 1, '2016-10-24 21:25:50', '2016-10-24 13:25:50', ' ', '', '', 'publish', 'closed', 'closed', '', '202', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 9, 'http://localhost:8000/?p=202', 3, 'nav_menu_item', '', 0),
(238, 1, '2016-10-24 22:42:23', '2016-10-24 14:42:23', '<div class="person-info"><img src="/static/head/teacher/zhoumingquan-1.jpg" alt="zhoumingquan-1" />\r\n<h1>基本信息</h1>\r\n学位： 博士\r\n\r\n职称： 教授、博导\r\n\r\n系别： 计算机系\r\n\r\n<h1>研究方向</h1>\r\n\r\n 虚拟现实、计算机可视化技术、软件工程、中文信息处理\r\n \r\n\r\n<h1>个人简介</h1>\r\n\r\n      周明全，教授，博士生导师。北京师范大学信息科学与技术学院院长，教育部虚拟现实应用工程研究中心主任。北京市文化遗产数字化保护重点实验室主任，北京师范大学虚拟现实与可视化技术研究所所长。全国高等师范院校计算机研究会副理事长，北京市图像图形学会副理事长，中国图像图形学学会副理事长。担任国际CAA学术组织副主席，CYBERGAME学术组织副主席，以及国内外多个期刊编辑。\r\n\r\n    周教授长期以来从事计算机虚拟现实和可视化技术、软件工程、虚拟现实工程等重要领域的理论及其应用工程的创新性研究。近年来主要在三维脑医学图象处理，文化遗产的数字化保护，虚拟现实与可视化技术、网络环境下的现代教育等科学前沿方向有很多的创新性研究。\r\n\r\n    周教授主持和完成了从 “九.五”以来的多项国家科技攻关、863高技术、国家自然科学基金等重要科研项目，针对三维可视化的难点技术，取得突破性的进展，多项创造性成果产生了显著的社会经济效益。以周明全教授为主的科研团队，近年来获得国家科学技术进步二等奖1项，教育部科技进步奖二等奖3项，陕西省科技进步二等奖5项，三等奖2项，西安市科技进步一等奖2项。国家教学成果二等奖2项，省级教学成果奖3项。被陕西省政府授予“陕西省优秀留学回国人员”称号，被评为“国务院有突出贡献的专家”。在国内外计算机核心期刊和重要会议上发表学术论文200余篇,专著3部,译著1部，主编出版国家规划教材3部。获得软件著作权12项。\r\n</div>', '周明全', '', 'publish', 'open', 'open', '', '%e5%91%a8%e6%98%8e%e5%85%a8', '', '', '2016-10-25 11:29:45', '2016-10-25 03:29:45', '', 0, 'http://localhost:8000/?p=238', 0, 'post', '', 0),
(240, 1, '2016-10-24 22:41:50', '2016-10-24 14:41:50', '<div class="person-info"><img src="/static/head/teacher/wuzhongke-1.jpg" alt="wuzhongke-1" />\r\n<h1>基本信息</h1>\r\n\r\n职称：教授, 博士生导师\r\n\r\n联系电话：58803055\r\n\r\n邮箱： zwu@bnu.edu.cn\r\n\r\n<h1>社会兼职</h1>\r\n\r\n国际数字考古协会执行委员会委员\r\n\r\n北京图形图像学会常务理事\r\n\r\n<h1>教育经历</h1>\r\n\r\n1984/09-1988/09：理学学士，北京大学数学系基础数学专业\r\n\r\n1988/09-1991/01：硕士，北京航空航天大学航空宇航制造工程专业CAD/CAM方向\r\n\r\n1991/09-1995/09：博士，北京航空航天大学飞机设计系CAD/CAM 方向\r\n\r\n<h1>研究领域</h1>\r\n\r\n计算机图形学、计算机辅助几何设计、计算机动画、虚拟现实、医学图象处理\r\n\r\n<h1>主持项目</h1>\r\n\r\n2012-2015：国家自然科学基金项目，盘B样条和球B样条造型的理论及其应用\r\n\r\n2009-2012：中央高校基本科研业务费专项资金资助，文化遗产保护中大数据集全自动配准和匹配技术。\r\n\r\n<h1>获奖情况</h1>\r\n\r\n2009年国家科学进步二等奖，文物虚拟修复和数字化保护技术的研究与应用，排名第六）\r\n\r\n2008年新加坡南洋理工大学访问教授(Visiting Professor)\r\n\r\n2007年新加坡南洋理工大学Tan Chin Tuan学术交流学者奖\r\n\r\n2006年教育部科技进步二等奖，三维刚体破损复原研究及其在文物虚拟修复中应用，排名第六\r\n\r\n<h1>研究经历</h1>\r\n\r\n2006年4月至今，北京师范大学信息科学与技术学院教授，博士生导师。\r\n\r\n1995年9月至1997年9月，在中国科学院软件研究所从事博士后研究，并于1997年9月，在该所获副研究员职称。\r\n\r\n1997年9月至1999年8月，在新加坡南洋理工大学计算机工程系从事博士后研究。\r\n\r\n从1999年8月到2006年4月，分别在新加坡国家高性能计算研究所(IHPC)，法国国家信息与自动化研究所(INRIA)，新加坡南洋理工大学(NTU)计算机工程系等从事科研工作。主持和参与了多项研究和开发工作，涉及了计算机图形学各个方面。\r\n\r\n<h1>文章专著</h1>\r\n\r\n<strong>国际知名杂志</strong>\r\n\r\nYuYun Tian, Fuqing Duan, Mingquan Zhou, Zhongke Wu. Active contour model combining region and edge information. Machine Vision and Applications.(online).\r\n\r\n1. Qingqiong Deng, Mingquan Zhou, Wuyang Shui, Zhongke Wu, Yuan Ji, Ruyi Bai, A Novel Skull Registration Based on Global and Local Deformations for Craniofacial Reconstruction，Forensic Science International, V208, n1-3, 2011.\r\nZ Nan Hu, Suiping Zhou, Zhongke Wu, Mingquan Zhou, Benjamin Eng Keong Cho: Spatial-temporal patterns and pedestrian simulation. Journal of Visualization and Computer Animation 21(3-4): 387-399 (2010).\r\nZhZhongke Wu, Feng Lin, Seah Hock Soon: Topology preserving voxelisation of rational Bézier and NURBS curves. Computers &amp; Graphics 27(1): 83-89 (2003).\r\n\r\n2. Zhongke WU, Seah Hock Soon, Lin Feng, Tunnel-free Voxelization of Rational Bezier and NURBS Surfaces, The Visual Computer, Volume 19, Numbers 7-8: 505—512, 2003.\r\n\r\n3. Wu Zhongke, Lin Feng, Seah Hock Soon and Chan Kai Yun, Evaluation of difference bounds for computing rational Bézier curves and surfaces. Computers &amp; Graphics 28(4): 551-558 (2004).\r\n\r\n4. Jie Qiu, Hock Soon Seah, Feng Tian, ZhongKe Wu, Quan Chen. Feature and Region Based Auto Painting for 2D Animation，The Visual Computer, v21, n11:928-944, 2005.\r\n\r\n5. Jie Qiu, Hock Soon Seah, Feng Tian, Quan Chen, ZhongKe Wu. Enhanced Auto Coloring with Hierarchical Region Matching. Journal of Computer Animation and Virtual World. 16(3-4):463-473, 2005.\r\n\r\n6. Quan Chen, Feng Tian, HockSoon Seah, Zhongke Wu, Jie Qiu, Melikhov Konstantin. DBSC-based animation enhanced with feature and motion. Computer Animation and Virtual Worlds, Volume 17, Issue 3-4 (July 2006), p 189-198.\r\n\r\n7. Jie Qiu, Hock Soon Seah, Feng Tian, Quan Chen, Zhongke Wu and Konstantin Melikhov. Auto Coloring with Character Registration. International Journal of Computer Games Technology. V2008\r\n\r\n8. LIN Feng¬, SEAH Hock Soon, WU Zhongke, MA Di. Voxelisation and Fabrication of Freeform Models. Virtual and Physical Prototyping, Vol 2 n2, 2007: 65–73\r\n\r\n<strong>国际会议</strong>\r\n\r\nJianping Cai, Zhongke Wu, Xingce Wang, Mingquan Zhou. Adaptive Moving Least Squares for Smoothing Point Clouds. The Twelfth IASTED International Conference on Computer Graphics and Imaging (CGIM 2011)\r\nChang Leng, Zhongke Wu, Mingquan Zhou, Reconstruction of Tubular Object with Ball B-Spline Curve, Computer Graphics International (CGI) 2011.\r\n\r\n1. Zhongke Wu, Hock Soon Seah, Mingquan Zhou. Skeleton based Parametric Solid Models: Ball B-Spline Curves. Proceedings of 10th IEEE International Conference on Computer-Aided Design and Computer Graphics. Beijing, 2007. 47-52\r\n\r\n2. Zhongke Wu, Hock Soon Seah, Mingquan Zhou. Skeleton based Parametric Solid Models: Ball B-Spline Surfaces. Proceedings of 10th IEEE International Conference on Computer-Aided Design and Computer Graphics. Beijing, 2007. 421-424\r\n\r\n3. Hock Soon Seah, Zhongke Wu, Feng Tian, Xuexiang Xie, Yixiang Lu, Xian Xiao. MODELING AND VISUALIZATION OF PLANTS WITH BALL B-SPLINES. The International Workshop on Advanced Image Technology (IWAIT) 2007, Bangkok, Thailand. January 8-9, 2007.\r\n\r\n4. Zhongke Wu, Mingquan Zhou, Xingce Wang, Xuefeng Ao and Rongqing Song. An Interactive System of Modeling 3D Trees with Ball B-Spline Curves. The Second International Symposium on Plant Growth Modeling, Simulation, Visualization and Applications (PMA06). Beijing (PR CHINA), November 13-17, 2006\r\n\r\n5. Hock Soon Seah, Zhongke Wu, Feng Tian, Xian Xiao, Xie Boya. Artistic Brushstroke Representation and Animation with Disk B-Spline Curve. ACM SIGCHI International Conference on Advances in Computer Entertainment Technology (ACE 2005), 15th - 17th June 2005. Polytechnic University of Valencia (UPV), Spain (Full paper))\r\n\r\n6. Seah Hock Soon, Wu Zhongke. Ball B-Spline based Geometric Models in Distributed Virtual Environments. Workshop towards Semantic Virtual Environments\' (SVE 2005), Villars, Switzerland.\r\n\r\n8. Quan Chen, Zhongke WU, Feng Tian, Hock Soon Seah, Jie Qiu, Melikhov Konstantin. Vectorization of Raster Line-Drawings in Cartoons, International Conference on Computer Animation and Social Agents, October 17 - 19, 2005, Hong Kong\r\n\r\n9. XueXiang Xie, Feng Tian, HockSoon Seah, Zhongke Wu, Konstantin Melikhov. Pencil Drawing for NPR Rendering and Animation. Computer Animation &amp; Social Agents 2006(CASA’06)\r\n\r\n10. J. Qiu, H.S. Seah, F. Tian, Z. Wu, and Q. Chen. Topology enhanced feature-based auto coloring for computer-assisted cel animation. The Seventh IASTED International Conference on Computer Graphics and Imaging, 2004, p 26-32, Kauai, Hawaii, USA August 17-19, 2004.\r\n\r\n13. Hock Soon Seah, Zhongke Wu, Feng Tian, Xian Xiao, Xie Boya. Interactive Free-hand Drawing and In-Between Generation with DBSC. ACM SIGCHI International Conference on Advances in Computer Entertainment Technology (ACE 2005), 15th - 17th June 2005. Polytechnic University of Valencia (UPV), Spain (Demo)\r\n\r\n14. Xie Xuexiang, Tian Feng, Seah Hock Soon, Wu Zhongke. Texture space stylization for NPR rendering and animation. International Conference Computer Graphics, Imaging and Vision （CGIV05）, 26 – 29 July 2005，Beijing, China\r\n\r\n</div>', '武仲科', '', 'publish', 'open', 'open', '', '%e6%ad%a6%e4%bb%b2%e7%a7%91', '', '', '2016-10-25 11:30:16', '2016-10-25 03:30:16', '', 0, 'http://localhost:8000/?p=240', 0, 'post', '', 0),
(242, 1, '2016-10-24 22:40:26', '2016-10-24 14:40:26', '<div class="person-info">\r\n<img src="/static/head/teacher/dangdepeng.jpg" alt="dangdepeng">\r\n\r\n<h1>基本信息</h1>\r\n\r\n职称：教授\r\n\r\n邮箱： ddepeng@bnu.edu.cn\r\n\r\n<h1>研究方向</h1>\r\n\r\n移动实时数据库\r\n\r\n数据管理、分析与服务软件\r\n\r\n计算机技术在应急、国防、教育等领域的应用\r\n\r\n<h1>个人简介</h1>\r\n\r\n2003年6月于华中科技大学计算机学院获工学博士学位；2005年6月于清华大学计算机系博士后流动站出站，获博士后证书；2005年7月入北京师范大学信息学院工作；2006年7月晋升副教授；2007年8月任系主任；2010年入选“教育部新世纪优秀人才支持计划”；2012年7月晋升教授。\r\n   \r\n目前担任中国计算机学会数据库专业委员会委员、中国计算机学会服务计算专业委员会委员、中国计算机学会YOCSEF委员、国家自然科学基金评审专家、北京市海淀区科学技术委员会科技项目评审专家、教育部高等学校计算机科学与技术专业教学指导分委员会专家组成员、北京师范大学信息学院计算机科学与技术系主任、北京师范大学网络与继续教育学院教学指导委员会委员、中国计算机学会高级会员。\r\n\r\n<h1>科研项目</h1>\r\n\r\n教育部新世纪优秀人才支持计划（NCET-10-0239，数据广播中的移动实时事务处理）\r\n\r\n国家自然科学基金（60940032，实时数据广播中的并发控制）\r\n\r\n国家自然科学基金（61073034，无线移动实时数据广播中的高性能并发控制）\r\n\r\n国家科技支撑计划重大项目子课题（XXX应急平台数据库系统）\r\n\r\n国家科技支撑计划重点项目子课题（XXX计算机网络XXX风险防范模式及应用）\r\n\r\n中国博士后科学基金（海量数字资源移动服务关键问题研究）等\r\n   \r\n<h1>文章专著</h1>\r\n\r\n先后在《Journal of Systems & Software》（U.S.A.）、《计算机学报》、《计算机研究与发展》等国内外重要学术期刊和会议上发表学术论文40余篇，获批中国软件著作权登记5项。\r\n</div>', '党德鹏', '', 'publish', 'open', 'open', '', '%e5%85%9a%e5%be%b7%e9%b9%8f', '', '', '2016-10-25 11:29:17', '2016-10-25 03:29:17', '', 0, 'http://localhost:8000/?p=242', 0, 'post', '', 0),
(284, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '284', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 18, 'http://localhost:8000/?p=284', 11, 'nav_menu_item', '', 0),
(285, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '285', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=285', 5, 'nav_menu_item', '', 0),
(286, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '286', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=286', 25, 'nav_menu_item', '', 0),
(287, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '287', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=287', 20, 'nav_menu_item', '', 0),
(288, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '288', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=288', 8, 'nav_menu_item', '', 0),
(295, 1, '2016-10-25 11:36:35', '2016-10-25 03:36:35', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/panyunhe.jpg" alt="panyunhe">\r\n\r\n<h1>基本信息</h1>\r\n\r\n性别：男\r\n\r\n民族：汉族\r\n\r\n出生日期：1946年11月4日\r\n\r\n籍贯：浙江省杭州市\r\n\r\n职称：工学硕士，教授、博士生导师，计算机专家，中国工程院院士，国际欧亚科学院院士\r\n\r\n<h1> 个人简介 </h1>\r\n\r\n潘云鹤院士1974年3月加入中国共产党，1970年9月参加工作，浙江大学计算机系计算机应用专业毕业，研究生学历，2013年3月任第十二届全国政协常委、外事委员会主任。现兼任国务院学位委员会委员、中国科学技术协会顾问、中国图象图形学学会名誉理事长等职。\r\n \r\n潘院士是中国智能CAD领域的开拓者，创造性地将人工智能引入CAD技术，研制成功了轻纺花型、广告装潢、建筑布局、管网规划等多个新颖实用的智能CAD/CAM系统，特别是轻纺花型图案CAD/CAM领域取得创造性的重大的突破，产生显著经济效益。\r\n\r\n</div>', '潘云鹤', '', 'publish', 'open', 'open', '', '%e6%bd%98%e4%ba%91%e9%b9%a4', '', '', '2016-10-25 12:07:48', '2016-10-25 04:07:48', '', 0, 'http://localhost:8000/?p=295', 0, 'post', '', 0),
(303, 1, '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', '3-4', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/3-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(304, 1, '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 'kjgzz2012', '', 'inherit', 'open', 'closed', '', 'kjgzz2012', '', '', '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/kjgzz2012.jpg', 0, 'attachment', 'image/jpeg', 0),
(305, 1, '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 'kjjb2d', '', 'inherit', 'open', 'closed', '', 'kjjb2d', '', '', '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/kjjb2d.png', 0, 'attachment', 'image/png', 0),
(306, 1, '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 'zl1', '', 'inherit', 'open', 'closed', '', 'zl1', '', '', '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zl1.bmp', 0, 'attachment', 'image/bmp', 0),
(307, 1, '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 'zmqzs', '', 'inherit', 'open', 'closed', '', 'zmqzs', '', '', '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zmqzs.bmp', 0, 'attachment', 'image/bmp', 0),
(308, 1, '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 'zz1', '', 'inherit', 'open', 'closed', '', 'zz1', '', '', '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zz1.png', 0, 'attachment', 'image/png', 0),
(309, 1, '2016-10-25 16:29:27', '2016-10-25 08:29:27', '', 'zz2', '', 'inherit', 'open', 'closed', '', 'zz2', '', '', '2016-10-25 16:29:27', '2016-10-25 08:29:27', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zz2.bmp', 0, 'attachment', 'image/bmp', 0),
(323, 1, '2016-10-25 18:36:21', '2016-10-25 10:36:21', '一级菜单页面，不可用', '联系我们', '', 'publish', 'closed', 'closed', '', 'us', '', '', '2016-10-25 18:38:26', '2016-10-25 10:38:26', '', 0, 'http://localhost:8000/?page_id=323', 0, 'page', '', 0);
INSERT INTO `vrvt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(326, 1, '2016-10-25 18:36:46', '2016-10-25 10:36:46', '已被模板代替\r\n\r\n注意：这个页面需要设置为“允许评论”\r\n\r\n设置方式：右上角“显示选项” -> 勾选“讨论” -> 页面底部勾选“允许讨论”', '留言板', '', 'publish', 'open', 'closed', '', 'message', '', '', '2016-10-25 20:41:24', '2016-10-25 12:41:24', '', 323, 'http://localhost:8000/?page_id=326', 0, 'page', '', 0),
(328, 1, '2016-10-25 18:37:26', '2016-10-25 10:37:26', ' ', '', '', 'publish', 'closed', 'closed', '', '328', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 0, 'http://localhost:8000/?p=328', 29, 'nav_menu_item', '', 0),
(329, 1, '2016-10-25 18:37:26', '2016-10-25 10:37:26', ' ', '', '', 'publish', 'closed', 'closed', '', '329', '', '', '2016-10-25 18:37:26', '2016-10-25 10:37:26', '', 323, 'http://localhost:8000/?p=329', 31, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_termmeta`
--

CREATE TABLE `vrvt_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_terms`
--

CREATE TABLE `vrvt_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_terms`
--

INSERT INTO `vrvt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(6, '实验室通知', 'notation', 0),
(5, '实验室新闻', 'news', 0),
(7, '学术带头人', 'leader', 0),
(8, '研究所成员', 'member', 0),
(9, '专家报告', 'report', 0),
(10, '学术会议', 'conference', 0),
(11, '实验室报告', 'labreporyt', 0),
(12, '博士研究生', 'phd', 0),
(13, '硕士研究生', 'master', 0),
(14, 'primary', 'primary', 0),
(15, '特聘专家', 'prefessor', 0),
(16, '往届毕业生', 'graduate', 0),
(17, '新闻通知', 'dynamic', 0),
(18, '研究团队', 'group', 0),
(19, '学术活动', 'activity', 0),
(20, '人才培养', 'student', 0);

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_term_relationships`
--

CREATE TABLE `vrvt_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_term_relationships`
--

INSERT INTO `vrvt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(98, 5, 0),
(96, 14, 0),
(84, 14, 0),
(329, 14, 0),
(295, 15, 0),
(289, 14, 0),
(92, 14, 0),
(93, 14, 0),
(95, 14, 0),
(94, 14, 0),
(79, 14, 0),
(82, 14, 0),
(81, 14, 0),
(80, 14, 0),
(76, 14, 0),
(328, 14, 0),
(69, 14, 0),
(137, 14, 0),
(101, 5, 0),
(103, 5, 0),
(105, 5, 0),
(107, 6, 0),
(109, 5, 0),
(138, 14, 0),
(139, 14, 0),
(140, 14, 0),
(141, 14, 0),
(142, 14, 0),
(143, 14, 0),
(144, 14, 0),
(145, 14, 0),
(202, 14, 0),
(201, 14, 0),
(242, 7, 0),
(238, 7, 0),
(240, 7, 0),
(285, 14, 0),
(288, 14, 0),
(284, 14, 0),
(287, 14, 0),
(286, 14, 0);

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_term_taxonomy`
--

CREATE TABLE `vrvt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_term_taxonomy`
--

INSERT INTO `vrvt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(7, 7, 'category', '', 18, 3),
(6, 6, 'category', '', 17, 1),
(5, 5, 'category', '', 17, 5),
(8, 8, 'category', '', 18, 0),
(9, 9, 'category', '', 19, 0),
(10, 10, 'category', '', 19, 0),
(11, 11, 'category', '', 19, 0),
(12, 12, 'category', '', 20, 0),
(13, 13, 'category', '', 20, 0),
(14, 14, 'nav_menu', '', 0, 31),
(15, 15, 'category', '', 18, 1),
(16, 16, 'category', '', 20, 0),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_usermeta`
--

CREATE TABLE `vrvt_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_usermeta`
--

INSERT INTO `vrvt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'vrvt_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'vrvt_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(20, 1, 'session_tokens', 'a:3:{s:64:"4b43118a714c0db44c903a4bf71237884144b65ce10f3f0514e92916facf2362";a:4:{s:10:"expiration";i:1477633221;s:2:"ip";s:3:"::1";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1476423621;}s:64:"537091e61981e815e6ce65ba2ec32381924f6cde99b813eda40d4aa3a2f4b050";a:4:{s:10:"expiration";i:1478241466;s:2:"ip";s:3:"::1";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1477031866;}s:64:"af39c7721ef1e5ef28f6c43f740d10f8c375a996bc073d112a58900afca6b672";a:4:{s:10:"expiration";i:1478566569;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1477356969;}}'),
(39, 1, 'closedpostboxes_page', 'a:1:{i:0;s:7:"slugdiv";}'),
(15, 1, 'vrvt_dashboard_quick_press_last_post_id', '168'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '14'),
(21, 1, 'vrvt_user-settings', 'editor=html&libraryContent=browse&post_dfw=off&hidetb=1&mfold=o'),
(22, 1, 'vrvt_user-settings-time', '1477397481'),
(23, 2, 'nickname', 'teacher'),
(24, 2, 'first_name', ''),
(25, 2, 'last_name', ''),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'vrvt_capabilities', 'a:1:{s:6:"author";b:1;}'),
(33, 2, 'vrvt_user_level', '2'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 2, 'session_tokens', 'a:1:{s:64:"13087ba7929466cba19bf5efab126a9419ed320acf62710576ea5956ab8b7e50";a:4:{s:10:"expiration";i:1477142816;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476970016;}}'),
(36, 2, 'vrvt_dashboard_quick_press_last_post_id', '165'),
(37, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:19:"dashboard_right_now";}'),
(38, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(40, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- 表的结构 `vrvt_users`
--

CREATE TABLE `vrvt_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `vrvt_users`
--

INSERT INTO `vrvt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vrvt', '$P$BhBNMGoIkFrYMTe03qX/TTY980dSZE/', 'vrvt', 'gaoyan@mail.bnu.edu.cn', '', '2016-10-14 01:39:16', '1477031643:$P$BrnDCrwvko7B5IhMMdrRp9Y8tzPDqU0', 0, 'vrvt'),
(2, 'teacher', '$P$BsTEkbSgBuk3FWUeS/T8cpbGPQCGe51', 'teacher', '201521210014@mail.bnu.edu.cn', '', '2016-10-20 13:26:40', '1477031664:$P$BrbIDM8js0KYwDEQVAIHsGNIC1T.TI.', 0, 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vrvt_commentmeta`
--
ALTER TABLE `vrvt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `vrvt_comments`
--
ALTER TABLE `vrvt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `vrvt_links`
--
ALTER TABLE `vrvt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `vrvt_options`
--
ALTER TABLE `vrvt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `vrvt_postmeta`
--
ALTER TABLE `vrvt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `vrvt_posts`
--
ALTER TABLE `vrvt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `vrvt_termmeta`
--
ALTER TABLE `vrvt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `vrvt_terms`
--
ALTER TABLE `vrvt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `vrvt_term_relationships`
--
ALTER TABLE `vrvt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `vrvt_term_taxonomy`
--
ALTER TABLE `vrvt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `vrvt_usermeta`
--
ALTER TABLE `vrvt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `vrvt_users`
--
ALTER TABLE `vrvt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `vrvt_commentmeta`
--
ALTER TABLE `vrvt_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `vrvt_comments`
--
ALTER TABLE `vrvt_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `vrvt_links`
--
ALTER TABLE `vrvt_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `vrvt_options`
--
ALTER TABLE `vrvt_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;
--
-- 使用表AUTO_INCREMENT `vrvt_postmeta`
--
ALTER TABLE `vrvt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;
--
-- 使用表AUTO_INCREMENT `vrvt_posts`
--
ALTER TABLE `vrvt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
--
-- 使用表AUTO_INCREMENT `vrvt_termmeta`
--
ALTER TABLE `vrvt_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `vrvt_terms`
--
ALTER TABLE `vrvt_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `vrvt_term_taxonomy`
--
ALTER TABLE `vrvt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `vrvt_usermeta`
--
ALTER TABLE `vrvt_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `vrvt_users`
--
ALTER TABLE `vrvt_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
