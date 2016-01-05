package Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class EmployeeController extends ActionSupport {
	private String name,email,address;

	@RequiredStringValidator(key="msg1")
	public void setName(String name) {
	this.name = name;
	}
	@RequiredStringValidator(key="msg2")
	@EmailValidator(key="msg3")
	
	public void setEmail(String email) {
		this.email = email;
	}
	@RequiredStringValidator(key="msg4")
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getAddress() {
		return address;
	}
	@Override
public String execute() throws Exception {
	// do controller
	System.out.println(name);
	System.out.println(email);
	System.out.println(address);
	return "success";
}
}
