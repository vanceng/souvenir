// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require foundation
//= require turbolinks
//= require_tree

// var map;


$(function(){ $(document).foundation();
  
  $( window ).load( function()
  {
    var columns    = 3,
        setColumns = function() { columns = $( window ).width() > 640 ? 3 : $( window ).width() > 320 ? 2 : 1; };
 
    setColumns();
    $( window ).resize( setColumns );
 
    $( '#list' ).masonry(
    {
        itemSelector: '.item',
        columnWidth:  function( containerWidth ) { return containerWidth / columns; }
    });

});
  });

//   function displayMemoryMarker(memoryId) {
//     $.ajax({
//       url: "/api/memory/"+memoryId,
//       success: function(response) {
//         console.log(response);

//         // Create the coordinate of the memory
//         var coords = new google.maps.LatLng(response.latitude, response.longitude);
//         var time = response.created_at
//         var bounds = map.getBounds();
//         bounds.extend(coords);
//         map.fitBounds(bounds);

//         // document.querySelector('.map_box').innerHTML = response.created_at;
//         // $('.map_box').html(response.created_at);

//         // Create and display the map
//         var contentString = '<div id="content">'+
//           '<div id="siteNotice">'+
//           '</div>'+
//           //'<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
//           '<div id="bodyContent">'+
//           '<p class="map_box"><b>'+response.comment+'</b></p>'+
//           '</div>'+
//           '</div>';

//         var infowindow = new google.maps.InfoWindow({
//           content: contentString
//           });

    
//         // Display the markers on the map
      


//         var marker = new google.maps.Marker({
//           position: coords,


//         });
        
//         marker.setMap(map);


//         google.maps.event.addListener(marker, 'click', function() {
//           infowindow.open(map,marker);
//         });

//       }
//     });
//   }

//   var memoryIds = $(".memories").data("memory-ids");
//   // create the map
//   var styles = [
//      {
//         "featureType": "landscape",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "lightness": 65
//             },
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "poi",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "lightness": 51
//             },
//             {
//                 "visibility": "simplified"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "visibility": "simplified"
//             }
//         ]
//     },
//     {
//         "featureType": "road.arterial",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "lightness": 30
//             },
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "road.local",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "lightness": 40
//             },
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "transit",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "visibility": "simplified"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.province",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "labels",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "lightness": -25
//             },
//             {
//                 "saturation": -100
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "geometry",
//         "stylers": [
//             {
//                 "hue": "#ffff00"
//             },
//             {
//                 "lightness": -25
//             },
//             {
//                 "saturation": -97
//             }
//         ]
//     }
//   ];


//   var mapProp = {
//     center: new google.maps.LatLng(49.282022399999995, -123.108199),
//     zoom: 15,
//     mapTypeId:google.maps.MapTypeId.ROADMAP,
//     styles: styles
//   };
//   map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

//   $.each(memoryIds, function(index, memoryId){
//     displayMemoryMarker(memoryId);
//   });



//  });



