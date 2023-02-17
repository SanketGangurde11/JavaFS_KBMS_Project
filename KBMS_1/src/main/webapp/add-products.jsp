<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
	<%@page isELIgnored="false"  %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Add Products</title>

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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
</head>

<div class="container d-flex align-items-center">
			<h1 class="logo me-auto">
				<a href="index.jsp">Products</a>
			</h1>
			
			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="active" href="home.jsp">Home</a></li>

					<li class="dropdown"><a href="#"><span> provision</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="add-Products.jsp">Add Products</a></li>
							<li class="dropdown"></li>
							<li><a href="delete-edit-Products.jsp">Show Products</a></li>
						</ul></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			

<body class="bg-light">
	<div class="container pt-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Products</p>
						
						
						<c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg"/>
						</c:if>
						
						
						<c:if test="${not empty errorMsg}">
						<p class="text-center text-success">${errorMsg}</p>
						<c:remove var="errorMsg"/>
						</c:if>
						
						
						
						<form action="add-associate" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Products
									Id</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="associate-id" />
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Products
									Name</label> <input type="text" class="form-control"
									id="exampleInputPassword1" name="name" />
							</div>
							<div class="col-md-6 mb-4">
								<label for="exampleInputPassword1" class="form-label">Type</label>
								<select class="select"
									style="width: 200%; padding: 13px 10px; border-radius: 5px; color: rgb(23, 18, 18);"
									name="track">
									<option value="0" selected>select</option>
									<option value="1">fruit</option>
									<option value="2">Vegitable</option>
									<option value="3">Spices</option>
									<!-- <option value="4">Testing</option> -->
								</select>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Products count</label>
								<input type="text" class="form-control"
									id="exampleInputPassword1" name="Qualification" />
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Products Best Before</label>
								<input type="text" class="form-control"
									id="exampleInputPassword1" name="Experience" />
							</div>

							<button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
		
		
		
			<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
		
</body>
</html>
