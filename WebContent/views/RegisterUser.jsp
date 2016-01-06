<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/jquery-1.11.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"/>
</head>
<body>

<div  id="RegForm" class="container formDiv col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
  <div class="">
  <form:form action="RegisterSubmit" commandName="RegisterData" method="POST">
  <%-- <div class="row form-group">
   <form:input type="text" path="UID" class="input form-control" placeholder="User Id"></form:input>   
  </div> --%>
  <div class="row form-group">
   <form:input type="text" path="UNAME" class="input form-control" placeholder="User Name"></form:input>
  </div>
  <!-- <div class="row form-group">
   <form:input type="text" path="PSSWD" class="input form-control" placeholder="Password"></form:input>
  </div> -->
  <div class="row form-group">
   <form:input type="text" path="Email" class="input form-control" placeholder="Email"></form:input>
  </div>
  <div class="row form-group">
   <form:input type="number" path="Phone" class="input form-control" placeholder="Phone"></form:input>
  </div>
  <div class="row form-group">
   <form:textarea type="text" path="Address" class="input form-control" placeholder="Address" rows="4"></form:textarea>
  </div>
  <div class="row form-group">
   <form:textarea type="text" path="sec_que" class="input form-control" placeholder="Security question?" rows="1"></form:textarea>
  </div>
  <div class="row form-group">
   <form:textarea type="text" path="sec_ans" class="input form-control" placeholder="security question answer.." rows="1"></form:textarea>
  </div>
  <div class="row form-group">
 
   <form:select class="form-control" id="role"  path="role" >
    <option value="" disabled selected hidden>Please Choose your role</option>
    <option>Guest</option>
    <option>Employee</option>
    <option>Admin</option>
    <option>Master</option>   
  </form:select>
  </div>
  <div class="row row-btn">
  <input type="submit" class="btn btn-warning " value="Create"/>&nbsp;
  </div>
</form:form>
  </div>

</div>

</body>
<style>
#RegForm
{
border:groove;
}


.formDiv
{
border:groove ;
height:100% !important;
margin-top:5%;
padding-top:2%;
padding-bottom:2%;
border-radius:8px;
}

.row
{
padding-left:5% !important;
padding-right:5% !important;
}

.row-btn
{
text-align: center !important;
}

textarea
{
 resize:vertical !important; 
 max-height:100px !important;
}

</style>

</html>