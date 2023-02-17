<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>KBMS - All Products Details</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon1.png" rel="icon" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />

    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <!-- Table -->
    <link
      rel="Stylesheet"
      href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"
    />
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.12.3.js"
    ></script>
    <script
      type="text/javascript"
      src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"
    ></script>
    <!-- <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script> -->

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
        <h1 class="logo me-auto"><a href="admin.jsp">KBMS</a></h1>

        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><a class="active" href="admin.jsp">Home</a></li>
            <li class="dropdown">
              <a href="#"
                ><span>Operations</span> <i class="bi bi-chevron-down"></i
              ></a>
              <ul>
                <li><a href="show.jsp">Show All Products Details</a></li>
                <li><a href="add.jsp">Add Product</a></li>
               <!--  <li><a href="add1.jsp">Add Product</a></li> -->
                
<%--             <a href="delete.jsp?id=<%=resultSet.getString("PRODUCT_ID") %>" ><button type="button" class="btn btn-danger">Delete</button></a>
 --%>              
              </ul>
            </li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->

        <a href="login.jsp" class="get-started-btn">Logout</a>
      </div>
    </header>
    <!-- End Header -->

    <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
          <h2>All Products Details</h2>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <div class="container mt-5 px-2" style="margin-bottom: 5%;">
        <div class="table-responsive">
          <table id="MyTable" class="display" cellspacing="0" width="100%" style="padding-top: 25px;">
            <thead>
              <tr>
                <th>PRODUCT_ID</th>
                <th>PRODUCT_NAME</th>
                <th>PRODUCT_COUNT</th>
                <th>TOTAL_STOCK</th>
                <th>BEST_BEFORE</th>
                <th>PRICE_PER_UNIT</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
            
            <%
            	Connection connection = null;
            	Statement statement = null;
            	
            		
            	try{
            		Class.forName("com.mysql.cj.jdbc.Driver");
            		String url="jdbc:mysql://localhost:3306/KBMS";
            		connection=DriverManager.getConnection(url, "root", "User@123");
            		statement = connection.createStatement();
            		ResultSet resultSet = statement.executeQuery("select * from PRODUCT");
            		int i=0;
            		while(resultSet.next()){
            	
            %>
            
              <tr>
                <td><% out.println(resultSet.getString("PRODUCT_ID")); %></td>
                <td><% out.println(resultSet.getString("PRODUCT_NAME")); %></td>
                <td><% out.println(resultSet.getString("PRODUCT_COUNT")); %></td>
                <td><% out.println(resultSet.getString("TOTAL_STOCK")); %></td>
                <td><% out.println(resultSet.getString("BEST_BEFORE")); %></td>
                <td><% out.println(resultSet.getString("PRICE_PER_UNIT")); %></td>
                <td>
                  <!-- <button
                    type="button"
                    class="btn btn-primary"
                    data-toggle="modal"
                    data-target="#exampleModalCenter"
                  >
                    Edit

                  </button> -->
                  <td><a href="edit.jsp?Product_id=<%=resultSet.getString("product_id") %>"><button class="btn btn-success">Edit</button></a>
                </td>
                <td>
                	<a href="delete.jsp?id=<%=resultSet.getString("PRODUCT_ID") %>" ><button type="button" class="btn btn-danger">Delete</button></a>
                </td>
              </tr>
              <% 
              i++;
            		}
            	}catch(Exception e){
            		e.printStackTrace();
            	}
              %>

            </tbody>
          </table>
        </div>
      </div>
    </main>
    <!-- End #main -->

    <!-- Modal -->
    <div
      class="modal fade"
      id="exampleModalCenter"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">
              Edit PRODUCT Details
            </h5>
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form class="mx-1 mx-md-4">
             
              <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="Product id"
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
                              name="product name"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Product Name"
                            />
                          </div>
                        </div>


                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-user-pin"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="Product count"
                              id="form3Example3c"
                              class="form-control"
                              placeholder="Enter count of product"
                            />
                          </div>
                        </div>
                        <div class="d-flex flex-row align-items-center mb-4">
                          <!-- <i class="bx bx-user-pin"></i> -->
                          <i class="fas fa-id-card fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input
                              type="text"
                              name="total stock"
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
                              name="Best Before"
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
                              name="Price Per Unit"
                              id="form3Example1c"
                              class="form-control"
                              placeholder="Enter Price Per Unit Of the Product"
                            />
                          </div>
                        </div>
                        
              
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-primary">Save changes</button>
            
		
		
		
		
		
		
		
            
            
            
          </div>
        </div>
      </div>
    </div>

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row" style="justify-content: space-around">
            <div class="col-lg-3 col-md-6 footer-contact">
              <h3>Admin Portal </h3>
              
            </div>

            <div class="col-lg-2 col-md-6 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="admin.jsp">Home</a>
                </li>
              </ul>
            </div>

            <div class="col-lg-3 col-md-6 footer-links">
              <h4>Operations</h4>
              <ul>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="show.jsp">Show All Product Details</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="add1.jsp">Add Products</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container d-md-flex py-4">
        <div class="me-md-auto text-center text-md-start">
          <div class="copyright">
            &copy; Copyright <strong><span>Products</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">Designed by <a>Sanket</a></div>
        </div>
        <div class="social-links text-center text-md-right pt-3 pt-md-0">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <div id="preloader"></div>
    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
      $(document).ready(function () {
        $("#MyTable").DataTable({
          initComplete: function () {
            this.api()
              .columns()
              .every(function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                  .appendTo($(column.footer()).empty())
                  .on("change", function () {
                    var val = $.fn.dataTable.util.escapeRegex($(this).val());
                    //to select and search from grid
                    column
                      .search(val ? "^" + val + "$" : "", true, false)
                      .draw();
                  });

                column
                  .data()
                  .unique()
                  .sort()
                  .each(function (d, j) {
                    select.append(
                      '<option value="' + d + '">' + d + "</option>"
                    );
                  });
              });
          },
        });
      });
    </script>
  </body>
</html>
