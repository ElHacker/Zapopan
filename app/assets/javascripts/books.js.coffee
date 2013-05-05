# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
$(document).ready ->

  $('#isbn_lookup').on 'ajax:success', (xhr, data, status) ->
    # Insert data into fields
    console.log data
    $('#book_title').val(data.title)



