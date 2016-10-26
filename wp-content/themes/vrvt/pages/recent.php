<?php
/**
Template Name: 近期成果
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
					
					<h1>承担科研项目情况</h1>

					<p>研究所研究人员近年来，主持国家高技术研究发展计划（863计划）目标导向项目、“十二五”国家预研课题、国家科技支撑计划项目、国家自然科学基金重点项目、国家科技支撑计划项目、国家科技基础条件平台项目、北京自然科学基金重点项目等省部级以上研究课题20余项，主要包括“<strong>颅面形态学和颅面复原研究</strong>”、“<strong>三维模型智能处理与检索平台</strong>”、“<strong>虚拟环境中脑血管可视化导航和监测技术</strong>”等。</p>

					<p>文化遗产数字化保护与虚拟现实领域形成了独具特色的新型研究方向，取得了一系列的研究成果。</p>

					<h1>获得奖励情况</h1>
					<ul>
					 	<li>“颅面形态信息学研究与应用”2013年获中国计算机学会科技进步二等奖</li>
					 	<li>周明全教授荣获2012年“全国优秀科技工作者”称号</li>
					 	<li>“文物虚拟修复和数字化保护技术的研究与应用”，2009年获国家科技进步二等奖</li>
					 	<li>“三维刚体破损复原研究及其在文物虚拟修复中的应用”，2006年获教育部科技进 步二等奖</li>
					</ul>
					
					<p></p>
					<img src="/wp-content/uploads/2016/10/kjjb2d-198x300.png" alt="kjjb2d" width="135" height="204" style="margin-right: 30px;" />
					<img src="/wp-content/uploads/2016/10/zmqzs.bmp" alt="zmqzs" width="306" height="204" style="margin-right: 30px;" />
					<img src="/wp-content/uploads/2016/10/kjgzz2012-300x197.jpg" alt="kjgzz2012" width="309" height="204" />

					<h1>专著及论文发表情况</h1>

					<p>编写专著5部，并在国际国内高水平期刊或国际会议上发表了大量高水平论文，如Machine vision and Application，Pattern recognition letters，软件学报，计算机辅助设计与图形学学报等，申请了5项国家专利、软件著作权近10项。</p>

					<img src="/wp-content/uploads/2016/10/zz1-300x176.png" alt="zz1" width="307" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/zz2.bmp" alt="zz2" width="132" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/zl1.bmp" alt="zl1" width="129" height="184" style="margin-right: 40px;" />
					<img src="/wp-content/uploads/2016/10/3-4-206x300.jpg" alt="3-4" width="127" height="184" />

					<h1>其他成果情况</h1>

					<ul>
					 	<li>建立了包含680套中国人完整颅面数据的数据库，建立了颅面形态学知识分析模型和颅面统计变形模型，构建了颅面重构平台。</li>
					 	<li>建立三维模型数据库收集整理共十万余个模型，分为25个一级类，409个二级类。模型均按照功能、应用进行了语义标注，赋予特定的物理属性。</li>
					</ul>

				</div><!-- .entry-content end -->
			</article><!-- #post-## -->
			
		<?php endwhile; ?>
	</div><!-- .site-main end-->

	<?php get_sidebar(); ?>
	<div class="clearfix"></div>

</div><!-- .container end -->


<?php get_footer(); ?>
