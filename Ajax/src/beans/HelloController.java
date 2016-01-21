
package beans;
 import java.util.*;

import javax.servlet.http.*;

import org.apache.struts.action.*;

public class HelloController extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm from,
			HttpServletRequest request, HttpServletResponse response)
	        throws Exception {
		 String name = request.getParameter("name");
		 request.setAttribute("res", "Hello...."+name);
		/* ArrayList al = new ArrayList();
		 al.add("C");
		 al.add("A");
		 al.add("E");
		 al.add("B");
		 al.add("D");
		 al.add("F");
			request.setAttribute("al", al);
			request.getRequestDispatcher("/WEB-INF/success.jsp").forward(request, response); */
		return mapping.findForward("success");
		
		
	}

}
