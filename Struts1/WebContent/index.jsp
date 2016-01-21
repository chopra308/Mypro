<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<h1>Reg form</h1>
<html:form action="reg" method ="post">
<table>
<tr><td></td><td></td><td></td></tr>

<tr>
<td>Name:</td>
<td><html:text property="name"/></td> 
 <td><html:errors property="name_e"/></td>
</tr>
<tr>
<td>Email:</td>
<td><html:text property="email"/></td>
<td><html:errors property="email_e"/></td>
</tr>
<tr>
<td>Address:</td>
<td><html:textarea property="address"/></td>
<td><html:errors property="Address_e"/></td>
</tr>
<tr>
<td>gender: Male</td>
<td><html:radio property="gender" value="male"/></td>
<td><html:errors property="gender_e"/></td>
</tr>
<tr>
<td>gender: Female</td>
<td><html:radio property="gender" value="female"/></td>
<td></td>
</tr>
<tr>
<td>Hobbies:</td>
<td><html:checkbox property="hobbies" value="hobbie1"/> Watching Cricket</td>
<td><html:errors property="hobbie_e"/></td>
</tr>
<tr>
<td></td>
<td><html:checkbox property="hobbies" value="hobbie2"/> Reading books</td>
<td></td>
</tr>
<tr>
<td></td>
<td><html:checkbox property="hobbies" value="hobbie3"/>Indoor games</td>
<td></td>
</tr>
<tr>
<td></td>
<td><html:submit value="Register"/>Indoor games</td>
<td></td>
</tr>


</table>


</html:form>