<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

	<div class="content-container">
        <div id="slider">
            <ul id="slider-img">
                <li>
                    <a href="#0"><img src="/static/img/1.jpg" alt="教育学部2015级本科第一团支部井冈山社会实践圆满结束"></a>
                </li>
                <li>
                    <a href="#0"><img src="/static/img/2.jpg" alt="心理学院2016年学术型研究生奖学金实施方案"></a>
                </li>
                <li>
                    <a href="#0"><img src="/static/img/3.jpg" alt="心理学院2016年本科生国家奖学金推荐获奖人员公示"></a>
                </li>
                <li>
                    <a href="#0"><img src="/static/img/4.jpg" alt="关于开展京籍残疾在校大学生“凌盛阳光天使奖学金”评选活动的通知"></a>
                </li>
                <li>
                    <a href="#0"><img src="/static/img/5.jpg" alt="关于“自我的力量-自性、智慧咨商模式”工作坊培训通知"></a>
                </li>
            </ul>
            <div id="slider-btn">
                <div id="prev" class="slider-btn-box"><span>‹</span></div>
                <div id="next" class="slider-btn-box"><span>›</span></div>
            </div>
            <div id="slider-dots"></div>
            <div id="slider-intro"><span></span></div>
        </div><!-- .slider end-->
	</div><!-- .content-container end-->

<?php get_footer(); ?>
