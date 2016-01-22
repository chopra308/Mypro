package controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class Validation extends ActionSupport {


		public String user,Email,Telephone,pass,Subject,Comment;
	
	

		public String getUser() {
			return user;
		}

		public void setUser(String user) {
			this.user = user;
		}

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getEmail() {
			return Email;
		}

		public void setEmail(String email) {
			Email = email;
		}

		public String getTelephone() {
			return Telephone;
		}
		public void setTelephone(String telephone) {
			Telephone = telephone;
		}

		public String getSubject() {
			return Subject;
		}

		public void setSubject(String subject) {
			Subject = subject;
		}

		public String getComment() {
			return Comment;
		}

		public void setComment(String comment) {
			Comment = comment;
		}


		@Override
		public String execute() throws Exception {
			System.out.println("jdbc connection");
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost/employee", "root", "root");
	 
	        try {
	 
	            try {
	                Statement st = con.createStatement();
	                int value = st
	                        .executeUpdate("INSERT INTO Register(user, Email,Telephone,pass,Subject, Comment) "
	                                + "VALUES('"
	                                + user
	                                + "','"
	                                + Email
	                                + "','"
	                                + Telephone
	                                + "','"
	                                + pass
	                                + "','"
	                                + Subject
	                                + "','"
	                                + Comment + "')");
	                System.out.println("1 row affected" + value);
	            } catch (SQLException ex) {
	                System.out.println("SQL statement is not executed!" + ex);
	            }
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	  return "success";
		}

	}


