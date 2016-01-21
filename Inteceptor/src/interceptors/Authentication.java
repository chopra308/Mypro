package interceptors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;


public class Authentication extends ActionSupport implements ServletRequestAware {
	private String userName;
	private String pwd;
	
	private HttpServletRequest request;
	public HttpServletRequest getRequest() {
		return request;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String loginCredentialsCheck(){
		if(this.getUserName().equals("sri")&&this.getPwd().equals("sri")){
			HttpSession session = request.getSession();
			session.setAttribute("authorized", "yes");
			return "success";
		}else{
			addActionError("Please Enter valid login credentials");
			return "failure";
		}
	}
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
