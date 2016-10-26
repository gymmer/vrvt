<?php
/*
Template Name: 院所风貌
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
			 		
			 		<h1>北京市重点实验室</h1>
			 		<img class="aligncenter" src="/wp-content/uploads/2016/10/bj-300x219.png" alt="bj"/>

			 		<h1>实验室研究中心</h1>
					<img class="aligncenter" src="/wp-content/uploads/2016/10/yjzx-300x200.png" alt="yjzx"/>

			 		<h1>获得奖励集锦</h1>
			 		<img src="/wp-content/uploads/2016/10/kjjb2d-198x300.png" alt="kjjb2d" width="135" height="204" style="margin-right: 30px;" />
					<img src="/wp-content/uploads/2016/10/zmqzs.bmp" alt="zmqzs" width="306" height="204" style="margin-right: 30px;" />
					<img src="/wp-content/uploads/2016/10/kjgzz2012-300x197.jpg" alt="kjgzz2012" width="309" height="204" />

			 		<h1>论文专著集锦</h1>
			 		<img src="/wp-content/uploads/2016/10/zz1-300x176.png" alt="zz1" width="307" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/zz2.bmp" alt="zz2" width="132" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/zl1.bmp" alt="zl1" width="129" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/3-4-206x300.jpg" alt="3-4" width="127" height="184" />
					
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php endwhile; ?>
	</main><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->

<?php get_footer(); ?>