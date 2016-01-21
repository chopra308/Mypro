package controller;

import java.util.Collection;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;

public class CalController extends ActionSupport {
	private int fn;
	private int sn;
	private int tn;
	@IntRangeFieldValidator(max="999999",min="1",message="fn must be in between ${min} and ${max}")
	public void setFn(int fn) {
		this.fn = fn;
	}
	@IntRangeFieldValidator(max="999999",min="1",message="sn must be in between ${min} and ${max}")
	public void setSn(int sn) {
		this.sn = sn;
	}

	public int getTn() {
		return tn;
	}
	public void setTn(int tn) {
		this.tn = tn;
	}
	public int getFn() {
		return fn;
	}
	public int getSn() {
		return sn;
	}
	
	public String add() throws Exception {
		tn=fn+sn;
	
		return "success";
	}
	public String sub() throws Exception {
		tn=fn-sn;
		
		return "success";
	}
	public String mul() throws Exception {
		tn=fn*sn;

		return "success";
	}
	public String div() throws Exception {
		tn=fn/sn;
	
		return "success";
	}
		
}
