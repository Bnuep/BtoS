package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bnuz.entity.Imagepage;
import com.bnuz.entity.PPT;
import com.bnuz.service.IPPTLoadService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class PageSetAction implements Action{
	private String titlepage;
	private String contentpage;
	private String bgroundpage;
	private String modelpage;
	private String location;
	private String imagepage;
	
	
	public String getTitlepage() {
		return titlepage;
	}
	public void setTitlepage(String titlepage) {
		this.titlepage = titlepage;
	}
	public String getContentpage() {
		return contentpage;
	}
	public void setContentpage(String contentpage) {
		this.contentpage = contentpage;
	}
	public String getBgroundpage() {
		return bgroundpage;
	}
	public void setBgroundpage(String bgroundpage) {
		this.bgroundpage = bgroundpage;
	}
	public String getModelpage() {
		return modelpage;
	}
	public void setModelpage(String modelpage) {
		this.modelpage = modelpage;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImagepage() {
		return imagepage;
	}
	public void setImagepage(String imagepage) {
		this.imagepage = imagepage;
	}
	
	private void judge(String index){
		if(index!=null){
			ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
			request.getSession().setAttribute(index, index);
		}
	}
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		judge(titlepage);
		judge(contentpage);
		judge(bgroundpage);
		judge(modelpage);
		if(imagepage!=null&&location!=null){
			Imagepage image = new Imagepage();
			image.setImagepage(imagepage);
			image.setLocation(location);
			request.getSession().setAttribute("imagepage", image);
		}
		return "next";
	}
}
