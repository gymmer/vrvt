<?php
/**
 * 首页模板，包括：滑动图片、标签页展示区
 */

get_header(); ?>

	<div class="container">
        <div id="slider">
            <ul id="slider-img">

                <?php 
                $maxSlideImgNum = 10;   // 最多显示滑动图片的数量
                $article_array = array(5,6,9,10,11);    // 滑动图片指向文章的分类
                $currSlideImgNum = 0;   // 已经显示的滑动图片数量

                query_posts( array(
                    'post_in'   => $article_array,
                    'showposts' => -1,
                ) );
                while ( have_posts() )
                { 
                    the_post(); 
                    if ( has_post_thumbnail() ) 
                    { ?>
                        <li>
                            <a href="<?php the_permalink(); ?>" rel="<?php the_title(); ?>" >
                                <?php the_post_thumbnail(); ?>
                            </a>
                        </li>
                    <?php 
                        $currSlideImgNum ++;
                        if ($currSlideImgNum>=$maxSlideImgNum)
                        { 
                            break; 
                        }
                    } //结束 if ( has_post_thumbnail() )
                } //结束while
                wp_reset_query(); 
            ?>
                
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
                <a href="/archives/category/news"><i class="fa fa-newspaper-o"></i>新闻动态</a>
                <a href="/archives/category/notation/"><i class="fa fa-edit"></i>通知公告</a>
                <a href="/archives/category/conference/"><i class="fa fa-calendar-minus-o"></i>学术会议</a>  
            </div>
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
