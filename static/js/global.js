jQuery.noConflict();
jQuery(function($) {

    // 头部搜索的提交事件
    var searchInput = $('#search input[type="text"]');
    $('#search').submit(function(event) {
        alert('你已提交' + searchInput.val());
    });
    $('#submit-search').click(function(event) {
        if (!searchInput.val() || searchInput.val() == searchInput[0].defaultValue) return;
        $('#search').submit();
    });

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
    goToTop();
})

/*
    弹性返回顶部
    页面滚动条处于低端,点击回到顶部，并且隐藏掉
*/
function goToTop() {
    var obj = document.getElementById("go-to-top");

    function getScrollTop() {
        return document.documentElement.scrollTop + document.body.scrollTop;
    }

    function setScrollTop(value) {
        if (document.documentElement.scrollTop) {
            document.documentElement.scrollTop = value;
        } else {
            document.body.scrollTop = value;
        }
    }

    function handleWindowScroll() {
        getScrollTop() > 0 ? obj.style.display = "block" : obj.style.display = "none";
        console.log(obj.style.display)
    }

    window.onscroll = handleWindowScroll;
    obj.onclick = function() {
        var goTop = setInterval(scrollMove, 10);

        function scrollMove() {
            setScrollTop(getScrollTop() / 1.1);
            if (getScrollTop() < 1) clearInterval(goTop);
        }
    }
}