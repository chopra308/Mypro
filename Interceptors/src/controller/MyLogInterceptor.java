package controller;

import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

import sun.rmi.runtime.Log;

public class MyLogInterceptor implements Interceptor {


	@Override
	public void init() {
		System.out.println("init");

	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
org.apache.commons.logging.Log l=LogFactory.getLog(HelloController.class);
// before controller
l.info("*********in time********");
String res=ai.invoke();
//after controller, now configure its reference in strust.xml
l.info("*********out time********");
		return res;
	}

	@Override
	public void destroy() {
	System.out.println("destroy");

	}

}
