jQuery.noConflict();
jQuery(function($) {
    // 定义一些常用的变量
    var sliderImg = $('#slider-img');
    var sliderDots = $('#slider-dots').empty();
    var sliderIntro = $('#slider-intro span');
    var imgNum = sliderImg.find('li').length;
    var imgWidth = sliderImg.parent().width();
    var currentImg = 0;
    // 根据图片数量，初始化导航点
    for (var i = 0; i < imgNum; i++) {
        sliderDots.append('<span class="dot"></span>')
    }
    sliderDots.find('span:first-child').addClass('active'); // 第一个导航点处于活动状态
    // 初始化图片标题
    sliderIntro.text(sliderImg.find('img:eq(0)').attr('alt'));

    // 下一张图片
    function slideToNext() {
        // 更新图片
        if (sliderImg.is(':animated')) return false;
        if (currentImg == imgNum - 1) {
            sliderImg.animate({ left: 0 }, 'slow');
            currentImg = 0;
        } else {
            sliderImg.animate({ left: '-=' + imgWidth }, 'slow');
            currentImg++;
        }
        // 更新导航点和标题
        updateDotsAndTitle(currentImg);

    }
    // 上一张图片
    function slideToPrev() {
        // 更新图片
        if (sliderImg.is(':animated')) return false;
        if (currentImg == 0) {
            sliderImg.animate({ left: -(imgNum - 1) * imgWidth }, 'slow');
            currentImg = imgNum - 1;
        } else {
            sliderImg.animate({ left: '+=' + imgWidth }, 'slow');
            currentImg--;
        }
        // 更新导航点和标题
        updateDotsAndTitle(currentImg);
    }
    // 更新导航点和标题
    function updateDotsAndTitle(imgIndex) {
        sliderDots.find('span:eq(' + imgIndex + ')')
            .addClass('active')
            .siblings().removeClass('active');
        var intro = sliderImg.find('img:eq(' + imgIndex + ')').attr('alt');
        sliderIntro.fadeOut('fast', function() {
            $(this).text(intro)
        }).fadeIn('fast');
    }

    // 轮播按钮、导航点点击事件
    $('#next').click(slideToNext);
    $('#prev').click(slideToPrev);
    sliderDots.find('.dot').click(function(event) {
        var targetImg = sliderDots.find('.dot').index($(this));
        if (targetImg == currentImg) return;
        sliderImg.animate({ left: "-=" + (targetImg - currentImg) * imgWidth }, 'slow');
        updateDotsAndTitle(targetImg);
        currentImg = targetImg;
    });

    // 自动轮播
    var timer = setInterval(slideToNext, 3000);
    // 鼠标移到组件上，暂停轮播，显示上一张/下一张
    $('#slider').hover(function() {
        clearInterval(timer);
        if (!$('#prev').is(':animated')) {
            $('#prev').animate({ left: 50 }, 'fast');
        }
        if (!$('#next').is(':animated')) {
            $('#next').animate({ right: 50 }, 'fast');
        }
    }, function() {
        timer = setInterval(slideToNext, 3000);
        if (!$('#prev').is(':animated')) {
            $('#prev').animate({ left: -50 }, 'fast');
        }
        if (!$('#next').is(':animated')) {
            $('#next').animate({ right: -50 }, 'fast');
        }
    });

    /* tab 鼠标悬停时切换。默认选中第一个tab*/
    var tabTitles =  $('#tab-title-container a');
    var tabs = $('.tab');
    tabTitles.mouseenter(function(event) {
        // 切换标题样式
        $(this).addClass('hover').siblings().removeClass('hover');
        // 切换显示的tab
        var currenTabIndex = tabs.index(tabs.filter(':not(:hidden)'));
        var targetTabIndex = tabTitles.index($(this));
        if(currenTabIndex != targetTabIndex){
            tabs.hide().eq(targetTabIndex).fadeIn('fast');
        }
        // 切换更多内容的链接
        $('#tab-more').attr('href', $(this).attr('href'));
    }).eq(0).mouseenter();
})
