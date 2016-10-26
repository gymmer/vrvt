<?php
/**
 *  页面的模板
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
					<?php the_content(); ?>	
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->
			
		<?php endwhile; ?>
	</div><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
