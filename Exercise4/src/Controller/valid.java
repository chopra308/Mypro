package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class valid extends ActionSupport {
	public String EMPID,NAME,ROLE;

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

	
	public String getROLE() {
		return ROLE;
	}

	public void setROLE(String rOLE) {
		ROLE = rOLE;
	}



	@Override
	public String execute() throws Exception {
		System.out.println(EMPID);
		System.out.println(ROLE);
	System.out.println("jdbc connection");
	//System.out.println(EMPID);
	//String s=EMPID;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","root");
	
	 Statement st=con.createStatement();
	 List<String> emp = new ArrayList<String>();
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession hs=req.getSession();
		
	//hs.setAttribute("id", EMPID);
	
		try{
			if(ROLE.equals("1")){
				
			
			ResultSet rs=st.executeQuery("Select * from employee where EMPID='"+EMPID+"'");
		
	//String s="";
			//ResultSetMetaData rsmd=rs.getMetaData();
			//int columnCount =rsmd.getColumnCount();
			
			while(rs.next()){
				//for(int i=0;i<columnCount;i++){
				emp.add(rs.getString(1));
				emp.add(rs.getString(2));
				emp.add(rs.getString(3));
			 //s=rs.getString(1);  }
				
	
			
			//al.add(s);
			
			}
			//System.out.println(al.toString());
	
			}
			else{
				ResultSet rs=st.executeQuery("Select * from employee");
				while(rs.next()){
					
					emp.add(rs.getString(1));
					emp.add(rs.getString(2));
					emp.add(rs.getString(3));}
			
			}
		
			}
	
		
		catch(Exception e){
			  e.printStackTrace();
		}
		
	
		
		hs.setAttribute("emp", emp);
		 return "success";
	}

}
