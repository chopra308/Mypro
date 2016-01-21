<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<div  style="border-color:maroon;color:red; font-size: 50">
<center>
<bean:message key="title"/>
</center>
</div>
<html:form action="/reg" >
<pre>
<bean:message key="id"/>:<html:text property="id"/><html:errors property="id"/>
<bean:message key="name"/>:<html:text property="name"/><html:errors property="name"/>
<bean:message key="email"/>:<html:text property="email"/><html:errors property="email"/>
<bean:message key="address"/>:<html:textarea property="address"/><html:errors property="address"/>


<html:submit><bean:message key="submit"/></html:submit>
<a href="./changelang.do?langauge=te" style="border-style:dashed;">Telugu</a>

<a href="./changelang.do?langauge=hi" style="border-style:dashed;">Hindi</a>

<a href="./changelang.do?langauge=te" style="border-style:dashed;">english</a>

<a href="./changelang.do?langauge=te" style="border-style:dashed;">Tamil</a>


</pre></html:form>