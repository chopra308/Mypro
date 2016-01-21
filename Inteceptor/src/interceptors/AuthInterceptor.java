package interceptors;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;


public class AuthInterceptor implements Interceptor{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void init() {
		// TODO Auto-generated method stub
		
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionAttributes = invocation.getInvocationContext().getSession();
		if(sessionAttributes==null||sessionAttributes.get("authorized")==null){
			return "failure";
		}else{
		if(((String)sessionAttributes.get("authorized")).equals("yes")){
		return invocation.invoke();
		// invoke tells the frame to invoke the next component in the queue, it need not be a action it might be an another interceptor in queue
		}else{
			return "failure";
		}
		}
		
	
	}

	
}


