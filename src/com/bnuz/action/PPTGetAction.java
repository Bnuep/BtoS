package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bnuz.service.IPPTGetService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class PPTGetAction implements Action{
	private IPPTGetService pgs;
	
	public IPPTGetService getPgs() {
		return pgs;
	}

	public void setPgs(IPPTGetService pgs) {
		this.pgs = pgs;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		String username = (String) request.getSession().getAttribute("username");
		request.setAttribute("ppts",pgs.getPPTS(username));
		return null;
	}
	

}
