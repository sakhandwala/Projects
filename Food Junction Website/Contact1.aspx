<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0" />
    <title>Contact Us</title>
    <link rel="Shortcut Icon" href="../images/Fd.ico" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple" />
    <link rel="Stylesheet" type="text/css" href="CSS Files/Contact_Us.css" />
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
            <div id="address">
                <h1>
                    Food Junction:</h1>
                <br />
                75 St. Alphonsus Street,
                <br />
                Boston, MA, 02120
                <br />
                Contact No: +1 617 9338 9547
                <br />
                Email: skhandwala1@gmail.com
            </div>
            <div id="map_wrapper">
                <iframe id="map" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=75+St+Alphonsus+St,+Boston,+MA&amp;aq=0&amp;oq=75&amp;sll=53.388886,-2.354726&amp;sspn=0.029023,0.084543&amp;ie=UTF8&amp;hq=&amp;hnear=75+St+Alphonsus+St,+Boston,+Suffolk,+Massachusetts+02120&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed">
                </iframe>
            </div>
            <!--------Footer Begins--------->
            <div class="wrap-footer">
                <footer>
		<div class="wrapfooter">
        <hr />
		<p><b style="color:Black; font-size:75%">Copyright © 2014 Sahil Khandwala | All Rights Reserved</b></p>
		</div>
	</footer>
            </div>
            <!--------Footer Ends----------->
        </div>
    </div>
</body>
</html>
