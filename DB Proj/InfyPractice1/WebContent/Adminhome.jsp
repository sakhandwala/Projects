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
<h1>Admin HomePage:</h1>
<h:form id="form10">
<table>
<tr>
<td>
<h:outputLink value="DeleteUser.jsp" >Delete User</h:outputLink>
</td>
</tr>
<tr>
<td>
<h:outputLink value="DeleteReview.jsp">Delete Review</h:outputLink>
</td>
</tr>
<tr>
<td>
<h:outputLink value="AdminBooking.jsp">Delete Booking</h:outputLink>
</td>
</tr>
<tr>
<td>
<h:commandLink action="#{logout.logout}">Logout</h:commandLink>
</td>
</tr>
</table>
	</h:form>
	</f:view>
</body>
</html>