<%@ Page Language="C#" %>
<html>
<head>
    <title>Restaurant Search</title>
    <link rel="Shortcut Icon" href="../images/Fd.ico" />
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/oauth.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/sha1.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple" />
    <script type="text/javascript" src="JS Files/Restaurants.js"></script>
    <link rel="Stylesheet" type="text/css" href="CSS Files/Restaurants.css" />
</head>
<body>
    <div id="body-content">
        <!-------- Header Begins ------------->
        <header>
<div class="font-effect-shadow-multiple" id="title">Food Junction</div>

<div class="rounded">  <ul class="master_navigation">
    <li><a href="Homepage1.aspx">Home</a></li>
    <li><a href="Recipe1.aspx">Recipes</a></li>
    <li><a href="Tips1.aspx">Cooking Tips</a></li>
    <li><a href="Videos1.aspx">Recipe Videos</a></li>
    <li><a href="Restaurants1.aspx">Restaurant Search</a></li>
    <li><a href="Contact1.aspx">Contact Us</a></li>
  </ul>
  </div>

</header>
        <!-------- Header Ends --------------->
        <div id="content">
            <p class="course">
            </p>
            <h1>
                Enter Location to Search for Indian Restaurants</h1>
            <br />
            <input type="text" id="zipcode" size="30" />
            <input type="button" id="searchButton" value="Submit" onclick="sendRequest();" />
            <div>
            </div>
            <div id="content1">
            </div>
            <br />
            <br />
            <!--------Footer Begins--------->
            <div class="wrap-footer">
                <hr />
                <footer>
		<div class="wrapfooter">
		<p><b>Copyright © 2014 Sahil Khandwala | All Rights Reserved</b></p>
		</div>
	</footer>
            </div>
            <!--------Footer Ends----------->
        </div>
    </div>
</body>
</html>
