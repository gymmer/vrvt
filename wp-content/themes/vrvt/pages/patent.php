<?php
/*
Template Name: 发明专利
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
			 		
			 		<ul>
				 		<li>田沄, 周明全, 武仲科, 赵世凤, 王醒策, 自动初始化的局域活动轮廓模型心脑血管分割方法, 2012年11月受理, 中国, 公开号：201210500362.8</li>

						<li>武仲科, 冷昶, 周明全, 田沄, 王醒策, 基于球B样条曲线的三维血管模型构造方法, 授权时间：2013年10月, 中国, 授权号：CN201110114367.2</li>

						<li>李涓子,王志春,张啸,侯磊,李虎. 一种多策略组合的本体和实例匹配方法</li>

						<li>李涓子,张啸,王志春,侯磊,李虎. 基于用户订制的本体匹配系统及方法</li>
					</ul>
					
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php endwhile; ?>
	</div><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->

<?php get_footer(); ?>