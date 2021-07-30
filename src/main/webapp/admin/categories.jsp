<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Setup Product Categories</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>



	
<div class="container">
Total Categories: ${list.size()} &nbsp;&nbsp; <a class="btn btn-warning" style="text-align:right" href="admineditcat?id=0">Add Category</a><br>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Category</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="item">
    <tr>
      <th scope="row">${item.name }</th>
      <td>
 	  	<a href="admineditcat?id=${item.ID}">Edit</a> | <a href="admindeletecat?id=${item.ID}">Delete</a>
 	  </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>