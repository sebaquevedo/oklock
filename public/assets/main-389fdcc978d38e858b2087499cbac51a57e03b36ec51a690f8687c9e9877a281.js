"use strict";jQuery(document).on("ready",function(){function e(){jQuery(".menu-item-has-children").prepend('<span class="tg-dropdowarrow"><i class="lnr lnr-chevron-right"></i></span>'),jQuery(".menu-item-has-children span").on("click",function(){jQuery(this).next().next().slideToggle(300),jQuery(this).parent(".menu-item-has-children").toggleClass("tg-open")})}function t(e){var t=e.item.count-1,a=Math.round(e.item.index-e.item.count/2-.5);a<0&&(a=t),a>t&&(a=0),u.find(".owl-item").removeClass("current").eq(a).addClass("current");var r=u.find(".owl-item.active").length-1,o=u.find(".owl-item.active").first().index(),n=u.find(".owl-item.active").last().index(),i=jQuery("#tg-testimonialnavigationslider .owl-item.current figure img").attr("src");jQuery(".tg-clientlargedp").find("img").attr("src",i),a>n&&u.data("owl.carousel").to(a,100,!0),a<o&&u.data("owl.carousel").to(a-r,100,!0)}function a(e){if(d){var t=e.item.index;s.data("owl.carousel").to(t,100,!0)}}function r(){jQuery(".tg-feedback").slice(0,3).show(),jQuery(".tg-btnloadmore").on("click",function(e){e.preventDefault(),jQuery(".tg-feedback:hidden").slice(0,3).slideDown(),0==jQuery(".tg-feedback:hidden").length&&jQuery(".tg-btnloadmore").fadeOut("slow"),jQuery("html,body").animate({scrollTop:jQuery(this).offset().top-30},1500)})}function o(){jQuery(".tg-btnnext").on("click",function(){jQuery(".tg-current").removeClass("tg-current").hide().next().show().addClass("tg-current"),jQuery(".tg-formprogressbar li.tg-active").next().addClass("tg-active"),jQuery(".tg-formprogressbar")}),jQuery(".tg-btnprevious").on("click",function(){jQuery(".tg-current").removeClass("tg-current").hide().prev().show().addClass("tg-current"),jQuery(".tg-formprogressbar li.tg-active").removeClass("tg-active").prev().addClass("tg-active")})}function n(){var e=new Date,t=e.getDay();t=t>0?t-1:6,$(".tg-widgetbusinesshours .tg-widgetcontent ul li").eq(t).addClass("tg-currentday")}function i(){jQuery("#tg-filterbysalary").slider({range:!0,min:0,max:500,values:[75,300],slide:function(e,t){jQuery("#tg-salaryamount").val("$"+t.values[0]+" - $"+t.values[1])}}),jQuery("#tg-salaryamount").val("$"+jQuery("#tg-filterbysalary").slider("values",0)+" - $"+jQuery("#tg-filterbysalary").slider("values",1))}function l(){var e=jQuery("#tg-note"),t=new Date(2017,12,31);new Date>t&&(t=(new Date).getTime()+864e6),jQuery("#tg-countdown").countdown({timestamp:t,callback:function(t,a,r,o){var n="";n+=t+" day"+(1==t?"":"s")+", ",n+=a+" hour"+(1==a?"":"s")+", ",n+=r+" minute"+(1==r?"":"s")+" and ",n+=o+" second"+(1==o?"":"s")+" <br />",e.html(n)}})}e(),jQuery(".tg-themescrollbar, .tg-emailnavscroll").mCustomScrollbar({axis:"y"}),jQuery(".tg-horizontalthemescrollbar").mCustomScrollbar({axis:"x"}),jQuery(".tg-panelcontent").hide(),jQuery(".tg-accordion .tg-accordionheading:first").addClass("tg-active").next().slideDown("slow"),jQuery(".tg-accordion .tg-accordionheading").on("click",function(){jQuery(this).next().is(":hidden")&&(jQuery(".tg-accordion .tg-accordionheading").removeClass("tg-active").next().slideUp("slow"),jQuery(this).toggleClass("tg-active").next().slideDown("slow"))}),jQuery("#tg-featuredprofileslider").owlCarousel({items:1,nav:!0,loop:!0,autoplay:!1,smartSpeed:450,navClass:["tg-btnprev","tg-btnnext"],animateOut:"fadeOut",animateIn:"fadeIn",navContainerClass:"tg-featuredprofilesbtns",navText:['<span><em>prev</em><i class="fa fa-angle-left"></i></span>','<span><i class="fa fa-angle-right"></i><em>next</em></span>']});var s=jQuery("#tg-testimonialcontentslider"),u=jQuery("#tg-testimonialnavigationslider"),c=5,d=!0;s.owlCarousel({items:1,loop:!0,nav:!1,dots:!1,autoplay:!0,slideSpeed:2e3,responsiveRefreshRate:200,navText:['<svg width="100%" height="100%" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>','<svg width="100%" height="100%" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>']}).on("changed.owl.carousel",t),u.on("initialized.owl.carousel",function(){u.find(".owl-item").eq(0).addClass("current")}).owlCarousel({items:c,dots:!1,nav:!1,margin:5,smartSpeed:200,slideSpeed:500,slideBy:c,responsiveRefreshRate:100}).on("changed.owl.carousel",a),u.on("click",".owl-item",function(e){e.preventDefault();var t=jQuery(this).index();s.data("owl.carousel").to(t,300,!0)}),jQuery("#tg-testimonialnavigationslider .owl-item figure img").on("click",function(){var e=jQuery(this).attr("src");jQuery(".tg-clientlargedp").find("img").attr("src",e)}),jQuery("a[data-rel]").each(function(){jQuery(this).attr("rel",jQuery(this).data("rel"))}),jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({animation_speed:"normal",theme:"dark_square",slideshow:3e3,autoplay_slideshow:!1,social_tools:!1}),jQuery(".tg-oneslideslidershortcode").owlCarousel({loop:!0,margin:0,nav:!0,items:1,navText:['<span class="tg-btnroundsmallprev"><i class="fa fa-angle-left"></i></span>','<span class="tg-btnroundsmallnext"><i class="fa fa-angle-right"></i></span>']}),jQuery(document).on("click",".tg-radiotimeslot .tg-btndelete",function(e){e.preventdefault,jQuery(this).parents(".tg-radiotimeslot").fadeOut(300)}),jQuery("#tg-btnadvancefilters").on("click",function(e){e.preventDefault(),jQuery(".tg-advancedfilters").slideToggle(1e3)}),jQuery("ul.tg-companycontactinfo li").on("click","span",function(){jQuery(this).find("em").text(jQuery(this).data("last"))}),jQuery('[data-toggle="tooltip"]').tooltip(),jQuery("#tg-datepicker").datepicker({format:"mm/dd/yyyy"}),jQuery(".tg-introduction .tg-description").readmore({speed:500,collapsedHeight:140,moreLink:'<a class="tg-btntext" href="#">more...</a>',lessLink:'<a class="tg-btntext" href="#">less...</a>'}),r(),jQuery("#tg-officelocationmap").gmap3({marker:{address:"1600 Elizabeth St, Melbourne, Victoria, Australia",options:{title:"Service Providers",icon:"images/map-marker2.png"}},map:{options:{zoom:16,scrollwheel:!1,disableDoubleClickZoom:!0}}}),o(),jQuery("#tg-locationmap").gmap3({marker:{address:"1600 Elizabeth St, Melbourne, Victoria, Australia",options:{title:"Robert Frost Elementary School",icon:"images/icons/markerseven.png"}},map:{options:{zoom:20,scrollwheel:!1,disableDoubleClickZoom:!0}}}),jQuery("#tg-joblocationmap").gmap3({marker:{address:"1600 Elizabeth St, Melbourne, Victoria, Australia",options:{title:"Robert Frost Elementary School",icon:"images/icons/markertwo.png"}},map:{options:{zoom:18,scrollwheel:!1,disableDoubleClickZoom:!0}}}),n(),i(),jQuery("#geo_distance").slider({range:"min",min:1,max:300,value:50,animate:"slow",orientation:"horizontal",slide:function(e,t){jQuery(".distance-ml span").html(t.value),jQuery(".geo_distance").val(t.value)}}),jQuery(document).on("click",".geodistance",function(){jQuery(".geodistance_range").toggle()}),l(),jQuery(".tg-btntoggle").on("click",function(e){e.preventDefault();var t=jQuery(this);t.parents("li").toggleClass("tg-openmenu"),t.parents("li").find(".tg-emailmenu").slideToggle("slow")}),jQuery(window).scroll(function(){jQuery(this).scrollTop()>350?(jQuery("#tg-updateall").fadeIn(),jQuery("#tg-updateall").addClass("tg-show")):jQuery("#tg-updateall").fadeOut()})}),jQuery(window).load(function(){jQuery(".preloader-outer").delay(2e3).fadeOut(),jQuery(".pins").delay(2e3).fadeOut("slow")});