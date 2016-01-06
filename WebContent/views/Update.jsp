<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/jquery-1.11.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"/>
</head>
<body>
<div  id="RegForm" class="container formDiv col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
  <div class="">
  <form:form action="UpdatePasswordResults" commandName="UpdatePassword" method="POST">
  <div class="row form-group">
   <form:input type="text" path="UserID" class="input form-control" placeholder="User Id"></form:input>   
  </div> 
  
  <div class="row form-group">
   <form:input type="text" path="PSSWD" class="input form-control" placeholder="Old Password"></form:input>
  </div>
  
  <div class="row form-group">
   <input type="text" class="input form-control" name="newPassword" placeholder="New Password"></input>
  </div>  
  
  <div class="row row-btn">
  <input type="submit" class="btn btn-warning "  value="Change Password"/>&nbsp;
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