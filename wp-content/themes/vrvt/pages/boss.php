<?php
/*
Template Name: 研究所领导
*/

get_header(); ?>

<div id="primary" class="container">
	<main id="main" class="site-main" role="main">
		<?php while ( have_posts() ) : the_post(); ?>

			<!-- 显示页面标题、内容-->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-title">
					<?php the_title(); ?>
				</div>

				<div class="entry-content">
					
					<h1>所长</h1>					
					<div class="person-head">				
						<a href="/archives/238">
							<img src="/static/head/teacher/zhoumingquan-2.png" alt="zhoumingquan-2" />
						</a>
						<div>周明全</div>
					</div>
					<p>周明全，教授，博士生导师。教育部虚拟现实应用工程研究中心主任，教育部计算机科学与技术委员会软件工程教学指导委员会委员。北京师范大学虚拟现实与可视化技术研究中心主任。中国计算机学会理事，中国中文信息学会理事，中国计算机教育学会常务理事，陕西省计算机学会副理事长。</p>
					<div class="clearfix"></div>

					<h1>副所长</h1>
					<div class="person-head">
						<a href="/archives/240">
							<img src="/static/head/teacher/wuzhongke-2.jpg" alt="wuzhongke-2" />
						</a>
						<div>武仲科</div>
					</div>
					<p>武仲科，北京师范大学信息科学与技术学院教授，博士生导师，教育部高等学校动画、数字媒体专业教学指导委员会委员。主要研究方向：计算机图形学与计算机辅助几何设计、计算机动画，虚拟现实、医学图象处理等。</p>

				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php endwhile; ?>
	</main><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->

<?php get_footer(); ?>