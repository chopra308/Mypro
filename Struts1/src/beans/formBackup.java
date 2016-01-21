package beans;


import javax.servlet.http.*;

import org.apache.struts.action.*;

public class formBackup  extends ActionForm{

	private String name;
	private String email;
	private String address;
	private String gender;
	private String[] hobbies;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request){
		ActionErrors ae=new ActionErrors();
		if (name.equals(""))
			ae.add("name_e", new ActionMessage("msg"));
		if (email.equals(""))
			ae.add("email_e", new ActionMessage("msg1"));
		if (address.equals(""))
			ae.add("Address_e", new ActionMessage("msg2"));
		if (gender.equals(""))
			ae.add("gender_e",new ActionMessage("msg4"));
		if (hobbies.length<1)
			ae.add("hobbies_e", new ActionMessage("msg3"));
		
		return ae;
	}
} 




