<?php
/*
Template Name: 留言板

注意：这个页面需要设置为“允许评论”
设置方式：Admin后台 -> 编辑此页面 -> 右上角“显示选项” -> 勾选“讨论” -> 页面底部勾选“允许讨论”
*/

get_page_header(); ?>
				
<?php 
	if ( comments_open() )
	{
	comment_form( array(
		'title_reply_before' => '<h1>',
		'title_reply_after'  => '</h1>',
	) );
} ?>

<?php get_page_footer(); ?>