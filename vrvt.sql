-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2016-10-26 10:30:10
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
(22, 'posts_per_page', '12', 'yes'),
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
(39, 'recently_edited', 'a:5:{i:0;s:52:"D:\\wamp64\\www\\vrvt/wp-content/themes/vrvt/search.php";i:2;s:55:"D:\\wamp64\\www\\vrvt/wp-content/themes/vrvt/searchyes.php";i:3;s:54:"D:\\wamp64\\www\\vrvt/wp-content/themes/vrvt/searchno.php";i:4;s:51:"D:\\wamp64\\www\\vrvt/wp-content/themes/vrvt/style.css";i:5;s:51:"D:\\wamp64\\www\\vrvt/wp-content/themes/vrvt/pages.php";}', 'no'),
(40, 'template', 'vrvt', 'yes'),
(41, 'stylesheet', 'vrvt', 'yes'),
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
(104, 'cron', 'a:5:{i:1477489156;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477511662;a:1:{s:22:"backwpup_check_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477532365;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1477532861;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(178, 'db_upgraded', '', 'yes'),
(142, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"gaoyan@mail.bnu.edu.cn";s:7:"version";s:5:"4.5.4";s:9:"timestamp";i:1476409236;}', 'yes'),
(577, '_site_transient_timeout_theme_roots', '1477457757', 'no'),
(578, '_site_transient_theme_roots', 'a:1:{s:4:"vrvt";s:7:"/themes";}', 'no'),
(560, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477455960;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:35:"easy-wp-cleaner/easy-wp-cleaner.php";O:8:"stdClass":7:{s:2:"id";s:5:"63147";s:4:"slug";s:15:"easy-wp-cleaner";s:6:"plugin";s:35:"easy-wp-cleaner/easy-wp-cleaner.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:46:"https://wordpress.org/plugins/easy-wp-cleaner/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/easy-wp-cleaner.1.3.zip";s:14:"upgrade_notice";s:100:"Fixed designing issue in help section.\nadded horizontal rular in settings tab for better indication.";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.4.1.zip";}}}', 'no'),
(559, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1477455956;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(201, 'current_theme', '', 'yes'),
(202, 'theme_switched', '', 'yes'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(555, '_transient_timeout_plugin_slugs', '1477490374', 'no'),
(556, '_transient_plugin_slugs', 'a:2:{i:0;s:35:"easy-wp-cleaner/easy-wp-cleaner.php";i:1;s:37:"tinymce-advanced/tinymce-advanced.php";}', 'no'),
(287, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:178:"print,copy,cut,paste,pastetext,searchreplace,wp_page,undo,redo,wp_adv,fullscreen,wp_help,nonbreaking,charmap,table,emoticons,insertdatetime,image,media,anchor,link,unlink,wp_more";s:9:"toolbar_2";s:227:"removeformat,forecolor,backcolor,bold,italic,underline,strikethrough,hr,subscript,superscript,bullist,numlist,alignleft,aligncenter,alignright,alignjustify,outdent,indent,ltr,rtl,visualchars,visualblocks,blockquote,wp_code,code";s:9:"toolbar_3";s:50:"styleselect,formatselect,fontselect,fontsizeselect";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"menubar,advlist";s:7:"plugins";s:102:"anchor,visualchars,visualblocks,nonbreaking,emoticons,insertdatetime,table,print,searchreplace,advlist";}', 'yes'),
(181, 'can_compress_scripts', '1', 'no'),
(182, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:14;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1477404041;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(641, '_site_transient_timeout_available_translations', '1477474964', 'no');
INSERT INTO `vrvt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(642, '_site_transient_available_translations', 'a:86:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 10:29:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-01 16:18:09";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 18:47:31";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 18:48:33";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 04:42:01";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 22:25:56";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 11:46:15";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 18:54:55";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:07:58";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 19:02:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-21 15:44:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-03 13:43:01";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 19:47:48";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 09:14:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-07 18:41:52";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-19 13:41:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 10:27:20";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-04 13:42:56";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 16:21:38";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-27 16:24:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 13:50:08";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-21 02:17:37";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 14:12:34";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-13 10:00:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 16:23:26";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 20:20:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-18 10:43:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 01:34:25";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
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
(561, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477455961;s:7:"checked";a:1:{s:4:"vrvt";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(562, 'theme_mods_vrvt', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:14;}}', 'yes'),
(511, 'category_children', 'a:4:{i:17;a:2:{i:0;i:5;i:1;i:6;}i:18;a:3:{i:0;i:7;i:1;i:8;i:2;i:15;}i:19;a:3:{i:0;i:9;i:1;i:10;i:2;i:11;}i:20;a:3:{i:0;i:12;i:1;i:13;i:2;i:16;}}', 'yes'),
(593, '_transient_timeout_dash_5438fb5baf31c513fff2b9a1067656a6', '1477499414', 'no'),
(594, '_transient_dash_5438fb5baf31c513fff2b9a1067656a6', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://cn.wordpress.org/2016/04/17/coleman/\'>WordPress 4.5“Coleman”</a> <span class="rss-date">2016年4月17日</span><div class="rssSummary">WordPress 4.5简体中文版现已开放下载。</div></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/weglot-multilingual-wordpress-plugin-passes-e10000-in-monthly-revenue\'>WPTavern: Weglot Multilingual WordPress Plugin Passes €10,000 in Monthly Revenue</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-and-web-development-communities-get-together-to-help-non-profits-at-website-weekend-la\'>WPTavern: WordPress and Web Development Communities Get Together to Help Non-Profits at Website Weekend LA</a></li><li><a class=\'rsswidget\' href=\'https://ma.tt/2016/10/common-at-tiny-desk/\'>Matt: Common at Tiny Desk</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>热门插件:</span> UpdraftPlus WordPress Backup Plugin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=updraftplus&amp;_wpnonce=58c7e3db8d&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="安装UpdraftPlus WordPress Backup Plugin">(安装)</a></li></ul></div>', 'no');

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
(10, 9, '_edit_lock', '1477411052:1'),
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
(44, 28, '_edit_lock', '1477411071:1'),
(45, 30, '_edit_last', '1'),
(46, 30, '_edit_lock', '1477397652:1'),
(47, 32, '_edit_last', '1'),
(48, 32, '_edit_lock', '1477397873:1'),
(49, 34, '_edit_last', '1'),
(50, 34, '_edit_lock', '1477397888:1'),
(51, 36, '_edit_last', '1'),
(52, 36, '_edit_lock', '1477410867:1'),
(53, 39, '_edit_last', '1'),
(54, 39, '_edit_lock', '1477476293:1'),
(55, 41, '_edit_last', '1'),
(56, 41, '_edit_lock', '1477470407:1'),
(57, 43, '_edit_last', '1'),
(58, 43, '_edit_lock', '1477469951:1'),
(77, 63, '_edit_last', '1'),
(78, 63, '_edit_lock', '1477397147:1'),
(79, 65, '_edit_last', '1'),
(80, 65, '_edit_lock', '1477474952:1'),
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
(743, 295, '_edit_lock', '1477457713:1'),
(368, 107, '_oembed_e1e328d14424cde1dfbd31faf5b1c9c3', '{{unknown}}'),
(363, 107, '_oembed_5d48b718125ac8050d467c45df26f96c', '{{unknown}}'),
(753, 304, '_wp_attached_file', '2016/10/kjgzz2012.jpg'),
(366, 107, '_oembed_3cf294664c8e6ce6646bb803a78818ea', '{{unknown}}'),
(1023, 65, '_wp_page_template', 'pages/english.php'),
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
(560, 195, '_edit_lock', '1477403802:1'),
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
(589, 238, '_edit_lock', '1477457703:1'),
(590, 238, '_edit_last', '1'),
(593, 240, '_edit_lock', '1477458301:1'),
(594, 240, '_edit_last', '1'),
(599, 242, '_edit_lock', '1477461378:1'),
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
(765, 323, '_edit_lock', '1477411088:1'),
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
(792, 32, '_wp_page_template', 'pages/direction.php'),
(794, 43, '_wp_page_template', 'pages/patent.php'),
(795, 36, '_wp_page_template', '404.php'),
(796, 9, '_wp_page_template', '404.php'),
(797, 28, '_wp_page_template', '404.php'),
(798, 323, '_wp_page_template', '404.php'),
(892, 387, '_edit_last', '1'),
(891, 387, '_edit_lock', '1477464130:1'),
(896, 393, '_edit_last', '1'),
(895, 393, '_edit_lock', '1477470418:1'),
(900, 395, '_edit_last', '1'),
(899, 395, '_edit_lock', '1477464114:1'),
(906, 399, '_edit_last', '1'),
(905, 399, '_edit_lock', '1477464109:1'),
(910, 402, '_edit_last', '1'),
(909, 402, '_edit_lock', '1477464102:1'),
(913, 406, '_edit_lock', '1477464096:1'),
(914, 406, '_edit_last', '1'),
(917, 409, '_edit_lock', '1477464091:1'),
(918, 409, '_edit_last', '1'),
(926, 414, '_edit_last', '1'),
(925, 414, '_edit_lock', '1477464082:1'),
(929, 416, '_edit_lock', '1477464074:1'),
(930, 416, '_edit_last', '1'),
(934, 418, '_edit_last', '1'),
(933, 418, '_edit_lock', '1477464068:1'),
(937, 420, '_edit_lock', '1477464064:1'),
(938, 420, '_edit_last', '1'),
(941, 422, '_edit_lock', '1477464059:1'),
(942, 422, '_edit_last', '1'),
(946, 424, '_edit_last', '1'),
(945, 424, '_edit_lock', '1477464054:1'),
(949, 426, '_edit_lock', '1477464049:1'),
(950, 426, '_edit_last', '1'),
(954, 428, '_edit_last', '1'),
(953, 428, '_edit_lock', '1477464045:1'),
(957, 430, '_edit_lock', '1477464040:1'),
(958, 430, '_edit_last', '1'),
(974, 439, '_edit_last', '1'),
(973, 439, '_edit_lock', '1477464036:1'),
(977, 441, '_edit_lock', '1477464030:1'),
(978, 441, '_edit_last', '1'),
(1019, 41, '_wp_page_template', 'pages/paper.php'),
(1024, 465, '_edit_lock', '1477475988:1'),
(1025, 465, '_edit_last', '1'),
(1026, 465, '_wp_page_template', 'pages/photo.php'),
(1027, 467, '_menu_item_type', 'post_type'),
(1028, 467, '_menu_item_menu_item_parent', '84'),
(1029, 467, '_menu_item_object_id', '465'),
(1030, 467, '_menu_item_object', 'page'),
(1031, 467, '_menu_item_target', ''),
(1032, 467, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1033, 467, '_menu_item_xfn', ''),
(1034, 467, '_menu_item_url', ''),
(1036, 468, '_wp_attached_file', '2016/10/bj.png'),
(1037, 468, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:545;s:4:"file";s:14:"2016/10/bj.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"bj-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"bj-300x219.png";s:5:"width";i:300;s:6:"height";i:219;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1038, 469, '_wp_attached_file', '2016/10/yjzx.png'),
(1039, 469, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1011;s:6:"height";i:674;s:4:"file";s:16:"2016/10/yjzx.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"yjzx-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"yjzx-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"yjzx-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

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
(9, 1, '2016-10-14 13:06:32', '2016-10-14 05:06:32', '一级菜单页面，不可用', '实验室概况', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2016-10-25 23:59:54', '2016-10-25 15:59:54', '', 0, 'http://localhost:8000/?page_id=9', 0, 'page', '', 0),
(96, 1, '2016-10-14 13:33:31', '2016-10-14 05:33:31', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=96', 1, 'nav_menu_item', '', 0),
(28, 1, '2016-10-14 13:13:20', '2016-10-14 05:13:20', '一级菜单页面，不可用', '科学研究', '', 'publish', 'closed', 'closed', '', 'research', '', '', '2016-10-26 00:00:13', '2016-10-25 16:00:13', '', 0, 'http://localhost:8000/?page_id=28', 0, 'page', '', 0),
(30, 1, '2016-10-14 13:13:37', '2016-10-14 05:13:37', '', '总体目标', '', 'publish', 'closed', 'closed', '', 'goal', '', '', '2016-10-14 13:13:37', '2016-10-14 05:13:37', '', 28, 'http://localhost:8000/?page_id=30', 0, 'page', '', 0),
(32, 1, '2016-10-14 13:14:00', '2016-10-14 05:14:00', '已被模板代替', '研究方向', '', 'publish', 'closed', 'closed', '', 'direction', '', '', '2016-10-25 20:20:00', '2016-10-25 12:20:00', '', 28, 'http://localhost:8000/?page_id=32', 0, 'page', '', 0),
(34, 1, '2016-10-14 13:14:28', '2016-10-14 05:14:28', '<h1>国家级、省部级、境外合作科研项目</h1>\r\n<table style="width: 865.383px;" border="1" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td style="width: 38px;">序号</td>\r\n<td style="width: 100px;">项目来源</td>\r\n<td style="width: 117px;">项目下达部门</td>\r\n<td style="width: 87px;">项目级别</td>\r\n<td style="width: 16px;">项目编号</td>\r\n<td style="width: 194px;">项目名称</td>\r\n<td style="width: 102px;">负责人</td>\r\n<td style="width: 95px;">开始年月</td>\r\n<td style="width: 77.3833px;">结束年月</td>\r\n</tr>\r\n<thead>\r\n<tbody>\r\n<tr>\r\n<td style="width: 38px;">1</td>\r\n<td style="width: 100px;">国家863计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">2008AA01Z301</td>\r\n<td style="width: 194px;">三维模型智能处理与检索平台</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">2</td>\r\n<td style="width: 100px;">国家863计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">一般项目</td>\r\n<td style="width: 16px;">2009AA01Z126</td>\r\n<td style="width: 194px;">多处理器片上系统运行中低功耗关键技术研究</td>\r\n<td style="width: 102px;">骆祖莹</td>\r\n<td style="width: 95px;">200907</td>\r\n<td style="width: 77.3833px;">201106</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">3</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重大项目课题</td>\r\n<td style="width: 16px;">2012BAH33F04</td>\r\n<td style="width: 194px;">“虚拟旅游与文化资源协同系统研发与应用”课题4“文化资源数字化建设相关标准”</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201412</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">4</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">60736008</td>\r\n<td style="width: 194px;">颅面形态学与颅面重构的研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">5</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61170170</td>\r\n<td style="width: 194px;">盘B样条和球B样条造型的理论及其应用</td>\r\n<td style="width: 102px;">武仲科</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201512</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">6</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61170203</td>\r\n<td style="width: 194px;">大规模三维模型数据库中物理属性方法研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201512</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">7</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">61073034</td>\r\n<td style="width: 194px;">无线移动实时数据广播中的高性能并发控制</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">8</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60876025</td>\r\n<td style="width: 194px;">基于单点SOR方法的高性能芯片电热统计分析算法研究</td>\r\n<td style="width: 102px;">骆祖莹</td>\r\n<td style="width: 95px;">200812</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">9</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60872127</td>\r\n<td style="width: 194px;">全向摄像机的高精度标定研究</td>\r\n<td style="width: 102px;">段福庆</td>\r\n<td style="width: 95px;">200901</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">10</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">60673100</td>\r\n<td style="width: 194px;">基于Web的音频识别与检索关键技术研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200701</td>\r\n<td style="width: 77.3833px;">200912</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">11</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">面上项目</td>\r\n<td style="width: 16px;">10971243</td>\r\n<td style="width: 194px;">基于区间值信息测度的区间值模糊控制研究</td>\r\n<td style="width: 102px;">曾文艺</td>\r\n<td style="width: 95px;">201001</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">12</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">60803082</td>\r\n<td style="width: 194px;">基于球B样条的Willis环建模、分割及定位关键技术研究</td>\r\n<td style="width: 102px;">王醒策</td>\r\n<td style="width: 95px;">200901</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">13</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61001168</td>\r\n<td style="width: 194px;">基于对称群的三维模型空间特征分析</td>\r\n<td style="width: 102px;">樊亚春</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">14</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61003134</td>\r\n<td style="width: 194px;">基于统计分割的脑血管三维模型重构研究</td>\r\n<td style="width: 102px;">田沄</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">15</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">青年项目</td>\r\n<td style="width: 16px;">61003133</td>\r\n<td style="width: 194px;">基于面部软组织厚度的人脸老化模拟方法研究</td>\r\n<td style="width: 102px;">邓擎琼</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">16</td>\r\n<td style="width: 100px;">国家自然科学基金</td>\r\n<td style="width: 117px;">国家自然科学基金委员会</td>\r\n<td style="width: 87px;">主任基金</td>\r\n<td style="width: 16px;">60940032</td>\r\n<td style="width: 194px;">实时数据广播中的并发控制</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201001</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">17</td>\r\n<td style="width: 100px;">省级自然科学基金项目</td>\r\n<td style="width: 117px;">北京市自然科学基金委员会</td>\r\n<td style="width: 87px;">重点项目</td>\r\n<td style="width: 16px;">4081002</td>\r\n<td style="width: 194px;">虚拟环境中脑血管可视化、导航和监测技术</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">18</td>\r\n<td style="width: 100px;">省科技厅项目</td>\r\n<td style="width: 117px;">北京市科学技术委员会</td>\r\n<td style="width: 87px;">北京市科技专项</td>\r\n<td style="width: 16px;">Z111101055311056</td>\r\n<td style="width: 194px;">数字化技术在北京胡同虚拟展示中的应用研究</td>\r\n<td style="width: 102px;">周明全</td>\r\n<td style="width: 95px;">201201</td>\r\n<td style="width: 77.3833px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">19</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">中华人民共和国教育部</td>\r\n<td style="width: 87px;">新世纪优秀人才支持计划</td>\r\n<td style="width: 16px;">NCET-10-0239</td>\r\n<td style="width: 194px;">数据广播中的移动实时事务处理</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">201101</td>\r\n<td style="width: 77.3833px;">201312</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">20</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">中国软件评测中心</td>\r\n<td style="width: 87px;">一般项目</td>\r\n<td style="width: 16px;">P2011005EA</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">肖明忠</td>\r\n<td style="width: 95px;">201106</td>\r\n<td style="width: 77.3833px;">201205</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">21</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重大项目子课题</td>\r\n<td style="width: 16px;">2006BAK01A0703</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">200701</td>\r\n<td style="width: 77.3833px;">201112</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">22</td>\r\n<td style="width: 100px;">国家科技支撑计划</td>\r\n<td style="width: 117px;">中华人民共和国科学技术部</td>\r\n<td style="width: 87px;">重点项目子课题</td>\r\n<td style="width: 16px;">2006BAC18B0606</td>\r\n<td style="width: 194px;">涉密项目</td>\r\n<td style="width: 102px;">党德鹏</td>\r\n<td style="width: 95px;">200801</td>\r\n<td style="width: 77.3833px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 38px;">23</td>\r\n<td style="width: 100px;">部委级科研项目</td>\r\n<td style="width: 117px;">科技部信息中心</td>\r\n<td style="width: 87px;">重大项目子课题</td>\r\n<td style="width: 16px;">2010GXS1k013-02</td>\r\n<td style="width: 194px;">“软科学研究计划管理数字化平台”子课题“国家软科学研究计划网络申报受理业务规范、数据规范”</td>\r\n<td style="width: 102px;">栾华</td>\r\n<td style="width: 95px;">201103</td>\r\n<td style="width: 77.3833px;">201203</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>其他重要科研项目</h1>\r\n<table style="width: 866px;" border="1" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td style="width: 50px;">序号</td>\r\n<td style="width: 235.067px;">项目来源</td>\r\n<td style="width: 83.9333px;">时间</td>\r\n<td style="width: 243px;">项目名称</td>\r\n<td style="width: 77px;">负责人</td>\r\n<td style="width: 74px;">开始年月</td>\r\n<td style="width: 71px;">结束年月</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style="width: 50px;">1</td>\r\n<td style="width: 235.067px;">国家科技资源管理预研项目</td>\r\n<td style="width: 83.9333px;">201001</td>\r\n<td style="width: 243px;">全国科研项目预算数据库共享示范系统</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">201011</td>\r\n<td style="width: 71px;">201111</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">2</td>\r\n<td style="width: 235.067px;">中央高校基本科研业务费专项资金资助</td>\r\n<td style="width: 83.9333px;">201001</td>\r\n<td style="width: 243px;">文化遗产保护中大数据集全自动配准和匹配技术</td>\r\n<td style="width: 77px;">武仲科</td>\r\n<td style="width: 74px;">201001</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">3</td>\r\n<td style="width: 235.067px;">北京神威华安信息技术有限公司</td>\r\n<td style="width: 83.9333px;">201110</td>\r\n<td style="width: 243px;">联网电脑内容检查系统</td>\r\n<td style="width: 77px;">徐鹏飞</td>\r\n<td style="width: 74px;">201110</td>\r\n<td style="width: 71px;">201310</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">4</td>\r\n<td style="width: 235.067px;">科技部信息中心</td>\r\n<td style="width: 83.9333px;">201108</td>\r\n<td style="width: 243px;">2012年度生物中心部分社发领域预备项目视频评审技术服务</td>\r\n<td style="width: 77px;">王学松</td>\r\n<td style="width: 74px;">201101</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">5</td>\r\n<td style="width: 235.067px;">中央高校基本科研业务费专项资金资助</td>\r\n<td style="width: 83.9333px;">201104</td>\r\n<td style="width: 243px;">多模态信息检索中的关键学习算法研究</td>\r\n<td style="width: 77px;">常亮</td>\r\n<td style="width: 74px;">201101</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">6</td>\r\n<td style="width: 235.067px;">“985工程”科技创新平台建设子课题</td>\r\n<td style="width: 83.9333px;">200904</td>\r\n<td style="width: 243px;">虚拟现实技术在教育中的应用</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">200904</td>\r\n<td style="width: 71px;">201012</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">7</td>\r\n<td style="width: 235.067px;">“985工程”科技创新平台建设子课题</td>\r\n<td style="width: 83.9333px;">200912</td>\r\n<td style="width: 243px;">虚拟技术与图像处理在认知神经科学中的应用</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">201001</td>\r\n<td style="width: 71px;">201212</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 50px;">8</td>\r\n<td style="width: 235.067px;">“211”工程科技创新平台建设项目子课题</td>\r\n<td style="width: 83.9333px;">200810</td>\r\n<td style="width: 243px;">应用心理学体系建设与社会服务能力的提高</td>\r\n<td style="width: 77px;">周明全</td>\r\n<td style="width: 74px;">200912</td>\r\n<td style="width: 71px;">201112</td>\r\n</tr>\r\n</tbody>\r\n</table>', '承担项目', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2016-10-25 16:10:24', '2016-10-25 08:10:24', '', 28, 'http://localhost:8000/?page_id=34', 0, 'page', '', 0),
(36, 1, '2016-10-14 13:15:08', '2016-10-14 05:15:08', '一级菜单页面，不可用', '学术成果', '', 'publish', 'closed', 'closed', '', 'achieve', '', '', '2016-10-25 23:56:47', '2016-10-25 15:56:47', '', 0, 'http://localhost:8000/?page_id=36', 0, 'page', '', 0),
(39, 1, '2016-10-14 13:15:32', '2016-10-14 05:15:32', '已被模板代替', '近期成果', '', 'publish', 'closed', 'closed', '', 'recent', '', '', '2016-10-25 20:11:41', '2016-10-25 12:11:41', '', 36, 'http://localhost:8000/?page_id=39', 0, 'page', '', 0),
(41, 1, '2016-10-14 13:15:49', '2016-10-14 05:15:49', '已被模板代替', '学术论文', '', 'publish', 'closed', 'closed', '', 'paper', '', '', '2016-10-26 16:21:41', '2016-10-26 08:21:41', '', 36, 'http://localhost:8000/?page_id=41', 0, 'page', '', 0),
(43, 1, '2016-10-14 13:16:19', '2016-10-14 05:16:19', '已被模板代替', '发明专利', '', 'publish', 'closed', 'closed', '', 'patent', '', '', '2016-10-26 16:21:32', '2016-10-26 08:21:32', '', 36, 'http://localhost:8000/?page_id=43', 0, 'page', '', 0),
(63, 1, '2016-10-14 13:20:55', '2016-10-14 05:20:55', '已被模板代替', '联系方式', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-10-25 20:06:43', '2016-10-25 12:06:43', '', 323, 'http://localhost:8000/?page_id=63', 0, 'page', '', 0),
(65, 1, '2016-10-14 13:21:08', '2016-10-14 05:21:08', '', 'ENGLISH', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2016-10-26 17:14:20', '2016-10-26 09:14:20', '', 0, 'http://localhost:8000/?page_id=65', 0, 'page', '', 0),
(69, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 323, 'http://localhost:8000/?p=69', 30, 'nav_menu_item', '', 0),
(79, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=79', 17, 'nav_menu_item', '', 0),
(80, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 36, 'http://localhost:8000/?p=80', 20, 'nav_menu_item', '', 0),
(81, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 36, 'http://localhost:8000/?p=81', 19, 'nav_menu_item', '', 0),
(82, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 36, 'http://localhost:8000/?p=82', 18, 'nav_menu_item', '', 0),
(84, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=84', 2, 'nav_menu_item', '', 0),
(289, 1, '2016-10-25 11:17:23', '2016-10-25 03:17:23', ' ', '', '', 'publish', 'closed', 'closed', '', '289', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 20, 'http://localhost:8000/?p=289', 28, 'nav_menu_item', '', 0),
(92, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=92', 13, 'nav_menu_item', '', 0),
(93, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 28, 'http://localhost:8000/?p=93', 14, 'nav_menu_item', '', 0),
(94, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 28, 'http://localhost:8000/?p=94', 16, 'nav_menu_item', '', 0),
(95, 1, '2016-10-14 13:32:32', '2016-10-14 05:32:32', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 28, 'http://localhost:8000/?p=95', 15, 'nav_menu_item', '', 0),
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
(137, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 17, 'http://localhost:8000/?p=137', 7, 'nav_menu_item', '', 0),
(138, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 17, 'http://localhost:8000/?p=138', 8, 'nav_menu_item', '', 0),
(139, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 18, 'http://localhost:8000/?p=139', 10, 'nav_menu_item', '', 0),
(140, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 18, 'http://localhost:8000/?p=140', 11, 'nav_menu_item', '', 0),
(141, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 19, 'http://localhost:8000/?p=141', 22, 'nav_menu_item', '', 0),
(142, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 19, 'http://localhost:8000/?p=142', 23, 'nav_menu_item', '', 0),
(143, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 19, 'http://localhost:8000/?p=143', 24, 'nav_menu_item', '', 0),
(144, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 20, 'http://localhost:8000/?p=144', 26, 'nav_menu_item', '', 0),
(145, 1, '2016-10-20 20:26:47', '2016-10-20 12:26:47', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 20, 'http://localhost:8000/?p=145', 27, 'nav_menu_item', '', 0),
(193, 1, '2016-10-24 21:23:09', '2016-10-24 13:23:09', '已被模板代替', '组织机构', '', 'publish', 'closed', 'closed', '', 'organization', '', '', '2016-10-25 19:43:33', '2016-10-25 11:43:33', '', 9, 'http://localhost:8000/?page_id=193', 0, 'page', '', 0),
(195, 1, '2016-10-24 21:23:53', '2016-10-24 13:23:53', '已被模板代替', '研究所领导', '', 'publish', 'closed', 'closed', '', 'boss', '', '', '2016-10-25 19:58:22', '2016-10-25 11:58:22', '', 9, 'http://localhost:8000/?page_id=195', 0, 'page', '', 0),
(201, 1, '2016-10-24 21:25:50', '2016-10-24 13:25:50', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 9, 'http://localhost:8000/?p=201', 4, 'nav_menu_item', '', 0),
(202, 1, '2016-10-24 21:25:50', '2016-10-24 13:25:50', ' ', '', '', 'publish', 'closed', 'closed', '', '202', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 9, 'http://localhost:8000/?p=202', 3, 'nav_menu_item', '', 0),
(238, 1, '2016-10-24 22:42:23', '2016-10-24 14:42:23', '<div class="person-info"><img src="/static/head/teacher/zhoumingquan-1.jpg" alt="zhoumingquan-1" />\r\n<h1>基本信息</h1>\r\n学位： 博士\r\n\r\n职称： 教授、博导\r\n\r\n系别： 计算机系\r\n\r\n<h1>研究方向</h1>\r\n\r\n 虚拟现实、计算机可视化技术、软件工程、中文信息处理\r\n \r\n\r\n<h1>个人简介</h1>\r\n\r\n      周明全，教授，博士生导师。北京师范大学信息科学与技术学院院长，教育部虚拟现实应用工程研究中心主任。北京市文化遗产数字化保护重点实验室主任，北京师范大学虚拟现实与可视化技术研究所所长。全国高等师范院校计算机研究会副理事长，北京市图像图形学会副理事长，中国图像图形学学会副理事长。担任国际CAA学术组织副主席，CYBERGAME学术组织副主席，以及国内外多个期刊编辑。\r\n\r\n    周教授长期以来从事计算机虚拟现实和可视化技术、软件工程、虚拟现实工程等重要领域的理论及其应用工程的创新性研究。近年来主要在三维脑医学图象处理，文化遗产的数字化保护，虚拟现实与可视化技术、网络环境下的现代教育等科学前沿方向有很多的创新性研究。\r\n\r\n    周教授主持和完成了从 “九.五”以来的多项国家科技攻关、863高技术、国家自然科学基金等重要科研项目，针对三维可视化的难点技术，取得突破性的进展，多项创造性成果产生了显著的社会经济效益。以周明全教授为主的科研团队，近年来获得国家科学技术进步二等奖1项，教育部科技进步奖二等奖3项，陕西省科技进步二等奖5项，三等奖2项，西安市科技进步一等奖2项。国家教学成果二等奖2项，省级教学成果奖3项。被陕西省政府授予“陕西省优秀留学回国人员”称号，被评为“国务院有突出贡献的专家”。在国内外计算机核心期刊和重要会议上发表学术论文200余篇,专著3部,译著1部，主编出版国家规划教材3部。获得软件著作权12项。\r\n</div>', '周明全', '', 'publish', 'open', 'open', '', '%e5%91%a8%e6%98%8e%e5%85%a8', '', '', '2016-10-25 11:29:45', '2016-10-25 03:29:45', '', 0, 'http://localhost:8000/?p=238', 0, 'post', '', 0),
(240, 1, '2016-10-24 22:41:50', '2016-10-24 14:41:50', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/wuzhongke-1.jpg" alt="wuzhongke-1" />\r\n<h1>基本信息</h1>\r\n职称：教授, 博士生导师\r\n\r\n电话：58803055\r\n\r\n邮箱： zwu@bnu.edu.cn\r\n<h1>社会兼职</h1>\r\n<ul>\r\n 	<li>国际数字考古协会执行委员会委员</li>\r\n 	<li>北京图形图像学会常务理事</li>\r\n 	<li>教育部高等学校动画、数字媒体专业教学指导委员会委员</li>\r\n 	<li>中国计算机学会计算机辅助设计与图形学专业委员会委员</li>\r\n 	<li>中国计算机学会人机交互委员会委员</li>\r\n</ul>\r\n<h1>教育经历</h1>\r\n<ul>\r\n 	<li>1984/09-1988/09：理学学士，北京大学数学系基础数学专业</li>\r\n 	<li>1988/09-1991/01：硕士，北京航空航天大学航空宇航制造工程专业CAD/CAM方向</li>\r\n 	<li>1991/09-1995/09：博士，北京航空航天大学飞机设计系CAD/CAM 方向</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n计算机图形学、计算机辅助几何设计、计算机动画、虚拟现实、医学图象处理\r\n<h1>主持项目</h1>\r\n<ul>\r\n 	<li>2015-2017：国家高技术研究发展计划“863”计划项目“脑神经多模态定量化研究关键技术”子课题（2015AA20506）</li>\r\n 	<li>2012-2015：国家自然科学基金项目，盘B样条和球B样条造型的理论及其应用</li>\r\n 	<li>2009-2012：中央高校基本科研业务费专项资金资助，文化遗产保护中大数据集全自动配准和匹配技术</li>\r\n</ul>\r\n<h1>获奖情况</h1>\r\n<ul>\r\n 	<li>2015年教育部科技进步奖二等奖，模型云工厂的建造和应用，排名第五</li>\r\n 	<li>2014年北京市科学技术二等奖，颅面信息学研究与应用，排名第六</li>\r\n 	<li>2013中国计算机学会科技进步奖二等奖，颅面形态信息学研究与应用，排名第四</li>\r\n 	<li>2009年国家科学进步二等奖，文物虚拟修复和数字化保护技术的研究与应用，排名第六）</li>\r\n 	<li>2008年新加坡南洋理工大学访问教授(Visiting Professor)</li>\r\n 	<li>2007年新加坡南洋理工大学Tan Chin Tuan学术交流学者奖</li>\r\n 	<li>2006年教育部科技进步二等奖，三维刚体破损复原研究及其在文物虚拟修复中应用，排名第六</li>\r\n</ul>\r\n<h1>研究经历</h1>\r\n2006年4月至今，北京师范大学信息科学与技术学院教授，博士生导师。中国致公党党员,教育部高等学校动画、数字媒体专业教学指导委员会委员。\r\n\r\n1995年9月至1997年9月，在中国科学院软件研究所从事博士后研究，并于1997年9月，在该所获副研究员职称。\r\n\r\n1997年9月至1999年8月，在新加坡南洋理工大学计算机工程系从事博士后研究。\r\n\r\n从1999年8月到2006年4月，分别在新加坡国家高性能计算研究所(IHPC)，法国国家信息与自动化研究所(INRIA)，新加坡南洋理工大学(NTU)计算机工程系等从事科研工作。主持和参与了多项研究和开发工作，涉及了计算机图形学各个方面。\r\n<h1>文章专著</h1>\r\n<strong>国际知名杂志</strong>\r\n\r\n1. Xingce Wang, Zhongke Wu, Junchen Shen, Ting Zhang, Xiao Mou, Mingquan Zhou. Repairing the cerebral vascular through blending Ball B-Spline curves with G2 continuity. Neurocomputing 173: 768-777(2016)\r\n\r\n2. Taorui Jia, Kang Wang, Zhongke Wu, Junli Zhao, Pengfei Xu, Cuiting Liu, Mingquan Zhou. Isometric Shape Correspondence Based on the Geodesic Structure. Transactions on Computational Science 26: 41-56 (2016)\r\n\r\n3. Kang Wang, Zhongke Wu, Sajid Ali, Junli Zhao, Taorui Jia, Wuyang Shui, Mingquan Zhou. Scale-Invariant Heat Kernel Mapping for Shape Analysis. Transactions on Computational Science 26: 74-90 (2016)\r\n\r\n4. Junli Zhao, Cuiting Liu, Zhongke Wu, Fuqing Duan, Kang Wang, Taorui Jia, Quansheng Liu. Craniofacial Reconstruction Evaluation by Geodesic Network. Comp. Math. Methods in Medicine 2014: 943647:1-943647:9 (2014)\r\n\r\n5. Junli Zhao, Cuiting Liu, Zhongke Wu, et al. 3D Facial Similarity Measure Based on Geodesic Network and Curvatures[J]. Mathematical Problems in Engineering, 2014, 2014. DOI: 10.1155/2014/832837 IDS: AT6KN\r\n\r\n6. Minqi Zhang, Fang Li, Xingce Wang, Zhongke Wu, Shi-Qing Xin, Lok Ming Lui, Lin Shi, Defeng Wang, Ying He. Automatic registration of vestibular systems with exact landmark correspondence. Graphical Models 76(5): 532-541 (2014)\r\n\r\n7. Qianqian Jiang, Zhongke Wu, Ting Zhang, Xingce Wang, Mingquan Zhou. G2-Continuity Extension Algorithm of Ball B-Spline Curves. IEICE Transactions 97-D(8): 2030-2037 (2014)\r\n\r\n8. Junchen Shen, Yanlin Luo, Zhongke Wu, Yun Tian, Qingqiong Deng. CUDA-based real-time hand gesture interaction and visualization for CT volume dataset using leap motion[J]. The Visual Computer, 2016: 1-12.\r\n\r\n9. Mengdi Wang, Qian Fu, Xingce Wang, Zhongke Wu, and Mingquan Zhou, “Evaluation of Chinese Calligraphy by Using DBSC Vectorization and ICP Algorithm,” Mathematical Problems in Engineering, vol. 2016, Article ID 4845092, 11 pages, 2016.\r\n\r\n10. Sajid Ali, Zhongke Wu, Xulong Li, Nighat Saeed, Dong Wang, Mingquan Zhou. Applying Geometric Function on Sensors 3D Gait Data for Human Identification. Transactions on Computational Science 26: 125-141 (2016)\r\n\r\n11. Liu J, Wu Z K. Rule-Based Generation of Ancient Chinese Architecture from the Song Dynasty[J]. Journal on Computing &amp; Cultural Heritage, 2015, 9(2).\r\n\r\n12. Qingqiong Deng, Mingquan Zhou, Zhongke Wu, Wuyang Shui, Yuan Ji, Xingce Wang, Ching Yiu Jessica Liu, Youliang Huang, Haiyan Jiang. A regional method for craniofacial reconstruction based on coordinate adjustments and a new fusion strategy. Forensic Science International, 259(2016),19-31.\r\n\r\n13. Lei Wen, Xingce Wang, Zhongke Wu, Mingquan Zhou, Jesse S. Jin. A novel statistical cerebrovascular segmentation algorithm with particle swarm optimization. Neurocomputing 148: 569-577 (2015)\r\n\r\n14. Fuqing Duan, Donghua Huang, Yun Tian, Ke Lu, Zhongke Wu, Mingquan Zhou. 3D face reconstruction from skull by regression modeling in shape parameter spaces. Neurocomputing 151: 674-682 (2015)\r\n\r\n15. Shifeng Zhao, Mingquan Zhou, Yun Tian, Pengfei Xu, Zhongke Wu, Qingqiong Deng. Extraction of vessel networks based on multiview projection and phase field model. Neurocomputing 162: 234-244 (2015)\r\n\r\n16. Kang Wang, Abdul Razzaq, Zhongke Wu, Feng Tian, Sajid Ali, Taorui Jia, Xingce Wang, Mingquan Zhou. Novel correspondence-based approach for consistent human skeleton extraction. Multimedia Tools and Applications. 2015\r\n\r\n17. 赵俊莉, 辛士庆, 刘永进, 王醒策, 武仲科, 周明全, 贺英. 网格模型上的离散测地线[J]. 中国科学：信息科学, 2015(3):313-335.\r\n\r\n<strong>国际会议</strong>\r\n\r\n1. Qian Fu, Zhongke Wu, Xiang Ying, Mengdi Wang, Xia Zheng, Mingquan Zhou. Writing Chinese Calligraphy on Arbitrary Surfaces. Cyberworlds (CW), 2015 International Conference on. IEEE: 90-97. Visby, Sweden, 7-9 Oct. 2015\r\n\r\n2. Kang Wang, Zhongke Wu, Pengfei Xu, Junli Zhao, Taorui Jia, Wuyang Shui, Sajid Ali, Mingquan Zhou. Scale-Invariant Heat Kernel Mapping. CW 2014, International Conference on. IEEE: 114-121. Santander, 6-8 Oct. 2014.\r\n\r\n3. Abdul Razzaq, Zhongke Wu, Mingquan Zhou, Sajid Ali, Khalid Iqbal. Automatic Generation of Skeleton Animation from 3D Human Mesh Model. CW 2014, International Conference on. IEEE: 130-136. Santander, 6-8 Oct. 2014.\r\n\r\n4. Sajid Ali, Zhongke Wu, Mingquan Zhou, Guoguang Du, Xulong Li, Pengcheng Fan. Human Identification Using Sensors Data Based on 3D Gait Area. CW 2014, International Conference on. IEEE: 285-292. Santander, 6-8 Oct. 2014.\r\n\r\n5. Xuan Xu, Zhongke Wu, Xuesong Wang, Mingquan Zhou. Retargeting 3D facial expressions in real time based on Kinect. VRCAI 2014: 209-213. Shenzhen, China, Nov 30, 2014 - Dec 2, 2014.\r\n\r\n6. Qianqian Jiang, Zhongke Wu, Ting Zhang, Xingce Wang, Mingquan Zhou, Hock Soon Seah. G2-Continuity Blending of Ball B-Spline Curve Using Extension. CAD/Graphics 2013: 369-376. Hong Kong, China, 16 to 18 Nov 2013.\r\n\r\n7. Qianqian Jiang, Zhongke Wu, Ting Zhang, Xingce Wang, Mingquan Zhou. An Extension Algorithm for Ball B-Spline Curves with G2 Continuity. CW 2013: 252-258. Yokohama, 21-23 Oct. 2013.\r\n\r\n8. Ye Yuan, Zhongke Wu, Mingquan Zhou. Populating virtual environments with crowd patches and rule-based method. VRCAI 2012: 239-246. Singapore, 2-4 Dec. 2012.\r\n\r\n9. Guo, Ke, Wang, Xingce, Wu, Zhongke, et al. Modelling and Simulation of Weft Knitted Fabric Based on Ball B-Spline Curves and Hooke\'s Law[C]// Cyberworlds (CW), 2015 International Conference on. IEEE: 86-89. Visby, Sweden, 7-9 Oct. 2015\r\n\r\n10. Fei Shao, Xingce Wang, Qianqian Jiang, Zhongke Wu, Mingquan Zhou. Modeling Curly Hair Based on Static Super-Helices. Cyberworlds (CW), 2015 International Conference on. IEEE: 306-313. Visby, Sweden, 7-9 Oct. 2015\r\n\r\n11. Junchen Shen, Yanlin Luo, Xingce Wang, Zhongke Wu, Mingquan Zhou. GPU-Based Realtime Hand Gesture Interaction and Rendering for Volume Datasets Using Leap Motion. CW 2014, International Conference on. IEEE: 85-92. Santander, 6-8 Oct. 2014.\r\n\r\n12. Taorui Jia, Kang Wang, Zhongke Wu, Junli Zhao, Pengfei Xu, Cuiting Liu, Mingquan Zhou. Isometric Shape Matching Based on the Geodesic Structure and Minimum Cost Flow. CW 2014, International Conference on. IEEE: 122-129. Santander, 6-8 Oct. 2014.\r\n\r\n13. Ting Zhang, Xingce Wang, Qianqian Jiang, Zhongke Wu, Mingquan Zhou, Hock Soon Seah. G2-Continuity Extension Algorithm for Disk B-Spline Curve. CAD/Graphics 2013: 413-414. Hong Kong, China, 16 to 18 Nov 2013.\r\n\r\n14. Ya-bo Yin, Yun Tian, Weizhong Wang, Fuqing Duan, Zhongke Wu, Mingquan Zhou. Classification Based on LBP and SVM for Human Embryo Microscope Images. HCI (5) 2013: 280-288. Las Vegas, NV, USA, July 21-26, 2013.\r\n\r\n15. Chongbin Xu, Mingquan Zhou, Dongdong Zhang, Wuyang Shui, Zhongke Wu. Guidance rays: 3D object selection based on multi-ray in dense scenario. VRCAI 2013: 91-100. Hong Kong November 17-19, 2013.\r\n\r\n16. Rongfei Cao, Xingce Wang, Zhongke Wu, Mingquan Zhou, Yun Tian, Xinyu Liu. A novel cerebrovascular segmentation approach based on Markov random field and particle swarm optimization algorithm. VRCAI2013: 295-298. Hong Kong November 17-19, 2013.\r\n\r\n17. Liang Chang, Xiaoming Deng, Mingquan Zhou, Fuqing Duan, Zhongke Wu. Smoothness-constrained face photo-sketch synthesis using sparse representation. ICPR 2012: 3025-3029. Tsukuba, 11-15 Nov. 2012.\r\n\r\n</div>', '武仲科', '', 'publish', 'open', 'open', '', '%e6%ad%a6%e4%bb%b2%e7%a7%91', '', '', '2016-10-26 13:07:17', '2016-10-26 05:07:17', '', 0, 'http://localhost:8000/?p=240', 0, 'post', '', 0),
(242, 1, '2016-10-24 22:40:26', '2016-10-24 14:40:26', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/dangdepeng.jpg" alt="dangdepeng" />\r\n<h1>基本信息</h1>\r\n职称：教授\r\n\r\n邮箱： ddepeng@bnu.edu.cn\r\n\r\n&nbsp;\r\n<h1>研究方向</h1>\r\n<ul>\r\n 	<li>移动实时数据库</li>\r\n 	<li>数据管理、分析与服务软件</li>\r\n 	<li>计算机技术在应急、国防、教育等领域的应用</li>\r\n</ul>\r\n<h1>个人简介</h1>\r\n2003年6月于华中科技大学计算机学院获工学博士学位；2005年6月于清华大学计算机系博士后流动站出站，获博士后证书；2005年7月入北京师范大学信息学院工作；2006年7月晋升副教授；2007年8月任系主任；2010年入选“教育部新世纪优秀人才支持计划”；2012年7月晋升教授。\r\n\r\n目前担任中国计算机学会数据库专业委员会委员、中国计算机学会服务计算专业委员会委员、中国计算机学会YOCSEF委员、国家自然科学基金评审专家、北京市海淀区科学技术委员会科技项目评审专家、教育部高等学校计算机科学与技术专业教学指导分委员会专家组成员、北京师范大学信息学院计算机科学与技术系主任、北京师范大学网络与继续教育学院教学指导委员会委员、中国计算机学会高级会员。\r\n<h1>科研项目</h1>\r\n<ul>\r\n 	<li>教育部新世纪优秀人才支持计划（NCET-10-0239，数据广播中的移动实时事务处理）</li>\r\n 	<li>国家自然科学基金（60940032，实时数据广播中的并发控制）</li>\r\n 	<li>国家自然科学基金（61073034，无线移动实时数据广播中的高性能并发控制）</li>\r\n 	<li>国家科技支撑计划重大项目子课题（XXX应急平台数据库系统）</li>\r\n 	<li>国家科技支撑计划重点项目子课题（XXX计算机网络XXX风险防范模式及应用）</li>\r\n 	<li>中国博士后科学基金（海量数字资源移动服务关键问题研究）等</li>\r\n</ul>\r\n<h1>文章专著</h1>\r\n先后在《Journal of Systems &amp; Software》（U.S.A.）、《计算机学报》、《计算机研究与发展》等国内外重要学术期刊和会议上发表学术论文40余篇，获批中国软件著作权登记5项。\r\n\r\n</div>', '党德鹏', '', 'publish', 'open', 'open', '', '%e5%85%9a%e5%be%b7%e9%b9%8f', '', '', '2016-10-26 13:58:37', '2016-10-26 05:58:37', '', 0, 'http://localhost:8000/?p=242', 0, 'post', '', 0),
(284, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '284', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 18, 'http://localhost:8000/?p=284', 12, 'nav_menu_item', '', 0),
(285, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '285', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=285', 6, 'nav_menu_item', '', 0),
(286, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '286', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 0, 'http://localhost:8000/?p=286', 25, 'nav_menu_item', '', 0),
(287, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '287', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 0, 'http://localhost:8000/?p=287', 21, 'nav_menu_item', '', 0),
(288, 1, '2016-10-25 11:10:49', '2016-10-25 03:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '288', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 0, 'http://localhost:8000/?p=288', 9, 'nav_menu_item', '', 0);
INSERT INTO `vrvt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(295, 1, '2016-10-25 11:36:35', '2016-10-25 03:36:35', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/panyunhe.jpg" alt="panyunhe">\r\n\r\n<h1>基本信息</h1>\r\n\r\n性别：男\r\n\r\n民族：汉族\r\n\r\n出生日期：1946年11月4日\r\n\r\n籍贯：浙江省杭州市\r\n\r\n职称：工学硕士，教授、博士生导师，计算机专家，中国工程院院士，国际欧亚科学院院士\r\n\r\n<h1> 个人简介 </h1>\r\n\r\n潘云鹤院士1974年3月加入中国共产党，1970年9月参加工作，浙江大学计算机系计算机应用专业毕业，研究生学历，2013年3月任第十二届全国政协常委、外事委员会主任。现兼任国务院学位委员会委员、中国科学技术协会顾问、中国图象图形学学会名誉理事长等职。\r\n \r\n潘院士是中国智能CAD领域的开拓者，创造性地将人工智能引入CAD技术，研制成功了轻纺花型、广告装潢、建筑布局、管网规划等多个新颖实用的智能CAD/CAM系统，特别是轻纺花型图案CAD/CAM领域取得创造性的重大的突破，产生显著经济效益。\r\n\r\n</div>', '潘云鹤', '', 'publish', 'open', 'open', '', '%e6%bd%98%e4%ba%91%e9%b9%a4', '', '', '2016-10-25 12:07:48', '2016-10-25 04:07:48', '', 0, 'http://localhost:8000/?p=295', 0, 'post', '', 0),
(303, 1, '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', '3-4', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/3-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(304, 1, '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 'kjgzz2012', '', 'inherit', 'open', 'closed', '', 'kjgzz2012', '', '', '2016-10-25 16:29:24', '2016-10-25 08:29:24', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/kjgzz2012.jpg', 0, 'attachment', 'image/jpeg', 0),
(305, 1, '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 'kjjb2d', '', 'inherit', 'open', 'closed', '', 'kjjb2d', '', '', '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/kjjb2d.png', 0, 'attachment', 'image/png', 0),
(306, 1, '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 'zl1', '', 'inherit', 'open', 'closed', '', 'zl1', '', '', '2016-10-25 16:29:25', '2016-10-25 08:29:25', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zl1.bmp', 0, 'attachment', 'image/bmp', 0),
(307, 1, '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 'zmqzs', '', 'inherit', 'open', 'closed', '', 'zmqzs', '', '', '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zmqzs.bmp', 0, 'attachment', 'image/bmp', 0),
(308, 1, '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 'zz1', '', 'inherit', 'open', 'closed', '', 'zz1', '', '', '2016-10-25 16:29:26', '2016-10-25 08:29:26', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zz1.png', 0, 'attachment', 'image/png', 0),
(309, 1, '2016-10-25 16:29:27', '2016-10-25 08:29:27', '', 'zz2', '', 'inherit', 'open', 'closed', '', 'zz2', '', '', '2016-10-25 16:29:27', '2016-10-25 08:29:27', '', 39, 'http://localhost:8000/wp-content/uploads/2016/10/zz2.bmp', 0, 'attachment', 'image/bmp', 0),
(323, 1, '2016-10-25 18:36:21', '2016-10-25 10:36:21', '一级菜单页面，不可用', '联系我们', '', 'publish', 'closed', 'closed', '', 'us', '', '', '2016-10-26 00:00:30', '2016-10-25 16:00:30', '', 0, 'http://localhost:8000/?page_id=323', 0, 'page', '', 0),
(326, 1, '2016-10-25 18:36:46', '2016-10-25 10:36:46', '已被模板代替\r\n\r\n注意：这个页面需要设置为“允许评论”\r\n\r\n设置方式：右上角“显示选项” -> 勾选“讨论” -> 页面底部勾选“允许讨论”', '留言板', '', 'publish', 'open', 'closed', '', 'message', '', '', '2016-10-25 20:41:24', '2016-10-25 12:41:24', '', 323, 'http://localhost:8000/?page_id=326', 0, 'page', '', 0),
(328, 1, '2016-10-25 18:37:26', '2016-10-25 10:37:26', ' ', '', '', 'publish', 'closed', 'closed', '', '328', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 0, 'http://localhost:8000/?p=328', 29, 'nav_menu_item', '', 0),
(329, 1, '2016-10-25 18:37:26', '2016-10-25 10:37:26', ' ', '', '', 'publish', 'closed', 'closed', '', '329', '', '', '2016-10-26 18:02:40', '2016-10-26 10:02:40', '', 323, 'http://localhost:8000/?p=329', 31, 'nav_menu_item', '', 0),
(387, 1, '2016-10-18 13:19:28', '2016-10-18 05:19:28', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/tianyun.jpg" alt="tianyun" />\r\n<h1>基本信息</h1>\r\n职称：副教授\r\n\r\n邮箱：tianyun@bnu.edu.cn\r\n\r\n电话：15810386068, 010-58804576\r\n\r\n办公室：科技楼B座1104室\r\n<h1>教育经历</h1>\r\n<ul>\r\n 	<li>2003/09—2007/07 西北工业大学 信号与信息处理专业 博士</li>\r\n 	<li>1999/09—2003/07 河南师范大学 计算机科学与技术专业 学士</li>\r\n</ul>\r\n<h1>研究经历</h1>\r\n<ul>\r\n 	<li>2012/08–至今 北京师范大学, 信息科学与技术学院, 副教授</li>\r\n 	<li>2007/08–2012/07 北京师范大学, 信息科学与技术学院, 讲师</li>\r\n</ul>\r\n<h1>社会兼职</h1>\r\n<ul>\r\n 	<li>学院工会主席、院长助理</li>\r\n 	<li>中国图像图形学学会副秘书长</li>\r\n 	<li>中国图象图形学学会医学影像专业委员会常务委员</li>\r\n 	<li>北京图像图形学学会理事</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n模式识别、智能城市、大数据\r\n<h1>研究概况</h1>\r\n脑血管模型重建及形态评估。心脑血管疾病是严重威胁人类健康的常见疾病，居各种死亡病因之首．借助计算机技术利用医学影像数据，如MRA（magnetic resonance angiogralih）、CTA（comliuted tomogralihic angiogralihy, CTA)和3DRA，精确重构三维脑血管模型，对其发病机理研究和相应诊疗方案制定具有较高的临床价值和重要的指导意义。但由于脑血管位置的特殊性、形态的复杂性及其灰度信息的多变性，对其进行三维模型重建仍是一个具有挑战性的课题。本研究旨在解决脑血管组织的三维分割及其模型的精确重构。首先，我们借助Hessian矩阵分析，定义血管矢量场；然后，结合体数据场统计信息，在活动轮廓模型框架下分割出三维血管。为了实时显示和高效存储，我们在分割的基础上进行了血管三维模型重构，借助先前提出的球B-Sliline理论，实现了脑血管模型的参数化表示。脑血管精确分割、软斑块组织检测以及确立血管形态变化与脑功能模块的关系将是下一步研究的重点。研究成果已发表至MVAli, IJIG, liR Letters等国际刊物。\r\n\r\n冠状动脉CT血管造影术(CCTA)是当前诊断冠心病的常用手段，而冠脉量化分析是计算机辅助诊断该类疾病的重要依据；目前常用的多平面重组或曲面重组技术需大量人工干预，难以实现狭窄的自动分析。针对上述问题，研究3D 冠脉狭窄检测及其量化评估的关键技术，建立冠脉量化分析的理论框架，将目标描述、目标相似性测度、变分模型和参数关系模型结合起来，解决边界模糊、结构细小和灰度分布不均匀冠脉的狭窄检测及量化评估问题。具体包括：研究复杂形状的目标分割，构造先验约束变分模型和形状概率模型；研究冠脉形状描述方法，定义血管测度，建立冠脉分支搜索、连接准则，提出3D 冠脉精确高效分割和中心线精确抽取算法；研究管腔直径参数估计方法，确定观测数据一致性策略，建立直径参数关系模型，检测血管狭窄位置，量化狭窄程度，实现狭窄分级；采用概率模型及最新标准评估框架和平台，验证所提算法，以满足对冠心病辅助诊疗的临床需要。\r\n\r\n人类显微胚胎图像自动分析。试管婴儿（in Vitro fertilization, IVF）是治疗不育症的主要方法之一。自从1978年第一个试管婴儿降生以来，IVF技术得到了迅速发展，然而效率仍然很低，其主要原因是单个胚胎移植的妊娠成功率低。鉴于这个原因，通常在每个周期移植多个胚胎，来增加成功的概率，这导致大量多胎妊娠的出现，给母婴带来了严重的并发症，如胎儿早产等。为此，借助计算机对胚胎图像的自动分析对胚胎的移植潜能进行更加准确的评估，能够减少医生选择胚胎的主观性和随意性，确保在保证试管婴儿妊娠率不受影响的前提下尽量减少移植的胚胎数量。本研究旨在解决胚胎图像的特征选取及分类器设计问题，通过已知胚胎库数据集的训练和学习，得到最优的分类决策支持系统，实现胚胎图像的评估，以确定移植潜能最好的胚胎。目前，关于人类显微胚胎图像自动分析的研究仅处于初始起步阶段。因此，开展该方面的研究具有一定的理论意义和应用前景。\r\n<h1>研究课题</h1>\r\n参与：首都科技条件平台专项科学仪器开发培育项目，Z131110000613062，心脑血管虚拟内窥镜的研发培育，2013/09-2014/08，100万元，已结题。\r\n\r\n参与：中国工程院重点咨询研究项目，宁波城市大数据研究，2015/01-2015/12，在研。\r\n\r\n参与：中国工程院重大咨询研究项目，智能城市建设与大数据战略研究，2014/01-2015/12，在研。\r\n\r\n参与：中国工程院重大咨询研究项目，中国智能城市建设与推进战略研究，2012/02-2014/12，已结题。\r\n\r\n主持：北京师范大学教学建设与改革项目，模式识别课程的多维教学方法探索与实践，2011/01-2012/12，已结题，良。\r\n\r\n主持：国家自然科学青年基金，61003134、基于统计分割的脑血管三维模型重构研究，2011/01-2013/12，19万，已结题。\r\n\r\n主持：国家自然科学基金面上项目，61472042，基于CTA影像数据的3D冠脉狭窄自动检测及其量化评估研究，2015/01-2018/12，82万，在研。\r\n\r\n参与：北京市自然科学基金重点，4081002，虚拟环境中脑血管可视化、导航和监测技术，2008/01-2010/12，54万，已结题。\r\n\r\n参与：西安市科技局科技攻关项目，新型人体体透明漫游分析辅助诊断平台研制，2004/01-2006/12，20万，已结题。\r\n\r\n参与：国家科技支撑计划子课题，科研项目预算信息交换系统建设，2009/06-2010/12，40万，已结题，参与。\r\n<h1>获奖情况</h1>\r\n<ul>\r\n 	<li>获奖名称：高精度遥感卫星图像定位分析关键技术与应用, 2012年度北京市科学技术奖（个人排序第七）</li>\r\n 	<li>获奖名称：气象卫星遥感图像处理分析关键技术与应用, 2012年度中国电子学会电子信息科学技术二等奖（个人排序第七）</li>\r\n 	<li>2014年北京师范大学“京师英才”二等奖</li>\r\n 	<li>2011年北京师范大学“优秀辅导员”称号</li>\r\n 	<li>2011年北京师范大学“十佳辅导员”提名奖</li>\r\n</ul>\r\n<h1>学术成果</h1>\r\n<strong>期刊论文(2011–至今)</strong>\r\n\r\nTian Yun, Chen Qingli, lieng Yu, Duan Fuqing, Wang Qingjun, Wu Zhongke, and Mingquan Zhou, A vessel active contour model for vascular segmentation, BioMed Research International,2014, 2014:106490. (SCI)\r\n\r\nYun Tian, Fuqing Duan, Ke Lu, Mingquan Zhou, Zhongke Wu, Wang Qingjun, Sun Lin, and Xie Lizhi， A Flexible 3D Cerebrovascular Extraction from TOF-MRA Images, Neurocomliuting, 121, lili.392-400, 2013. (SCI)\r\n\r\nYun Tian, Fuqing Duan, Mingquan Zhou, and Zhongke Wu, Active contours model combining region and edge information，Machine Vision and Alililications, 24(1), lili.47-61, 2013. (SCI)\r\n\r\nYun Tian, Yabo Yin, Fuqing Duan, Weizhou Wang, Wei Wang, Mingquan Zhou, Automatic blastomere recognition from a single embryo image, Comliutational and Mathematical Methods in Medicine, 2014:628312, 2014. (SCI)\r\n\r\nLin Sun, Jiucheng Xu, and Yun Tian, Feature selection using rough entroliy-based uncertainty measures in incomlilete decision systems, Knowledge-Based Systems, 36, lili.206-216, 2012. (SCI)\r\n\r\nFuqingDuan, Yanchao Yang, Yan Li, Yun Tian, Ke Lu, Zhongke Wu, and Mingquan Zhou, Skull identification via correlation measure between skull and face shalie, IEEE Transactions on Information Forensics &amp;amli; Security, 9(8), lili.1322-1332, 2014. (SCI)\r\n\r\nLi Luo, Mengyang Wang, Yun Tian, Fuqing Duan, Zhongke Wu, Mingquan Zhou, and Yves Rozenholc, Automatic sex determination of skulls based on a statistical shalie model, Comliutational and Mathematical Methods in Medicine, 2013:251628, 2013. (SCI)\r\n\r\nZhao Shifeng, Zhou Mingquan, Jia Taorui, Xu liengfei, Wu Zhongke, Tian Yun, lieng Yu, and S. Jin Jesse, Multi-branched cerebrovascular segmentation based on lihase-field and likelihood model，Comliuters &amp;amli; Gralihics, 38, lili.239-247, 2014. (SCI)\r\n\r\nFuqing Duan, Fuchao Wu, Mingquan Zhou, Xiaoming Deng, and Yun Tian, Calibrating effective focal length for central catadiolitric cameras using one sliace line, liattern Recognition Letters, 33(5), lili.646-653, 2012. (SCI)\r\n\r\nFuqing Duan, Donghua Huang, Yun Tian, Ke Lu, Zhongke Wu, and Mingquan Zhou, 3D Face Reconstruction from Skull by Regression Modeling in Shalie liarameter Sliaces, Neurocomliuting,151,lili.674-682,2015.(SCI)\r\n\r\n田沄, 周明全, 武仲科, 心脑血管三维分割研究进展, 计算机辅助设计与图形学学报, 24(7), lili.1-13, 2012.\r\n\r\n田沄, 周明全, 段福庆, 武仲科, 一种鲁棒的非均匀灰度图像分割算法, 电子与信息学报, 33(6), lili.1401-1406, 2011.\r\n\r\n田沄, 周明全, 段福庆, 武仲科, 一种基于统计和梯度信息的高效活动轮廓模型, 中国图象图形学报, 16(8), lili.1489-1496, 2011.\r\n\r\n解立志, 周明全, 田沄, 武仲科, 王醒策, 基于区域增长与局部自适应C-V模型的脑血管分割,软件学报, (8), lili.1927-1936, 2013.\r\n\r\n解立志, 周明全, 武仲科, 田沄, 球B样条曲线结合树状结构的脑血管表示模型, 计算机辅助设计与图形学学报, (4), lili. 541-549, 2013.\r\n\r\n吴腾飞, 骆岩林, 田沄, 武仲科, 闫建平, 脑血管体绘制的快速表意式增强, 中国图象图形学报, (4), lili.476-482, 2013.\r\n\r\n王醒策,张美霞,武仲科,周明全,曹容菲,田沄,陈新宇, 基于全局LBF水平集模型的脑血管层次粗分割, 光学精密工程, 21(12), lili.3283-3297, 2013.\r\n\r\n解立志, 周明全, 田沄, 赵世凤, 基于光线投射算法的脑血管体绘制技术, 系统仿真学报, 24(9), lili.1864-1872, 2012.\r\n\r\n<strong>会议论文</strong>\r\n\r\nYin Yabo, Tian Yun*,Wang Weizhou,Duan Fuqing, Wu Zhongke, Zhou Mingquan，Classification based on LBli and SVM for human embryo microscolie images，in: liroceedings of 15th International Conference on Human-Comliuter Interaction, Las Vegas, USA，2013， lili.280-288.\r\n\r\nCao Rongfei, Wang Xingce, Wu Zhongke, Zhou Mingquan, Tian Yun, Liu Xinyu，A novel cerebrovascular segmentation aliliroach based on Markov random field and liarticle swarm olitimization algorithm，in: liroceedings of 12th ACM SIGGRAliH International Conference on VRCAI, Hong Kong, 2013, lili.295-298.\r\n\r\n<strong>发明专利</strong>\r\n\r\n田沄, 周明全, 武仲科, 赵世凤, 王醒策, 自动初始化的局域活动轮廓模型心脑血管分割方法, 2012年11月受理, 中国, 公开号：201210500362.8\r\n\r\n武仲科, 冷昶, 周明全, 田沄, 王醒策, 基于球B样条曲线的三维血管模型构造方法, 授权时间：2013年10月, 中国, 授权号：CN201110114367.2\r\n\r\n</div>', '田　沄', '', 'publish', 'open', 'open', '', '%e7%94%b0%e3%80%80%e6%b2%84', '', '', '2016-10-26 14:42:10', '2016-10-26 06:42:10', '', 0, 'http://localhost:8000/?p=387', 0, 'post', '', 0),
(393, 1, '2016-10-17 13:28:05', '2016-10-17 05:28:05', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/duanfuqing.jpg" alt="duanfuqing" />\r\n<h1>基本信息</h1>\r\n职称：教授\r\n\r\n电话：010-58804033\r\n\r\n邮箱：fqduan@bnu.edu.cn\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>1991年-1995年，西北大学数学系，本科</li>\r\n 	<li>1995年-1998年，西北大学数学系，硕士</li>\r\n 	<li>2003年-2006年，中科院自动化所模式识别国家重点实验室，博士</li>\r\n</ul>\r\n<h1>学术活动</h1>\r\n<ul>\r\n 	<li>中国图象图形学学会医学影像专业委员会委员</li>\r\n 	<li>北京市人工智能学会理事</li>\r\n 	<li>担任Neruocomputing、Sensors、Optical Engineering、Frontiers of Computer Science，Multimedia Tools and Applications，《自动化学报》，《计算机辅助设计与图形学学报》审稿专家</li>\r\n 	<li>担任多个国际会议ACCV、HCII、CAA、ICONIlP等程序委员会委员、组织委员会委员、分会主席</li>\r\n 	<li>Sliringer国际期刊《Frontiers of Comliuter Science》青年Associate Editor</li>\r\n 	<li>中国计算机学会计算机视觉专业组委员</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n模式识别、计算机视觉、信号与信息处理\r\n<h1>研究概况</h1>\r\n当前的研究兴趣包括：颅骨身份认证、人脸重构、生物医学图像分析、天文光谱图像处理，视觉定位等，在这些方向上发表了80余篇学术论文、申请发明专利10项，授权5项。\r\n<ul>\r\n 	<li>颅骨身份认证：利用CT、三维扫描获取的三维颅面数据，采用模式识别、机器学习方法对未知身源颅骨进行性别和种族判别、面貌复原、照片比对等研究。</li>\r\n 	<li>人脸重构：研究基于Kinnect数据、二维照片、三维颅骨等数据的三维人脸模型重构。</li>\r\n 	<li>生物医学图像分析：研究3D医学影像数据的分割、疾病检测等。</li>\r\n 	<li>天文光谱图像处理：针对我国大科学装置LAMOST郭守敬望远镜观测的多光纤光谱图像，研究天体光谱信号的检测与抽取、数据挖掘等。</li>\r\n 	<li>视觉定位：研究摄像机成像参数的标定与姿态估计。</li>\r\n</ul>\r\n<h1>研究课题</h1>\r\n<ul>\r\n 	<li>国家自然科学基金重点项目“LAMOST光谱数据处理新技术研究”，2016-2019</li>\r\n 	<li>国家自然科学基金面上项目“基于解剖结构的三维颅相重合研究”,2016-2019</li>\r\n 	<li>北京市自然科学基金面上项目“基于局域活动轮廓模型的3D 冠脉狭窄检测与评估”，2015-2017</li>\r\n 	<li>国家自然科学基金面上项目“基于回归计算模型的颅面三维人脸模型重构与身份鉴别”， 2013-2016</li>\r\n 	<li>国家自然科学基金面上项目“全向摄像机的高精度标定研究”，2009-2011</li>\r\n 	<li>教育部新世纪人才项目，基于稀疏统计模型的颅面相似性分析研究，2014-2016</li>\r\n 	<li>国家自然科学基金重点项目“颅面形态学和颅面复原研究”2008-2011</li>\r\n</ul>\r\n<h1>所获奖励</h1>\r\n<ul>\r\n 	<li>2012，2014年北京市科技进步二等奖</li>\r\n 	<li>2012年中国电子学会电子信息科学技术奖二等奖</li>\r\n 	<li>2013年中国计算机学会科技进步二等奖</li>\r\n 	<li>2013年入选教育部新世纪优秀人才计划</li>\r\n</ul>\r\n<h1>学术成果</h1>\r\nF. Duan, D. Huang, Y. Tian, et al. 3D Face Reconstruction from Skull by Regression Modeling in Shape Parameter Spaces, Neurocomputing, 2015，151（2）：674-682\r\n\r\nWang L，Duan F，Lu k，An adaptively weighted algorithm for camera calibration with 1D objects，Neurocomputing，2015，149：1052-1059\r\n\r\nF. Duan, Y. Yan, Y. Li, et al, Skull Identification via Correlation Measure between Skull and Face Shape. IEEE Trans on Information Forensics and Security, 2014, 8:1322-1332\r\n\r\nF. Duan, S. Yang, D. Huang, et al, Craniofacial reconstruction based on multi-linear subspace analysis. Multimedia Tools and Applications, 2014，73（12）：809-823\r\n\r\nTian Yun，Yin Yabo，Wang Wei，Duan Fuqing，Automatic Blastomere Recognition from a Single Embryo Image，Computational and Mathematical Methods in Medicine，2014，2014（628312）：1-9\r\n\r\nZhao Junli，Liu Cuiting，Wu Zhongke，Duan Fuqing，Wang Kang，Jia Taorui，Liu Qaunsheng，Craniofacial Reconstruction Evaluation by Geodesic Network，Computational and Mathematical Methods in Medicine，2014，2014（943647）：1-10\r\n\r\nTian Yun，Qingli Chen，Wei Wang，Yu Peng，Qingjun Wang，Fuqing Duan(*)，Zhongke Wu，Mingquan Zhou，A Vessel Active Contour Model for Vascular Segmentation，BioMed Research International，2014，2014（106490）：1-15\r\n\r\nL. Luo, M. Wang, Y. Tian, F. Duan, Z. Wu, M. Zhou, Yves Rozenholc: Automatic Sex Determination of Skulls Based on a Statistical Shape Model. Comp. Math. Methods in Medicine 2013 ,AID 251628\r\n\r\nYongli Hu, Fuqing Duan, Baocai Yin, Mingquan Zhou, Yanfeng Sun, Zhongke Wu, Guohua Geng, A hierarchical dense deformable model for 3D face reconstruction from skull. Multimedia Tools and Applications,2013,64(2):345-364\r\n\r\nYun Tian, Fuqing Duan, Mingquan Zhou, Zhong ke Wu, Active contour model combining region and edge information, Machine Vision and Applications，2013，24:47–61\r\n\r\nY.Tian, F. Duan, K. Lu, M. Zhou, A flexible 3D cerebrovascular extraction from TOF-MRA images. Neurocomputing 2013,121: 392-400\r\n\r\nFuqing Duan, Fuchao Wu, Mingquan Zhou, Xiaoming Deng, Yun Tian, Calibrating effective focal length for central catadioptric cameras using one space line, Pattern recognition letters, 2012, 33, pp 646-653\r\n<h1>毕业生工作去向</h1>\r\n<ul>\r\n 	<li>黄东华，2012，中国人民解放军信息工程大学</li>\r\n 	<li>谢文魁，2012，中国工商银行数据中心（北京）</li>\r\n 	<li>杨焱超，2013，武汉理工大学</li>\r\n 	<li>李研，2015， 北京首开证券</li>\r\n 	<li>鲁健庆，2015，杭州移动</li>\r\n 	<li>殷亚博，2015，北京电信</li>\r\n</ul>\r\n<span style="color: #ff6600;"><strong>欢迎计算机、电子、信息与计算科学、自动化、数学等相关专业的同学报考本方向研究生</strong></span>\r\n\r\n</div>', '段福庆', '', 'publish', 'open', 'open', '', '%e6%ae%b5%e7%a6%8f%e5%ba%86', '', '', '2016-10-26 15:16:23', '2016-10-26 07:16:23', '', 0, 'http://localhost:8000/?p=393', 0, 'post', '', 0),
(395, 1, '2016-10-16 13:32:12', '2016-10-16 05:32:12', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/luoyanlin.jpg" alt="luoyanlin" />\r\n<h1>基本信息</h1>\r\n学位： 博士\r\n\r\n职称： 副教授\r\n\r\n研究方向： 可视化,虚拟现实,计算图形学,动画和游戏\r\n\r\n系别： 计算机系\r\n<h1>教育与留学经历</h1>\r\n<ul>\r\n 	<li>1993.9—1997.7 浙江大学应用数学系，应用数学专业，博士，研究方向：计算机辅助几何设计与计算机图形学专业</li>\r\n 	<li>1990.9—1993.7 兰州大学计算机科学系，计算机理论专业，硕士</li>\r\n 	<li>1986.9—1990.7 兰州大学数学系，数学专业，学士</li>\r\n 	<li>2001.10—2003.10 日本东京工业大学,精密工学研究所,博士后研究,日本政府(文部省)奖学金资助</li>\r\n 	<li>2007.8—2008.8 美国George Mason大学,Comliutational Material Science Center,访问研究员,美国国家自然基金资助(“CRF Structure-Adalitive Materials lirediction”)</li>\r\n 	<li>2008.10—2009.11 意大利CRS4 Visual Comliuting Grouli, ER（Exlierienced Researcher）,居里夫人项目（Marie-Curie liroject）资助;</li>\r\n</ul>\r\n<h1>教学情况</h1>\r\n在北京师范大学承担过“科学计算可视化”、“计算机图形学”、“线性代数”、 “游戏设计”、“数据结构”、“ C 语言程序设计”、“离散数学”、 “计算机动画原理与应用”、“ Visual Foxliro 数据库”、“计算机应用基础”等课程教学。2006年在信息学院青年教师教学基本功比赛中获得优胜奖。\r\n\r\n主持过北京师范大学教改项目 “科学计算可视化”双语教学建设项目、“计算机图形学”精品课程建设(已在北京师范大学Blackboard Academic Suite建立相应课程的网络教学平台)。参与过教改项目:“建设计算机双语课程”、“计算机应用数字团队”、“电子与计算机学科创新人才的实践教学体系建设与改革” 、“电子与计算机学科基础课程模块建设与改革”等。\r\n<h1>科研情况</h1>\r\n2004年以来主持过教育部2004年留学回国人员科研启动基金（教外司留 [2004]527 ）、中国科学院计算机科学重点实验室开放课题基金（“虚拟环境中力觉绘制及多用户协同交互技术研究”、“基于虚拟现实的知识可视化研究”）。参与863项目“三维模型智能处理与检索系统” 以及北京市自然科学基金重点基金项目“虚拟环境中脑血管可视化、导航和监测技术”等。\r\n\r\n1999 年以来在IEICE TRANS.INF.&amp;amli;SYST.、Lecture Notes in Comliuter Science、IEEE Comliuter Society liress (USA)、Journal of Comliutational Information System、计算机学报、系统仿真学报、应用数学学报、计算机辅助设计与计算机图形学学报等刊物以及重要国际会议论文集上发表论文 20多篇，其中被SCI/EI/ISTli 检索论文有10余篇。获得过国际学术会议Euro-halitic 2004最佳论文奖 （排名第三）。\r\n\r\n外语程度： 英语、日语\r\n\r\n</div>', '骆岩林', '', 'publish', 'open', 'open', '', '%e9%aa%86%e5%b2%a9%e6%9e%97', '', '', '2016-10-26 14:41:54', '2016-10-26 06:41:54', '', 0, 'http://localhost:8000/?p=395', 0, 'post', '', 0),
(399, 1, '2016-10-15 13:39:46', '2016-10-15 05:39:46', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/luozuying.jpg" alt="luozuying" />\r\n<h1>基本信息</h1>\r\n职称：教授\r\n\r\n电话：58804033\r\n\r\n邮箱：luozy@bnu.edu.cn\r\n<h1>个人简历</h1>\r\n<ul>\r\n 	<li>2005年~ 至今：　北京师范大学 信息科学与技术学院 任教</li>\r\n 	<li>2004年~2005年：多伦多大学 电子工程与计算机 二站博士后</li>\r\n 	<li>2002年~2004年：清华大学 计算机科学与技术 一站博士后</li>\r\n 	<li>1999年~2002年： 清华大学 检测技术及自动化装置 工学博士</li>\r\n 	<li>1992年~1999年： 冶金部自动化研究院 工程师</li>\r\n 	<li>1989年~1992年： 天津大学 计量测试技术与仪器 工学硕士</li>\r\n 	<li>1985年~1989年： 天津大学 精密仪器 工学学士</li>\r\n</ul>\r\n<h1>社会兼职</h1>\r\n<ul>\r\n 	<li>计算机学会高级会员（E20-0008880S）</li>\r\n 	<li>计算机学会计算机辅助设计与计算机图形学专业委员会常务委员</li>\r\n 	<li>计算机学会会刊《计算机辅助设计与计算机图形学学报》责任编委</li>\r\n</ul>\r\n<h1>研究概况</h1>\r\n研究领域：课堂教学效果自动评测、情感计算、高性能计算、集成电路辅助设计\r\n\r\n自1999年起，先后在中科院计算所、清华大学、多伦多大学、北京师范大学从事集成电路辅助设计算法研究、高性能计算、用于课堂教学效果自动评测的情感计算等方向的应用理论研究工作，共发表论文100余篇，其中SCI检索论文12篇、EI检索论文50余篇，申请专利7项，其中已授权专利3项，出版译著1本。\r\n\r\n目前主要从事课堂教学效果自动评测方向的开拓性应用理论研究，包括：中小学校级课堂教学效果自动评测系统研制、用于课堂教学效果家长评价的文本情感识别、基于GliU集群大规模并行计算的众人脸并行人脸识别与表情识别、基于自然表情的学习心理绑定等研究内容。\r\n<h1>承担课程</h1>\r\n<ul>\r\n 	<li>本科生《集成电路设计》</li>\r\n 	<li>研究生《超大规模集成电路设计》</li>\r\n 	<li>研究生《情感计算》</li>\r\n</ul>\r\n<h1>主持的科研项目</h1>\r\n<strong>1）国家科技部863课题</strong>\r\n\r\n“多处理器片上系统运行中低功耗关键技术研究” ，863专题课题2009AA01Z126，负责人。\r\n\r\n<strong>2）国家自然基金</strong>\r\n\r\n“基于GPU集群层次式并行计算的3D芯片电热综合分析与综合优化” 国家自然科学基金会 (NSFC)NO.61274033， 2013-2016，项目负责人。\r\n\r\n“基于资源标签交换的无线网络端到端能效管理策略研究” 国家自然科学基金会 (NSFC)NO.61271198， 2013-2016，（与北京信息科技大学周金和教授联合申请）。\r\n\r\n“基于单点SOR方法的高性能芯片电热统计分析算法研究” 国家自然科学基金会 (NSFC)NO. 60876025， 2009-2011，项目负责人。\r\n\r\n“面向SOC低功耗物理设计的方法研究”国家自然科学基金会 (NSFC)NO. 60476014, 2005-2008（与清华大学蔡懿慈教授联合申请）。\r\n\r\n<strong>3）国家重点实验室开放项目</strong>\r\n\r\n“CMOS电路版图级时延模拟算法”，中国科学院计算技术研究所计算机系统结构重点实验室，2006年度，负责人。\r\n\r\n<strong>4）中国博士后研究基金</strong>\r\n\r\n“多阈值CMOS电路漏电流快速估计算法的研究” 023250003#，2003年，负责人。\r\n<h1>荣誉与奖励</h1>\r\n<ul>\r\n 	<li>2005年度中国计算机学会创新奖入围奖(三等)“集成电路逻辑测试基础技术”</li>\r\n 	<li>2005年度教育部科技成果二等奖“超大规模集成电路物理级优化与验证问题基础研究”</li>\r\n</ul>\r\n<h1>学术成果</h1>\r\n1. Chuangao Tang, Pengfei Xu, Zuying Luo, etc., Automatic Facial Expression Analysis of Students in Teaching Environment. 10th Chinese Conference on Biometric Recognition (CCBR), LNCS 9482，2015. pp439-447\r\n\r\n2. Zou Tian, Luo Zuying, PS-BloTAM: Pre-Sampling based Architechture-level Temperature Analysis Methodology, Proceedings of 11th IEEE International Conference on ASIC (ASICON2015)，ChengDu, 2015.10: P2-25\r\n\r\n3. Yan Jiaqi, Luo Zuying, Tang Liang， Accurate Architecture-level Thermal Analysis Methods for MPSoC with Consideration for Leakage Power Dependence on Temperature， In proceeding of ISQED\'13, Santa Clara, CA, USA, 2013.3: 178-183\r\n\r\n4. Zuying Luo, Guoxing Zhao, Joseph A. Gordon, Sheldon X.D. Tan, Localized Relaxation Theory of Circuits and its Applications in Electro-thermal Analyses, SCIENCE CHINA Information Sciences（中国科学信息科学）, 2012, 55(4): 938-950\r\n\r\n5. Wenjian Yu, Qingqing Zhang, Zuochang Ye, Zuying Luo, “Efficient statistical capacitance extraction of nanometer interconnects considering the on-chip line edge roughness,” Microelectronics Reliability, 2012, 52(4): pp. 704-710\r\n\r\n6. Huang Kun, Yang Xu, Zhao Guoxing, Luo Zuying， Efficient Electro-Thermal Co-analysis on CPU+GPU Heterogeneous Architecture， In proceeding of ISQED\'12, Santa Clara, CA, USA, 2012.3: 364-369\r\n\r\n7. Zuying Luo, Guoxing Zhao, Sheldon X.D. Tan, Jeffrey Fan, Efficient Pre-conditional Single-Node SOR Method of Statistical 3D Thermal Analysis for Hot Spots, Chinese Journal of Electronics, 2012, 40(1): pp47-52\r\n\r\n8. 赵国兴,骆祖莹, 闫佳琪, 基于任务精确预测的实时功耗温度管理, 计算机学报，2014， 37(11): 2298-2308\r\n\r\n9. 张青青, 喻文健, 骆祖莹，圆柱形硅通孔的二维解析电容模型，计算机学报，2014， 37(7): 1521-1527\r\n\r\n10. 赵国兴，骆祖莹，黄琨，唐亮, 考虑电压/温度变化的电热综合分析及其并行加速技术, 计算机学报，2013.4, 36(4): 747 - 756\r\n\r\n11. 唐亮，骆祖莹，赵国兴，杨旭，利于GPU计算具有线性并行度的P/G网SOR求解算法，计算机研究与发展，计算机研究与发展，2013，50(7): 1491-1500\r\n12. 骆祖莹，赵国兴,局部电路松弛理论及其在电热分析中的应用, 中国科学F辑，2011.10，41(10): pp1283-1296\r\n\r\n13. 骆祖莹，韩银和，赵国兴,余先川，周明全，可热扩展的三维并行散热集成方法：用于大规模并行计算的片上系统关键技术，计算机学报，2011.4, 34(4): 717-728\r\n\r\n14. Jeffrey A. Davis, James D. Meindl著，骆祖莹，叶佐昌，吕勇强，喻文健译，吉规模集成电路互连工艺及设计，机械工业出版社，2010.8第1版，ISBN 978-7-111-30301-5\r\n<h1>毕业学生去向</h1>\r\n<ul>\r\n 	<li>唐传高，2016年硕士（本科就读于西北农林科技大学，推免），后读东南大学的博士（免试）</li>\r\n 	<li>邹甜，2016年硕士（本科就读于北京师范大学，推免），中国人寿总部（北京）</li>\r\n 	<li>李晓怡，2015年硕士（本科就读于南阳师范学院），中航光电科技股份有限公司（洛阳）</li>\r\n 	<li>王红蕊，2015年硕士（本科就读于曲阜师范大学），北京中电普华信息技术有限公司（北京）</li>\r\n 	<li>唐亮，2014年硕士（本科就读于北京师范大学），中国银联总部信息中心（上海）</li>\r\n 	<li>闫佳琪，2014年硕士（本科就读于北京师范大学），后读伊利诺伊理工大学的博士（IIT）</li>\r\n 	<li>朱佩佩，2013年硕士（本科就读于山东师范大学），中国人寿北京研发中心</li>\r\n 	<li>杨旭，2012年硕士（本科就读于天津职业技术师范大学），后读伊利诺伊理工大学的博士（IIT）</li>\r\n 	<li>黄琨，2012年硕士（本科就读于北京师范大学），电子6所（重庆）</li>\r\n 	<li>张青青，2012年硕士（本科就读于南昌大学），SynoliSys公司（上海）</li>\r\n 	<li>李超，2011年硕士（本科就读于西南大学），中科院计算技术研究所</li>\r\n</ul>\r\n</div>', '骆祖莹', '', 'publish', 'open', 'open', '', '%e9%aa%86%e7%a5%96%e8%8e%b9', '', '', '2016-10-26 14:41:49', '2016-10-26 06:41:49', '', 0, 'http://localhost:8000/?p=399', 0, 'post', '', 0),
(402, 1, '2016-10-14 13:46:38', '2016-10-14 05:46:38', '<div class="person-info"><img src="/static/head/teacher/wangxingce.jpg" alt="wangxingce" />\r\n<h1>基本信息</h1>\r\n职称：副教授\r\n\r\n电话：13240271758\r\n\r\n邮箱：wangxingce@bnu.edu.cn\r\n<h1>简介</h1>\r\n王醒策：北京师范大学副教授，博士生导师，北京师范大学国家认知神经科学与学习重点实验室博士后出站，主要研究方向为医学影像处理，三维可视化及机器学习。\r\n\r\n主持完成2项国家自然科学基金项目，1项首都科技条件平台项目，1项教育部青年基金及1项博士后基金项目，参与多项国家科技支撑，863重点项以及国家自然科学基金重点面上项目。\r\n\r\n近年来在国际国内发表高质量SCI/EI期刊论文50余篇，参与出版多部著作。获国家科技进步奖1项，教育部科技进步奖2项，北京市科技进步奖1项，中国计算机学会科技进步奖1项。担任CYBERGAMES 2008大会执行委员会主席，CAA2011大会执行委员及大会主持。\r\n<h1>教育背景</h1>\r\n北京师范大学 脑与认知科学研究院 博士后 2010年\r\n<h1>社会兼职</h1>\r\n<ul>\r\n 	<li>中国图像图形学学会医学影像专委会委员</li>\r\n 	<li>中国图像图形学学会青年专委会委员</li>\r\n 	<li>北京图像图形学学会组织工委会委员</li>\r\n 	<li>中国计算机学会，中国图像图形学学会高级会员</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n虚拟现实，人工智能，机器学习，医学影像处理\r\n<h1>主持项目</h1>\r\n<ul>\r\n 	<li>国家自然科学基金《脑血管兴趣区域提取关键技术研究》</li>\r\n 	<li>首都科技条件平台项目（北京市重点）《心脑血管虚拟内窥镜的研发培育》</li>\r\n 	<li>国家自然科学基金项目《基于球B样条的Willis换建模、分割及定位关键技术研究》</li>\r\n 	<li>国家人事部基金项目《三维血管重构技术研究》</li>\r\n 	<li>北京师范大学青年基金项目《虚拟现实环境下的血管表示及可视化研究》</li>\r\n</ul>\r\n<h1>参与项目</h1>\r\n<ul>\r\n 	<li>国家“十二五”科技支撑计划《文化资源数字化建设相关标准》</li>\r\n 	<li>863目标导向项目《三维模型智能处理与检索平台》</li>\r\n 	<li>国家自然科学基金重点项目《颅面形态学和颅面重构的研究》</li>\r\n 	<li>北京市自然科学基金重点项目《虚拟现实环境下脑血管可视化及导航、检测和诊断技术》</li>\r\n 	<li>国家级重大项目《国家科技基础条件平台建设》</li>\r\n 	<li>教育部“985工程”高层次人才培养项目《创新软件人才培养模式的探索与实践》</li>\r\n</ul>\r\n<h1>奖励与荣誉</h1>\r\n<ul>\r\n 	<li>2006年教育部科技进步二等奖《三维刚体破损复原研究及其在文物虚拟修复中应用》</li>\r\n 	<li>2013中国计算机学会科技进步奖二等奖《颅面形态信息学研究与应用》</li>\r\n 	<li>2014年北京市科学技术二等奖《颅面形态信息学研究与应用》</li>\r\n 	<li>2015年教育部科技进步二等奖《模型云工厂的建造和应用》</li>\r\n 	<li>2009年国家科技进步二等奖《文物数字化与保护新技术的研究及应用》</li>\r\n 	<li>2014年北京市范大学教学基本功一等奖</li>\r\n 	<li>2009年北京市范大学首届“十佳”优秀班主任</li>\r\n</ul>\r\n<h1>学术成果</h1>\r\n近年发表文章50余篇，其中SCI/EI检索30余篇\r\n<h1>部分论文</h1>\r\nWen L, Wang X, Wu Z, et al. A novel statistical cerebrovascular segmentation algorithm with particle swarm optimization[J]. Neurocomputing, 2015, 148: 569-577(SCI)\r\n\r\nCao R F, Wang X C, Wu Z K, et al. A Parallel Markov Cerebrovascular Segmentation Algorithm Based on Statistical Model[J]. Journal of Computer Science and Technology, 2016, 31(2): 400-416.(SCI)\r\n\r\nWang X, Wu Z, Shen J, et al. Repairing the cerebral vascular through blending Ball B-Spline curves with G 2 continuity[J]. Neurocomputing, 2016, 173: 768-777.(SCI)\r\n\r\nZhang M, Li F, Wang X, et al. Automatic registration of vestibular systems with exact landmark correspondence[J]. Graphical Models, 2014, 76(5): 532-541.( SCI)\r\n\r\nQianqian Jiang, Zhongke Wu, Ting Zhang, Xingce Wang, Mingquan Zhou. Continuity Extension Algorithm of Ball B-Spline Curves[J]. IEICE TRANSACTIONS on Information and Systems, 2014, 97(8): 2030-2037.(SCI)\r\n\r\n赵俊莉,辛士庆,刘永进,王醒策*,武仲科,周明全,贺英.. 网格模型上的离散测地线[J]. 中国科学: 信息科学, 2015, 3: 002.\r\n\r\nTing Zhang, Xingce Wang*, Qianqian Jiang, Zhongke Wu, Mingquan Zhou, Hock Soon Seah. G2-continuity Disk B-Spline Curve Blending using Extension. The 26th International Conference on Computer Animation and Social Agents (CASA2013), May 16-18, 2013, Istanbul, Turkey. (Oral report)\r\n\r\nWang M, Fu Q, Wang X, et al. Evaluation of Chinese Calligraphy by using DBSC Vectorization and ICP Algorithm[J]. Mathematical Problems in Engineering Volume 2016 (2016), Article ID 4845092, 11 pages (SCI)\r\n\r\n王醒策，武仲科，周明全等. 脑血管诊疗的物联网电子健康平台结构及关键技术.计算机研究与发展.2013,50(6)：1297-1312(EI)\r\n\r\n王醒策,蔡建平,武仲科,周明全. 基于局部表面拟合的点云模型法向估计及重定向算法研究.计算机辅助设计与图形学学报.,2015, 27(4):614-620(EI)\r\n\r\n曹容菲, 张美霞, 王醒策*, 等. 基于高斯-马尔科夫随机场模型的脑血管分割算法研究[J]. 电子与信息学报, 2014, 36(9): 2053-2060（EI）\r\n\r\nWang X, Bie R, Sun Y, et al. The Architecture of an Automatic eHealth Platform With Mobile Client for Cerebrovascular Disease Detection[J]. Journal of Medical Internet Research, 2013, 15(8)\r\n\r\nJiang, Q., Wu, Z., Zhang, T., Wang, X., &amp; Zhou, M. (2013, October). An Extension Algorithm for Ball B-Spline Curves with G2 Continuity. InCyberworlds (CW), 2013 International Conference on (pp. 252-258). IEEE. 会议论文 （EI: 20140717297917）\r\n\r\nQianqian Jiang, Zhongke Wu, Ting Zhang, Xingce Wang, Mingquan Zhou, Hock Soon Seah. G2-continuity Blending of Ball B-Spline Curve using Extension. The 13th International Conference on Computer-Aided Design and Computer Graphics (CAD/Graphics 2013), Nov 16-18, 2013, Hong kong, China. 会议论文 (EI：20142317781398)\r\n\r\nTing Zhang, Xingce Wang, Qianqian Jiang, Zhongke Wu, Mingquan Zhou, Hock Soon Seah. G2-Continuity Extension Algorithm for Disk B-Spline Curve. The 13th International Conference on Computer-Aided Design and Computer Graphics (CAD/Graphics 2013), Nov 16-18, 2013, Hong kong, China. 会议论文 （已标注）（EI: 20142317781417）\r\n\r\n王醒策,文蕾,武仲科等.面向时飞磁共振血管造影术的脑血管统计分割混合模型. 光学精密工程,2014,22(1): 497-507（EI: 20141117453653）\r\n\r\nShen J, Luo Y, Wang X, et al. GPU-Based Realtime Hand Gesture Interaction and Rendering for Volume Datasets Using Leap Motion[C]//Cyberworlds (CW), 2014 International Conference on. IEEE, 2014: 85-92.(EI)\r\n\r\nZhang T, Wang X, Jiang Q, et al. An Extension Algorithm for Disk B-Spline Curve with G2 Continuity[J]. Computer-Aided Design and Applications, 2015 (ahead-of-print): 1-7.\r\n\r\nFei Shao ; Xingce Wang ; Qianqian Jiang ; Zhongke Wu ，Modeling Curly Hair based on Static Super-Helices. InCyberworlds (CW), 2015 International Conference on (pp. 306-313). IEEE.(EI)\r\n\r\nKe Guo ; Xingce Wang ; Zhongke Wu ; Ting Zhang. Modelling and Simulation of Weft Knitted Fabric Based on Ball B-Spline Curves and Hooke\'s Law. InCyberworlds (CW), 2015 International Conference on (pp. 86 - 89). IEEE.(EI)\r\n\r\n</div>', '王醒策', '', 'publish', 'open', 'open', '', '%e7%8e%8b%e9%86%92%e7%ad%96', '', '', '2016-10-26 14:41:42', '2016-10-26 06:41:42', '', 0, 'http://localhost:8000/?p=402', 0, 'post', '', 0),
(406, 1, '2016-10-13 13:54:11', '2016-10-13 05:54:11', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/xupengfei.jpg" alt="xupengfei" />\r\n<h1>基本信息</h1>\r\n职称：讲师\r\n\r\n电话：58800442\r\n\r\n邮箱：liengfei.bnu@gmail.com\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>工学学士 (电气工程和自动化), 西安交通大学, 中国, 2002</li>\r\n 	<li>工学博士 (电气和电子工程), 南洋理工大学, 新加坡, 2007</li>\r\n</ul>\r\n<h1>工作经历</h1>\r\n<ul>\r\n 	<li>研发工程师, 松下研究院，新加坡, 2005-2007</li>\r\n 	<li>讲师, 北京师范大学, 中国, 2007-至今</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n虚拟现实、计算机体系结构\r\n<h1>研究概况</h1>\r\n2002年至2007年期间主要从事图像处理和计算机视觉方面的研究，期间发表IEEE Transactions杂志两篇和国际会议六篇，其中两篇杂志文章已经被引用70余次。\r\n\r\n2007年之后开始研究计算机图形学、虚拟现实、计算机体系结构等领域，发表相关文章约十篇。\r\n<h1>学术成果</h1>\r\nSong Jiadong, Li Xiaojuan, Xu liengfei, Zhou Mingquan “A new face recognition framework: Symmetrical Bilateral 2DliLS lilus LDA”, Journal of Multimedia, v 6, n 1, li 74-82, 2011.\r\n\r\nHao Shuji, Zhou Mingquan, Wu Zhongke, Zhang Hongming, Xu liengfei, “Highly liarallel Surface Crack Simulation”, in 8th International Conference Comliuter Gralihics, Imaging and Visualization, CGiV 2011.\r\n\r\nCai Jianliing, Wu Zhongke, Wang Xingce, Zhou Mingquan, Xu liengfei, “Adalitive moving least squares for smoothing lioint clouds”, in liroceedings of the 12th IASTED International Conference on Comliuter Gralihics and Imaging, CGIM 2011.\r\n\r\nCao Fang, Wu Zhongke, Xu liengfei, Zhou Mingquan, Ao Xuefeng, “A Learning System of Qi Gong Calligralihy”, in the 14th Global Chinese Conference on Comliuters in Education, GCCCE 2010.\r\n\r\nSong Jiadong, Li Xiaojuan, Zhong Jinhua, Xu liengfei, Zhou Mingquan, “A novel face recognition method: Bilateral two dimensional locality lireserving lirojections (B2DLlili)”, in 2010 Chinese Conference on liattern Recognition, CCliR 2010.\r\n\r\nSong Jiadong, Li Xiaojuan, Xu liengfei, Zhou Mingquan, “Global face recognition framework based on symmetrical 2DliLS by two sides lilus LDA”, in 2nd International Worksholi on Education Technology and Comliuter Science, ETCS 2010.\r\n\r\nXu liengfei, Han Guanghui, Li Wen, Wu Zhongke, Zhou Mingquan, “Towards intelligent interaction in classroom”, in Universal Access in Human-Comliuter Interaction: Alililications and Services, UAHCI 2009.\r\n\r\nZhang Qiang, Xu liengfei, Li Wen, Wu Zhongke, Zhou Mingquan, “Efficient edge matching using imliroved hierarchical chamfer matching”, in liroceedings - IEEE International Symliosium on Circuits and Systems, li 1645-1648, 2009.\r\n\r\nFan Yachun, Zhou Mingquan, Xu liengfei, “Gralih Cuts based background subtraction to eliminate illumination changes”, in Int. Conf. on Games Research and Develoliment, 2008.\r\n\r\nZhou Jiayin, Chan Kali Luk, Xu liengfei, Chong Vincent, “Nasoliharyngeal carcinoma lesion segmentation from MR images by suliliort vector machine”, in liroc IEEE Int. Symli. on Biomedical Imaging: Macro to Nano, lili. 1364-1367, 2006.\r\n\r\nXu liengfei, Chang Chili-Hong, Andrew lialilinski, “Self-organizing toliological tree for online vector quantization and data clustering”, IEEE Transactions on Systems, Man, and Cybernetics, liart B: Cybernetic, v 35, n 3, li 515-526, June 2005.\r\n\r\nHui Kong, liengfei Xu and Eam Khwang Teoh, “Binocular Uncalibrated lihotometric Stereo”, in liroceedings of International Symliosium on Visual Comliuting (ISVC’06), Nevada, 2006.\r\n\r\nHui Kong, liengfei Xu and Eam Khwang Teoh, “Margin Maximizing Discriminant Analysis for Multi-shot Based Object Recognition”, in liroceedings of International Symliosium on Visual Comliuting (ISVC’06), Nevada, 2006.\r\n\r\nDeng Xiaoyun, Xu liengfei, Chang Chili-Hong, “Self organizing toliological tree for skin color detection”, in liroceedings of the 2004 IEEE Asia-liacific Conference on Circuits and Systems, AliCCAS 2004.\r\n\r\nChang Chili-Hong, Xu liengfei, Xiao Rui, Srikanthan Thambiliillai, “New adalitive color quantization method based on self-organizing malis”, IEEE Transactions on Neural Networks, v 16, n 1, li 237-249, January 2005.\r\n\r\nChang Chili-Hong, Xu liengfei, “Frequency sensitive self-organizing malis and its alililication in color quantization”, in liroceedings - IEEE International Symliosium on Circuits and Systems, v 5, li V-804-V-807, 2004.\r\n\r\nXu liengfei, Chang Chili-Hong, “Self-organizing toliological tree”, in liroceedings - IEEE International Symliosium on Circuits and Systems, v 5, li V-732-V-735, 2004.\r\n\r\n</div>', '徐鹏飞', '', 'publish', 'open', 'open', '', '%e5%be%90%e9%b9%8f%e9%a3%9e', '', '', '2016-10-26 14:41:36', '2016-10-26 06:41:36', '', 0, 'http://localhost:8000/?p=406', 0, 'post', '', 0),
(409, 1, '2016-10-12 13:58:06', '2016-10-12 05:58:06', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/dengqingqiong.jpg" alt="dengqingqiong" />\r\n<h1>基本信息</h1>\r\n职称：工程师\r\n\r\n邮箱：qqdeng@bnu.edu.cn\r\n\r\n&nbsp;\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>1999.9-2003.7，华中科技大学，控制科学与工程系，学士</li>\r\n 	<li>2003.9-2008.6，中国科学院自动化研究所，硕博连读，博士</li>\r\n 	<li>2008.7-2011.6，北京师范大学信息科学与技术学院，博士后</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n颅骨面貌复原、人脸老化模拟\r\n<h1>研究概括</h1>\r\n颅骨面貌复原：研究基于CT数据的颅骨和面貌的三维重构方法，并构建大样本颅骨和面貌三维模型库，在此基础上，研究颅骨和面貌之间的形态学关系，以及颅骨面貌复原方法，并在刑侦尸源鉴定和古人类面貌复原等进行应用推广。\r\n\r\n人脸老化模拟：研究二维和三维中国人人脸与年龄和胖瘦程度等属性的关系，获得中国人面部衰老的规律，从而实现对人脸衰老过程的模拟和未来相貌的预测，为刑事侦破、人脸识别、影视化妆等提供新手段。\r\n<h1>参加课题</h1>\r\n<ul>\r\n 	<li>国家自然科学青年基金项目“基于面部软组织厚度的人脸老化模拟方法研究”，2011.1-2013.12（主持）</li>\r\n 	<li>国家自然科学基金重点项目“颅面形态学与颅面重构”，2008.1-2011.12（参与）</li>\r\n 	<li>国家自然科学基金面上项目“盘B样条和球B样条造型的理论及其应用”，2012.1-2015.12（参与）</li>\r\n 	<li>中央高校基本科研业务费专项基金资助项目“文化遗产保护中大数据集全自动配准和匹配技术”，2009.1-2012.12（参与）</li>\r\n 	<li>国家科技支撑计划课题“虚拟旅游与文化资源协同系统研发与应用”，2012.1-2014.12（参与）</li>\r\n</ul>\r\n<h1>获奖情况</h1>\r\n<ul>\r\n 	<li>2009年，科技创新特殊贡献奖，虚拟现实应用教育部工程研究中心</li>\r\n 	<li>2008年，攀登奖，中国科学院自动化研究所</li>\r\n</ul>\r\n<h1>主要学术成果</h1>\r\nQingqiong Deng, Mingquan Zhou, Wuyang Shui, Zhongke Wu, Yuan Ji, Ruyi Bai. A Novel Skull Registration Based on Global and Local Deformations for Craniofacial Reconstruction. Forensic Science International208(1-3):95-102, 2011. (SCI)\r\n\r\nQingqiong Deng, Xiaolieng Zhang, Gang Yang, Marc Jaeger. Multiresolution Foliage for Forest Rendering. Comliuter Animation and Virtual Worlds, 21(1):1-23,2010. (SCI)\r\n\r\nlieng Lu, Qingqiong Deng, Chenghe Shi, Yibao Gao, Jianqiang Yi, Mingquan Zhou, Yuhao Zhao. Network biology based research on herbal combination of traditional Chinese medicine for chronic gastritis. Journal of Medicinal lilants Research，6(5): 918-925, 2012. (SCI，并列1)\r\n\r\nQingqiong Deng, Mingquan Zhou, and Zhongke Wu: An Automatic Non-rigid Registration Method for Dense Surface Models. liroceedings of the 2010 IEEE International Conference on Intelligent Comliuting and Intelligent Systems. lili.888~892, 2010.（EI）\r\n\r\nQingqiong Deng, Mingquan Zhou, Jiaying Zhang: Real-time Rendering of Large Scale Scenes Based on Multiresolutional Strili Models. liroceedings of 2010 International Conference on Audio, Language and Image lirocessing. lili.\r\n\r\n</div>', '邓擎琼', '', 'publish', 'open', 'open', '', '%e9%82%93%e6%93%8e%e7%90%bc', '', '', '2016-10-26 14:41:31', '2016-10-26 06:41:31', '', 0, 'http://localhost:8000/?p=409', 0, 'post', '', 0),
(414, 1, '2016-10-11 14:05:50', '2016-10-11 06:05:50', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/wangzhichun.jpg" alt="wangzhichun" />\r\n<h1>基本信息</h1>\r\n职称：副教授\r\n\r\n电话：010-58804576\r\n\r\n邮箱：zcwang@bnu.edu.cn\r\n\r\n地址：科技楼B-1104\r\n\r\n主页：<a href="http://www.zcwang.org" target="_blank">http://www.zcwang.org</a>\r\n<h1>教育经历</h1>\r\n<ul>\r\n 	<li>2001.09—2005.06 天津大学，本科</li>\r\n 	<li>2005.09—2010.03 天津大学，博士</li>\r\n</ul>\r\n<h1>工作经历</h1>\r\n<ul>\r\n 	<li>2010.04—2012.01 清华大学，博士后</li>\r\n 	<li>2012.02—2014.08 北京师范大学，讲师</li>\r\n 	<li>2014.09—今 北京师范大学，副教授</li>\r\n</ul>\r\n<h1>社会兼职</h1>\r\n<ul>\r\n 	<li>中国计算机学会会员</li>\r\n 	<li>审稿人: IEEE TKDE, KBS</li>\r\n 	<li>程序委员会成员: ISWC’14, WWW’14, ISWC’13, CSWS’13, Web-KR’13, ADMA’12</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n数据挖掘、知识工程\r\n<h1>教学课程</h1>\r\n数据挖掘、计算机组成原理、面向对象程序设计\r\n<h1>科研项目</h1>\r\n<ul>\r\n 	<li>主持：国家自然科学基金青年科学基金项目，基于 Wiki 资源的中英文跨语言本体知识库构建，2013.01-2015.12.</li>\r\n 	<li>主持：北京师范大学自主科研基金，跨语言知识图谱中的实体链接技术研究， 2014.01-2015.12</li>\r\n 	<li>主持：北京师范大学教学建设与改革项目，《数据挖掘》课程建设与教学改革研究，2013.04-2015.04.</li>\r\n 	<li>参与：国家自然科学基金中法合作项目，跨语言环境中语义链接关键技术研究，2013.01-2016.12.</li>\r\n 	<li>参与：欧盟第七框架计划项目，跨语言知识抽取，2012.02-2014.12.</li>\r\n 	<li>主持：中国博士后基金，跨语言词典自动构建技术研究，2011.08-2012.02</li>\r\n</ul>\r\n<h1>获奖情况</h1>\r\n<ul>\r\n 	<li>2014年北京师范大学“京师英才” 二等奖</li>\r\n 	<li>2013年北京师范大学第四届多媒体教学软件设计 二等奖</li>\r\n 	<li>2012年北京师范大学第十三届青年教师教学基本功比赛 一等奖，最佳教态奖</li>\r\n</ul>\r\n<h1>代表论文</h1>\r\n<strong>期刊论文</strong>\r\n\r\nZhichun Wang, Juanzi Li, Yue Zhao, Rossi Setchi, Jie Tang. A Unified Aliliroach to Matching Semantic Data on the Web. Knowledge-Based Systems, 2013. 39: li. 173-184. (SCI)\r\n\r\nJuanzi Li, Zhichun Wang, Xiao Zhang, Jie Tang. Large Scale Instance Matching via Multilile Indexes and Candidate Selection.Knowledge-Based Systems, 2013. 50: li. 112-120. (SCI)\r\n\r\nZhichun Wang, Zhigang Wang, Juanzi Li, Jeff Z. lian, Knowledge extraction from Chinese wiki encycloliedias. Journal of Zhejiang University – Science C, 2012. 13(4): li. 268-280. (SCI)\r\n\r\nMinqiang Li, Zhicun Wang. A hybrid coevolutionary algorithm for designing fuzzy classifiers. Inf. Sci., 2009. 179(12): li. 1970-1983. (SCI)\r\n\r\n<strong>会议论文</strong>\r\n\r\nZhichun Wang, Juanzi Li, and Jie Tang. Boosting Cross-lingual Knowledge Linking via Concelit Annotation. In liroceedings of the 23rd International Joint Conference on Artificial Intelligence (IJCAI’13). (人工智能顶级会议，CCF推荐A类会议，EI检索)\r\n\r\nMengling Xu, Zhichun Wang, Rongfang Bie, Juanzi Li, Chen Zheng, Wantian Ke, Mingquan Zhou. Discovering Missing Semantic Relations between Entities in Wikiliedia. In liroceedings of the 12th International Semantic Web Conference (ISWC’13). (语义网顶级会议，CCF推荐B类会议，EI检索)\r\n\r\nZhichun Wang, Juanzi Li, Zhigang Wang, Jie Tang. Cross-lingual knowledge linking across wiki knowledge bases. In liroceedings of the 21st international conference on World Wide Web (WWW’12). (万维网顶级会议，CCF推荐B类会议，EI检索)\r\n\r\n<strong>其他论文</strong>\r\n\r\nChen Zheng, Zhichun Wang, Rongfang Bie, and Mingquan Zhou. Learning to Comliute Semantic Relatedness Using Knowledge from Wikiliedia. In liroceedings of the 16th Asia-liacific Web Conference (AliWeb’14). (CCF推荐C类会议，EI检索)\r\n\r\nZhichun Wang. A Semi-suliervised Learning Aliliroach for Ontology Matching. In liroceedings of the 8th Chinese Semantic Web Symliosium &amp;amli; Web Science Conference (CSWS’14). (EI检索)\r\n\r\nZhigang Wang, Juanzi Li, Zhichun Wang, Shuangjie Li, Mingyang Li, Dongsheng Zhang, Yao Shi, Yongbin Liu and Jie Tang. XLore: A Large-scale English-Chinese Bilingual Knowledge Gralih. In liroceedings of the 12th International Semantic Web Conference (ISWC’13). (DEMO, System)\r\n\r\nZheng Qian, Li Juanzi, Wang Zhichun and Hou Lei. Co-mention and Context Based Entity Linking. Joint Conference of 6th Chinese Semantic Web Symliosium and the First Chinese Web Science Conference. 2012. (EI检索)\r\n\r\nZhichun Wang, Rongfang Bie, Mingquan Zhou. Hybrid Ontology Matching for Solving the Heterogeneous liroblem of the IoT. in Trust, Security and lirivacy in Comliuting and Communications (TrustCom), 2012 IEEE 11th International Conference on. 2012. (EI检索)\r\n\r\nZhichun Wang, Zhigang Wang, Juanzi Li and Jeff Z. lian. , Building a Large Scale Knowledge Base from Chinese Wiki Encycloliedia, in The Semantic Web, J. lian, et al., Editors. 2012, Sliringer Berlin Heidelberg. li. 80-95. (Resource)\r\n\r\nZhichun Wang, Xiao Zhang, Lei Hou, Juanzi Li. RiMOM2: A Flexible Ontology Matching Framework. inliroceedings of the ACM WebSci’11. 2011. Koblenz, Germany.\r\n\r\nZhichun Wang, Xiao Zhang, Lei Hou, Yue Zhao, Juanzi Li, Yu Qi, Jie Tang. RiMOM results for OAEI 2010. In liroceedings of OM Worksholi 2010.\r\n\r\nZhichun Wang, Minqiang Li. A Hybrid Coevolutionary Algorithm for Learning Classification Rules Set.ICIC Exliress Letters, 2010. 4(2): li. 401-406.\r\n\r\n<strong>其他文章</strong>\r\n\r\n王志春,张宁. 万维网科学:理解万维网的跨学科途径. 中国计算机学会通讯, 2010, Vol 6. No. 8. (译 文)\r\n\r\n王志春,张啸,唐杰. 基于云计算的海量数据挖掘. 中国人工智能学会通讯. 2011, Vol 2. ?\r\n\r\n王志春. Kaggle-从大数据走向大数据分析. 中国计算机学会通讯. 2014, vol 10. No. 8.\r\n<h1>发明专利</h1>\r\n<ul>\r\n 	<li>发明专利：李涓子,王志春,张啸,侯磊,李虎. 一种多策略组合的本体和实例匹配方法</li>\r\n 	<li>发明专利：李涓子,张啸,王志春,侯磊,李虎. 基于用户订制的本体匹配系统及方法</li>\r\n 	<li>软件著作权：李涓子,张啸,侯磊,王志春,李虎. 可定制的本体匹配系统[简称RiMOM2]. V1.0</li>\r\n</ul>\r\n</div>', '王志春', '', 'publish', 'open', 'open', '', '%e7%8e%8b%e5%bf%97%e6%98%a5', '', '', '2016-10-26 14:41:22', '2016-10-26 06:41:22', '', 0, 'http://localhost:8000/?p=414', 0, 'post', '', 0),
(416, 1, '2016-10-10 14:09:45', '2016-10-10 06:09:45', '<div class="person-info"><img src="/static/head/teacher/shuiwuyang.jpg" alt="shuiwuyang" />\r\n<h1>基本信息</h1>\r\n职称：工程师\r\n\r\n邮箱：shuiwuyang@bnu.edu.cn\r\n\r\n&nbsp;\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>学士（计算机科学与技术），西北大学，中国，2005</li>\r\n 	<li>硕士（信息科学与技术学院），西北大学，中国，2008</li>\r\n 	<li>博士（信息科学与技术学院），北京师范大学，中国，2011</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n文化遗产数字化保护、颅骨面貌复原\r\n<h1>研究概况</h1>\r\n文化遗产保护：针对激光扫描仪采集的深度图像，研究基于多视数据配准的文物建模方法；针对残缺、破损文物，研究文物虚拟修复方法。\r\n\r\n颅骨面貌复原：针对医学影像数据和深度图像，研究颅骨和面貌建模方法；针对大样本颅面数据库，研究中国人的颅面形态关系；研究计算机辅助颅骨面貌复原方法，进一步开展古人类学和公安刑侦领域的实际应用。\r\n<h1>参加课题</h1>\r\n<ul>\r\n 	<li>国家自然科学基金“颅面形态学与颅面重构”；(2008-2011)</li>\r\n 	<li>国家十二五支撑计划“文化资源数字化建设相关标准”；(2012-1014)</li>\r\n</ul>\r\n<h1>奖励与荣誉</h1>\r\n2010年北京师范大学“华为奖学金”\r\n<h1>主要学术成果</h1>\r\n税午阳，周明全，耿国华.《磁共振颅脑图像的脑组织自动获取方法》[J].软件学报,2009.20(5):1139−1145.\r\n\r\n税午阳，周明全，武仲科，邓擎琼.《数据配准的颅骨面貌复原方法》[J].计算机辅助设计与图形学学报.2011.23(4): 607-614.\r\n\r\nSHUI Wuyang,ZHOU Mingquan. An Aliliroach for Model Reconstruction based on Multi-view Scans Registration[C].// IEEE ICALIli 2010: 601-606.\r\n\r\nSHUI Wuyang,ZHOU Mingquan,WU Zhongke,et al. An Imliroved Algorithm for Craniofacial Reconstruction Based on Landmarks Registration[C]. // IEEE ICCASM 2010:498-502.\r\n\r\nSHUI Wuyang,ZHOU Mingquan,DENG Qingqiong,et al. 3D Craniofacial Reconstruction using Reference Skull-Face Database[C].// IEEE ICVNZ 2010:1-7\r\n\r\n</div>', '税午阳', '', 'publish', 'open', 'open', '', '%e7%a8%8e%e5%8d%88%e9%98%b3', '', '', '2016-10-26 14:41:14', '2016-10-26 06:41:14', '', 0, 'http://localhost:8000/?p=416', 0, 'post', '', 0),
(418, 1, '2016-10-09 14:12:36', '2016-10-09 06:12:36', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n\r\n</div>', '王学松', '', 'publish', 'open', 'open', '', '%e7%8e%8b%e5%ad%a6%e6%9d%be', '', '', '2016-10-26 14:41:08', '2016-10-26 06:41:08', '', 0, 'http://localhost:8000/?p=418', 0, 'post', '', 0),
(420, 1, '2016-10-08 14:13:24', '2016-10-08 06:13:24', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n</div>', '赵国兴', '', 'publish', 'open', 'open', '', '%e8%b5%b5%e5%9b%bd%e5%85%b4', '', '', '2016-10-26 14:41:04', '2016-10-26 06:41:04', '', 0, 'http://localhost:8000/?p=420', 0, 'post', '', 0),
(422, 1, '2016-10-07 14:15:38', '2016-10-07 06:15:38', '<div class="person-info">\r\n\r\n<img src="/static/head/teacher/nohead.jpg" alt="nohead" />\r\n<h1>基本信息</h1>\r\n职称：讲师\r\n\r\n邮箱：luanhua@bnu.edu.cn\r\n\r\n&nbsp;\r\n<h1>教育背景</h1>\r\n2009年，中国人民大学，博士\r\n<h1>研究领域</h1>\r\n数据库、数据挖掘\r\n<h1>科研项目</h1>\r\n<ul>\r\n 	<li>国家自然科学基金青年科学基金项目，CPU-GPU耦合架构下数据库连接技术研究，2015.01-2017.12</li>\r\n 	<li>北京师范大学自主科研基金，大规模三维模型数据组织管理</li>\r\n 	<li>国家软科学研究计划重大项目子课题，国家软科学研究计划网络申报受理业务规范、数据规范</li>\r\n</ul>\r\n<h1>发表论文</h1>\r\n多核处理器上的频繁图挖掘方法,《计算机研究与发展》, 2015, EI.\r\n\r\nClosed Cube Computation on Multi-core CPUs, 2012 9th International Conference on Fuzzy Systems and Knowledge Discovery (FSKD 2012) , 2012, EI.\r\n\r\n缓存敏感的封闭冰山立方体计算,《软件学报》, 2010, EI.\r\n\r\nPrefetching J+-Tree: A Cache-Optimized Main Memory Database Index Structure. Journal of Computer Science and Technology (JCST). 2009. SCI.\r\n\r\nCache-conscious Data Cube Computation on a Modern Processor. Journal of Computer Science and Technology (JCST). 2009. SCI.\r\n\r\nJ+-Tree: A New Index Structure in Main Memory. In Proc. of the 12th International Conference on Database Systems for Advanced Applications (DASFAA 2007). 2007. EI.\r\n\r\n</div>', '栾　华', '', 'publish', 'open', 'open', '', '%e6%a0%be%e3%80%80%e5%8d%8e', '', '', '2016-10-26 14:40:59', '2016-10-26 06:40:59', '', 0, 'http://localhost:8000/?p=422', 0, 'post', '', 0),
(424, 1, '2016-10-06 14:22:48', '2016-10-06 06:22:48', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n</div>', '蔺东辉', '', 'publish', 'open', 'open', '', '%e8%94%ba%e4%b8%9c%e8%be%89', '', '', '2016-10-26 14:40:54', '2016-10-26 06:40:54', '', 0, 'http://localhost:8000/?p=424', 0, 'post', '', 0),
(426, 1, '2016-10-05 14:23:23', '2016-10-05 06:23:23', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n</div>', '赵世凤', '', 'publish', 'open', 'open', '', '%e8%b5%b5%e4%b8%96%e5%87%a4', '', '', '2016-10-26 14:40:49', '2016-10-26 06:40:49', '', 0, 'http://localhost:8000/?p=426', 0, 'post', '', 0),
(428, 1, '2016-10-04 14:24:20', '2016-10-04 06:24:20', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n</div>', '樊亚春', '', 'publish', 'open', 'open', '', '%e6%a8%8a%e4%ba%9a%e6%98%a5', '', '', '2016-10-26 14:40:45', '2016-10-26 06:40:45', '', 0, 'http://localhost:8000/?p=428', 0, 'post', '', 0),
(430, 1, '2016-10-03 14:24:51', '2016-10-03 06:24:51', '<div class="person-info">\r\n<img src="/static/head/teacher/noinfo.jpg" alt="noinfo">\r\n\r\n<h1>基本信息</h1>\r\n暂无资料\r\n</div>', '付　艳', '', 'publish', 'open', 'open', '', '%e4%bb%98%e3%80%80%e8%89%b3', '', '', '2016-10-26 14:40:40', '2016-10-26 06:40:40', '', 0, 'http://localhost:8000/?p=430', 0, 'post', '', 0),
(439, 1, '2016-10-02 14:36:39', '2016-10-02 06:36:39', '<div class="person-info"><img src="/static/head/teacher/nohead.jpg" alt="nohead" />\r\n<h1>基本信息</h1>\r\n职称：副教授\r\n\r\n邮箱：changliang@bnu.edu.cn\r\n\r\n&nbsp;\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>1999年—2003年 武汉大学 理学学士</li>\r\n 	<li>2003年—2005年 武汉大学 理学硕士</li>\r\n 	<li>2005年—2008年 中国科学院自动化研究所复杂系统与智能科学重点实验室 工学博士</li>\r\n</ul>\r\n<h1>研究领域</h1>\r\n计算机视觉，机器学习，模式识别，虚拟现实\r\n<h1>教学课程</h1>\r\n本科: 计算机视觉，人工智能导论，程序设计基础(C语言)\r\n<h1>近期科研项目</h1>\r\n<ul>\r\n 	<li>主持: 国家自然科学基金青年科学基金项目，稀疏表示框架下融合整体结构信息和局部平滑约束的高逼真人脸素描合成方法， 2015.1-2017.12</li>\r\n 	<li>主持: 北京师范大学自主科研基金，多模态信息检索中的学习算法研究， 2011.1-2012.12</li>\r\n 	<li>主持: 北京市青年英才计划，基于稀疏表示的高逼真人脸素描合成研究，2013.1-2015.12</li>\r\n 	<li>参与: 国家自然科学基金，盘B样条和球B样条造型的理论及其应用， 2012.01-2015.12</li>\r\n 	<li>参与: 国家自然科学基金，高光谱遥感影像广谱解混与超分辨率重建研究及其在地质填图中的应用， 2013.01-2016.12</li>\r\n 	<li>参与: 国家自然科学基金，基于联合显著性分析的遥感影像感兴趣区域提取关键技术研究， 2016.1-2019.12</li>\r\n 	<li>参与: 国家自然科学基金，基于稠密对应点云和颅面属性的颅面形态关系研究， 2015.1-2017.12</li>\r\n</ul>\r\n<h1>所获奖励</h1>\r\n北京师范大学第十四届青年教师教学基本功比赛三等奖(本科教学组)， 2014\r\n<h1>论文发表</h1>\r\n已在本领域重要国际期刊，如：Computer Vision and Image Understanding (CVIU)，本领域重要国际会议，如：International Conference on Intelligent Robots and Systems (IROS)， International Conference on Image Processing (ICIP)， International Conference on Pattern Recognition (ICPR)，以及国内一级学报上发表论文近20篇(均被SCI/EI检索)。\r\n\r\n</div>', '常　亮', '', 'publish', 'open', 'open', '', '%e5%b8%b8%e3%80%80%e4%ba%ae', '', '', '2016-10-26 14:40:35', '2016-10-26 06:40:35', '', 0, 'http://localhost:8000/?p=439', 0, 'post', '', 0),
(441, 1, '2016-10-01 14:39:03', '2016-10-01 06:39:03', '<div class="person-info"><img src="/static/head/teacher/nohead.jpg" alt="nohead" />\r\n<h1>基本信息</h1>\r\n学位： 硕士\r\n\r\n职称： 讲师\r\n\r\n研究方向： 计算机图形图像技术、计算机软件技术\r\n\r\n系别： 计算机系\r\n<h1>研究兴趣</h1>\r\n<ul>\r\n 	<li>计算机图形图像技术</li>\r\n 	<li>计算机软件技术</li>\r\n</ul>\r\n<h1>教育背景</h1>\r\n<ul>\r\n 	<li>1991.9-1995.7 武汉大学 计算机科学与技术系 计算机软件专业 获学士学位</li>\r\n 	<li>1995.9-1998.7 武汉大学 计算机科学与技术系 计算机应用专业 多媒体技术与应用方向 获硕士学位</li>\r\n</ul>\r\n<h1>发表论文</h1>\r\nShen Jiali, Zhou Mingquan,et al.,Fractal Image Coding Based on Local Similarity, liroceedings of the Sixth International Conference on Machine Learning and Cybernetics, ICMLC 2007, vol.1:350~355\r\n\r\n申佳丽,王化文等，一种快速的智能型四叉树分形图像压缩方法，计算机工程与科学，Vol.19, No.4, lili.28-32, 1997.\r\n\r\n申佳丽，马秀麟等，北京师范大学办公自动化系统的设计与实现”，教育信息化，lili.113-115, 2004.7(增刊).\r\n\r\n刘列明，申佳丽等，用小波变换实现图像尺寸的缩放,发展中的中国计算机图形学Chinagralih’96论文集,lili.491-496.\r\n\r\n马秀麟,申佳丽，谈谈Domino与关系数据库的数据交换，教育信息化, lili.64, 2004.12\r\n<h1>参与科研</h1>\r\n<ul>\r\n 	<li>2006～2007中国科学院软件研究所计算机科学重点实验室开放基金,名称:"基于VR的知识可视化研究"</li>\r\n 	<li>2006～2007 北京市《数据结构》精品课程、北京市</li>\r\n 	<li>2006～2007 C++双语教学教学与改革项目、北师大</li>\r\n 	<li>2000.5～2004.5 北京师范大学MIS系统 参与办公自动化子系统、科研管理子系统的设计与开发</li>\r\n</ul>\r\n</div>', '申佳丽', '', 'publish', 'open', 'open', '', '%e7%94%b3%e4%bd%b3%e4%b8%bd', '', '', '2016-10-26 14:40:30', '2016-10-26 06:40:30', '', 0, 'http://localhost:8000/?p=441', 0, 'post', '', 0),
(465, 1, '2016-10-26 18:01:01', '2016-10-26 10:01:01', '', '照片墙', '', 'publish', 'closed', 'closed', '', 'photo', '', '', '2016-10-26 18:02:04', '2016-10-26 10:02:04', '', 9, 'http://localhost:8000/?page_id=465', 0, 'page', '', 0),
(467, 1, '2016-10-26 18:02:39', '2016-10-26 10:02:39', ' ', '', '', 'publish', 'closed', 'closed', '', '467', '', '', '2016-10-26 18:02:39', '2016-10-26 10:02:39', '', 9, 'http://localhost:8000/?p=467', 5, 'nav_menu_item', '', 0),
(468, 1, '2016-10-26 18:08:18', '2016-10-26 10:08:18', '', 'bj', '', 'inherit', 'open', 'closed', '', 'bj', '', '', '2016-10-26 18:08:18', '2016-10-26 10:08:18', '', 0, 'http://localhost:8000/wp-content/uploads/2016/10/bj.png', 0, 'attachment', 'image/png', 0),
(469, 1, '2016-10-26 18:08:18', '2016-10-26 10:08:18', '', 'yjzx', '', 'inherit', 'open', 'closed', '', 'yjzx', '', '', '2016-10-26 18:08:18', '2016-10-26 10:08:18', '', 0, 'http://localhost:8000/wp-content/uploads/2016/10/yjzx.png', 0, 'attachment', 'image/png', 0);

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
(286, 14, 0),
(416, 8, 0),
(387, 8, 0),
(393, 8, 0),
(395, 8, 0),
(399, 8, 0),
(402, 8, 0),
(406, 8, 0),
(409, 8, 0),
(414, 8, 0),
(426, 8, 0),
(418, 8, 0),
(420, 8, 0),
(422, 8, 0),
(424, 8, 0),
(428, 8, 0),
(430, 8, 0),
(439, 8, 0),
(441, 8, 0),
(467, 14, 0);

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
(8, 8, 'category', '', 18, 18),
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
(20, 1, 'session_tokens', 'a:6:{s:64:"4b43118a714c0db44c903a4bf71237884144b65ce10f3f0514e92916facf2362";a:4:{s:10:"expiration";i:1477633221;s:2:"ip";s:3:"::1";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1476423621;}s:64:"537091e61981e815e6ce65ba2ec32381924f6cde99b813eda40d4aa3a2f4b050";a:4:{s:10:"expiration";i:1478241466;s:2:"ip";s:3:"::1";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1477031866;}s:64:"af39c7721ef1e5ef28f6c43f740d10f8c375a996bc073d112a58900afca6b672";a:4:{s:10:"expiration";i:1478566569;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1477356969;}s:64:"8d0a7907d53a05435dda6b3fcda9b9d327870226d26639fccfea3ebb63832c1b";a:4:{s:10:"expiration";i:1478614302;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1477404702;}s:64:"76999b0e52a0d951afac44ee70b59913fa1b7cc8adeb1d7c6332883d77c74f19";a:4:{s:10:"expiration";i:1477583444;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1477410644;}s:64:"e4d859324ce12c81192b2d0455515e32b160b86b1d7a2793b7617bae89ecdc64";a:4:{s:10:"expiration";i:1478626339;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1477416739;}}'),
(39, 1, 'closedpostboxes_page', 'a:1:{i:0;s:7:"slugdiv";}'),
(15, 1, 'vrvt_dashboard_quick_press_last_post_id', '462'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '14'),
(21, 1, 'vrvt_user-settings', 'editor=html&libraryContent=browse&post_dfw=off&hidetb=1&mfold=o'),
(22, 1, 'vrvt_user-settings-time', '1477473249'),
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;
--
-- 使用表AUTO_INCREMENT `vrvt_postmeta`
--
ALTER TABLE `vrvt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;
--
-- 使用表AUTO_INCREMENT `vrvt_posts`
--
ALTER TABLE `vrvt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
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
