<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Kitchen Baket - Add Products</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon1.png" rel="icon" />
    <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" /> -->

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <script
      src="https://kit.fontawesome.com/6ce3a30560.js"
      crossorigin="anonymous"
    ></script>

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

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
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
                <li><a href="add.jsp">Add Products</a></li>
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
          <h2>Add Products</h2>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <section style="background-color: #eee">
        <div class="container h-100">
          <div
            class="row d-flex justify-content-center align-items-center h-100"
          >
            <div class="col-lg-12 col-xl-11">
              <div class="card text-black" style="border-radius: 25px">
                <div class="card-body p-md-5">
                  <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">
                        Add Products
                      </p>
                      <form
                        class="mx-1 mx-md-4"
                        action="InsertData"
                        method="post"
                      >
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
                        
                        
                        <div
                          class="d-flex justify-content-center mx-4 mb-3 mb-lg-4"
                        >
                          <button type="submit" class="btn btn-primary btn-lg">
                            Add Products
                          </button>
                          
                        <!--  <li><a href="add1.jsp"></a></li> -->
                          
                        </div>
                      </form>
                    </div>
                    <div
                      class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2"
                    >
                      <img
                        src="./assets/img/vegetable.jpg"
                        class="img-fluid"
                        alt="Sample image"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row" style="justify-content: space-around">
            <div class="col-lg-3 col-md-6 footer-contact">
              <h3>Admin Portal</h3>
              
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
                  <a href="show.jsp">Show All Products Details</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="add.jsp">Add Products</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container d-md-flex py-4">
        <div class="me-md-auto text-center text-md-start">
          <div class="copyright">
            &copy; Copyright <strong><span>KBMS</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">Designed by <a></a></div>
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
  </body>
</html>
