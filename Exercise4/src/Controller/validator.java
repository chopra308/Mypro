package Controller;
import java.sql.DriverManager;
import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;



public class validator extends ActionSupport {
	public String EMPID,NAME,MNGID;

	public String getEMPID() {
		return EMPID;
	}

	public void setEMPID(String eMPID) {
		EMPID = eMPID;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getMNGID() {
		return MNGID;
	}

	public void setMNGID(String mNGID) {
		MNGID = mNGID;
	}



	@Override
	public String execute() throws Exception {
		System.out.println(EMPID);
		
	System.out.println("jdbc connection");
	//System.out.println(EMPID);
	//String s=EMPID;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","root");
	
	 Statement st=con.createStatement();

	 ArrayList<String> al=new ArrayList<String>();
	 ArrayList<String> a1=new ArrayList<String>();
	 ArrayList<String> b1=new ArrayList<String>();
	
		try{
			ResultSet rs=st.executeQuery("Select * from employees");
			HttpServletRequest req=ServletActionContext.getRequest();
			HttpSession hs=req.getSession();
			
		hs.setAttribute("id", EMPID);
		/**
		ResultSetMetaData rsmd=rs.getMetaData();
		int columnCount =rsmd.getColumnCount();
		System.out.println(columnCount);
		int rowcount=0;
		
		while (rs.next()) {
		rowcount++;
		for(int i=0;i<columnCount;i++){
			   System.out.println("<TD>" + rs.getString(i+1) + "</TD>");
			   c1.add(rs.getString(i+1));
		}}
		
		
		System.out.println(c1.toString());**/
		
			while(rs.next()){

			String s1=rs.getString(3);
			String s=rs.getString(1);
			String s2=rs.getString(2);
			a1.add(s);
			b1.add(s2);
			
			hs.setAttribute("emp", a1);
			hs.setAttribute("name", b1);
			//hs.setAttribute("MNG", al);
			//System.out.println(s);
			System.out.println(s1);
			al.add(s1);
			
			}
			hs.setAttribute("MNG",al);
			//System.out.println(s1);
		
		
			for(int i=1;i<al.size();i++){
			if(EMPID.equals(al.get(i))){
				System.out.println(al.get(i));
				
				
		}
			else
			{
				System.out.println("u r not a manager");
			
			}
			}
			}
	
		
		catch(Exception e){
			  e.printStackTrace();
		}
		 return "success";
	}

}
