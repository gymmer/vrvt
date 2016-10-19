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

	<div class="container">
        <div id="slider">
            <ul id="slider-img">
                <li>
                    <a href="#0"><img src="/uploads/img/slide-1.jpg" alt="教育学部2015级本科第一团支部井冈山社会实践圆满结束"></a>
                </li>
                <li>
                    <a href="#0"><img src="/uploads/img/slide-2.jpg" alt="心理学院2016年学术型研究生奖学金实施方案"></a>
                </li>
                <li>
                    <a href="#0"><img src="/uploads/img/slide-3.jpg" alt="心理学院2016年本科生国家奖学金推荐获奖人员公示"></a>
                </li>
                <li>
                    <a href="#0"><img src="/uploads/img/slide-4.jpg" alt="关于开展京籍残疾在校大学生“凌盛阳光天使奖学金”评选活动的通知"></a>
                </li>
                <li>
                    <a href="#0"><img src="/uploads/img/slide-5.jpg" alt="关于“自我的力量-自性、智慧咨商模式”工作坊培训通知"></a>
                </li>
            </ul>
            <div id="slider-btn">
                <div id="prev" class="slider-btn-box"><span>‹</span></div>
                <div id="next" class="slider-btn-box"><span>›</span></div>
            </div>
            <div id="slider-dots"></div>
            <div id="slider-intro"><span></span></div>
        </div><!-- .slider end-->

        <div id="index-tab">
            <div id="tab-title-container">
                <a href="/dynamic/news/"><i class="fa fa-newspaper-o"></i>新闻动态</a>
                <a href="/dynamic/notation/"><i class="fa fa-edit"></i>通知公告</a>
                <a href="/activity/conference/"><i class="fa fa-calendar-minus-o"></i></i>学术会议</a>  
            </div>

            <?php function showPostInTab($cat_ID){
                $totalPostPerTab = 4;
                query_posts( 'showposts='.strval($totalPostPerTab).'&cat='.strval($cat_ID));
                while ( have_posts() ) 
                { 
                    the_post();
                    echo '<div class="tab-panel">';
                        echo '<div class="tab-panel-left">';
                            echo '<a href="'; the_permalink(); echo '">'; 
                                echo '<img src="'; echo catch_first_image(); echo '">';
                            echo '</a>';
                        echo '</div>';
                        echo '<div class="tab-panel-right">';
                            echo '<div class="year">';
                                echo the_time('Y');
                            echo '</div>';
                            echo '<div class="date">';
                                echo the_time('m'); echo '/'; echo the_time('j');
                            echo '</div>';
                            echo '<div class="clearfix"></div>';
                            
                            echo '<a class="title" href="';the_permalink(); echo '">'; the_title(); echo '</a>';
                            the_excerpt();
                        echo '</div>';
                    echo '</div>';
                }
                wp_reset_query();
            }?>
            <div class="tab">
                <?php showPostInTab(5) ?>
            </div>
            <div class="tab">
                <?php showPostInTab(6) ?>
            </div>
            <div class="tab">
                <?php showPostInTab(5) ?>
            </div>
            <div class="clearfix"></div>
            <div>
                <a id="tab-more" href="">更多内容</a>
            </div>
        </div><!-- .index-tab end -->
    </div><!-- .container end-->

<?php get_footer(); ?>
