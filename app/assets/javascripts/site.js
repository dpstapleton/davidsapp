$(document).on('ready page:load', function(){

	$('.img-zoom').elevateZoom({
		zoomType	: "inner", cursor: "crosshair"

	}); 


$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty( { path: '/assets',
    readOnly: true,
    score: function() { return $(this).attr('data-score');}
  });
});