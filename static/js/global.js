jQuery.noConflict();
jQuery(function($) {

    console.log("很荣幸能吸引你阅读我的源码！");
    console.log("我是开发这个网站的程序员 :)");
    console.log("搭建本站时，我还只是对前端稍懂的研二学生。");
    console.log("望前辈、大牛、企图攻击本站的黑客们手下留情 :)");
    console.log("如果兴趣，可联系我：");
    console.log("高岩：gaoyan@mail.bnu.edu.cn");

    // 头部搜索的提交事件
    var searchInput = $('.search input[type="text"]');
    $('.submit-search').click(function(event) {
        if (!searchInput.val() || searchInput.val() == searchInput[0].defaultValue) return;
        $('.search').submit();
    });
    // 测试提交事件
    // $('#search').submit(function(event) {
    //     alert('你已提交' + searchInput.val());
    // });

    // 头部搜索的输入框focus/blur
    var originBgColor = searchInput.css('background-color');
    searchInput.focus(function(event) {
        $(this).addClass('input-focus').removeClass('input-blur');
        if ($(this).val() == this.defaultValue) {
            $(this).val("");
        }
    }).blur(function(event) {
        $(this).removeClass('input-focus').addClass('input-blur');
        if ($(this).val() == "") {
            $(this).val(this.defaultValue);
        }
    }).blur();

    // 一级菜单鼠标悬停
    $('#menu-primary>li').hover(
        function() {
            $(this).find('ul.sub-menu').slideDown('fast');
        },
        function() {
            $(this).find('ul.sub-menu').slideUp('fast');
        }
    )

    // 若一级菜单下有二级菜单，鼠标呈现箭头 & 禁用鼠标单击
    $('#menu-primary>li:has(".sub-menu")').children('a')
        .mouseenter(function() {
            $(this).css('cursor', 'default');
        })
        .click(function(event) {
            if (event.target == this)
                return false;
        })

    // 为页脚的外部链接添加target=_blank
    $('footer a[href^="http://"]').attr('target', '_blank');

    // 页脚上鼠标悬停的动画
    $('.foot-box').hover(
        function() {
            {
                $(this).find('.foot-box-title')
                    .stop().animate({
                        paddingLeft: '20px'
                    }, 'fast')
                    .css('font-weight', 'bold');
            }
        },
        function() {
            if (!$(this).is(':animated')) {
                $(this).find('.foot-box-title')
                    .stop().animate({
                        paddingLeft: '0'
                    }, 'fast')
                    .css('font-weight', 'normal');
            }
        })
    
    // 返回顶部  
    function getScrollTop() {
        return document.documentElement.scrollTop + document.body.scrollTop;
    }
    function setScrollTop(value) 
    { 
        if (document.documentElement.scrollTop) 
        { 
            document.documentElement.scrollTop = value; 
        } 
        else 
        { 
            document.body.scrollTop = value; 
        } 
    } 
    // 弹性返回顶部，展现滚动的动画
    var goToTop = $('#go-to-top');
    goToTop.click(function(event) {
        var goTop = setInterval(scrollMove, 12); 
        function scrollMove() 
        { 
            setScrollTop(getScrollTop() / 1.1); 
            if (getScrollTop() < 1) clearInterval(goTop); 
        } 
    });
    // 自动隐藏放回顶部按钮
    $(window).scroll(function(event) {
        getScrollTop()>0 ? goToTop.fadeIn('fast') : goToTop.fadeOut('fast');
    });
})