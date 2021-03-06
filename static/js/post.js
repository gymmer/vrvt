jQuery.noConflict();
jQuery(function($) {

    /**
     * 侧边栏
     */
    // 提取url最后一个斜杠的内容，称之为slug
    var getSlug = function(url) {
        var temp = url.split('/');
        return temp[temp.length - 1]
    }

    // 根据slug，在侧边栏显示父亲菜单、兄弟菜单的名称
    var showSiblingMenuBySlug = function(slug) {
        $('nav').find('li').each(function() {

            var menuSlug = getSlug($(this).children('a').attr('href'));
            if (menuSlug == slug) {
                // 显示父亲菜单的名称
                var faIcon = '<i class="fa fa-sitemap"></i>';
                var linkText = $(this).parent().siblings('a').text();
                $('#sidebar-pare-menu').html(faIcon + (linkText ? linkText : "导航"));

                // 显示兄弟菜单的名称
                var html = '<ul>';
                $(this).parent().children('li').each(function() {
                    html += ('<li>' + $(this).html() + '</li>');
                });
                html += '</ul>'
                $('#sidebar-sub-menu').html(html);
            }
        })
    }

    // 根据slug，将侧边栏对应项特殊显示(鼠标hover)
    var highlighCurrentItemBySlug = function(slug) {
        $('#sidebar-sub-menu').find('a').each(function() {

            if (getSlug($(this).attr('href')) == slug) {
                $(this).addClass('highlight').siblings().removeClass('highlight');
            }
        })
    }

    var currentSlug = getSlug(window.location.href);

    // 当前页是文章或分页
    // 文章或分页总是以数字结尾的,即currentSlug可以转换为Number型
    if (Number(currentSlug)) {
        if ($('article').size()>0){
            // 文章页总是有<article>标签，其属性类似于：
            // <article id="post-105" class="post-105 post stauts-publish category-news">
            // 可以看出，该文章所属的分类目录，隐含在class属性中
            // 接下来提取出分类目录的slug，即上例中的news
            var className = $('article').attr('class').split(' ');
            for (var i = 0; i < className.length; i++) {
                if (className[i].indexOf("category") != -1) {
                    // 这时候，className[i] == 'category-news'
                    // 将currentSlug重新指向该文章所属的分类目录
                    currentSlug = className[i].split('-').pop();
                }
            }            
        }else{
            // 分页的url类似于：
            // http://localhost:8000/archives/category/news/page/2
            // 可以看出，真正的slug是news
            // 接下来提取slug
            var temp = window.location.href.split('/');
            currentSlug = temp[temp.length-3]
        }
    }

    showSiblingMenuBySlug(currentSlug);
    highlighCurrentItemBySlug(currentSlug);

    // 侧边栏如果是一级菜单，则点击该菜单项，应链接到第一个子菜单
    $('#sidebar-sub-menu>ul>li:has(".sub-menu")').children('a')
        .click(function() {
            var url = $(this).siblings('.sub-menu').find('>li>a:eq(0)').attr("href");
            window.location.href = url;
            return false;
        })

    /**
     * 个人简介
     */
    // 个人简介不显示文章发布时间、上一篇/下一篇
    $('main').has('.person-info').find('.post-time').hide()
        .end().find('.post-navigation').hide();
})
