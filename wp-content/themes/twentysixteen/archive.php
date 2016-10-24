<?php
/**
 * 分类目录的模板
 */

get_header(); ?>

	<div id="primary" class="container">
		<main id="main" class="site-main" role="main">

		<?php if ( have_posts() ) : ?>

			<div>
				<?php the_archive_title( '<h1>', '</h1>' ); ?>
			</div>
			
			<?php

			/*
				显示该归档下所有文章的标题、日期
			*/
			// 开始循环
			while ( have_posts() ) : the_post();?>

				<div>
					<?php the_title( sprintf( '<span><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></span>' ); ?>

					<?php echo the_time('Y-m-j'); ?>
				</div>

			<?php 
			// 结束循环
			endwhile;

			// 上一页/下一页的导航
			the_posts_pagination( array(
				'prev_text'          => __( '上一页', 'twentysixteen' ),
				'next_text'          => __( '下一页', 'twentysixteen' ),
				'before_page_number' => '<span>' . __( 'Page', 'twentysixteen' ) . ' </span>',
			) );

		// 如果该目录没有内容，引入模板：template-parts/content-none
		else :
			get_template_part( 'template-parts/content', 'none' );

		endif; ?>

		</main><!-- .site-main end-->

		<?php get_sidebar(); ?>
		<div class="clearfix"></div>

	</div><!-- .container end-->

<?php get_footer(); ?>
