/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2023-02-16 18:58:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n");
      out.write("\r\n");
      out.write("    <title>Kitchen Baket - Add Products</title>\r\n");
      out.write("    <meta content=\"\" name=\"description\" />\r\n");
      out.write("    <meta content=\"\" name=\"keywords\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicons -->\r\n");
      out.write("    <link href=\"assets/img/favicon1.png\" rel=\"icon\" />\r\n");
      out.write("    <!-- <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\" /> -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Google Fonts -->\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("    />\r\n");
      out.write("\r\n");
      out.write("    <script\r\n");
      out.write("      src=\"https://kit.fontawesome.com/6ce3a30560.js\"\r\n");
      out.write("      crossorigin=\"anonymous\"\r\n");
      out.write("    ></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Vendor CSS Files -->\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"assets/vendor/bootstrap/css/bootstrap.min.css\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("    />\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("    />\r\n");
      out.write("    <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Template Main CSS File -->\r\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("    <!-- ======= Header ======= -->\r\n");
      out.write("    <header id=\"header\" class=\"fixed-top\">\r\n");
      out.write("      <div class=\"container d-flex align-items-center\">\r\n");
      out.write("        <h1 class=\"logo me-auto\"><a href=\"admin.jsp\">KBMS</a></h1>\r\n");
      out.write("        <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\r\n");
      out.write("          <ul>\r\n");
      out.write("            <li><a class=\"active\" href=\"admin.jsp\">Home</a></li>\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("              <a href=\"#\"\r\n");
      out.write("                ><span>Operations</span> <i class=\"bi bi-chevron-down\"></i\r\n");
      out.write("              ></a>\r\n");
      out.write("              <ul>\r\n");
      out.write("                <li><a href=\"show.jsp\">Show All Products Details</a></li>\r\n");
      out.write("                <li><a href=\"add.jsp\">Add Products</a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <i class=\"bi bi-list mobile-nav-toggle\"></i>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- .navbar -->\r\n");
      out.write("\r\n");
      out.write("        <a href=\"login.jsp\" class=\"get-started-btn\">Logout</a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <!-- End Header -->\r\n");
      out.write("\r\n");
      out.write("    <main id=\"main\">\r\n");
      out.write("      <!-- ======= Breadcrumbs ======= -->\r\n");
      out.write("      <div class=\"breadcrumbs\" data-aos=\"fade-in\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <h2>Add Products</h2>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- End Breadcrumbs -->\r\n");
      out.write("\r\n");
      out.write("      <section style=\"background-color: #eee\">\r\n");
      out.write("        <div class=\"container h-100\">\r\n");
      out.write("          <div\r\n");
      out.write("            class=\"row d-flex justify-content-center align-items-center h-100\"\r\n");
      out.write("          >\r\n");
      out.write("            <div class=\"col-lg-12 col-xl-11\">\r\n");
      out.write("              <div class=\"card text-black\" style=\"border-radius: 25px\">\r\n");
      out.write("                <div class=\"card-body p-md-5\">\r\n");
      out.write("                  <div class=\"row justify-content-center\">\r\n");
      out.write("                    <div class=\"col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1\">\r\n");
      out.write("                      <p class=\"text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4\">\r\n");
      out.write("                        Add Products\r\n");
      out.write("                      </p>\r\n");
      out.write("                      <form\r\n");
      out.write("                        class=\"mx-1 mx-md-4\"\r\n");
      out.write("                        action=\"InsertData\"\r\n");
      out.write("                        method=\"post\"\r\n");
      out.write("                      >\r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"Product_id\"\r\n");
      out.write("                              id=\"form3Example1c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter Product Id\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <!-- <i class=\"bx bx-group\"></i> -->\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"product_name\"\r\n");
      out.write("                              id=\"form3Example1c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter Product_Name\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <!-- <i class=\"bx bx-group\"></i> -->\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"count\"\r\n");
      out.write("                              id=\"form3Example1c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter Product count\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <!-- <i class=\"bx bx-user-pin\"></i> -->\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"total_stock\"\r\n");
      out.write("                              id=\"form3Example3c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter total stock of product\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <!-- <i class=\"bx bx-user-pin\"></i> -->\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"Best_Before\"\r\n");
      out.write("                              id=\"form3Example1c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter Best Before Date Of Product\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"d-flex flex-row align-items-center mb-4\">\r\n");
      out.write("                          <!-- <i class=\"bx bx-user-pin\"></i> -->\r\n");
      out.write("                          <i class=\"fas fa-id-card fa-lg me-3 fa-fw\"></i>\r\n");
      out.write("                          <div class=\"form-outline flex-fill mb-0\">\r\n");
      out.write("                            <input\r\n");
      out.write("                              type=\"text\"\r\n");
      out.write("                              name=\"Price_Per_Unit\"\r\n");
      out.write("                              id=\"form3Example1c\"\r\n");
      out.write("                              class=\"form-control\"\r\n");
      out.write("                              placeholder=\"Enter Price Per Unit Of the Product\"\r\n");
      out.write("                            />\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <div\r\n");
      out.write("                          class=\"d-flex justify-content-center mx-4 mb-3 mb-lg-4\"\r\n");
      out.write("                        >\r\n");
      out.write("                          <button type=\"submit\" class=\"btn btn-primary btn-lg\">\r\n");
      out.write("                            Add Products\r\n");
      out.write("                          </button>\r\n");
      out.write("                          \r\n");
      out.write("                        <!--  <li><a href=\"add1.jsp\"></a></li> -->\r\n");
      out.write("                          \r\n");
      out.write("                        </div>\r\n");
      out.write("                      </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div\r\n");
      out.write("                      class=\"col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2\"\r\n");
      out.write("                    >\r\n");
      out.write("                      <img\r\n");
      out.write("                        src=\"./assets/img/vegetable.jpg\"\r\n");
      out.write("                        class=\"img-fluid\"\r\n");
      out.write("                        alt=\"Sample image\"\r\n");
      out.write("                      />\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </section>\r\n");
      out.write("    </main>\r\n");
      out.write("    <!-- End #main -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ======= Footer ======= -->\r\n");
      out.write("    <footer id=\"footer\">\r\n");
      out.write("      <div class=\"footer-top\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row\" style=\"justify-content: space-around\">\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6 footer-contact\">\r\n");
      out.write("              <h3>Admin Portal</h3>\r\n");
      out.write("              \r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-2 col-md-6 footer-links\">\r\n");
      out.write("              <h4>Useful Links</h4>\r\n");
      out.write("              <ul>\r\n");
      out.write("                <li>\r\n");
      out.write("                  <i class=\"bx bx-chevron-right\"></i>\r\n");
      out.write("                  <a href=\"admin.jsp\">Home</a>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6 footer-links\">\r\n");
      out.write("              <h4>Operations</h4>\r\n");
      out.write("              <ul>\r\n");
      out.write("                <li>\r\n");
      out.write("                  <i class=\"bx bx-chevron-right\"></i>\r\n");
      out.write("                  <a href=\"show.jsp\">Show All Products Details</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                  <i class=\"bx bx-chevron-right\"></i>\r\n");
      out.write("                  <a href=\"add.jsp\">Add Products</a>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"container d-md-flex py-4\">\r\n");
      out.write("        <div class=\"me-md-auto text-center text-md-start\">\r\n");
      out.write("          <div class=\"copyright\">\r\n");
      out.write("            &copy; Copyright <strong><span>KBMS</span></strong\r\n");
      out.write("            >. All Rights Reserved\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"credits\">Designed by <a></a></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"social-links text-center text-md-right pt-3 pt-md-0\">\r\n");
      out.write("          <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\r\n");
      out.write("          <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\r\n");
      out.write("          <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\r\n");
      out.write("          <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\r\n");
      out.write("          <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!-- End Footer -->\r\n");
      out.write("\r\n");
      out.write("    <div id=\"preloader\"></div>\r\n");
      out.write("    <a\r\n");
      out.write("      href=\"#\"\r\n");
      out.write("      class=\"back-to-top d-flex align-items-center justify-content-center\"\r\n");
      out.write("      ><i class=\"bi bi-arrow-up-short\"></i\r\n");
      out.write("    ></a>\r\n");
      out.write("\r\n");
      out.write("    <!-- Template Main JS File -->\r\n");
      out.write("    <script src=\"assets/js/main.js\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
