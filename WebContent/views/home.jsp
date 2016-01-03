
<%-- <%
response.sendRedirect(request.getContextPath() + "/empMain");
%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MainPage</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/jquery-2.1.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"/>
 </head>
<body>

    
<div class="container formDiv col-xs-offset-1 col-xs-10 col-sm-offset-7 col-sm-4 col-md-offset-4 col-md-4 col-lg-offset-8 col-lg-3">

<form:form role="form" action="scsMain" commandName="admin" method="POST">
  <div class="row form-group">
   <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <form:input type="text" path="uname" class="form-control" placeholder="Username" id="email"></form:input>
    <form:errors Style="color:red;" align="left" path="uname" cssClass="error"/>
    </div>
  </div>
  <div class="row form-group">
    <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <form:input type="password" path="psswd" class="form-control" placeholder="Password" id="pwd"></form:input>
    <form:errors Style="color:red;" align="left" path="psswd" cssClass="error"/>
    </div>
  </div>
  <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <label><input type="checkbox"> Remember me</label>

  <button type="submit" class="btn btn-success col-xs-offset-3 col-sm-offset-4 col-md-offset-1 col-lg-offset-1">Submit</button>

  </div>
</form:form>

</div>




</body>
<style>

 .formDiv
{
border:groove ;
height:100% !important;
margin-top:15%;
padding-top:2%;
padding-bottom:2%;
border-radius:8px;
}

</style>
</html>