package com.kbms.configuration;


public class QueryUtil {
	public static final String INSERT_QUERY = "INSERT INTO `KBMS`.`PRODUCT` (`LOGIN_ID`,`PASSWORD`,`LAST_MODIFIED`) VALUES (?,?,?) ";
	public static final String query = "INSERT INTO  `KBMS`.`PRODUCT`(PRODUCT_ID, PRODUCT_NAME, PRODUCT_COUNT, TOTAL_STOCK, BEST_BEFORE, PRICE_PER_UNIT) VALUES (?,?,?,?,?,?)";

	public static String insertAdmin() {
		return "INSERT INTO  `Product`(PRODUCT_ID, PRODUCT_NAME, PRODUCT_COUNT, TOTAL_STOCK, BEST_BEFORE, PRICE_PER_UNIT) VALUES (?,?,?,?,?,?)";
	}

	public static String selectAllProducts() {
		return "SELECT * FROM Product";
	}


public static String selectProById(int id) {
	return "SELECT * FROM `KBMS`.`Product` WHERE PRODUCT_ID ='"+id+"'";
}
public static final String SELECT_QUERY = "SELECT * FROM PRODUCT WHERE PRODUCT_ID = ? ";
public static String updateName(int n,String newName) {
	return "UPDATE PRODUCT SET PRODUCT_NAME ='"+newName+"' WHERE PRODUCT_ID='"+n+"'";
}
public static String updateProductCount(int id,String count) {
	return "UPDATE PRODUCT SET PRODUCT_COUNT ='"+count+"' WHERE PRODUCT_ID='"+id+"'";
}
public static String updateTotalStock(int id,String totalStock) {
	return "UPDATE PRODUCT SET TOTAL_STOCK ='"+totalStock+"' WHERE PRODUCT_ID='"+id+"'";
}
public static String updateBestBefore(int id,String newBest) {
	return "UPDATE PRODUCT SET BEST_BEFORE ='"+newBest+"' WHERE PRODUCT_ID='"+id+"'";
}
public static String updatePricePerUnit(int id,String newPPU) {
	return "UPDATE PRODUCT SET PRICE_PER_UNIT ='"+newPPU+"' WHERE PRODUCT_ID='"+id+"'";
}
//public static String updateAge(String id,String newAge) {
//	return "UPDATE Customer SET age ='"+newAge+"' WHERE PRODUCT_ID='"+id+"'";
//}
//public static String chechAdmin() {
//	return "SELECT * FROM Customer WHERE preferred_login_id = ? + AND password = ? ";
//}
}