<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
<title>StrutsPassword</title>
</head>
<body>

<html:form action="reg" method="post">
<table>
<tr>
    <td>Name:</td>
    <td> <html:text property="name"/></td>
</tr>
<tr>
    <td>Email:</td>
    <td><html:text property="email" /></td>
    </td><td>
</tr>
<tr>
    <td>Address:</td><td><html:textarea property="Address" /></td></td><td>
</tr>
<tr>
    <td>Gender:Male</td><td><html:radio property="gender" value="male"/>
    <html:radio property="gender" value="female"/>Female </td>
</tr>
<tr>
    <td>Hobbies : <html:checkbox property="hobbies" value="cricket" />Cricket
    			<html:checkbox property="hobbies" value="books" />Books</td>
</tr>
<tr>
    <td>Password :</td><td><html:password property="password" /></td>
</tr>
<tr>
    <td><html:submit >Submit</html:submit></td>
</tr>


  </table>
</html:form>

</body>
</html>