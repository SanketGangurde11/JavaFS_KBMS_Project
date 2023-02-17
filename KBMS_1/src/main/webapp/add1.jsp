<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%
String Product_id=request.getParameter("id");
String Product_name=request.getParameter("Product_name");
String Product_count=request.getParameter("Product_count");
String Total_stock=request.getParameter("Total_stock");
String Best_before =request.getParameter("Best_before");
String Price_per_unit=request.getParameter("Price_per_unit");

out.println("Data added Successfully!");
//out.println(id);
/* try
{ */
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbms", "root", "User@123");
Statement st=conn.createStatement();
int i=st.executeUpdate("INSERT INTO  `Product`(PRODUCT_ID, PRODUCT_NAME, PRODUCT_COUNT, TOTAL_STOCK, BEST_BEFORE, PRICE_PER_UNIT) VALUES (?,?,?,?,?,?)");
/* out.println("Data Deleted Successfully!"); */
 if(i>0){
	response.sendRedirect("show.jsp");
}

/* PreparedStatement st=conn.prepareStatement("DELETE FROM trainer WHERE trainer_id="+id);
ResultSet rs = st.executeQuery(); */


/*  catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}  */
%>