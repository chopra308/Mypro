<%@page import="java.util.ArrayList"%>

<% ArrayList<String> l1=new ArrayList<String>();
	l1.add("494308");
	l1.add("Sri");
	l1.add(null);
	l1.add("494470");
	l1.add("Sreee");
	l1.add(null);
	l1.add("12345");
	l1.add("Sri");
	l1.add("12345");%>
	<table>
	
	<%for(int i=0;i<l1.size();i=i+3){
		if(l1.get(i).equals(l1.get(i+2))){
			for(int j=0;j<l1.size();j=j+3){
	out.println("<TR>" +l1.get(j) + l1.get(j+1) + l1.get(j+2)+"</TR>");}}
		else{
		out.println("<TR>"+l1.get(i)+" "+l1.get(i+1) +" "+l1.get(i+2)+"</TR>");
			break;
		}
	}%>
	</table>