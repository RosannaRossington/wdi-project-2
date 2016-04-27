
$(function(){ $(document).foundation(); 
var colors = ["blue", "pink", "green"]
var color = colors[Math.floor(Math.random()*colors.length)]

  $('.profile-card').hover(function(){
    $(this).css("background-color",color);
    $(this).find("h2").removeClass('hidden')
  }, function(){ 
    $(this).css("background-color", "initial")
    $(this).find("h2").addClass('hidden')
  });
});
