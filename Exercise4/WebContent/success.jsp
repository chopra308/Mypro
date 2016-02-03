
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="java.util.*,Controller.validnew"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:out value="THis is jstl">
</c:out>
<% validnew v=new validnew();

 ArrayList<String> y= (ArrayList<String>)session.getAttribute("emp");
;%>

	<table border="1" style="width:100%">
	<tr>
		<th>EmpID</th>
		<th>Name</th>
		<th>Role</th>
	</tr>
	
<c:forEach var="emp" items="<%=y%>">
<td><c:out value="${emp}"/></td>

</c:forEach>
</tr>

</tr>
<table>

	<tr>
		<th>EmpID</th>
		<th>Name</th>
		<th>Role</th>
	</tr>
<s:iterator value="y"  >
	<tr>
		<td><s:property value="EMPID"/></td>
		<td><s:property value="NAME"/></td>
		<td><s:property value="ROLE"/></td>
	</tr>
</s:iterator>
</table>


	
	
