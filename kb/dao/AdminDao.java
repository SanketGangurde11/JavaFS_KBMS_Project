package com.revature.dao;
import com.revature.model.Admin;

public interface AdminDao {

	public Admin getUser(String username, String password);
	
}

