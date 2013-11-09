package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bnuz.service.IPPTLoadService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class PPTSetAction implements Action{
	private String title;
	//private IPPTLoadService ipl;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

//	public IPPTLoadService getIpl() {
//		return ipl;
//	}
//	
//	public void setIpl(IPPTLoadService ipl) {
//		this.ipl = ipl;
//	}


	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		if(title!=null){
		request.getSession().setAttribute("title", title);
		}else return "error";
		/*if(ipl.load(title,username)){          
			return "next";
		}else{
			ctx.put("error","主题已存在");
			return "error";
		}*/
		return "next";
		}
}
