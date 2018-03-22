# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#Enable right-to-left layout by setting the isRTL option to truein main page
$ ->
  $('pics').imagesLoaded ->
    $('#pics').masonry
        itemSelector: '.box',
        isFitWidth: true