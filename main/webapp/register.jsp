<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.detailsbox{
	padding:80px 25%;
}
</style>
</head>
<body>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div class="detailsbox">
	<div class="margin p-3 my-3 bg-dark text-white">
		<form action="signupaction" method="post">
		  <h4>Register</h4>
		  <div class="row">
		  <div class="form-group col">
		    <label for="fname">First name</label>
		    <input type="text" class="form-control" id="fname" name="fname"   maxlength="20" placeholder="Enter first name" required>
		  </div>
		  <div class="form-group col">
		    <label for="lname">Last name</label>
		    <input type="text" class="form-control" id="lname" name="lname" maxlength="20" placeholder="Enter last name" required>
		  </div>
		  </div>
		  <div class="form-group">
		    <label for="email_id">Email address</label>
		    <input type="email" class="form-control" id="email_id" name="email_id" maxlength="40" placeholder="Enter email" required>
		  </div>
		  <div class="form-group">
		    <label for="age">Age</label>
		    <input type="number" class="form-control" id="age" name="age" placeholder="Enter Age" required>
		  </div>
		  <div class="form-group">
		    <label for="address">Address</label>
		    <input type="text" class="form-control" id="address" name="address" maxlength="100" placeholder="Enter Address" required>
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password</label>
		    <input type="password" class="form-control" id="pwd" name="pwd" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div class="form-group">
		    <label for="pwd2">Confirm Password</label>
		    <input type="password" class="form-control" id="pwd2" name="pwd2" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div class="">
		  	  <c:if test="${error!=null}">
		  	  <h5 class="alert alert-danger"><c:out value="${error}"/></h5>
		  	  </c:if>
			  <button type="submit" class="btn btn-primary"> REGISTER </button>
		  </div>
		</form>
	</div>
	</div>
	
</body>
</html>