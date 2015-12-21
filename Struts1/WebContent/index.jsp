<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
<title>StrutsPassword</title>
</head>
<body>
<html:form action="hello">
<table>
<tr>
    <td>Name : <html:text property="name"/></td>
</tr>
<tr>
    <td>Password <html:password property="name" /></td>
</tr>
<tr>
    <td><html:submit>Submit</html:submit></td>
</tr>
  </table>
</html:form>
</body>
</html>