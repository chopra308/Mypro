package Controller;
import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class validnew extends ActionSupport {


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
		
	System.out.println("jdbc connection");
	//System.out.println(EMPID);
	//String s=EMPID;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","root");
	
	 Statement st=con.createStatement();

	 //ArrayList<String> al=new ArrayList<String>();
	 //ArrayList<String> a1=new ArrayList<String>();
	 //ArrayList<String> b1=new ArrayList<String>();
	 //ArrayList<String> c1=new ArrayList<String>();
	 List<validnew> emp = new ArrayList<validnew>();
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession hs=req.getSession();
		
	//hs.setAttribute("id", EMPID);
	
		try{
			if(!EMPID.equals("")){
				
			
			ResultSet rs=st.executeQuery("Select * from employee where EMPID='"+EMPID+"'");
		
	//String s="";
			//ResultSetMetaData rsmd=rs.getMetaData();
			//int columnCount =rsmd.getColumnCount();
			validnew emp1 = new validnew();
			while(rs.next()){
				//for(int i=0;i<columnCount;i++){
				emp1.setEMPID(rs.getString(1));
				emp1.setNAME(rs.getString(2));
				emp1.setROLE(rs.getString(3));
			 //s=rs.getString(1);  }
				
		emp.add(emp1);
			
			//al.add(s);
			
			}
			//System.out.println(al.toString());
	
			}
			else{
				ResultSet rs=st.executeQuery("Select * from employees");
				
			
			}
		
			}
	
		
		catch(Exception e){
			  e.printStackTrace();
		}
		
		for (validnew S: emp ){
		System.out.println(S.getEMPID());
		System.out.println(S.getNAME());
		System.out.println(S.getROLE());
		}
		
		hs.setAttribute("emp", emp);
		 return "success";
	}

}
