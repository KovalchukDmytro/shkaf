$(function(){

	$(window).scroll(function(){
		if($(window).scrollTop() > 600) {
			$('#cd-vertical-nav').removeClass('hidden');
			$('.recall_form_wrap').removeClass('hidden');
		} else {
			$('#cd-vertical-nav').addClass('hidden');
			$('.recall_form_wrap').addClass('hidden');
		}
	});

	$('.recall_form_btn').on('click', function() {
		if($(this).parent().hasClass('visible')) {
			$(this).parent().stop().animate({left: -345}, 500).removeClass('visible');
		} else {
			$(this).parent().stop().animate({left: -10}, 500).addClass('visible');
		}
	});

	$("#gallery").carouFredSel({
		circular: true,
		infinite: false,
		auto 	: false,
		prev	: {	
			button	: "#gallery_prev",
			key		: "left"
		},
		next	: { 
			button	: "#gallery_next",
			key		: "right"
		},
		pagination	: "#gallery_pag"
	});

	$(window).scroll(function() {
		$('.animated-fade-in').each(function(){
			var imagePos = $(this).offset().top;
			var topOfWindow = $(window).scrollTop();
			var el = $(this);

			if (imagePos < topOfWindow+400) {
				var delay = $(this).attr('data-delay');
				setTimeout(function(){el.addClass('fadeIn')}, delay);
			}
		});
	});

	$(window).scroll(function() {
		$('.animated-hatch').each(function(){
			var imagePos = $(this).offset().top;
			var topOfWindow = $(window).scrollTop();
			var el = $(this);

			if (imagePos < topOfWindow+400) {
				var delay = $(this).attr('data-delay');
				setTimeout(function(){el.addClass('hatch')}, delay);
			}
		});
	});

	$(window).scroll(function() {
		$('.animated-expand-open').each(function(){
			var imagePos = $(this).offset().top;
			var topOfWindow = $(window).scrollTop();
			var el = $(this);

			if (imagePos < topOfWindow+400) {
				var delay = $(this).attr('data-delay');
				setTimeout(function(){el.addClass('slideRight')}, delay);
			}
		});
	});

	$("input[type='file']").styler();

	$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'', deeplinking: false});

	$.scrollUp({
		scrollText: ''
	});

	$('.popup_link').fancybox({
		maxWidth: 320,
		scrolling: 'auto',
		preload: true,
		openEffect: 'fade',
		openSpeed: 150,
		closeEffect: 'fade',
		closeSpeed: 150
	});

	$('.gallery_btn_wrap').on('click', '.gallery_view_all', function(e){
		e.preventDefault();
		$(this).text('Свернуть').removeClass('gallery_view_all').addClass('view_carousel');

		$('.carousel').animate({
			opacity: 0
		}, 500, function() {
			$(this).addClass('hidden');
			$('.gallery_all').animate({
				opacity: 1}, 500).removeClass('hidden');
		});
	});

	$('.gallery_btn_wrap').on('click', '.view_carousel', function(e){
		e.preventDefault();
		$(this).text('Посмотреть все').removeClass('view_carousel').addClass('gallery_view_all');

		$('.gallery_all').animate({
			opacity: 0
		}, 500, function() {
			$(this).addClass('hidden');

			$('.carousel').animate({
				opacity: 1}, 500).removeClass('hidden');
		});
	});

	//right nav
	var contentSections = $('.cd-section'),
		navigationItems = $('#cd-vertical-nav a, .nav_link');

	updateNavigation();
	$(window).on('scroll', function(){
		updateNavigation();
	});

	navigationItems.on('click', function(event){
		event.preventDefault();
		smoothScroll($(this.hash));
	});

	$('.cd-scroll-down').on('click', function(event){
		event.preventDefault();
		smoothScroll($(this.hash));
	});

	$('.touch .cd-nav-trigger').on('click', function(){
		$('.touch #cd-vertical-nav').toggleClass('open');
	});

	$('.touch #cd-vertical-nav a').on('click', function(){
		$('.touch #cd-vertical-nav').removeClass('open');
	});

	function updateNavigation() {
		contentSections.each(function(){
			$this = $(this);
			var activeSection = $('#cd-vertical-nav a[href="#'+$this.attr('id')+'"]').data('number') - 1;
			if ( ( $this.offset().top - $(window).height()/2 < $(window).scrollTop() ) && ( $this.offset().top + $this.height() - $(window).height()/2 > $(window).scrollTop() ) ) {
				navigationItems.eq(activeSection).addClass('is-selected');
			}else {
				navigationItems.eq(activeSection).removeClass('is-selected');
			}
		});
	}

	function smoothScroll(target) {
		$('body,html').animate({'scrollTop':target.offset().top}, 600);
	}
	//end right nav

	$(window).load(function() {
		$('.constructor').html('<iframe width="1000" height="700" frameborder="0" scrolling="no" src="https://myconstructor.ru/public/iframe/constructor_ae587cfeea5ac21a8f1c1ea51027fef0.html"></iframe>');
	});

});