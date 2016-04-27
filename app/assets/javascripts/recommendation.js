$(document).ready(function() {
  $('#new_recommendation').submit(function(event) {
    // prevent default submit
    event.preventDefault();
    console.log("hello")
    // remove submit event handler/listener to prevent infinite loop
    var form = $(this);
    form.off('submit')
    $(".loader-overlay").show();
    form.submit();
  })
})