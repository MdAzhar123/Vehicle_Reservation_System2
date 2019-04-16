<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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



	<center>
		<h2>
			<ins>
				<b>Welcome</b>
			</ins>
		</h2>
	</center>
	<br>
	<br>
	<form action="<c:url value='j_spring_security_check'/>" commandName="login" method="post">
		<center>
			<div class="form-group">
				<table>
					<tr>
						<td>Username:</td>
						<td><input type="text" maxlength="10"
								class="form-control" name='j_username'
								placeholder="Enter username" required="true" /></td>
					</tr>
				</table>
			</div>
			<br>
			<div class="form-group">
				<table>
					<tr>
						<td>Password:</td>
						<td><input type="password" class="form-control"
								 name='j_password' placeholder="Enter password" required ="true"/></td>
					</tr>
				</table>
			</div>
			<br>
			<div class="form-group">
				<!-- <br><br> -->
				<input type="submit" value="Login" class="btn btn-primary"/>
				<br>
				<br>
				
			</div>
		</center>
	</form>
	<center>
	<form action="register"  method="post" >
		<input type="submit" name="submit" class="btn btn-link" value="Don't have a account? Register here"/>		
	</form>
	</center>
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
