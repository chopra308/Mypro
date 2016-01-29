<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	out.println("jdbc connection");
	String EMPID=request.getParameter("EMPID");
	String NAME=request.getParameter("NAME");
	String MNGID=request.getParameter("MNGID");
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 ArrayList l1 = null;
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","root");
	Statement st=con.createStatement();
	if(EMPID.equals(MNGID)){
	ResultSet rs=st.executeQuery("Select * from employees");
	 int rowCount = 0;
	 out.println("<P ALIGN='center'><TABLE BORDER=1>");
	ResultSetMetaData rsmd=rs.getMetaData();
	int columnCount =rsmd.getColumnCount();
	 // table header
	out.println("<TR>");
	for(int i=0;i<columnCount;i++){
	out.println("<TH>"+rsmd.getColumnLabel(i+1)+"</TH>");
	}
	out.println("</TR>");
	// the data
	while (rs.next()) {
	  rowCount++;
	  out.println("<TR>");
	  for (int i = 0; i < columnCount; i++) {
	    out.println("<TD>" + rs.getString(i + 1) + "</TD>");
	    }
	  out.println("</TR>");
	  }
	 out.println("</TABLE></P>");
	 out.println("rowcount");
	}
	else{
		ResultSet rs=st.executeQuery("Select * from employees where EMPID='"+EMPID+"' and NAME='"+NAME+"'");
		int rowCount = 0;
		 out.println("<P ALIGN='center'><TABLE BORDER=1>");
		ResultSetMetaData rsmd=rs.getMetaData();
		int columnCount =rsmd.getColumnCount();
		 // table header
		out.println("<TR>");
	for(int i=0;i<columnCount;i++){
		out.println("<TH>"+rsmd.getColumnLabel(i+1)+"</TH>");
	}
	out.println("</TR>");
	// the data
	while (rs.next()) {
		  rowCount++;
		  out.println("<TR>");
		  for (int i = 0; i < columnCount; i++) {
		    out.println("<TD>" + rs.getString(i + 1) + "</TD>");
		    }
		  out.println("</TR>");
		  }
		 out.println("</TABLE></P>");

		}
	
	%>
