<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Change Password</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>


<form name=frmPwd method=post action="adminchangepwdaction">
 <div class="container">
 <p class="alert alert-danger">${error }</p>
<table class="table table-dark" style="border:1px solid black;">
  <tbody>
    <tr>
      <td scope="col">Enter new password*</td>
      <td><input name=pwd maxlength=10 type="password"></td>
    </tr>
    <tr>
      <td width=25%>Confirm new Password*</td>
      <td>
 	  <input name=pwd2 maxlength=10 type="password">
 	  </td>
    </tr>
  </tbody>
</table>
 		<p style="">
 			<button class="btn btn-warning">Login</button>
 		</p>
</div>
</form>

<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>