<%-- <%@page import="com.revature.model.Associate"%>
<%@page import="java.util.List"%>
<%@page import="com.revature.dao.impl.AssociateDaoImp"%>
<%@page import="com.revature.jdbc.util.ConnectionFactory"%>
 --%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>delete-edit Products</title>
<meta content="" name="description" />
<meta content="" name="keywords" />


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
<link href="assets/vendor/aos/aos.css" rel="stylesheet" />
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link href="./mentor/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet" />
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet" />

<!-- tables links -->
<link rel="Stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>

<body
	style="display: flex; margin-top: 3%; flex-direction: column; margin-left: -2%; margin-right: 4%;">
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">
			<h1 class="logo me-auto">
				<a href="index.jsp">add product</a>
			</h1>
			
			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="active" href="home.jsp">Home</a></li>

					<li class="dropdown"><a href="#"><span> provision</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="add-associate.jsp">Add Products</a></li>
							<li class="dropdown"></li>
							<li><a href="delete-edit-associate.jsp">Show Products</a></li>
						</ul></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

			<a href="index.jsp" class="get-started-btn">LogOut</a>
		</div>
	</header>
	<!-- End Header -->

	<main id="main" style="margin-top: 6%; margin-left: 6%">
		<div class="container p-3">
			<div class="card">
				<div class="card-body">
					<p class="text-center fs-1">All Product Details</p>

					<c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" />
					</c:if>


					<c:if test="${not empty errorMsg}">
						<p class="text-center text-success">${errorMsg}</p>
						<c:remove var="errorMsg" />
					</c:if>
					<table id="MyTable" class="display" cellspacing="0" width="100%">
						<thead>
							<tr>
								
							</tr>
						</thead>
						<tbody>

							<%
				/* AssociateDaoImp dao = new AssociateDaoImp(ConnectionFactory.getConnection());
				List<Associate> list = dao.getAllAssociate();
				for (Associate a : list) */ {
				%>
							<%-- <tr>
								<td scope="row"><%=a.getAssociateId()%></td>
								<td scope="row"><%=a.getAssociateName()%></td>
								<td scope="row"><%=a.getAssociateTrack()%></td>
								<td scope="row"><%=a.getAssociateQualification()%></td>
								<td scope="row"><%=a.getAssociateExperience()%></td>
								<td><a
									href="edit.jsp?Associate_id=<%=a.getAssociateId() %>"
									class="btn btn-sm btn-primary">Edit</a></td>
								<td><a href="delete?Associate_id=<%=a.getAssociateId() %>" class="btn btn-sm btn-danger ms-1">Delete</a>
								</td>
							</tr>
 --%>
							<%
				}
				%>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>product </h3>
						<p>
							A108 Adam Street <br /> New York, NY 535022<br /> United States
							<br /> <br /> <strong>Phone:</strong> +1 5589 55488 55<br /> <strong>Email:</strong>
							info@example.com<br />
						</p>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="index.html">Home</a>
							</li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a
								href="add-associate.html">Add Products</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="delete-edit-associate.html">Show Products</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Edit
									Products</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Delete
									Products</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container d-md-flex py-4">
			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Products</span></strong>. All
					Rights Reserved
				</div>
				<div class="credits">
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
					Designed by <a href="https://bootstrapmade.com/"></a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

	<!-- table script -->
	<script>
		
		$(document)
				.ready(
						function() {
							$("#MyTable")
									.DataTable(
											{
												initComplete : function() {
													this
															.api()
															.columns()
															.every(
																	function() {
																		var column = this;
																		var select = $(
																				'<select><option value=""></option></select>')
																				.appendTo(
																						$(
																								column
																										.footer())
																								.empty())
																				.on(
																						"change",
																						function() {
																							var val = $.fn.dataTable.util
																									.escapeRegex($(
																											this)
																											.val());
																							//to select and search from grid
																							column
																									.search(
																											val ? "^"
																													+ val
																													+ "$"
																													: "",
																											true,
																											false)
																									.draw();
																						});

																		column
																				.data()
																				.unique()
																				.sort()
																				.each(
																						function(
																								d,
																								j) {
																							select
																									.append('<option value="' + d + '">'
																											+ d
																											+ "</option>");
																						});
																	});
												},
											});
						});
	</script>
</body>
</html>
