<?php
/**
 Template Name:找到我们
 */

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="site-main" role="main">
		<?php while ( have_posts() ) : the_post(); ?>

			<!-- 显示页面标题、内容-->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-title">
					<?php the_title(); ?>
				</div>
				
				<div class="entry-content">
					
					<h1>地理位置</h1>

					<a href="/static/html/baidumap.html" target="_blank"><img class="aligncenter map" src="/static/img/map-baidu.png" alt="Baidu Map" /></a>
					
					<a href="http://yz.bnu.edu.cn/detail/d25e4d0f" target="_blank"><img class="aligncenter map" src="/static/img/map-route.jpg" alt="Route Map" /></a>

					<a href="http://map.bnu.edu.cn/" target="_blank"><img class="aligncenter map" src="/static/img/map-bnu.png" alt="BNU Map" /></a>

					<h1>乘车路线</h1>

					<p><i class="fa fa-subway fa-fw" style="margin-right: 3em;"></i><strong>北京站</strong></p>
					<ul>
						<li>乘地铁到积水潭站，再换乘22路（或88路、47路等）公共汽车到铁狮子坟站下车，进北京师范大学东门</li>
					</ul>

					<p><i class="fa fa-bus fa-fw" style="margin-right: 3em;"></i><strong>北京西站</strong></p>
					<ul>
						<li>乘47路公共汽车到铁狮子坟站下车，进北京师范大学东门</li>
						<li>乘387/694/21路公共汽车到明光村站下车，沿学院南路向东到北京师范大学南门</li>
						<li>乘地铁9号线到国家图书馆站下车，再换乘92路公共汽车到北京师范大学南门站下车</li>
						<li>乘地铁9号线到国家图书馆站下车，再换乘92路公共汽车到北京师范大学南门站下车</li>
						<li>乘387/694路公共汽车到北太平桥西站下车，向南走十分钟左右到北京师范大学东门</li>
					</ul>

					<p><i class="fa fa-car fa-fw" style="margin-right: 3em;"></i><strong>北京南站</strong></p>
					<ul>
						<li>乘地铁到平安里站下车，再换乘22路（或88路、47路等）公共汽车到铁狮子坟站下车，进北京师范大学东门</li>
					</ul>
					
					<p><i class="fa fa-plane fa-fw" style="margin-right: 3em;"></i><strong>首都机场</strong></p>
					<ul>
						<li>乘地铁机场线至东直门站，站内换乘2号线，乘2号线到积水潭站，再换乘22路（或88路、47路等）公共汽车到铁狮子坟站下车，进北京师范大学东门</li>
						<li>乘机场大巴到北太平庄站下车，过立交桥向南到北京师范大学东门</li>
					</ul>

				</div><!-- .entry-content end -->
			</article><!-- #post-## -->
			
		<?php endwhile; ?>
	</main><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
