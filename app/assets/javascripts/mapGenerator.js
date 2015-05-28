function displayMemoryMarker(item) {
        // Create the coordinate of the memory
        var coords = new google.maps.LatLng(item.latitude, item.longitude);
        var time = item.created_at
        var bounds = map.getBounds();
        bounds.extend(coords);
        map.fitBounds(bounds);

        // document.querySelector('.map_box').innerHTML = response.created_at;
        // $('.map_box').html(response.created_at);

        // Create and display the map
        var contentString = '<div id="content">'+
          '<div id="siteNotice">'+
          '</div>'+
          //'<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
          '<div id="bodyContent">'+
          '<p class="map_box"><b>'+item.comment+'</b></p>'+
          '</div>'+
          '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
          });

    
        // Display the markers on the map
      


        var marker = new google.maps.Marker({
          position: coords,


        });
        
        marker.setMap(map);


        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map,marker);
        });

      }
    // });
  // }

  // var memoryIds = $(".memories").data("memory-ids");


  // create the map
  var styles = [
    {
        "featureType": "all",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#aadd55"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.text",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "labels.text",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#0099dd"
            }
        ]
    }
];
