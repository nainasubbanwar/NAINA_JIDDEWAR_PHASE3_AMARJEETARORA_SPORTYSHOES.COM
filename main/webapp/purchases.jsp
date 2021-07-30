<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Your Purchases</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/header.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>


	
<div class="container p-3 my-3 bg-dark text-white">
<br style="color:orange;text-align:right">Total ${list.size()} Orders: ${totalAmount }<br>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col">Date</th>
      <th scope="col">Total</th>
      <th scope="col">Items</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="item">
    <tr>
      <th scope="row">${item.ID }</th>
      <td>${item.date }</td>
      <td>${item.total}</td>
      <td>${mapItems.get(item.ID)}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>

<br>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>