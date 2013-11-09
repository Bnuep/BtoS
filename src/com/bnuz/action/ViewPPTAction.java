package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ViewPPTAction implements Action{
	private String istitle;
	
	public String getIstitle() {
		return istitle;
	}

	public void setIstitle(String istitle) {
		this.istitle = istitle;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute("istitle", istitle);
		return "success";
	}
	

}
