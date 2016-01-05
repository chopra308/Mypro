<%@taglib uri="/struts-tags" prefix="html"%>
<h1>Hello With Interceptor </h1>
<html:form action="hello">
	<html:textfield name="name" label="Name"></html:textfield>
	<html:submit value="hello"></html:submit>
</html:form>