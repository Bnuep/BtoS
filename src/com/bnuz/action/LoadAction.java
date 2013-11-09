package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bnuz.entity.Imagepage;
import com.bnuz.entity.Page;
import com.bnuz.service.IPPTLoadService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoadAction implements Action{
	private IPPTLoadService opl;
	
	public IPPTLoadService getOpl() {
		return opl;
	}

	public void setOpl(IPPTLoadService opl) {
		this.opl = opl;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		String username = (String) request.getSession().getAttribute("username");
		String title = (String) request.getSession().getAttribute("title");
		String titlepage = (String) request.getSession().getAttribute("titlepage");
		String contentpage = (String) request.getSession().getAttribute("contentpage");
		String bgroundpage = (String) request.getSession().getAttribute("bgroundpage");
		String modelpage = (String) request.getSession().getAttribute("modelpage");
		Imagepage imagepage =  (Imagepage) request.getSession().getAttribute("imagepage");
		Page page = new Page();
		page.setTitlepage(titlepage);
		page.setContentpage(contentpage);
		page.setBgroundpage(bgroundpage);
		page.setModelpage(modelpage);
		page.setImagepage(imagepage);
		if(opl.load(titlepage, username)){
			if(opl.loadpage(page, title))   
				return "success"; 
			else{
				return "error";
			}
		}else{
			return "error";	
		}
	}
}
