
  function getUserMemories(userId) {
    var url = "http://api.localhost.com:3000/memories?user_id=" + userId ;
    
    $.ajax({     
      type: "GET",
      url: url,
      contentType: "application/json",
      success: function(data) {
        if(data.length > 0) {
          displayUserMemories(data);
        } else {
          displayNoMemories();
        }
      },
      error: function(jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown);
      }
    });
  }

  function displayNoMemories(noData) {
    var tile = $('#memory-list');
    tile.append('<div class = "memory-tile">' + noMemoryInfo() + '</div></br>');
  }

  // This is displaying the User's Edit Menu on each Memory Tile

  function displayUserMemories(data) {
    var tile = $('#memory-list');
    $.each(data, function(i, item) {
      tile.append('<div class = "memory-tile" id = "memory-tile' + item.id + '">' + editMenu(item) + memoryInfo(item) + '</div></br>');
      displayMemoryMarker(item);
    });
  }

  function editMenu(item) {
    var memoryId = item.id; 
    return '<div id = "memories-edit-menu"><a class = "memories-menu" href="#" data-dropdown="hover' + memoryId + '" data-options="is_hover:true; hover_timeout:5000">edit menu</a> <ul id="hover' + memoryId + '" class="f-dropdown" data-dropdown-content> \
        <li><a href="#" onclick= "event.preventDefault(); editMemoryFunc(' + memoryId + ');">Edit</a></li> \
        <li><a href="#" onclick= "event.preventDefault(); deleteMemoryFunc(' + memoryId + ');">Delete</a></li> <li> \
        <a href="#">Make Private</a></li> \
      </ul></div>';
  }

  function memoryInfo(item) {
    return ' <h5>' + item.title + '</h5><h6><a href = "https://www.google.com/maps?q&layer=c&cbll=' + item.latitude + ',' + item.longitude + '&cbp=11,0,0,0,0" target= "_blank">relive it</a></h6><div class= "memory-description"><h4>"' + item.description + '"</h4></div> <img id= "memory-image" src=' + '//gifrific.com/wp-content/uploads/2014/02/Michelle-Tanner-You-Got-it-Dude-Full-House.gif> ' + '</div>';
  }

  function noMemoryInfo() {
    return ' <h5>the moment is now</h5><div class= "memory-description"><h4>"create your first souvenir"</h4></div> <img id= "memory-image" src=' + '//gifrific.com/wp-content/uploads/2014/02/Michelle-Tanner-You-Got-it-Dude-Full-House.gif> ' + '</div>';
  }

  function deleteMemoryFunc(memoryId) {

    var url = "http://api.localhost.com:3000/users/" + userId + "/memories/" + memoryId;
   
    $.ajax({   
    url: url,  
    type: "post",
    dataType: "json",
    data: {"_method": "delete"},
    success: function(data) {
      var deletedItem = $("#memory-tile" + memoryId);
      deletedItem.delay(500).fadeOut(500, function() {
        deletedItem.remove();
      });
    },
    error: function(jqXHR, textStatus, errorThrown) {
      console.log(textStatus, errorThrown);
    }
    });
  }

