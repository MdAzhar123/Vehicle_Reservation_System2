<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${request.contextPath }/static/styles/bootstrap.min.css"></link>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"> <a
		class="navbar-brand" href="#">Vehicle Reservation System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="create">Create</a></li>
			<li class="nav-item"><a class="nav-link" href="search">Search</a></li>
			<li class="nav-item"><a class="nav-link" href="list">List</a></li>
			<li></li>
		</ul>
	</div>
	<%-- <form action="/Vehicle_Reservation_System/logout" commandName="emp" method="post"> --%>
	     <a href="<c:url value='j_spring_security_logout'/>">
		<button type="submit" class="btn btn-outline-secondary">Logout</button></a>
	<%-- </form> --%>
	</nav>
	<div class="row">
		<form:form commandName="currentAdmin">
			<div class="card mb-3 col-sm-5"
				style="max-width: 30rem; margin-top: 100px; margin-left: 50px;">
				<h3 class="card-header">${ currentAdmin.firstName }&nbsp;${ currentAdmin.lastName }</h3>
				<div class="card-body">
					<h5 class="card-title">Welcome Admin</h5>
					<!-- 	<h6 class="card-subtitle text-muted">Support card subtitle</h6> -->
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
					alt="Card image">
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Employee Id: ${ currentAdmin.adminId }</li>
					<li class="list-group-item">Contact No: ${ currentAdmin.contactNumber }</li>
					<li class="list-group-item">Email Id: ${ currentAdmin.emailId }</li>
					<li class="list-group-item">Branch: ${ currentAdmin.branch }</li>
				</ul>
				<div class="card-body">
					<a href="editAdmin/${currentAdmin.adminId}" class="card-link">Update Details</a> <a
						href="deleteAdmin/${currentAdmin.adminId}" class="card-link">Delete Account</a>
				</div>
				<div class="card-footer text-muted">2 days ago</div>
			</div>
		</form:form>
		<div class="jumbotron col-sm-7"
			style="margin-top: 100px; margin-left: 50px;">
			<h1 class="display-3">Welcome</h1>
			<p class="lead">Established in 1996, this vehicle reservation
				system is a powerful system with an impressive set of features. It’s
				a fully integrated software designed to simplify vehicle management
				and enable car rentals to accept online reservations with ease. It
				enables rental operators to organize the vehicle in groups with the
				robust vehicle grouping feature and run insightful usability
				reports. Vehicle grouping allows customers to select their ideal car
				with ease.</p>
			<hr class="my-4">
			<p>The reservation module allows administrators to add, update,
				view and search all reservations from a centralized control panel.
				It makes it easier to email or print the reservations or filter them
				using multiple criteria such as name, dates, locations, vehicle,
				etc. Better still, the advanced quote engine empowers automatic
				calculation of rates, charging daily extras, prorating season
				cutoffs, and billing drop-off fees. The engine is custom-quoted to
				adhere to all business rules regardless of the complexity to deliver
				quotes faster and flawlessly. One can get details of vehicle number,
				branch, vehicle type, insurance expiry date, last serviced date,
				service due date and send notification emails as and when required .

			</p>
			<!-- 
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
  </p> -->
		</div>
	</div>
</body>
</html>