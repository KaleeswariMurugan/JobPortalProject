<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
   <div class="container-fluid">
    <div class="row p-4">
    <div class="card">
     <div class="card-body">
       <div class="text-center">
        <i class="fas fa-user-plus" aria-hidden="true"></i>
        <h5>Registration</h5>
       </div>
       <c:if test="${not empty succMsg}">
       <h4 class="text-center text-success">${succMsg }</h4>
       <c:remove var="succMsg"/>
       </c:if>
       
       <form action="add_user" method="post">
         <div class="form-group">
            <label>Enter Full Name</label>
            <input type="text" required="required" class="form-control" id="exambleInputEmail" aria-describedby="emailhelp" name="name">
         </div>
         <div class="form-group">
           <label>Enter Qualification</label>
           <input type="text" required="required" class="form-control" id="exambleInputemail" name="qua">
         </div>
          <div class="form-group">
             <label>Enter Email</label>
             <input type="email" required="required" class="form-control" id="exambleInputEmail" aria-describedby="emailhelp" name="email">
           </div>
          <div class="form-group">
            <label for="exambleInputPassword">Enter Password</label>
             <input type="password" required="required" class="form-control" id="exambleInputPassword" name="ps">
           </div>
         <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
        
       </form>
       </div>
     </div>
    </div>
    
    </div>

</body>
</html>