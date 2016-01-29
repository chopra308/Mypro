package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.ExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

import freemarker.template.utility.Execute;

public class Registration extends ActionSupport {
	public String firstName,lastName,name,email,pass;
	public String phone;
	
	
	@RequiredStringValidator(key="msg1")
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@RequiredStringValidator(key="msg2")
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@RequiredStringValidator(key="msg3")
	public void setName(String name) {
		this.name = name;
	}
	
	@RequiredStringValidator(key="msg4")
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@RequiredStringValidator(key="msg5")
	@EmailValidator(key="msg6")
	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getPass() {
		return pass;
	}
	public String getName() {
		return name;
	}
	
	
	@Override
	public String execute() throws Exception {
		System.out.println("jdbc connection");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/employee", "root", "root");
        System.out.println(firstName);
 
        try {
 
            try {
                Statement st = con.createStatement();
                int value = st
                        .executeUpdate("INSERT INTO userdetails(firstname, lastname,username, password, email, phone) "
                                + "VALUES('"
                                + firstName
                                + "','"
                                + lastName
                                + "','"
                                + name
                                + "','"
                                + pass
                                + "','"
                                + email + "','" + phone + "')");
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
