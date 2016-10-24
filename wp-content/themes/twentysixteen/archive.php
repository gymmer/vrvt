<?php
/**
 * 分类目录的模板
 */

get_header(); ?>

	<div id="primary" class="container">
		<main id="main" class="site-main" role="main">

		<div class="post-title">
			<?php the_archive_title(); ?>
		</div>
			
		<?php if ( have_posts() ) : ?>

			<ul class="archive-list">
				<!--显示该归档下所有文章的标题、日期-->
				<?php while ( have_posts() ) : the_post(); ?>	

					<li>
						<?php the_title( sprintf( '<a href="%s" rel="bookmark" class="archive-list-title">', esc_url( get_permalink() ) ), '</a>' ); ?>
						<span class="archive-list-date">
							<?php echo the_time('Y-m-j'); ?>
						</span>
					</li>

				<?php endwhile; ?>
			</ul>

			<?php
			// 上一页/下一页的导航
			the_posts_pagination( array(
				'prev_text'          => __( '上一页', 'twentysixteen' ),
				'next_text'          => __( '下一页', 'twentysixteen' ),
				'before_page_number' => '<span>' . __( '', 'twentysixteen' ) . ' </span>',
			) );

		endif; ?>

		</main><!-- .site-main end-->

		<?php get_sidebar(); ?>
		<div class="clearfix"></div>

	</div><!-- .container end-->

<?php get_footer(); ?>
