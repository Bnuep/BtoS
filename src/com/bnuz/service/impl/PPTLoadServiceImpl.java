package com.bnuz.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bnuz.entity.HibernateUtil;
import com.bnuz.entity.Page;
import com.bnuz.entity.PPT;
import com.bnuz.entity.User;
import com.bnuz.service.IPPTLoadService;

public class PPTLoadServiceImpl implements IPPTLoadService{

		public boolean load(String title,String username) {
			// TODO Auto-generated method stub		
				return loadtitle(title,username);
		}

		private boolean loadtitle(String title,String username) {
			// TODO Auto-generated method stub
			Session session = HibernateUtil.currentSession();
			Transaction tx = session.beginTransaction();
			String sql = "select tid from ppt_table where title='" + title + "' and uid=(select uid from user_table where username='"+username+"')";
			List result = session.createSQLQuery(sql).list();
			if(result.isEmpty()){
				String hql = "from User where username='" + username + "'";
				result = session.createQuery(hql).list();
				User user= (User)result.get(0);
				PPT ppt = new PPT();
				ppt.setTitle(title);
				ppt.setUser(user);
				session.save(ppt);		
				tx.commit();
				return true;
			}
			return false;
		}

		@Override
		public boolean loadpage(Page page,String title) {
			// TODO Auto-generated method stub
			Session session = HibernateUtil.currentSession();
			Transaction tx = session.beginTransaction();
			String hql = "from PPT where title='" + title + "'";
			List result = session.createQuery(hql).list();
			PPT ppt=(PPT) result.get(0);
			page.setPpt(ppt);
			session.save(page.getImagepage());
			session.save(page);		
			tx.commit();
			return true;
		}



}

