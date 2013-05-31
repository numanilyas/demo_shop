$(document).ready(function(){
  $('#imagesDiv img')
    .wrap('<span style="display:inline-block"></span>')
    .css('display', 'block')
    .parent()
    .zoom();
});