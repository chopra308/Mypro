<%@taglib uri="/struts-tags" prefix="html"%>

<html:form action="reg" theme="xhtml">
<html:textfield name="name" label="Name"/>
<html:textfield name="email" label="Email"/>
<html:textarea name="address" label="Address"/>
<html:submit value="register"/>
</html:form>