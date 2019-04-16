<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Register user</title>

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
	<div class="collapse navbar-collapse" id="navbarColor01"></div>
	</nav>




	<div class="container">

		<center>
			<h2>
				<ins>
					<b>Register</b>
				</ins>
			</h2>
		</center>
		<form:form action="addAdmin" class="needs-validation" commandName="admin" method="post">
			<div class="form-group">
				<form:label path="firstName">First Name:</form:label>
				<form:input type="text" maxlength="10" class="form-control"
					path="firstName" placeholder="Enter firstname" required="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="lastName">Last Name:</form:label>
				<form:input type="text" class="form-control" path="lastName"
					placeholder="Enter lastname" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="age">Age:</form:label>
				<form:input type="text" class="form-control" path="age"
					placeholder="Enter age" required="true" />
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="gender">Gender:</form:label>
				&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<form:select path="gender">
					<form:option value=" "></form:option>
					<form:option value="male">Male</form:option>&nbsp;&nbsp;&nbsp;&nbsp;
												<form:option value="female">Female</form:option>&nbsp;&nbsp;&nbsp;&nbsp;

											</form:select>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>





			<div class="form-group">
				<form:label path="contactNumber">Contact no:</form:label>
				<form:input type="text" class="form-control" path="contactNumber"
					placeholder="Enter contact no" required ="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="emailId">Email:</form:label>
				<form:input type="text" class="form-control" path="emailId"
					placeholder="Enter email" required ="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>

			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:input type="text" class="form-control" path="password"
					placeholder="Enter password" name="password" required ="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>

			<%-- <div class="form-group">
				<form:label path="cpassword">Confirm password:</form:label> <form:input type="text"
					class="form-control" path="cpassword"
					placeholder="Retype password" required/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div> --%>

			<div class="form-group">
				<form:label path="branch">Branch:</form:label>
				
				<form:input type="text" class="form-control" path="branch"
					placeholder="Enter branch" required ="true"/>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>

			<div class="form-group">
				<!-- <br><br> -->
				<button type="submit" class="btn btn-primary">Submit</button>
				<br>
				<br>

			</div>

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