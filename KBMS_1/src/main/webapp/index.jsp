<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>KBMS - Home</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
   <!--  <link href="assets/img/favicon2.png" rel="icon" /> -->

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
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

  </head>
  
  <style>
  #hero {
  width: 100%;
  height: 100vh;
  background: url("assets/img/main.jpg") top center;
  background-size: cover;
  position: relative;
}
  
  </style>

  <body >
  
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
        <!-- <h1 class="logo me-auto"><a href="home.html">TFMS</a></h1> -->
        <h1 class="logo me-auto"><img style="height: 50%" ></h1>

        
        <!-- Start navbar -->
        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><a class="active" href="#">Home</a></li>
            <!-- <li><a class="active" href="about.jsp">About</a></li> -->
            <li><a class="active" href="contact.jsp">Contact</a></li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- end navbar -->

        <a href="login.jsp" class="get-started-btn">Login</a>
      </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex justify-content-center align-items-center" >
      <div
        class="container position-relative"
        data-aos="zoom-in"
        data-aos-delay="100"
      >
      <a href="add.html">Add Products</a>
        <h1>Welcome, Admin</h1>
       <h2>This is the place where you can easily add, delete and update products for your business. With our user-friendly interface, managing your product inventory has never been easier.</br></h2>
        <a href="login.jsp" class="btn-get-started">Login</a>
      </div>
    </section>
    <!-- End Hero -->

    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row" style="justify-content: space-around;">
            <div class="col-lg-3 col-md-6 footer-contact">
              <h3>Admin</h3>
              
            </div>

            <div class="col-lg-2 col-md-6 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li>
                  <i class="bx bx-chevron-right"></i> <a href="#">Home</a>
                </li>
                
                <li>
                  <i class="bx bx-chevron-right"></i> <a href="contact.jsp">Contact</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i> <a href="login.jsp">Login</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container d-md-flex py-4">
        <div class="me-md-auto text-center text-md-start">
          <div class="copyright">
            &copy; Copyright <strong><span>Kitchen Basket</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">
            Designed by <a>Sanket </a>
          </div>
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

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
