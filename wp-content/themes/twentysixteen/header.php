<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="北京师范大学虚拟现实与可视化技术研究所">
	<meta name="keywords" content="北京师范大学，虚拟现实，可视化技术研究所，文化遗产保护">
	<title>虚拟现实与可视化技术研究所</title>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/static/css/default.css">
</head>

<body>
	<header>
		<img src="/static/img/head.png" alt="虚拟现实与可视化技术研究所" title="虚拟现实与可视化技术研究所">
	</header>
	<nav>
		<?php
			wp_nav_menu( array(
				'theme_location' => 'primary',
				'menu_class'     => 'primary-menu',
			) );
		?>
	</nav>

	<div id="content" class="site-content">