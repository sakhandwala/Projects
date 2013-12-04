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
<h:form id="form34">
<h:graphicImage value="resources/images/wt3.jpg"></h:graphicImage>
<h2>Display all the Hotel Reviews:</h2>
		<h:dataTable border="1" value="#{userReview.dr}" var="r">
			<h:column id="column1">
			<h:outputText value="#{r.review}"></h:outputText>
				<f:facet name="header">
					<h:outputText value="Reviews"></h:outputText>
				</f:facet>
			</h:column></h:dataTable>
			<h:commandLink action="#{logout.logout}">Homepage</h:commandLink>
	</h:form>
	</f:view>
	
</body>
</html>