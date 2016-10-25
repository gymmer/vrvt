<?php
/**
 * 有搜索结果的模板
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<h1>
		<a href="<?php the_permalink(); ?>" target="_blank">
			<?php the_title()?>
		</a>
	</h1>

	<?php twentysixteen_excerpt(); ?>

</article><!-- #post-## -->

