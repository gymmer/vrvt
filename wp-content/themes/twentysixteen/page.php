<?php
/**
 *  页面的模板
 */

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="site-main" role="main">
		<?php
		while ( have_posts() ) : the_post();

			// 引入模板：template-parts/content-page
			get_template_part( 'template-parts/content', 'page' );
			
		endwhile; ?>

	</main><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
