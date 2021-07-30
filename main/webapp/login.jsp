<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.contain{
	margin:0px 15%;
}
.topmar{
	margin:150px 0%;
}
</style>
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div class="container">
	<div class="row topmar">
	<div class="col-6" >
		<div class="contain p-3 my-3 bg-dark text-white">
		<h2 style="text-align:center">Login</h2>
		<c:if test = "${regsucmessage !=null}">
		<p class="alert alert-warning"><c:out value="${regsucmessage}"/></p>
		</c:if>
		<form action="loginaction" method="post">

			<div class="form-group">
				<label for="email_id">User Name:</label> 
				<input type="text" class="form-control" id="email_id" placeholder="User Name" name="email_id" required>
			</div>

			<div class="form-group">
				<label for="pwd">Password:</label> 
				<input type="password" class="form-control" id="pwd" placeholder="Password" name="pwd" required>
			</div>
			<p class="text-danger"><c:out value="${error}"/></p>
			<button type="submit" class="btn btn-primary">Submit</button>
			<p>Not Registered Yet <a href="signup">Click here</a></p>
		</form>
		</div>
	</div>

	<div class="col-6">
		<div class="contain p-3 my-3 bg-dark text-white">
		<h2 style="text-align:center">Admin Login</h2>
		<form action="adminloginaction" method="post">

			<div class="form-group">
				<label for="admin_id">User Name:</label> 
				<input type="text" class="form-control" id="admin_id" placeholder="User Name" name="admin_id" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> 
				<input type="password" class="form-control" id="admin_pwd" placeholder="Password" name="admin_pwd" required>
			</div>
			<p class="text-danger"><c:out value="${adminerrlogmessage}"/></p>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>