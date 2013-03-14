jQuery(document).ready(function($) {

	$('#slider').bjqs({
		animtype    : 'fade',
		height      : 400,
		width       : 980,
		responsive  : false
	});

});

jQuery(document).ready(function($) {

	var next = $('.next a');
		 prev = $('.prev a');
		 ul = $('#pop');
	next.show();
	
	next.click(function() {
		$(this).hide();
		ul.fadeOut(500).animate({marginLeft: -513}, 500, function() {
			prev.show();
		}).fadeIn(500);
	})
	
	prev.click(function() {
		$(this).hide();
		ul.fadeOut(500).animate({marginLeft: 0}, 500, function() {
			next.show();
		}).fadeIn(500);
	})

});