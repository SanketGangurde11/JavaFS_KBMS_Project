package com.revature.model;

public class Admin {
	private int ProductId;
	private String ProductName;
	private long productCount;
	private long totalStock ;
	private String bestBefore;
	private int PricePerUnit ;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Admin(int productId, String productName, long productCount, long totalStock, String bestBefore,
			int pricePerUnit) {
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
	public long getProductCount() {
		return productCount;
	}
	public void setProductCount(long productCount) {
		this.productCount = productCount;
	}
	public long getTotalStock() {
		return totalStock;
	}
	public void setTotalStock(long totalStock) {
		this.totalStock = totalStock;
	}
	public String getBestBefore() {
		return bestBefore;
	}
	public void setBestBefore(String bestBefore) {
		this.bestBefore = bestBefore;
	}
	public int getPricePerUnit() {
		return PricePerUnit;
	}
	public void setPricePerUnit(int pricePerUnit) {
		PricePerUnit = pricePerUnit;
	}


	@Override
	public String toString() {
		return "Admin [ProductId=" + ProductId + ", ProductName=" + ProductName + ", productCount=" + productCount
				+ ", totalStock=" + totalStock + ", bestBefore=" + bestBefore + ", PricePerUnit=" + PricePerUnit + "]";
	}
	
	
	
	
	
	
}








