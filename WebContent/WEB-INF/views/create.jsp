<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Add Details</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${request.contextPath }/static/styles/bootstrap.min.css">

</head>



<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
		style="margin-bottom:90px;"> <a class="navbar-brand" href="#">Vehicle
		Reservation System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
			<li class="nav-item active"><a class="nav-link" href="#">Create<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="search">Search</a></li>
			<li class="nav-item"><a class="nav-link" href="list">List</a></li>
		</ul>
	</div>
	<%-- <form action="/Vehicle_Reservation_System/logout" commandName="emp" method="post"> --%>
	    <a href="<c:url value='j_spring_security_logout'/>">
		<button type="submit" class="btn btn-outline-secondary">Logout</button></a>
	<%-- </form> --%>
	</nav>
	<div class="container">

		<h2>Add Vehicle</h2>
		<form:form method="post" action="addVehicle" class="needs-validation"
			commandName="create">
			<div class="form-group">
				<form:label path="vehicleNo">Vehicle No.:</form:label>
				<form:input type="text" maxlength="10" class="form-control"
					path="vehicleNo" placeholder="Enter Vehicle Number" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="branch">Branch:</form:label>
				<form:input type="text" class="form-control" path="branch"
					placeholder="Enter Branch" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="vehicleType">Vehicle Type:</form:label>
				<form:input type="text" class="form-control" path="vehicleType"
					placeholder="Enter VehicleType" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="insuranceExpiryDate">Insurance Expiry date:</form:label>
				<form:input type="date" class="form-control"
					path="insuranceExpiryDate"
					placeholder="Enter Insurance Expiry date" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="lastServiceDate">Last Service Date:</form:label>
				<form:input type="date" class="form-control" path="lastServiceDate"
					placeholder="Enter Last Service Date" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="serviceDueDate">Service Due date:</form:label>
				<form:input type="date" class="form-control" path="serviceDueDate"
					placeholder="Enter Service Due date" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form:form>
	</div>

	<script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Get the forms we want to add validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

</body>
</html>
​
