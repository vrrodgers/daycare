// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require jquery.placeholder
//= require main
//= require imagesloaded.pkgd.min
//= require isotope.pkgd.min
//= require social-share-button
//= require cocoon
//= require turbolinks
//= require bootstrap
//= require fullcalendar
//= require moment
//= require daterangepicker
//= require_tree .


$('.carousel').carousel()

document.addEventListener("turbolinks:load", function () {
    
  function events(){
    var days = document.getElementsByClassName('day');
    
    for (let i = 0; i < days.length; i++){
      var check = days[i].innerHTML.replace(/[^0-9]/, '');
      var dayCheck = check.trim();
      console.log(upcoming);
      if(upcoming.includes(dayCheck)){
          days[i].style.backgroundImage = 'url(https://s3-us-west-2.amazonaws.com/v-daycare/uploads/gallery/image/bg_td-upcoming.png)';
      }
      if(archived.includes(dayCheck)){
          days[i].style.backgroundImage = 'url(https://s3-us-west-2.amazonaws.com/v-daycare/uploads/gallery/image/bg_td-archival.png)';
      }
    }
  };
  events();

})

$(function () {

    var $container = $('#masonry-container');

    $container.imagesLoaded(function () {
        $container.masonry({
            itemSelector: '.box',
            columnWidth: 100
        });
    });

    $container.infinitescroll({
            navSelector: '#page-nav', // selector for the paged navigation
            nextSelector: '#page-nav a', // selector for the NEXT link (to page 2)
            itemSelector: '.box', // selector for all items you'll retrieve
            loading: {
                finishedMsg: 'No more pages to load.',
                img: 'http://i.imgur.com/6RMhx.gif'
            }
        },
        // trigger Masonry as a callback
        function (newElements) {
            // hide new items while they are loading
            var $newElems = $(newElements).css({
                opacity: 0
            });
            // ensure that images load before adding to masonry layout
            $newElems.imagesLoaded(function () {
                // show elems now they're ready
                $newElems.animate({
                    opacity: 1
                });
                $container.masonry('appended', $newElems, true);
            });
        }
    );
});




