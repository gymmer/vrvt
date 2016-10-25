<?php
/**
 * 文章的模板
 */

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="site-main" role="main">
		<?php while ( have_posts() ) : the_post(); ?>

			<!-- 显示文章标题、日期、内容-->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-title">
					<?php the_title(); ?>
				</div>

				<div class="post-time"> 
					<?php the_time('Y-m-j'); ?> 
				</div>

				<div class="entry-content">
					<?php the_content(); ?>
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php	
			// 显示上一篇/下一篇文章的标题
			if ( is_singular( 'attachment' ) ) {
				// Parent post navigation.
				the_post_navigation( array(
					'prev_text' => _x( '<span class="meta-nav">Published in</span><span class="post-title">%title</span>', 'Parent post link', 'twentysixteen' ),
				) );
			} elseif ( is_singular( 'post' ) ) {
				the_post_navigation( array(
					'next_text' => '%title',
					'prev_text' => '%title',
				) );
			}

		// 结束循环
		endwhile; ?>
	</main><!-- .site-main end -->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
