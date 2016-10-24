<?php
/**
 * 文章的模板
 */

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="site-main" role="main">
		<?php
		// 开始循环
		while ( have_posts() ) : the_post();

			// 引入模板：template-parts/content-single
			get_template_part( 'template-parts/content', 'single' );

			// 不显示评论区
			/*if ( comments_open() || get_comments_number() ) {
				comments_template();
			}*/

			// 显示上一篇/下一篇文章的标题
			if ( is_singular( 'attachment' ) ) {
				// Parent post navigation.
				the_post_navigation( array(
					'prev_text' => _x( '<span class="meta-nav">Published in</span><span class="post-title">%title</span>', 'Parent post link', 'twentysixteen' ),
				) );
			} elseif ( is_singular( 'post' ) ) {
				the_post_navigation( array(
					'next_text' => '<span>' . __( '下一篇：', 'twentysixteen' ) . '</span> ' .
						'<span>%title</span>',
					'prev_text' => '<span>' . __( '上一篇：', 'twentysixteen' ) . '</span> ' .
						'<span>%title</span>',
				) );
			}

		// 结束循环
		endwhile; ?>

	</main><!-- .site-main end -->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
