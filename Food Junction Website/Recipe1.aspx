<%@ Page Language="C#" %>

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>
<script runat="server">
    
    protected void displayRecipe(object sender, EventArgs e)
    {
        String value = DropDownList1.SelectedItem.Text;
        String dropid = Convert.ToString(DropDownList1.SelectedValue);
        String url = "../Data/Main.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath(url));

        XmlNode root = doc.DocumentElement;
        XmlNodeList recipe = root.SelectNodes("recipe");
        String sid = "";

        for (int i = 0; i < recipe.Count; i++)
        {
            XmlNode n = recipe[i];
            sid = n.Attributes["id"].Value;
            String id = Convert.ToString(sid);

            if (id == dropid)
            {
                name.Text = "Name: " + "  " + n.SelectSingleNode("name").ChildNodes[0].Value;
                photo.ImageUrl = n.SelectSingleNode("image").ChildNodes[0].Value;
                type.Text = "Type: " + "   " + n.SelectSingleNode("type").ChildNodes[0].Value;
                time.Text = "Preparation Time: " + "  " + n.SelectSingleNode("preparation-time").ChildNodes[0].Value;
                ingredients.Text = "Ingredients: " + "  " + n.SelectSingleNode("ingredients").ChildNodes[0].Value;
                steps.Text = "Steps: " + "  " + n.SelectSingleNode("steps").ChildNodes[0].Value;
                calories.Text = "Calories: " + "  " + n.SelectSingleNode("calories").ChildNodes[0].Value;

            }

            if (value == "----------------Select Recipe----------------")
            {
                info.Visible = false;
            }
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipes</title>
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0" />
    <link rel="Shortcut Icon" href="../images/Fd.ico" />
    <script type="text/javascript" src="JS Files/Recipe.js"></script>
    <link rel="Stylesheet" type="text/css" href="CSS Files/Recipe.css" />
</head>
<body>
    <div id="body-content">
        <!-------- Header Begins ------------->
        <header>
<div class="font-effect-shadow-multiple" id="title">Food Junction</div>

<div class="rounded">
  <ul class="master_navigation">
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
            <div>
                <h1>
                    Select Recipe</h1>
            </div>
            <br />
            <form id="form1" runat="server">
            <div id="dropdown">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="displayRecipe"
                    AutoPostBack="True" DataSourceID="XmlDataSource1" DataTextField="id" DataValueField="id"
                    AppendDataBoundItems="True" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus">
                    <asp:ListItem Text="<----------------Select Recipe---------------->" Value="0" Selected="True" />
                </asp:DropDownList>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Data/Main.xml">
                </asp:XmlDataSource>
            </div>
            <br />
            <br />
            <div id="info" runat="server">
                <div id="name_div">
                    <asp:Literal ID="name" runat="server" />
                </div>
                <br />
                <div id="image">
                    <asp:Image ID="photo" CssClass="photo" runat="server" />
                </div>
                <br />
                <br />
                <div id="type_div">
                    <asp:Literal ID="type" runat="server" />
                </div>
                <br />
                <div id="time_div">
                    <asp:Literal ID="time" runat="server" />
                </div>
                <br />
                <div id="ingredients_div">
                    <asp:Literal ID="ingredients" runat="server" />
                </div>
                <br />
                <div id="steps_div">
                    <asp:Literal ID="steps" runat="server" />
                </div>
                <br />
                <div id="calories_div">
                    <asp:Literal ID="calories" runat="server" />
                </div>
            </div>
            </form>
            <br />
            <br />
            <!--------Footer Begins--------->
            <div class="wrap-footer">
                <hr />
                <footer>
		<div class="wrapfooter">
		<p><b style="color:Black; font-size:75%">Copyright © 2014 Sahil Khandwala | All Rights Reserved</b></p>
		</div>
	</footer>
            </div>
            <!--------Footer Ends----------->
        </div>
    </div>
</body>
</html>
