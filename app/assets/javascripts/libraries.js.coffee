$(document).ready () ->
  codeAddress = (name, address) ->
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

        content = "<table style='width:300px;'><tr><td><b>#{name}</b></td></tr><tr><td>#{address}</td></tr></table>"
        infoWindow = new google.maps.InfoWindow({content:content}).open(map, marker)

  library_profile = $('.library-profile').data()
  codeAddress(library_profile.name, library_profile.address)
