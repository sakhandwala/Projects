$(document).ready(function () {
    $("#slideshow img:first").addClass("active");
    setInterval("slideshow()", 5000);
});

function slideshow() {
    var $active = $("#slideshow .active");
    var $next = ($("#slideshow .active").next().length > 0) ? $("#slideshow .active").next() : $("#slideshow img:first");

    $active.fadeOut(400, function () {
        $active.removeClass("active");
        $next.fadeIn(400).addClass("active");
    });
}