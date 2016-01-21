package beans;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class validate extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
		 res.setContentType("text/html;charset=UTF-8");
		String Name=req.getParameter("username");
		String email=req.getParameter("email");
		String male=req.getParameter("male");
		String female=req.getParameter("female");
		String bday=req.getParameter("bday");
		String pass=req.getParameter("pass");
		if(pass.equals("1234")){
			HttpSession session=req.getSession();
			session.setAttribute("username", "Name");
			res.sendRedirect("Welcome");
		}
		else
		{
			System.out.println("Please fill all the fields");
		}
	}
	
	

}