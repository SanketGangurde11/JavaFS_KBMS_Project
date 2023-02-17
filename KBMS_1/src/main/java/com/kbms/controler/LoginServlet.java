package com.kbms.controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServer")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection myCon;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = "jdbc:mysql://localhost:3306/KBMS";
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			myCon = DriverManager.getConnection(url, "root", "User@123");
			System.out.println("connected");
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("not found");
		}
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// loginCredentials.setPassword(request.getParameter("password"));
		HttpSession session = request.getSession(true);
		RequestDispatcher dispatcher;
		try {
			PreparedStatement PStm = myCon.prepareStatement(
					"select admin_username ,admin_password from adminlogin where admin_username=? and admin_password=?");
			PStm.setString(1, username);
			PStm.setString(2, password);
//			System.out.println(PStm);
			ResultSet rs = PStm.executeQuery();
			if (rs.next()) {
				dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
				// System.out.println(rs.getString(1));
				if (Objects.isNull(session)) {
					response.setIntHeader("Refresh", 1);
					// response.sendRedirect("login.jsp");
					System.out.println("this obj112");
					return;
				}
				session.setAttribute("username", rs.getString(1));
				System.out.println(session.getAttribute("username"));
				// System.out.println(rs.getString(1)+" hidbvkdjvksdnkjn" +rs.getString(2));
			} else {
				request.setAttribute("status", "failed");
				System.out.println("not availble");
				dispatcher = request.getRequestDispatcher("loginaPage.jsp");
				// response.sendRedirect("bookappointment.html");
				dispatcher.include(request, response);
				// response.setIntHeader("Refresh", 1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}