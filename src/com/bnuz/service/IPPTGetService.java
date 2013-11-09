package com.bnuz.service;

import java.util.List;

import com.bnuz.entity.PPT;

public interface IPPTGetService {
	public PPT get(String title,String username);
	public PPT getPPT(String title,String username);
    public List<PPT> getPPTS(String username);
}
