<?php
/**
 * 分类目录的模板
 */

get_header(); 

// 新闻通知/学术活动的ID
$article_array = array(5,6,9,10,11);

// 研究团队/人才培养的ID
$person_array = array(7,8,12,13,15,16);

// 获取当前所属分类
$catId = get_query_var('cat');
$catName = get_cat_name($catId);
 
// 当前分类不属于上述两种，直接返回404页面
if ( !in_array($catId, $article_array) &&  !in_array($catId, $person_array))
{
	get_template_part( '404' );
	get_footer();
	return;
}

?>

	<div id="primary" class="container">
		<main id="main" class="site-main" role="main">

		<div class="post-title">
			<?php echo $catName; ?>
		</div>
			
		<?php if ( have_posts() ) { ?>

			<?php 
			// 当前目录是新闻通知/学术活动
			if ( in_array($catId, $article_array)) { ?>

				<ul class="article-list">
					<!--显示该归档下所有文章的标题、日期-->
					<?php while ( have_posts() ) : the_post(); ?>	
						<li>
							<a href="<?php the_permalink(); ?>">
								<?php the_title()?>
							</a>
							<span class="date">
								<?php the_time('Y-m-j'); ?>
							</span>
						</li>
					<?php endwhile; ?>
				</ul>

			<?php
			// 当前目录是研究团队/人才培养
			} else if ( in_array($catId, $person_array)) { ?>

				<ul class="person-list">
					<!--显示该归档下所有文章的标题、日期-->
					<?php while ( have_posts() ) : the_post(); ?>	
						<li class="person-head">
							<a href="<?php the_permalink(); ?>">
								<img src="<?php echo catch_first_image(); ?>"></a>
								<div><?php the_title()?></div>						
						</li>
					<?php endwhile; ?>
				</ul>
				<div class="clearfix"></div>

			<?php

			}  // 结束内层判断，即if (in_array(...))

			// 上一页/下一页的导航
			the_posts_pagination( array(
				'prev_text'          => '上一页',
				'next_text'          => '下一页',
				'before_page_number' => '',
			) );?>

		<?php } // 结束外层判断，即if(have_posts()) ?>

		</main><!-- .site-main end-->

		<?php get_sidebar(); ?>
		<div class="clearfix"></div>

	</div><!-- .container end-->

<?php get_footer(); ?>
