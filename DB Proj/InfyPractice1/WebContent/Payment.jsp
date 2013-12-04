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
<h1>Payment Page</h1>
<h:form id ="form9">
		<table>
		<tr>
		<td><h:outputLabel id ="lblamt" value="Amount in $:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtamount" value="#{pay.amount}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtamount"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblcreditCard" value="CreditCard Number:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtcreditCard" value="#{pay.creditcard_no}" required="true" requiredMessage="Please Fill">
		<f:validateLength maximum="16"></f:validateLength>
		<f:validator validatorId="com.validations.NumberValidator"/></h:inputText>
		<h:message for="txtcreditCard"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblvalidFrom" value="Valid From Date(eg-11-13):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtvalidFrom" value="#{pay.valid_from}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtvalidFrom"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblvalidTo" value="Valid To Date(eg-11-18):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtvalidto" value="#{pay.valid_to}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtvalidto"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblpin" value="CVV Number(3 Digit Code):"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtcvvno" value="#{pay.cvv_no}" required="true" requiredMessage="Please Fill">
		<f:validateLength minimum="3" maximum="3"></f:validateLength>
		<f:validator validatorId="com.validations.NumberValidator"/></h:inputText>
		<h:message for="txtcvvno"></h:message>
		</td>
		</tr>
		<tr>
		<td><h:outputLabel id ="lblusername" value="Username:"></h:outputLabel>
		</td>
		<td><h:inputText id = "txtusername" value="#{pay.userid}" required="true" requiredMessage="Please Fill"></h:inputText>
		<h:message for="txtusername"></h:message>
		</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		<td><h:commandButton id="submit" type="submit" value="submit" action="#{pay.insertpayment}"></h:commandButton>
		<h:commandButton id="reset" type="reset" value="reset"></h:commandButton>
		</td>
		</tr>
</table>
</h:form>
</f:view>
</body>
</html>