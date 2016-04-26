// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .


$(function(){ $(document).foundation(); 
var colors = ["blue", "pink", "green"]
var color = colors[Math.floor(Math.random()*colors.length)]

  $('.profile-card').hover(function(){
    $(this).css("background-color",color);
    $(this).find("h2").removeClass('hidden')
  }, function(){ 
    $(this).css("background-color", "white")
    $(this).find("h2").addClass('hidden')
  });
});




