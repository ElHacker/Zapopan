$(document).ready(function(){
    var slider = $('.bxslider').bxSlider({
        controls: false,
        pager: false
    });
    $(".tag").on('click', function(event) {
        event.preventDefault();
        var $this = $(this);
        var tagName = $this.text();
        var prevMsg = $("#msg").text();
        var tagMsg = "";
        if(prevMsg == undefined || prevMsg == "") {
            tagMsg = tagName + " + ";
        } else {
            tagMsg = prevMsg + tagName;
        }
        $("#msg").text(tagMsg);
        slider.goToNextSlide();
    });
});