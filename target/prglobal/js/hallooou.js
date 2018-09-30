// jQuery to collapse the navbar on scroll
function resetScroll() {
	if($(".navbar").offset().top > 50) {
		$(".navbar-fixed-top").addClass("top-nav-collapse");
		$(".scroll-top").fadeIn('1000', "easeInOutExpo");
	} else {
		$(".navbar-fixed-top").removeClass("top-nav-collapse");
		$(".scroll-top").fadeOut('1000', "easeInOutExpo");
	}
}
$(window).scroll(function() {
	resetScroll();
});
$(function() {
	resetScroll();
});

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
	$('.overlay-menu ul li a,.scroll-top a,.navbar-nav a,footer .link a').bind('click', function(event) {
		var $anchor = $(this);
		$('html, body').stop().animate({
			scrollTop: $($anchor.attr('href')).offset().top
		}, 1500, 'easeInOutExpo');
		$('#overlay').removeClass('open');
	    $('.toggle').find('span').removeClass('fa-close').addClass('fa-navicon');
		event.preventDefault();
	});
});

// WOW.js initialise
// WOW.js uses animate.css to animate/reveal elements.
// Browse the list of animation effects available here-> https://daneden.github.io/animate.css/
$(function() {
	wow = new WOW({
		boxClass: 'wow', // default
		animateClass: 'animated', // default
		offset: 0, // default
		mobile: true, // default
		live: true // default
	})
	wow.init();
});

// jQuery Parallax. More info here-> https://github.com/IanLunn/jQuery-Parallax
$(function() {
	// apply parallax effect only when body has the ".parallax-page" class
	if($('body').hasClass('parallax-page')) {
		$('#parallax-slide').parallax("50%", 0.1);
		$('#products').parallax("50%", 0.1);
		$('#portfolio').parallax("50%", 0.1);
		$('#page-aboutus').parallax("50%", 0.1);
	}
});

// Closes the Responsive Menu on Menu Item Click
$('.overlay-menu ul li a').click(function() {
	$('.button_container:visible').click();
});

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
	$('a.page-scroll').bind('click', function(event) {
		var $anchor = $(this);
		$('html, body').stop().animate({
			scrollTop: $($anchor.attr('href')).offset().top
		}, 1500, 'easeInOutExpo');		
		event.preventDefault();
	});
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
	$('.navbar-toggle:visible').click();
});

//导航栏点击隐藏显示事件
$('.toggle').click(function() {
	$(this).toggleClass('active');
	$(this).find('span').toggleClass('fa-navicon fa-close');
});

//百度地图获取当前用户位置
$(function() {
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398, 39.897445);
	map.centerAndZoom(point, 12);
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r) {
		if(this.getStatus() == BMAP_STATUS_SUCCESS) {
			var point = new BMap.Point(r.point.lng, r.point.lat);
			var gc = new BMap.Geocoder();
			gc.getLocation(point, function(rs) {
				var addComp = rs.addressComponents;
				var mapAddress = addComp.city;
				$('.city').text(mapAddress);
				$('.current-city').show();
			});
		}
	}, {
		enableHighAccuracy: true
	});
});
//主页面 header图片轮播
$(function() {
	var owlIntro = $("#intro-pr");
	owlIntro.owlCarousel({
		items: 1,
		pagination: false,
		autoPlay: true,
		slideSpeed: '5000'
	});
	$('#intro-carousel').find('.owl-wrapper-outer').css('height', '100%');
	$('#intro-carousel').find('.owl-wrapper').css('height', '100%');
	$('#intro-carousel').find('.owl-item').css('height', '100%');
});

// Client testimonials
$(function() {

	var owl = $(".client-testimonials");

	owl.owlCarousel({
		navigation: false, // Show next and prev buttons
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});

});

// Client Slider Carousel
$(function() {
	var client_owl = $(".client-slider");
    client_owl.owlCarousel({
		items: 4, //5 items above 1000px browser width
		itemsDesktop: [1024, 4], //4 items between 1000px and 901px
		itemsDesktopSmall: [900, 3], // betweem 900px and 601px
		itemsTablet: [600, 2], //2 items between 600 and 480
		itemsMobile: [479, 2], //1 item between 480 and 0
		pagination: false, // Show pagination
		navigation: false // Show navigation
	});
});
// Team
$(function() {
	var team_owl = $(".team-project-carousel");
    team_owl.owlCarousel({
		autoPlay: 3000,
		items: 3, //5 items above 1000px browser width
		itemsDesktop: [1024, 4], //4 items between 1000px and 901px
		itemsDesktopSmall: [900, 2], // betweem 900px and 601px
		itemsTablet: [600, 2], //2 items between 600 and 480
		itemsMobile: [479, 1], //1 item between 480 and 0
		pagination: true, // Show pagination
		navigation: false// Show navigation
	});
	$("#team .btn-next").on('click', function() {
        team_owl.trigger('owl.next');
	});
	$("#team .btn-prev").on('click', function() {
        team_owl.trigger('owl.prev');
	})

});
// Recent Project Carousel
$(function() {
	var recent_project_owl = $(".recent-project-carousel");
    recent_project_owl.owlCarousel({
		items: 1, //5 items above 1000px browser width
		itemsDesktop: [1024, 4], //4 items between 1000px and 901px
		itemsDesktopSmall: [900, 2], // betweem 900px and 601px
		itemsTablet: [600, 2], //2 items between 600 and 480
		itemsMobile: [479, 1], //1 item between 480 and 0
		pagination: true, // Show pagination
		navigation: false // Show navigation
	});

	// Custom Navigation Events
	$("#portfolio .btn-next").on('click', function() {
        recent_project_owl.trigger('owl.next');
	});
	$("#portfolio .btn-prev").on('click', function() {
        recent_project_owl.trigger('owl.prev');
	});
	$("#portfolio .table-bordered td").on("click", function() {
		var index = ~~$(this).attr("data-index");
        recent_project_owl.trigger('owl.goTo', index);
	});
});

//业务
$(function() {
	$("#services").on("click", ".services-item[data-target]", function(event, data) {
		var $t = $(this),
			$target = $($t.attr("data-target")),
			$p = $target.closest(".services-proj");
		if($p.is(":hidden")) {
			$p.show();
			setTimeout(function() {
				$p.addClass("in");
			}, 200);
		} else {
			//$p.removeClass("in");
		}
	}).on("click", ".close", function(event, data) {
		var $t = $(this).closest(".services-proj").removeClass("in");
		setTimeout(function() {
			$t.hide();
		}, 200);
	})
});

// Counter
$(function() {

	$('.counter-section').on('inview', function(event, visible, visiblePartX, visiblePartY) {
		if(visible) {
			$(this).find('.timer').each(function() {
				var $this = $(this);
				$({
					Counter: 0
				}).animate({
					Counter: $this.text()
				}, {
					duration: 2000,
					easing: 'swing',
					step: function() {
						$this.text(Math.ceil(this.Counter));
					}
				});
			});
			$(this).off('inview');
		}
	});

});

// Carousel Slider
$(function() {
	interval: 8000 //changes the speed
});


// Lightbox
$(function() {
	$('.popup-gallery').magnificPopup({
		delegate: '.full-project a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
			titleSrc: function(item) {
				return item.el.attr('title') + '<small>by Hallooou</small>';
			}
		}
	});

});

//news
$(function() {
	$("li[data-content='article']").click(function() {
		//$("#news-modal").modal();
		//$("#news-modal .modal-services-content").load($(this).attr("data-href"));
	});
});

//时间转化函数
function getDate0(str){
    if(str!=undefined&&str!=""){
        var oDate = new Date(str);
        year=oDate.getFullYear();
        month = oDate.getMonth()+1;
        month<10?"0"+month:month;
        day = oDate.getDate();
        day<10?"0"+day:day;
        return year+"年"+month+"月"+day+"日";
    }else{
        return "";
    }
}
function getDate1(str){
    if(str!=undefined&&str!="") {
        var oDate = new Date(str);
        year = oDate.getFullYear();
        month = oDate.getMonth() + 1;
        month < 10 ? "0" + month : month;
        day = oDate.getDate();
        day < 10 ? "0" + day : day;
        hour = oDate.getHours();
        minute = oDate.getMinutes();
        second = oDate.getSeconds();
        return year + "年" + month + "月" + day + "日" + " " + hour + ":" + minute + ":" + second;
    }else{
        return "";
    }
}

