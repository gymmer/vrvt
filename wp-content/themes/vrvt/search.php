<?php
/**
 * 搜索页的模板
 */

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="search-main" role="main">

		<div class="post-title">
				<?php echo '搜索结果：'. esc_html( get_search_query() ); ?>
		</div>

		<div class="entry-content">

			<?php 

			if ( have_posts() ) : 

					while ( have_posts() ) : the_post();
						// 引入模板：template-parts/content-searchyes
						get_template_part( 'template-parts/content', 'searchyes' );
					endwhile;

					// 上一页/下一页
					 the_posts_pagination( array(
						'prev_text'          => '上一页',
						'next_text'          => '下一页',
						'before_page_number' => '',
					) );

			// 如果没有搜索出结果
			else :
				// 引入模板：template-parts/content-searchno
				get_template_part( 'template-parts/content', 'searchno' );

			endif; ?>

		</div><!-- .entry-content end -->
		
	</main><!-- .search-main -->

</div><!-- .container -->

<?php get_footer(); ?>
