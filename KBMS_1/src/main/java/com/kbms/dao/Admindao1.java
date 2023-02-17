package com.kbms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kbms.model.Admin;


public class Admindao1 extends Admin{
	private Connection conn;
	public Admindao1(Connection conn){
		super();
		this.conn = conn;
	}

	public boolean addproduct(Admin ad) {
		boolean f= false;
		try {
			String sql="insert into product(Product_id,product_name,product_count,total_stock,best_before,Price_per_unit) values(?,?,?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setString(1, ad.getProductId());
			ps.setString(2, ad.getProductName());
			ps.setString(3, ad.getProductCount());
        	ps.setString(4, ad.getTotalStock());
			ps.setString(5, ad.getBestBefore());
			ps.setString(6, ad.getPricePerUnit());
			

			int i=ps.executeUpdate();
			if(i==1) { 
				f=true;
			}
		}catch( Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	public Admin getProducteById(String id) {
		Admin ad=null;
		try {
			String sql="select * from Product where Product_id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1,Integer.parseInt(id));
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				
				ad=new Admin();
				
				ps.setString(1, ad.getProductId());
				ps.setString(2, ad.getProductName());
				ps.setString(3, ad.getProductCount());
	        	ps.setString(4, ad.getTotalStock());
				ps.setString(5, ad.getBestBefore());
				ps.setString(6, ad.getPricePerUnit());
                 
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return ad;
	}

	
public boolean EditProduct(Admin ad) {
	boolean f= false;
	try {
		String sql="update product set Product_id=?,product_name=?,product_count=?,total_stock=?,best_before=?,Price_per_unit=? where Product_id=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		
		ps.setString(1, ad.getProductId());
		ps.setString(2, ad.getProductName());
		ps.setString(3, ad.getProductCount());
    	ps.setString(4, ad.getTotalStock());
		ps.setString(5, ad.getBestBefore());
		ps.setString(6, ad.getPricePerUnit());
		ps.setString(7, ad.getProductId());
		

		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
	}catch( Exception e) {
		e.printStackTrace();
	}
	
	return f;
}
}




//	public boolean updateUser(Trainer trainer) throws SQLException {
//        boolean rowUpdated = false;
//        try {
//			String sql="update trainer set trainer_name = ?,trainer_track= ?, trainer_qual =?, trainer_exp =? where id = ?;";
//			PreparedStatement ps= conn.prepareStatement(sql);
//			
//			ps.setString(1, trainer.getTrainerName());
//			ps.setString(2, trainer.getTrainerTrack() );
//        	ps.setString(3, trainer.getTrainerQualification());
//			ps.setString(4, trainer.getTrainerExperience() );
//			ps.setString(5, trainer.getTrainerId());
//			
//			int i=ps.executeUpdate();
//			if(i==1) {
//				rowUpdated=true;
//			}
//		}catch( Exception e) {
//			e.printStackTrace();
//		}
//        return rowUpdated;
//    }

