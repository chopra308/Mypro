package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class RegController extends ActionSupport {
	private String name, email, address;
	@RequiredStringValidator(message="name is required")
	public void setName(String name) {
		this.name = name;
	}
	@RequiredStringValidator(message="email is required")
	@EmailValidator(message="wrong email format")
	public void setEmail(String email) {
		this.email = email;
	}
	@RequiredStringValidator(message="address is required")
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
	HttpServletRequest req=ServletActionContext.getRequest();
	
	req.setAttribute("req_name", name);
	req.setAttribute("req_email", email);
	req.setAttribute("req_address", address);
	HttpSession hs=req.getSession();
	hs.setAttribute("ses_name", name);
	hs.setAttribute("ses_email", email);
	hs.setAttribute("ses_address", address);
	
	ServletContext scxt=ServletActionContext.getServletContext();
	scxt.setAttribute("scxt_name", name);
	scxt.setAttribute("scxt_email", email);
	scxt.setAttribute("scxt_address", address);
	ValueStack vs=ServletActionContext.getValueStack(req);
	Map m=new HashMap();
	m.put("vs_name", name);
	m.put("vs_email", email);
	m.put("vs_address",address);
	vs.push(m);
		return "success";
	}
	

}
