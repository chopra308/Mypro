<%@taglib uri="/struts-tags" prefix="html"%>
<h1>CAL FORM</h1>
<html:form action="cal">
<html:textfield name="fn" label="FirstNumber"/>
<html:textfield name="sn" label="SecondNumber"/>
<html:submit value="ADD" action="addcal"/>
<html:submit value="SUB" action="subcal"/>
<html:submit value="DIV" action="divcal"/>
<html:submit value="MUL" action="mulcal"/>
</html:form>