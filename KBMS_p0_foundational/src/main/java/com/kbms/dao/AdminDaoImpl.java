package com.kbms.dao;
import java.awt.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import com.kbms.configuration.DatabaseConnection;
import com.kbms.configuration.QueryUtil;
import com.kbms.constant.Constants;
import com.kbms.model.Admin;
import com.kbms.app.menu.Menudriven;
import org.apache.log4j.Logger;

public class AdminDaoImpl implements AdminDao{
	private static final Logger log=Logger.getLogger(Menu.class);
	
	@Override
	public void addProduct() throws SQLException {
		DatabaseConnection databaseconnection=new DatabaseConnection();
		Admin ad=new Admin();
		String ch;
		Scanner scan = new Scanner(System.in);
		log.info("\n"+Constants.ProductType);
		log.info(Constants.ProductId);
		int Productid = scan.nextInt();
		ad.setProductId(Productid);
		
		log.info(Constants.ProductName);
		String ProductName = scan.next();
		ad.setProductName(ProductName);
		
		log.info(Constants.productCount);
		String productCount = scan.next();
		ad.setProductCount(productCount);
		
		
		log.info(Constants.totalStock);
		String totalStock = scan.next();
		ad.setTotalStock(totalStock);
		
		log.info(Constants.bestBefore);
		String bestBefore =scan.next();
		ad.setBestBefore(bestBefore);
		
		log.info(Constants.PricePerUnit);
		String PricePerUnit=scan.next();
		ad.setPricePerUnit(PricePerUnit);
		
		try(Connection connection =databaseconnection.getConnection(); 
				)			
				{
					PreparedStatement preparedStatement =connection.prepareStatement(QueryUtil.insertAdmin());
			
			preparedStatement.setInt(1, Productid);
			preparedStatement.setString(2, ProductName);
			preparedStatement.setString(3, productCount);
			preparedStatement.setString(4, totalStock);
			preparedStatement.setString(5, bestBefore);
			preparedStatement.setString(6, PricePerUnit);	
			int rows =preparedStatement.executeUpdate();
			
			if(rows>0) {
				log.info("Product added successfully");
			}
			else {
				log.info("Failed");
			}
			preparedStatement.close();
			connection.close();
				}
	}	
	@Override
	public  void getAllProducts() throws Exception {
		
		try(Connection connection = DatabaseConnection.getConnection();
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(QueryUtil.selectAllProducts());){
			    
			while(resultSet.next()) {
				
				printProducts(resultSet);
			}
			Menudriven.signIn();
		}
	
	}
	
	private  void printProducts(ResultSet set) {
		try {
			log.info("Product Id :"+set.getInt(1));
			log.info("Product Name :"+set.getString(2));
			log.info("productCount :"+set.getString(3));
			log.info("totalStock"+set.getString(4));
			log.info("bestBefore:"+set.getString(5));
			log.info("PricePerUnit:"+set.getString(6));
			log.info("-----------------------------------------------------");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public  boolean getProductById(int id) throws SQLException {
		boolean isBoolean = false;
		try(Connection connection = DatabaseConnection.getConnection();
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(QueryUtil.selectProById( id))){
		if(resultSet.next()) {
			isBoolean=true;
			
			printProducts(resultSet);
		}	else {
			log.info("Record not found");
		}
		}
		return isBoolean;
		
	}
	@Override
	public  void removeProduct() throws Exception{
		Scanner sc1=new Scanner(System.in);
		Connection conn=DatabaseConnection.getConnection();
		log.info("Enter the product id to be deleted ");
		int Product_id=sc1.nextInt();
		String deletequery=Constants.DELETE_QUERY;
		PreparedStatement ps1=conn.prepareStatement(deletequery);
		ps1.setInt(1, Product_id);
		int k=ps1.executeUpdate();
		if(k>0)
		{
			log.info(Constants.VALUES_DELETED);
		}
		else 
		{
			log.info("Invalid Product Id ");
		}
		
	}
	@Override
	public  void updateProduct(int id) throws Exception {
		Scanner input=new Scanner(System.in);
		int n = id;
		try(Connection connection =DatabaseConnection.getConnection();){
			
			log.info("Press 1: Update Product Name");
			log.info("Press 2: Update Product Count");
			log.info("Press 3: Update total Stock");
			log.info("Press 4: Update BestBefore");
			log.info("Press 5: Price Per Unit");
			log.info("Press 6 to exit");
			
			int choice = input.nextInt();
			switch(choice) {
			case 1:
				log.info("Enter new Product Name");
				String newName = input.next();
				PreparedStatement preparedStatement =connection.prepareStatement(QueryUtil.updateName(n,newName));
				int rows =preparedStatement.executeUpdate();
				if(rows>0) {
					log.info("Name updated successfully");
					log.info("Press 1 to go back");
					int n1=input.nextInt();
					if(n1==1) {
						updateProduct(n);
					}
				}
				else {
					log.info("Failed");
				}
			case 2:
				log.info("Enter new Product Count");
				String count = input.next();
				PreparedStatement preparedStatement2 =connection.prepareStatement(QueryUtil.updateProductCount(n,count));
				int rows2 =preparedStatement2.executeUpdate();
				if(rows2>0) {
					log.info("Product Count updated successfully");
					log.info("Press 1 to go back");
					int n1=input.nextInt();
					if(n1==1) {
						updateProduct(n);
					}
					
				}
				else {
					log.info("Failed");
				}
			case 3:
				log.info("Enter new total Stock");
				String totalStock = input.next();
				PreparedStatement preparedStatement3 =connection.prepareStatement(QueryUtil.updateTotalStock(n,totalStock));
				int rows3 =preparedStatement3.executeUpdate();
				if(rows3>0) {
					log.info("total Stock updated successfully");
					log.info("Press 1 to go back");
					int n1=input.nextInt();
					if(n1==1) {
						updateProduct(n);
					}
					
				}
				else {
					log.info("Failed");
				}
			case 4:
				log.info("Enter new BestBefore");
				String BestBefore = input.next();
				PreparedStatement preparedStatement4 =connection.prepareStatement(QueryUtil.updateBestBefore(n,BestBefore));
				int rows4=preparedStatement4.executeUpdate();
				if(rows4>0) {
					log.info("BestBefore updated successfully");
					log.info("Press 1 to go back");
					int n1=input.nextInt();
					if(n1==1) {
						updateProduct(n);
					}
					
				}
				else {
					log.info("Failed");
				}
			case 5:
				log.info("Enter new Price Per Unit");
				String Price = input.next();
				PreparedStatement preparedStatement5 =connection.prepareStatement(QueryUtil.updatePricePerUnit(n,Price));
				int rows5=preparedStatement5.executeUpdate();
				if(rows5>0) {
					log.info("Price Per Unit updated successfully");
					log.info("Press 1 to go back");
					int n1=input.nextInt();
					if(n1==1) {
						updateProduct(n);
					}
					
				}
				else {
					log.info("Failed");
				}
			case 6:
				Menudriven.signIn();
				
			default :
				log.info("Wrong option selected");
				updateProduct(n);
			}
		}
	}

	
public void login() throws Exception {

	try(Connection connection = DatabaseConnection.getConnection();){
			Statement statement = connection.createStatement();
	// Get input from user
	Scanner sc = new Scanner(System.in);
	System.out.print("Username: ");
	String username = sc.nextLine();
	System.out.print("Password: ");
	String password = sc.nextLine();
		// Execute a query
	    
		log.info("Checking credentials...");

		String sql;
		sql = "SELECT * FROM AdminDetails WHERE preferred_login_id = '" + username + "' AND password = '" + password + "'";
		ResultSet rs = statement.executeQuery(sql);
		
		// Extract data from result set
		
		if (rs.next()) {
			// Retrieve by column name
			String AdminName = rs.getString("preferred_login_id");
			String AdminPassword = rs.getString("password");

			// Display values
			log.info("\n");
			log.info("-------------Welcome, " + AdminName + "!----------------");
			Menudriven.signIn();
		} else {
			Scanner scan = new Scanner(System.in);
			log.info("Invalid username or password.");
			log.info("You r not registered user");
			log.info("Press 1 to registered");
			int n = scan.nextInt();
			if(n==1) {
				
			}
		}
		// Clean-up environment
		rs.close();
		statement.close();
		}
}
}
