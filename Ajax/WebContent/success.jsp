
<h1>welcome to Ajax!!!! Lets Do This!!</h1>

<%@page import="java.util.ArrayList"%>
<%
ArrayList al = new ArrayList();
al.add("C");
al.add("A");
al.add("E");
al.add("B");
al.add("D");
al.add("F");
%>
<select>
   <%  for(int i = 0; i < al.size(); i++) {
           String option = (String)al.get(i);
   %>
   <option value="<%= option %>"><%= option %></option>
   <% } %>
</select>

