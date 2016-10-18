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
	<meta name="description" content="北京师范大学虚拟现实与可视化技术研究所">
	<meta name="keywords" content="北京师范大学，虚拟现实，可视化技术研究所，文化遗产保护">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>虚拟现实与可视化技术研究所</title>
	<link rel="shortcut icon" href="/static/img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css" >
	<link rel="stylesheet" type="text/css" href="/static/css/base.css">

	 <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<header>
		<div class="head-left">
			<a href="/">
				<img src="/static/img/head-logo.png" alt="虚拟现实与可视化技术研究所" title="虚拟现实与可视化技术研究所">
			</a>
			<div class="head-title">
				<span class="cn">虚拟现实与可视化技术研究所</span><br>
				<span class="en">Institute of Virtual Reality and Visualization Technology</span>
			</div>
		</div>
		<div class="head-right">
			<form method="post" action="#0" id="search">
	            <input type="text" name="search" value="检索...">
	            <div id="submit-search"><i class="fa fa-search fa-fw"></i></div>
	        </form>
	        <a href="/english">English Version</a>
		</div>
        <div class="clearfix"></div>
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