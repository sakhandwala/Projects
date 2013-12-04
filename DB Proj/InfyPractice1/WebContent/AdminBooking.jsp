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
<h1>Delete Booking</h1>
<h:form id ="form5">
		<table>
		<tr>
		<td><h:outputLabel id ="lblBookId" value="Booking Id:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtCancelBooking" value="#{cancelBooking.bookingid}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtCancelBooking"></h:message>
		</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		<td><h:commandButton id="submit" type="submit" value="submit" action="#{cancelBooking.deletebooking}"></h:commandButton>
		</td>
		</tr>
		</table>
</h:form>
</f:view>
</body>
</html>