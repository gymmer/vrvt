<?php
/**
 * 首页模板，包括：滑动图片、标签页展示区
 */

get_header(); ?>

	<div class="container">
        <div id="slider">
            <ul id="slider-img">

                <?php $maxSlideImgNum = 10; $cats = get_categories(); ?>
                <?php foreach ( $cats as $cat ) { ?>
                    <?php query_posts( 'showposts='.strval($maxSlideImgNum).'&cat='.$cat->cat_ID );?>
                    <?php while ( have_posts() ) { the_post(); ?>
                        <?php if ( has_post_thumbnail() ) { ?>
                            <li>
                                <a href="<?php the_permalink(); ?>" rel="<?php the_title(); ?>" >
                                    <?php the_post_thumbnail(); ?>
                                </a>
                            </li>
                        <?php } ?>
                    <?php } wp_reset_query(); ?>
                <?php } ?>
                
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

            <?php function showPostInTab($cat_ID){
                $maxPostPerTab = 4;
                query_posts( 'showposts='.strval($maxPostPerTab).'&cat='.strval($cat_ID));
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
