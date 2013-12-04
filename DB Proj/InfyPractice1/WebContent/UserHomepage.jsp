<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #FFCC66">

<f:view>
<h:graphicImage value="resources/images/wt3.jpg"></h:graphicImage>
<h1>Welcome to Konak Hotel Booking User Page:</h1>
<h3>No Values to be left blank!</h3>
<h:form id ="form0">
		<table>
		<tr>
		<td><h:outputLabel id ="lblcountry" value="Country(eg-New Zealand):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtcountry" value="#{testing.country}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtcountry"></h:message>
		</td>
		<tr>
		<td><h:outputLabel id = "lblcheckIn" value= "Check-In Date (eg-YYYY-MM-DD)"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtstart" value="#{testing.start_date}" required="true" requiredMessage="Please Fill">
		</h:inputText>
		<h:message for="txtstart"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblcheckout" value="Check-Out Date (eg-YYYY-MM-DD):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtend" value="#{testing.end_date}" required="true" requiredMessage="Please Fill">
		</h:inputText>
		<h:message for="txtend"></h:message>
		</td>
		<tr>
		<tr>
		<td><h:outputLabel id ="lblRooms" value="Rooms To Book:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtroombook" value="#{testing.no_of_rooms}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtroombook"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblAdults" value="Number of Adults:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtAdults" value="#{testing.adults}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtAdults"></h:message>
		</td>
		</tr>  
		<tr>
		<td><h:outputLabel id ="lblChildren" value="Number of Children:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtChildren" value="#{testing.children}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtChildren"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblminprice" value="Minimum Price:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtminprice" value="#{testing.minprice}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtminprice"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblmaxprice" value="Maximum Price:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtmaxprice" value="#{testing.maxprice}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtmaxprice"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblminstar" value="Minimum Star (eg-1):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtminstar" value="#{testing.minstar}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtminstar"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblmaxstar" value="Maximum Star (eg-5):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtmaxstar" value="#{testing.maxstar}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtmaxstar"></h:message>
		</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		<td><h:commandButton id="submit" type="submit" value="submit" action="#{testing.getdata}"></h:commandButton>
		<h:commandButton id="reset" type="reset" value="reset"></h:commandButton>
		</td>
		</tr>
		</table>
	
	<h:outputLink value= "DisplayBooking.jsp">Booking History</h:outputLink><br>
	<h:outputLink value="TravelPlan.jsp">Plan your complete Booking</h:outputLink><br>
	<h:outputLink value="Reviews.jsp">Been to an hotel! Post your reviews</h:outputLink><br>
	<h:commandLink action="#{logout.logout}">Logout</h:commandLink>
		</h:form>	
</f:view>
</body>
</html>