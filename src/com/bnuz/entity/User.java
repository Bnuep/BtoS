package com.bnuz.entity;

import java.util.HashSet;
import java.util.Set;

public class User {
	private Integer uid;
	private String username;
	private String password;
	private Set<PPT> ppts= new HashSet<PPT>();
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
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
	public Set<PPT> getPpts() {
		return ppts;
	}
	public void setPpts(Set<PPT> ppts) {
		this.ppts = ppts;
	}

	

}
