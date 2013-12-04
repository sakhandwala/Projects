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
<h1>User Registration Form:</h1>
<h3>No values to be left blank!</h3>
		<h:form id ="form1">
		<table>
		<tr>
		<td><h:outputLabel id ="lblfirstName" value="First Name:"></h:outputLabel>
		</td>
		<td>
		<h:inputText id = "txtFirstName" value="#{userBean.firstname}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtFirstName"></h:message>
		</td>
		<tr>
		<td><h:outputLabel id = "lbllastName" value= "Last Name"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtLastName" value="#{userBean.lastname}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtLastName"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lbuserId" value="User Id:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtUserId" value="#{userBean.username}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtUserId"></h:message>
		</td>
		<tr>
		<tr>
		<td><h:outputLabel id ="lblPwd" value="Password:"></h:outputLabel>
		</td>
		<td><h:inputSecret id = "txtPassword" value="#{userBean.password}" required="true" requiredMessage="Please fill"></h:inputSecret>
		<h:message for="txtPassword"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblEmail" value="Email:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtEmail" value="#{userBean.email}" required="true" requiredMessage="Please fill">
	    <f:validator validatorId="com.validations.EmailValidator"/></h:inputText>
		<h:message for="txtEmail"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblPhone" value="Mobile-No:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtPhone" value="#{userBean.phone}" required="true" requiredMessage="Please fill">
		<f:validateLength minimum="10" maximum="10"></f:validateLength>
		<f:validator validatorId="com.validations.NumberValidator"/></h:inputText>
		<h:message for="txtPhone"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblStreet" value="Street:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtStreet" value="#{userBean.street}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtStreet"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblCity" value="City:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtCity" value="#{userBean.city}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtCity"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblState" value="State:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtState" value="#{userBean.state}" required="true" requiredMessage="Please fill"></h:inputText>
		<h:message for="txtState"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblSecretq" value="Secret Question(What is your Birth City):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtSecretQ" value="#{userBean.secretq}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtSecretQ"></h:message>
		</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		<td><h:commandButton id="submit" type="submit" value="submit" action="#{userBean.insertdata}"></h:commandButton>
		<h:commandButton id="reset" type="reset" value="reset"></h:commandButton>
		</td>
		</tr>
		</table>
		</h:form>
</f:view>
</body>
</html>