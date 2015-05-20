$(function() {  

  if ($("#memories-page").length > 0) {

    navigator.geolocation.getCurrentPosition(set_coordinates);
    function set_coordinates(obj) {
      console.log(obj.coords.latitude);
      console.log(obj.coords.longitude);
      $('input#memory_latitude').val(obj.coords.latitude);
      $('input#memory_longitude').val(obj.coords.longitude);
    };

    $("form.memory_form").submit(function (event) {
      if ($('input.latitude').val() == "") {
        alert("You do not have a location!");
        event.preventDefault();
      }
    });
  }
});