$(function () {
    $('#usersnav ul li a').on('click', function (e) {

        // We are preventing the default href value from loading by using e.preventDefault
        e.preventDefault();
        var htmlString = '<ol id="videoslisting">';
        var channelname = $(this).attr('href').substring(1);

        // Querying youtube with the channel name
        var ytapiurl = 'http://gdata.youtube.com/feeds/api/users/' + channelname + '/uploads?alt=json&max-results=10';

        $.getJSON(ytapiurl, function (data) {
            //Looping through all the results
            //We are adding the data into different variables 
            $.each(data.feed.entry, function (i, item) {
                var title = item['title']['$t'];
                var videoid = item['id']['$t'];
                var thumbimg = item['media$group']['media$thumbnail'][0]['url'];

                var ytlink = item['media$group']['media$player'][0]['url'];
                htmlString += '<li class="clearfix"><h2>' + title + '</h2>';
                htmlString += '</br><div class="videothumb"><a href="' + ytlink + '" target="_blank"><img src="' + thumbimg + '" width="48%" height="360"></a></br></div>';

            });

            //Appending the data to the videos div 
            $('#videos').html(htmlString + "</ol>");
        }); // end json parsing
    }); // end click event handler


});
   