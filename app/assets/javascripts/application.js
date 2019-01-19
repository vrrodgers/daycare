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
          days[i].style.background = "yellow"; 
      }
      if(archived.includes(dayCheck)){
          days[i].style.background = "pink"; 
      }
    }
  };
  events();

})




