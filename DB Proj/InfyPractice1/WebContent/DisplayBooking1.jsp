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
<h2>Hotel Bookings:</h2>
		<h:dataTable border="1" value="#{pay.dr}" var="r1">
			<h:column id="column1">
			<h:outputText value="#{r1.bookingid}"></h:outputText>
				<f:facet name="header">
					<h:outputText value="Booking ID"></h:outputText>
				</f:facet>
			</h:column>
				<h:column id="column2">
			<h:outputText value="#{r1.amount}"></h:outputText>
				<f:facet name="header">
					<h:outputText value="Amount"></h:outputText>
				</f:facet>
			</h:column>
			<h:column id="column3">
			<h:outputText value="#{r1.creditcardNo}"></h:outputText>
				<f:facet name="header">
					<h:outputText value="CreditCard-No"></h:outputText>
				</f:facet>
			</h:column>
			</h:dataTable><br>
			
			<h3> To cancel Booking Please call number- KONAKCANCEL</h3>

			<h:outputLink value="UserHomepage.jsp">HomePage</h:outputLink>
</f:view>
</body>
</html>