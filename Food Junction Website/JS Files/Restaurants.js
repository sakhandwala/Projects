var flag = false;

$(document).ready(function () {
    // To search even when enter key is pressed
    $("#zipcode").keypress(function (event) {

        if (event.keyCode == 13) {
            sendRequest();
        }
    });
});


// Yelp API Authorization Keys
function sendRequest() {
    var auth = {
        consumerKey: "hN_PeUoVnkWSICh-w0YuaQ",
        consumerSecret: "MeDTD21HFTVpC4eVJsk6O-UO63c",
        accessToken: "YURUsPbR70D8M21VjwMmEmjyqVFBC5db",
        accessTokenSecret: "9q0ecj5VIJuidVs86Oj9hmqK_44",
        serviceProvider: {
            signatureMethod: "HMAC-SHA1"
        }
    };

    // I have fixed the cuisine as Indian
    var terms = 'Indian';
    var near = $("#zipcode").val();
    var limit = 20;
    var offset = 0;

    var accessor = {
        consumerSecret: auth.consumerSecret,
        tokenSecret: auth.accessTokenSecret
    };

    parameters = [];
    parameters.push(['term', terms]);
    parameters.push(['location', near]);
    parameters.push(['callback', 'cb']);
    parameters.push(['oauth_consumer_key', auth.consumerKey]);
    parameters.push(['oauth_consumer_secret', auth.consumerSecret]);
    parameters.push(['oauth_token', auth.accessToken]);
    parameters.push(['oauth_signature_method', 'HMAC-SHA1']);

    var message = {
        'action': 'http://api.yelp.com/v2/search',
        'method': 'GET',
        'parameters': parameters
    };

    //checking if the user has input anything
    if (!near || near == "") {
        alert("Correct ZipCode or Location must be entered");

    }

    OAuth.setTimestampAndNonce(message);
    OAuth.SignatureMethod.sign(message, accessor);

    var parameterMap = OAuth.getParameterMap(message.parameters);
    parameterMap.oauth_signature = OAuth.percentEncode(parameterMap.oauth_signature)

    // Makes an ajax call to fetch the relevant data based on the parameterMap and the url.

    $.ajax({
        'type': "POST",
        'url': message.action,
        'data': parameterMap,
        'cache': true,
        'async': false,
        'dataType': 'jsonp',
        'jsonpCallback': 'cb',
        'success': function (data, textStats, XMLHttpRequest) {
            // Appending all the data in this variable
            var y = "";
            for (var i = 0; i < data.businesses.length; i++) {
                flag = true;

                y += '<div>';
                y += '<br/><b>Name:</b><span>' + data.businesses[i].name + '</span><p></p>';
                y += '<b>Rating </b><span><img src=' + data.businesses[i].rating_img_url + ' alt="" /></span>';
                y += '<br/><b>Review Count:</b> <span>' + data.businesses[i].review_count + '</span><p>';
                y += '<img src=' + data.businesses[i].image_url + ' alt="" height=15% width=17%/><br /><p></p>';
                var phone = data.businesses[i].phone;
                var address = data.businesses[i].location.display_address;
                if (phone != undefined) {
                    y += '<b>Phone No:</b> <span>' + data.businesses[i].phone + '</span>';
                    y += '<br/><b>Address:</b> <span>' + data.businesses[i].location.address + '</span>';
                    y += '<br/><b><a href=' + data.businesses[i].url + ' target="blank">Read Reviews</a></span>';

                }
                y += '</div>';
                y += '<br /><br /><br />';
            }
            // I am displaying the Yelp's image here
            var cnt = ' <div><b>Search Powered by </b>&nbsp&nbsp<img src="http://dentainment.com/wp-content/uploads/2012/08/yelp_logo.jpg" title = "Yelp" height="35" width="55" /></div><br /><br />';
            y = '<br /><br />' + cnt + y;
            $("#content1").html(y);
        }

    });

    // If no data is found within this timelimit, I am issuing an alert box
    setTimeout(function () {
        if (!flag) { alert("No data available for this location"); }
    }, 2000);
};