// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
//

$(document).on('ready', function(){
	$(document).on('click','.test', function(){
		$('.my_form').css('visible', 'true')
	})
});
