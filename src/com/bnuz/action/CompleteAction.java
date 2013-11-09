package com.bnuz.action;

import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;

import com.bnuz.entity.PPT;
import com.bnuz.service.IPPTGetService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class CompleteAction  implements Action{
	private IPPTGetService ipg;
	
	
	public IPPTGetService getIpg() {
		return ipg;
	}

	public void setIpg(IPPTGetService ipg) {
		this.ipg = ipg;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		 try{
			 ActionContext ctx = ActionContext.getContext();
				HttpServletRequest request=
						(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
				String title = (String) request.getSession().getAttribute("title");
				String username = (String) request.getSession().getAttribute("username");
			   PPT ppt = ipg.get(title,username);
			   Properties p = new Properties();
		       p.setProperty(Velocity.INPUT_ENCODING, "UTF-8");
		       p.setProperty(Velocity.OUTPUT_ENCODING, "UTF-8");
			   p.put("file.resource.loader.class",
			   "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
			   Velocity.init(p);
			   VelocityContext context = new VelocityContext();
			   context.put("ppt",ppt);
			   File f = new File(ServletActionContext
					     .getRequest().getRealPath("") + "\\content\\" + username + "\\" + title); // 文件夹目录由主题命名
			   f.mkdirs();
			   Template template = Velocity.getTemplate("/velocity/ppt.vm");
			   StringWriter sw = new StringWriter();
			   template.merge(context, sw);
			   sw.flush();
			   for(int i=1;i <= ppt.getPages().size(); i++){
				   context.put("page",ppt.getPages().toArray()[i-1]);
				   PrintWriter pw=new PrintWriter(ServletActionContext
					     .getRequest().getRealPath("") + "\\content\\" + username +"\\" + title +"\\" + i + ".html");
		       template.merge(context, pw);
		       pw.flush();
			   }
			  
			}catch( Exception e ){
				e.printStackTrace();
			}
		return "success";
	}
	

}

