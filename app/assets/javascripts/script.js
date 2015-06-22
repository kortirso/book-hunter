$(function() {
	$('#dl-menu').dlmenu();
	$('.point').click(function() {
		$("body, html").animate({scrollTop: 0}, 250);
	});
});
