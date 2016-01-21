<%@taglib uri="/struts-tags" prefix="html"%>
<h1>Employee RegForm</h1>
<html:form action="reg" theme="xhtml">
<html:textfield name="name" label="Name"/>
<html:textfield name="email" label="Email"/>
<html:textarea name="address" label="Address"/>
<html:submit value="register"></html:submit>
</html:form>