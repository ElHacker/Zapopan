$(document).ready ->
  slider = $(".bxslider").bxSlider(
    controls: false
    pager: false
  )
  $(".tag").on "click", (event) ->
    event.preventDefault()
    $this = $(this)
    tagName = $this.text()
    prevMsg = $("#msg").text()
    tagMsg = ""
    if prevMsg is `undefined` or prevMsg is ""
      tagMsg = tagName + " + "
    else
      tagMsg = prevMsg + tagName
    $("#msg").text tagMsg
    slider.goToNextSlide()

