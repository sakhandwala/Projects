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
<h1>Forgot Password</h1>
<h:form id ="form3">
		<table>
		<tr>
		<td><h:outputLabel id ="lbluserID" value="User Id:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtUserName" value="#{userForgot.username}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtUserName"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblSecretq" value="Secret Question:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtSecretquestion" value="#{userForgot.secretq}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtSecretquestion"></h:message>
		</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		<td><h:commandButton id="submit" type="submit" value="submit" action="#{userForgot.displaypwd }"></h:commandButton>
		</td>
		</tr>
		</table><br>Your Password is : <h:outputText value="#{userForgot.password}"></h:outputText>
		</h:form>
		<h:outputLink value="Login.jsp">Login</h:outputLink>
</f:view>
</body>
</html>