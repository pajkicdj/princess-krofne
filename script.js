$(document).ready(function() {
	$('.nb').click(function() {
		$(this).toggleClass('bought');
	});
	$('.pictures').click(function() {
		$(this).toggleClass('main');
	});
	$('.smallmain').click(function() {
		$(this).toggleClass('main');
	});
	$('li').click(function() {
		$(this).toggleClass('main');
	});
	$('.np').click(function() {
		$('.sp').toggleClass('spp');
		$('.pictures').toggleClass('gone');
		$('.rp').toggleClass('rpp');
		$('li').toggleClass('norm');
	});
});