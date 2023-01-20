package com.kbms.dao;

import java.sql.SQLException;

public interface AdminDao {

	public void addProduct() throws SQLException;
	public  void getAllProducts() throws Exception;
	public  void removeProduct() throws Exception;
	public  void updateProduct(int id) throws Exception;
}
