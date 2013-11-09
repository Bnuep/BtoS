package com.bnuz.service;

import com.bnuz.entity.Page;

public interface IPPTLoadService {

	public boolean load(String title,String username);
	public boolean loadpage(Page page,String title);
}
