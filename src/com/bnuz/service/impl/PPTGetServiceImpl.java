package com.bnuz.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bnuz.entity.HibernateUtil;
import com.bnuz.entity.PPT;
import com.bnuz.service.IPPTGetService;

public class PPTGetServiceImpl  implements IPPTGetService{

	@Override
	public PPT get(String title,String username) {
		// TODO Auto-generated method stub
		return getPPT(title,username);
	}
	public PPT getPPT(String title,String username){
		List<PPT> ppts = getPPTS(username);
		for(PPT ppt : ppts)
			if(ppt.getTitle().equals(title))
				return ppt;
		return null;
	}
	@Override
	public List<PPT> getPPTS(String username) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.currentSession();
		Transaction tx = session.beginTransaction();
		String sql = "select uid from user_table where username='"+username+"'";
		List r = session.createSQLQuery(sql).list();
		int uid = (int) r.get(0);
		String hql = "from PPT where uid='"+ uid +"'";
		List<PPT> ppts = session.createQuery(hql).list();
		return ppts;
	}

}
