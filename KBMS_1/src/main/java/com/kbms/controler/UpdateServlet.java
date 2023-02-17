package com.kbms.controler;
import com.kbms.configuration.DatabaseConnection;
import com.kbms.dao.Admindao1;
import com.kbms.model.Admin;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/editProduct")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ProductId =request.getParameter("Product_id");
		String ProductName =request.getParameter("product_name");
		String count =request.getParameter("count");
		String totalStock =request.getParameter("total_stock");
		String bestBefore =request.getParameter("Best_Before");
		String PricePerUnit =request.getParameter("Price_Per_Unit");

		Admin ad= new Admin();
		ad.setProductId(ProductId);
		ad.setProductName(ProductName);
		ad.setProductCount(count);
		ad.setTotalStock(totalStock);
		ad.setBestBefore(bestBefore);
		ad.setPricePerUnit(PricePerUnit);
		
		System.out.println(ad);
		Admindao1 ado;
		try {
			ado = new Admindao1(DatabaseConnection.getConnection());
			HttpSession session=request.getSession();
			boolean f= ado.addproduct(ad);
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/KBMS", "root", "User@123");
			String sql="update Product set Product_id = ?, product_name = ?,Product_count= ?,total_stock =?, Best_Before=?,Price_Per_Unit=? where Product_id = ?";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, ad.getProductId());
			ps.setString(2, ad.getProductName());
			ps.setString(3, ad.getProductCount());
	    	ps.setString(4, ad.getTotalStock());
			ps.setString(5, ad.getBestBefore());
			ps.setString(6, ad.getPricePerUnit());
			ps.setString(7, ad.getProductId());
			int i=ps.executeUpdate();
			/* System.out.println(i); */

			System.out.println("executed");
			
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			if(f) {
				session.setAttribute("succMsg","Student details submit sucessfully");
				response.sendRedirect("show.jsp");
			}else {
				session.setAttribute("errorMsg","Something wrong on server");
				response.sendRedirect("show.jsp");

			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
//		HttpSession session=request.getSession();
//		boolean f= ado.addproduct(ad);
//		try {
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/KBMS", "root", "User@123");
//		String sql="update Product set Product_id = ?, product_name = ?,Product_count= ?,total_stock =?, Best_Before=?,Price_Per_Unit=? where Product_id = ?";
//		PreparedStatement ps= con.prepareStatement(sql);
//		ps.setString(1, ad.getProductId());
//		ps.setString(2, ad.getProductName());
//		ps.setString(3, ad.getProductCount());
//    	ps.setString(4, ad.getTotalStock());
//		ps.setString(5, ad.getBestBefore());
//		ps.setString(6, ad.getPricePerUnit());
//		ps.setString(7, ad.getProductId());
//		int i=ps.executeUpdate();
//		/* System.out.println(i); */
//
//		System.out.println("executed");
//		
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		if(f) {
//			session.setAttribute("succMsg","Student details submit sucessfully");
//			response.sendRedirect("edit.jsp");
//		}else {
//			session.setAttribute("errorMsg","Something wrong on server");
//			response.sendRedirect("show.jsp");
//
//		}
//	}
//		
		
		/*
		 * // TODO Auto-generated method stub
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
