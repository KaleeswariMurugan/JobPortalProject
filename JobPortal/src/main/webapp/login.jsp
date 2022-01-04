<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/all_css.jsp" %>

</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid">
   <div class="row p-5">
     <div class="card">
     <i class="fas fa-user-plus" aria-hidden="true"></i>
     <h5>Login Page</h5>
     </div>
      <c:if test="${not empty succMsg }">
        <h4 class="text-center text-danger">${succMsg }</h4>>
        <c: remove var="succMsg"/>
        </c:if>
     
<form action="login" method="post">
   <div class="form-group">
      <label>Enter Email</label>
      <input type="email" required="required" class="form-control" id="exambleInputEmail" aria-describedby="emailhelp" name="email">
   </div>
 <div class="form-group">
      <label for="exambleInputPassword">Enter Password</label>
      <input type="password" required="required" class="form-control" id="exambleInputPassword" name="password">
   </div>
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
</div>
</div>
</body>
</html>