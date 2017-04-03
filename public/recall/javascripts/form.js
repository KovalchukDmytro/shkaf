$(document).ready(function() {

	var $field = $('.standard_form input, .standard_form textarea');

	$field.focus(function(){
		$(this).parent().find('label').hide();
	});

	$field.blur(function(){
		if(!$(this).val()) 
			$(this).parent().find('label').show();
	});
	$('.standard_form label').click(function(){
		$(this).hide();
		$(this).parent().find('input, textarea').focus();
	});
		
	$field.each(function(){
		if($(this).val()!='') 
			$(this).parent().find('label').hide();
	});

});