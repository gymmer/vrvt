<?php
/*
Template Name: English

<main>使用.wide-main，不显示侧边栏，宽屏风格
*/

get_header(); ?>

<div id="primary" class="container">
	<div id="main" class="wide-main" role="main">
		<?php while ( have_posts() ) : the_post(); ?>

			<!-- 显示页面标题、内容-->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-title">
					<?php the_title(); ?>
				</div>

				<div class="entry-content">					
			 		
			 		<h1>Introduction</h1>
			 		<lu>
				 		<p><strong>Institute of Virtual Reality and Visualization Technology</strong>, Beijing Normal University, China</p>
						<p>Virtual Reality Application Center, MOE</p>
						<p><strong>Key lab</strong> of Digital Preservation of Cultural Heritage and Virtual Reality of Beijing</p>
						<p>Leading by professor <strong>Zhou Mingquan</strong></p>
						<p>Over 30 faculties</p>
						<p>Over 60 Graduate students（PH.D & Master)</p>
					</ul>

					<h1>Research Area</h1>
					<ul>
						<li>Craniofacial Morphology Informatics</li>
						<li>Digital Preservation of Cultural Heritage</li>
						<li>Virtual Medicine</li>
						<li>Virtual Reality Engineering</li>
						<li>Virtual Learning</li>
					</ul>

					<h1>Contact</h1>
					<div class="contact-en">

						<p class="name-en"><i class="fa fa-mortar-board fa-fw"></i>Name</p>
						<p class="item-en">Institute of Virtual Reality and Visualization Technology</p>

						<p class="name-en"><i class="fa fa-home fa-fw"></i>Address</p>
						<p class="item-en">College of Information Science & Technology, Beijing Normal University,</p>
						<p class="item-en">19, Xin Jie Kou Wai Da Jie, Beijing, China</p>

						<p class="name-en"><i class="fa fa-map-marker fa-fw"></i>Postcode</p>
						<p class="item-en">100875</p>

						<p class="name-en"><i class="fa fa-phone fa-fw"></i>Tel</p>
						<p class="item-en">86-10-58803055</p>

						<p class="name-en"><i class="fa fa-envelope fa-fw"></i>Email</p>
						<p class="item-en"><a href="mailto:wangxs@bnu.edu.cn">wangxs@bnu.edu.cn</a></p>

						<p class="name-en"><i class="fa fa-laptop fa-fw"></i>Site</p>
						<p class="item-en"><a href="http://vrvt.bnu.edu.cn">http://vrvt.bnu.edu.cn</a></p>
					</div>
				</div><!-- .entry-content end -->
			</article><!-- #post-## -->

		<?php endwhile; ?>
	</div><!-- .wide-main end-->

</div><!-- .container end -->

<?php get_footer(); ?>