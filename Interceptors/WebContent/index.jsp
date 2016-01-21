<%@taglib uri="/struts-tags" prefix="html"%>
<h1>Hello With Interceptor </h1>
<html:form action="hello">
	<html:textfield name="userName" label="Enter the User name"/>
	<html:password name="pwd" label="Enter the password"/>
	<html:submit/>
</html:form>