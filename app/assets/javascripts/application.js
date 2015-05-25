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
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree

// var map;


$(function(){ $(document).foundation();

  var columns = 3,
    setColumns = function() { columns = $( window ).width() > 640 ? 3 : $( window ).width() > 320 ? 2 : 1; };
 
    setColumns();
    $( window ).resize( setColumns );
 
    $( '#list' ).masonry(
    {
      itemSelector: '.item',
      columnWidth:  function( containerWidth ) { return containerWidth / columns; }
    });  

});
