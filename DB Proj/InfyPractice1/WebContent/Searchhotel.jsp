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
<h1>Hotel Search Results:</h1>
<h:dataTable border="1" value="#{testing.hotelList}" var="hot">
			<h:column id="Name">
				<f:facet name="header">
					<h:outputText value="Name"></h:outputText>
				</f:facet>
				<h:outputText value="#{hot.name}"></h:outputText>
			</h:column>
			<h:column id="column2">
				<f:facet name="header">
					<h:outputText value="Image"></h:outputText>
				</f:facet>
				<h:graphicImage url="#{hot.imageurl}"></h:graphicImage>
			</h:column>
			<h:column id="column3">
				<f:facet name="header">
					<h:outputText value="Complete Package in USD"></h:outputText>
				</f:facet>
				<h:outputText value="#{hot.price}"></h:outputText>
			</h:column>
			<h:column id="column4">
				<f:facet name="header">
					<h:outputText value="Address"></h:outputText>
				</f:facet>
				<h:outputText value="#{hot.address}"></h:outputText>
			</h:column>
			<h:column id="column5">
				<f:facet name="header">
					<h:outputText value="Province Name"></h:outputText>
				</f:facet>
				<h:outputText value="#{hot.province}"></h:outputText>
			</h:column>
			
			<h:column id="column7">
				<f:facet name="header">
					<h:outputText value="Star Rating of Hotel"></h:outputText>
				</f:facet>
				<h:outputText value="#{hot.star_rating}"></h:outputText>
			</h:column>
			
		</h:dataTable>
		<h2>In order to book, please register first:</h2>
		<h:outputLink value="Registration.jsp">Register</h:outputLink><br>
		<h:outputLink value="Login.jsp">Login In</h:outputLink>
</f:view>
</body>
</html>