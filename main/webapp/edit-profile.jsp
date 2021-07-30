<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Edit Profile</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.detailsbox{
	padding:80px 25%;
}
</style>
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div class="detailsbox">
	<div class="margin p-3 my-3 bg-dark text-white">
		<form name=frmEdit action="editprofileaction" method="post">
		  <h4>Update Profile</h4>
		  <div class="row">
		  <input type=hidden name=user_id value="${user.ID}">
		  <div class="form-group col">
		    <label for="fname">First name</label>
		    <input type="text" class="form-control" id="fname" name="fname"   maxlength="20" placeholder="Enter first name" value="${user.fname }" required>
		  </div>
		  <div class="form-group col">
		    <label for="lname">Last name</label>
		    <input type="text" class="form-control" id="lname" name="lname" maxlength="20" placeholder="Enter last name" value="${user.lname }" required>
		  </div>
		  </div>
		  <div class="form-group">
		    <label for="age">Age</label>
		    <input type="tel" class="form-control" id="age" name="age" placeholder="Enter Age" value="${user.age }" required >
		  </div>
		  <div class="form-group">
		    <label for="address">Address</label>
		    <input type="text" class="form-control" id="address" name="address" maxlength="100" placeholder="Enter Address" value="${user.address }" required>
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password</label>
		    <input type="text" class="form-control" id="pwd" name="pwd" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div class="form-group">
		    <label for="pwd2">Confirm Password</label>
		    <input type="text" class="form-control" id="pwd2" name="pwd2" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div class="">
		  	  <small id="phone" class="form-text text-muted">We'll never share your phone no and email with anyone else.</small>
		  	  <c:if test="${error!=null}">
		  	  <h5 class="alert alert-danger"><c:out value="${error}"/></h5>
		  	  </c:if>
			  <button type="submit" class="btn btn-primary"> UPDATE </button>
		  </div>
		</form>
	</div>
	</div>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>


	