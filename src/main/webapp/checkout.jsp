<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Checkout</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/header.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>

<br>
<div class="container">
<h3 style="text-align:center; color:orange;">Your Total Order is worth ${cartValue}</h3><br><br>

<p style="text-align:center;"><a class="alert alert-warning" href="gateway">Pay via secure Payment Gateway</a></p>
</div>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>