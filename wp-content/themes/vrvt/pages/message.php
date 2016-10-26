<?php
/*
Template Name: 留言板

注意：这个页面需要设置为“允许评论”
设置方式：Admin后台 -> 编辑此页面 -> 右上角“显示选项” -> 勾选“讨论” -> 页面底部勾选“允许讨论”
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
			 		<?php 
			 		if ( comments_open() )
			 		{
						comment_form( array(
							'title_reply_before' => '<h1>',
							'title_reply_after'  => '</h1>',
						) );
			 		} ?>
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php endwhile; ?>
	</div><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->

<?php get_footer(); ?>