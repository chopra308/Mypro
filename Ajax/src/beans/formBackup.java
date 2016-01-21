package beans;


import javax.servlet.http.*;

import org.apache.struts.action.*;

public class formBackup  extends ActionForm{

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request){
		ActionErrors ae=new ActionErrors();
		if (name.equals(""))
			ae.add("name", new ActionMessage("msg"));
		return ae;
	}
} 

