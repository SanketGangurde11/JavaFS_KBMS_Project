package com.kbms.model;

public class Admin {
	
	private int ProductId;
	private String ProductName;
	private String productCount;
	private String totalStock ;
	private String bestBefore;
	private String PricePerUnit ;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	//private String ProductType;
	public Admin(int productId, String productName, String productCount, String totalStock, String bestBefore,
			String pricePerUnit) {
		super();
		ProductId = productId;
		ProductName = productName;
		this.productCount = productCount;
		this.totalStock = totalStock;
		this.bestBefore = bestBefore;
		PricePerUnit = pricePerUnit;
	}
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductCount() {
		return productCount;
	}
	public void setProductCount(String productCount) {
		this.productCount = productCount;
	}
	public String getTotalStock() {
		return totalStock;
	}
	public void setTotalStock(String totalStock) {
		this.totalStock = totalStock;
	}
	public String getBestBefore() {
		return bestBefore;
	}
	public void setBestBefore(String bestBefore) {
		this.bestBefore = bestBefore;
	}
	public String getPricePerUnit() {
		return PricePerUnit;
	}
	public void setPricePerUnit(String pricePerUnit) {
		PricePerUnit = pricePerUnit;
	}
	@Override
	public String toString() {
		return "Admin [ProductId=" + ProductId + ", ProductName=" + ProductName + ", productCount=" + productCount
				+ ", totalStock=" + totalStock + ", bestBefore=" + bestBefore + ", PricePerUnit=" + PricePerUnit + "]";
	}
	
	
}





