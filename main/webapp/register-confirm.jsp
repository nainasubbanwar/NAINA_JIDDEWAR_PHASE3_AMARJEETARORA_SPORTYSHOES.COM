<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Registration Confirmation</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/header.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>
<div class="container">
<p class="alert alert-success" style="text-align:center;">Your registration is confirmed. <a href="login">Login to continue shopping</a><br></p>
</div>

<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>