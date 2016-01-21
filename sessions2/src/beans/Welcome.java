package beans;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Welcome extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		 res.setContentType("text/html;charset=UTF-8");
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		String username=(String)session.getAttribute("username");
		
		out.println("hello"+username);
		
	}
	

}
