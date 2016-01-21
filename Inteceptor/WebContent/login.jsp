<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<h1>Login for Struts Interceptors Example</h1>
	<s:actionerror/>
	<s:form action ="authentication">
	<s:textfield name ="userName" label="Enter the User name:"/>
	<s:password name ="pwd" label ="Enter the password:"/>
	<s:submit/>
	</s:form>
<html>