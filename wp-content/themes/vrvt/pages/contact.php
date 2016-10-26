<?php
/**
 Template Name:联系方式
 */

get_header(); ?>

<div id="primary" class="container">
	<div id="main" class="site-main" role="main">
		<?php while ( have_posts() ) : the_post(); ?>

			<!-- 显示页面标题、内容-->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-title">
					<?php the_title(); ?>
				</div>
				
				<div class="entry-content">

					<h1>Welcome!</h1>

					<p><i class="fa fa-mortar-board fa-fw" style="margin-right: 3em;"></i>名称：北京师范大学虚拟现实与可视化技术研究所</p>

					<p><i class="fa fa-home fa-fw" style="margin-right: 3em;"></i>地址：北京市海淀区新街口外大街19号北京师范大学 科技楼B区11层</p>

					<p><i class="fa fa-map-marker fa-fw" style="margin-right: 3em;"></i>邮编：100875</p>

					<p><i class="fa fa-phone fa-fw" style="margin-right: 3em;"></i>电话：010 - 58803055</p>

					<p><i class="fa fa-envelope fa-fw" style="margin-right: 3em;"></i>邮箱：<a href="mailto:wangxs@bnu.edu.cn">wangxs@bnu.edu.cn</a></p>

					<p><i class="fa fa-laptop fa-fw" style="margin-right: 3em;"></i>主页：<a href="http://vrvt.bnu.edu.cn">http://vrvt.bnu.edu.cn</a></p>

				</div><!-- .entry-content end -->
			</article><!-- #post-## -->
			
		<?php endwhile; ?>
	</div><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
