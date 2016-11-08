<?php
/**
 * 没有搜索结果的模板
 */
?>

<h1>对不起，没有相关的搜索结果</h1>
<strong>你可以尝试其他关键词：</strong>
<p></p>
<?php get_search_form(); ?>

<h1>最近更新</h1>
<ul class="article-list">
	<?php 
	// 新闻通知/学术活动的ID
	$article_array = array(5,6,9,10,11);
	$maxRecentPostNum = 10;
	
	// 获取最近更新的文章 
	$post_query = new WP_Query(array(
		'category__in' => $article_array,
		'showposts' => $maxRecentPostNum,
	) );  
	while ($post_query->have_posts()) : 
		$post_query->the_post();   
		$do_not_duplicate = $post->ID; ?>   

        <li>
        	<a href="<?php the_permalink(); ?>">
        		<?php the_title(); ?>
        	</a>
        	<time>
				<?php the_time('Y-m-j'); ?>
			</time>
        </li>
        
	<?php endwhile;?>  
</ul>	