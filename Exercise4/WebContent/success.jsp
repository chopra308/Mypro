<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList,java.util.Iterator, Controller.validator" %>	
	Hi ${NAME}
	<c:out value="This is JSTL"/>
	 	<% 
	validator v=new validator();
	String s=(String)session.getAttribute("id");
	out.println(s);
	 ArrayList<String> u = (ArrayList<String>)session.getAttribute("MNG");
	 ArrayList<String> u1= (ArrayList<String>)session.getAttribute("name");
	ArrayList<String> u2= (ArrayList<String>)session.getAttribute("emp");
	 ArrayList<String> al=new ArrayList<String>();
	out.println(u.size());

	for(int i=0;i<al.size();i++){
		al.add(u.get(0));
		
	}
	out.println(al.toString());
	%>
	
	<c:forEach var="emp" items="<%=u2 %>">
	<c:out value="${emp}"/>
	</c:forEach>



	
	
