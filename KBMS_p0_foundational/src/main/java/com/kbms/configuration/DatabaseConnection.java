package com.kbms.configuration;

import java.sql.Connection;
//import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {
	private static Connection con = null;

	private static final String DRIVER_PATH = "com.mysql.cj.jdbc.Driver";
	private static final  String DATABASE_URL="jdbc:mysql://localhost:3306/KBMS";
	private static final  String USERNAME = "root";
	private static final  String PASSWORD = "User@123";
	
	public DatabaseConnection() {
		try {
			
			Class.forName(DRIVER_PATH);
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException("Something went wrong ."+e);
		}
	}
  public static Connection  getConnection() throws SQLException {
		return DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
	}
}
