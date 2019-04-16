<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Details</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${request.contextPath }/static/styles/bootstrap.min.css"></link>
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
			<li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="create">Create</a></li>
			<li class="nav-item active"><a class="nav-link" href="#">Search<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="list">List</a></li>
		</ul>
	</div>
	<%-- <form action="/Vehicle_Reservation_System/logout" commandName="emp" method="post"> --%>
	<a href="<c:url value='j_spring_security_logout'/>">
		<button type="submit" class="btn btn-outline-secondary">Logout</button>
		</a>
	<%-- </form> --%>
	</nav>
	<div class="container">

		<h2 style="margin-top: 50px;">Search Vehicle</h2>
		<form:form action="searchVehicle" method="post" class="needs-validation" novalidate="true" commandName="searchVehicle">
		
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<form:label path="branch">Branch:</form:label> <form:input type="text"
							class="form-control" path="branch" required="true"/>
						<div class="valid-feedback"></div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>

					<div class="form-group">
						<form:label path="lastServiceDate">Last Serviced Month:</form:label>
						<div class="form-group">
							<form:select class="form-control" path="lastServiceDate" required="true">
								<form:option value="" class="hidden" selected="true" disabled="true">Choose Month</form:option>
								<form:option value="01">Jan</form:option>
								<form:option value="02">Feb</form:option>
								<form:option value="03">Mar</form:option>
								<form:option value="04">Apr</form:option>
								<form:option value="05">May</form:option>
								<form:option value="06">Jun</form:option>
								<form:option value="07">Jul</form:option>
								<form:option value="08">Aug</form:option>
								<form:option value="09">Sep</form:option>
								<form:option value="10">Oct</form:option>
								<form:option value="11">Nov</form:option>
								<form:option value="12">Dec</form:option>
							</form:select>
						</div>
						<div class="valid-feedback"></div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>

				</div>
				<div class="col-sm-5">

					<div class="form-group">
						<form:label path="vehicleType">Vehicle Type:</form:label> 
						<form:input type="text"
							class="form-control" path="vehicleType" required="true"/>
						<div class="valid-feedback"></div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>

					<div class="form-group">
						<form:label path="serviceDueDate">Service Due Month:</form:label>
						<div class="form-group">
							<form:select class="form-control" path="serviceDueDate" required="true">
								<form:option value="" class="hidden" selected="true" disabled="true">Choose Month</form:option>
								<form:option value="01">Jan</form:option>
								<form:option value="02">Feb</form:option>
								<form:option value="03">Mar</form:option>
								<form:option value="04">Apr</form:option>
								<form:option value="05">May</form:option>
								<form:option value="06">Jun</form:option>
								<form:option value="07">Jul</form:option>
								<form:option value="08">Aug</form:option>
								<form:option value="09">Sep</form:option>
								<form:option value="10">Oct</form:option>
								<form:option value="11">Nov</form:option>
								<form:option value="12">Dec</form:option>
							</form:select>
						</div>
						<div class="valid-feedback"></div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
				</div>
				<div class="col-sm-2" style="margin-top: 100px">
					<button type="submit" class="btn btn-primary">Search</button>
				</div>
			</div>
		</form:form>



	</div>

	<!-- table code here -->

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