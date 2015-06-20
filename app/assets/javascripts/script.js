$(function() {
	$('#dl-menu').dlmenu();
	$('.point').click(function() {
		$('.dl-menu').removeClass('dl-menuopen').addClass('dl-menu-toggle');
		$('.menu-bar button').removeClass('dl-active');
	});
}); 
