    <%@page import="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    User auth=(User)request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth",auth);
    }
    %>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>ShopFast login page</title>
<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
<div class="container">
<div class="card w-50 mx-auto my-5">
<div class="card-header text-centre">User Signup
</div>
<div class="card-body">
<form action="user-login" method="post">

<div class="form-group"> 
<label>Email Address</label>
<input type="email" class="form-control" name="login-email" placeholder="Enter your email" required>
</div>

<div class="form-group"> 
<label>Username</label>
<input type="text" class="form-control" name="login-email" placeholder="Enter your name" required>
</div>

<div class="form-group"> 
<label>Password</label>
<input type="password" class="form-control" name="login-password" placeholder="*******" required>
</div>

<div class=text-centre>
<button type="Submit" class="btn btn-primary">Sign Up</button>
</form>
<br/><br/>
<p>Already A User? <a href="login.jsp">Login</a></p>

  


</div>
</form>
</div>
</div>
</div>

<%@include file="includes/footer.jsp" %>
</body>
</html>