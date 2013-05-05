$(document).ready( () ->

  codeAddress = (address) ->
    geocoder = new google.maps.Geocoder()
    geocoder.geocode
      address: address
    , (results, status) ->
      console.log status
      if status is google.maps.GeocoderStatus.OK
        myOptions =
          zoom: 14
          center: results[0].geometry.location
          mapTypeId: google.maps.MapTypeId.ROADMAP

        map = new google.maps.Map(document.getElementById("map-canvas"), myOptions)
        marker = new google.maps.Marker(
          map: map
          position: results[0].geometry.location
        )

  $(".library-item").on "click", (event) ->
    event.preventDefault()
    address = $(this).data("address")
    codeAddress(address)
)
