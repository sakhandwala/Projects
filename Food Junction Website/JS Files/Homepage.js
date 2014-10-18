// Used jQuery's FadeIn and FadeOut function 

$("document").ready(function () {

    $("#section2").hide()
    $("#click").click(function () {
        $("#outersection").fadeOut(800);
        $("#section2").fadeIn(800);
    });

});