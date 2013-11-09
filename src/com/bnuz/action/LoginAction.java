package com.bnuz.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bnuz.service.IMyService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction  implements Action{


	/*private User user;
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}*/
	private String username;
	private String password;
	private IMyService ims;
	
	public IMyService getIms() {
		return ims;
	}
	public void setIms(IMyService ims) {
		this.ims = ims;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request=
				(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		if(ims.valid(username, password)){
			System.out.println("success");
			ctx.put("tip",getUsername());
			request.getSession().setAttribute("username", username);            
			return "loginsuccess";
		}else{
			ctx.put("tip","登录失败");
			return "loginfail";
		}
		}
}	