<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%
String id=request.getParameter("id");
out.println("Data Deleted Successfully!");
out.println(id);
/* try
{ */
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbms", "root", "User@123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM Product WHERE PRODUCT_ID="+id);
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