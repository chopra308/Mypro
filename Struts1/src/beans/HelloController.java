
package beans;

import javax.servlet.http.*;

import org.apache.struts.action.*;

public class HelloController extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm from,
			HttpServletRequest request, HttpServletResponse response)
	        throws Exception {
		 String name = request.getParameter("name");
		 request.setAttribute("res", "Hello...."+name);
		
		return mapping.findForward("success");
		
	}

}
