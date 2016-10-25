<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

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
