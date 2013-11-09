package com.bnuz.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bnuz.entity.HibernateUtil;
import com.bnuz.service.IMyService;

public class MyServiceImpl implements IMyService{

	@Override
	public boolean valid(String username, String password) {
		// TODO Auto-generated method stub		
			return findUser(username,password);
	}

	private boolean findUser(String username, String password) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.currentSession();
		Transaction tx = session.beginTransaction();		
		String hql = "from User where username='"+username+"' and password='"+password+"'";
		List result = session.createQuery(hql).list();
		if(result.isEmpty()){
			return false;
		}
		return true;
	}


}
