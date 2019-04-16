<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Update Your Details</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${request.contextPath }/static/styles/bootstrap.min.css">

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
			<li class="nav-item"><a class="nav-link" href="create">Create</a></li>
			<li class="nav-item"><a class="nav-link" href="search">Search</a></li>
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

		<h2>Update Your Details</h2>
		<form:form  method="post" action="editCurrentAdmin" class="needs-validation" commandName="currentAdmin1">
			<div class="form-group">
				<form:label path="adminId">Admin Id:</form:label> <form:input type="text"
					maxlength="10" class="form-control" path="adminId" value="${ currentAdmin1.adminId }" readonly="true"/>
			</div>
			<div class="form-group">
				<form:label path="firstName">First Name:</form:label> <form:input type="text"
					class="form-control" path="firstName" value="${ currentAdmin1.firstName }" readonly="true"/>
			</div>
			<div class="form-group">
				<form:label path="lastName">Last Name:</form:label> <form:input type="text"
					class="form-control" path="lastName" value="${ currentAdmin1.lastName }" readonly="true"/>
			</div>
			<div class="form-group">
				<form:label path="age">Age:</form:label> <form:input type="text"
					class="form-control" path="age" value="${ currentAdmin1.age }" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="gender">Gender:</form:label> <form:input type="text"
					class="form-control" path="gender" value="${ currentAdmin1.gender }" readonly="true"/>
			</div>
			<div class="form-group">
				<form:label path="contactNumber">Contact Number:</form:label> <form:input type="text"
					class="form-control" path="contactNumber" value="${ currentAdmin1.contactNumber }" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="emailId">Email Id:</form:label> <form:input type="text"
					class="form-control" path="emailId" value="${ currentAdmin1.emailId }" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="password">Password:</form:label> <form:input type="password"
					class="form-control" path="password" value="${ currentAdmin1.password }" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="branch">Branch:</form:label> <form:input type="text"
					class="form-control" path="branch" value="${ currentAdmin1.branch }" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<input type="submit" class="btn btn-primary" value="Update" />
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
