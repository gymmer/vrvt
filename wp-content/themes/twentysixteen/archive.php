<?php
/**
 * 分类目录的模板
 */

// 新闻通知/学术活动的ID
$article_array = array(5,6,9,10,11);

// 研究团队/人才培养的ID
$person_array = array(7,8,12,13,15,16);

// 获取当前所属分类
$category = get_the_category(); 
$catId = $category[0]->cat_ID;
$catName = $category[0]->cat_name;

get_header(); ?>

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

			<?php

			}  // 结束内层判断，即if (in_array(...))

			// 上一页/下一页的导航
			the_posts_pagination( array(
				'prev_text'          => __( '上一页', 'twentysixteen' ),
				'next_text'          => __( '下一页', 'twentysixteen' ),
				'before_page_number' => '<span>' . __( '', 'twentysixteen' ) . ' </span>',
			) );?>

		<?php } // 结束外层判断，即if(have_posts()) ?>

		</main><!-- .site-main end-->

		<?php get_sidebar(); ?>
		<div class="clearfix"></div>

	</div><!-- .container end-->

<?php get_footer(); ?>
