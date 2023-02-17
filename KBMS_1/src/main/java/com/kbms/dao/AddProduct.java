package com.kbms.dao;
import com.kbms.model.Admin;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.kbms.configuration.*;
/**
 * Servlet implementation class AddTrainer
 */


@WebServlet("/InsertData")
public class AddProduct extends HttpServlet {
	/**
	 * 
	 */

	private static final long serialVersionUID = -1536672256143974665L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//doGet(request, response);
		
		//int ProductId;
		String ProductId =request.getParameter("Product_id");
		String ProductName =request.getParameter("product_name");
		String count =request.getParameter("count");
		String totalStock =request.getParameter("total_stock");
		String bestBefore =request.getParameter("Best_Before");
		String PricePerUnit =request.getParameter("Price_Per_Unit");
		response.getWriter().print("ssdfdssssssssssssssssssdf");
	//	System.out.println("ghghghghhhhhv"+count);
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
				 
				 if(f) {
						session.setAttribute("succMsg","Product details submit sucessfully");
						response.sendRedirect("show.jsp");
					}else {
						session.setAttribute("errorMsg","Something wrong on server");
						response.sendRedirect("show.jsp");
				
			}
				 
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//		
//		HttpSession session=request.getSession();
//		 boolean f= ado.addproduct(ad);
//		
//		if(f) {
//			session.setAttribute("succMsg","Product details submit sucessfully");
//			//response.sendRedirect("show.jsp");
//		}else {
//			session.setAttribute("errorMsg","Something wrong on server");
//			//response.sendRedirect("add.jsp");

		}
	}


