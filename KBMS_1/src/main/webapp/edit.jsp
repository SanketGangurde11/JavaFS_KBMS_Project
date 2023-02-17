<%@page import="com.kbms.model.Admin"%>
<%@page import="com.kbms.configuration.DatabaseConnection"%>
<%@page import="com.kbms.dao.Admindao1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="display: flex; justify-content: center; margin-top: 50px;">
<head>
<meta charset="ISO-8859-1">
<!-- Favicons -->
 <link href="assets/img/favicon1.png" rel="icon" />
 <title>TFMS - Edit</title>
</head>
<body>
	
	<%
		String id=(request.getParameter("Product_id"));
	Admindao1 dao = new Admindao1(DatabaseConnection.getConnection());
		Admin t = dao.getProducteById(id);
	%>
	<div
      class="modal fade"
      id="exampleModalCenter"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true"
      style="padding: 50px; background-color: white; border-radius: 10px; box-shadow: 5px 10px 10px 5px #888888;"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLongTitle" style="text-align: center;">
              Edit Product Details
            </h3>
          </div>
          <div class="modal-body">
            <form class="mx-1 mx-md-4" action="editProduct" method="post"> 
            
            <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="Product_id"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Product Id"
                              
                            />
                          </div>
                        </div>
              <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-group"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="product_name"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Product_Name"
                            />
                          </div>
                        </div>
                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-group"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="count"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Product count"
                            />
                          </div>
                        </div>
                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-user-pin"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="total_stock"
                              id="form3Example3c"
                              class="form-control"
                              placeholder="Enter total stock of product"
                            />
                          </div>
                        </div>
                        
                        
                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-user-pin"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="Best_Before"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Best Before Date Of Product"
                            />
                          </div>
                        </div>
                        
                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-user-pin"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="Price_Per_Unit"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Price Per Unit Of the Product"
                            />
                          </div>
                        </div>
                        
              <button type="submit" class="btn btn-primary"  style="background-color: #5fcf80; border:none; padding: 10px; border-radius: 3px; color: white;">Save changes</button>
            </form>
          </div>
        </div>
      </div>
    </div>
</body>
</html>