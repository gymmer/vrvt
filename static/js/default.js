$(function(){
	// 一级菜单鼠标悬停
	$('#menu-primary>li').hover(
		function(){
			$(this).find('ul.sub-menu').slideDown('fast');
		},
		function(){
			$(this).find('ul.sub-menu').slideUp('fast');
		}
	)
	
	// 若一级菜单下有二级菜单，鼠标呈现箭头 & 禁用鼠标单击
	$('#menu-primary>li:has(".sub-menu")').children('a')
		.mouseenter(function(){
			$(this).css('cursor','default');
		})
		.click(function(event){
			if(event.target == this)
				return false;
		})

	// 为页脚的外部链接添加target=_blank
	$('footer a[href^="http://"]').attr('target','_blank');

	// 页脚上鼠标悬停的动画
	$('.foot-box').hover(
		function(){
			{
				$(this).find('.foot-box-title')
				.stop().animate({
					paddingLeft: '20px'
					},'fast')
				.css('font-weight','bold');
			}
		},
		function(){
			if(!$(this).is(':animated'))
			{
				$(this).find('.foot-box-title')
				.stop().animate({
					paddingLeft:'0'
					},'fast')
				.css('font-weight','normal');
			}
		})
})
