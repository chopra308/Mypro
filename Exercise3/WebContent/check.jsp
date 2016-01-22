
<%@page import="java.sql.*"%>
<%
try{
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String phone=request.getParameter("Telephone");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from Register where user='"+user+"' and pass='"+pass+"'");
        //   String rs1=st.executeQuery("select pass from Register where user='"+user+"' and pass='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           out.println("welcome "+user);
           out.println(pass);
           out.println(rs.getString("Telephone"));
           }
          else{
           response.sendRedirect("Error.jsp");
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>