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
  <div class="row form-group">
   <form:input type="text" path="UserID" class="input form-control" placeholder="User Id"></form:input>   
  </div>
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
<%-- 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/jquery-2.1.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/materialize/css/materialize.min.css"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"/>
</head>
<body>

<div  id="RegForm" class="container formDiv col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
  <div class="">
  <form:form action="RegisterSubmit" commandName="RegisterData" method="POST">
  
  <div class="row form-group">
   <form:input type="text" path="UNAME" class="input form-control" for="Username" placeholder="User Name"></form:input>
  </div>
  
  <div class="row form-group">
   <form:input type="text" path="Email" class="input form-control" for="Email" placeholder="Email"></form:input>
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


  <div class="row">
        <div class="input-field col s6">
          <input id="password" type="text" class="validate">
          <label for="password">First Name</label>
        </div>
  
        <div class="input-field col s6">
          <input id="password" type="text" class="validate">
          <label for="password">Last Name</label>
        </div>
  </div>
  
  <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
  

  
  <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea"></textarea>
          <label for="textarea1">Address</label>
        </div>
      </div>
    <div class="row">
        <div class="input-field col s12">
          <input id="phone" type="number" class="validate">
          <label for="phone">Phone</label>
        </div>
  </div>
<!-- <div class="input-field col s12">
    <select>
      <option value="" disabled selected>Choose your option</option>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
    </select>
    <label>Materialize Select</label>
  </div>
 -->
  
  <div class="row">
        <div class="input-field col s12">
          <input id="email" type="text" class="validate">
          <label for="email">Security Question</label>
        </div>
  </div>
  
    <div class="row">
        <div class="input-field col s12 ">
          <input id="email" type="text" class="validate  waves-light" >
          <label for="email">Security Answer</label>
        </div>
  </div>
  
 
  
  
  <div class="row row-btn">
 <input type="submit" class="waves-effect waves-light btn " value="Create"/> 
  <!-- <a class="waves-effect waves-light btn">CREATE</a> -->
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
label .waves-effect
{
overflow-x:auto !important;
}
.input-field label
{
font-size:15px !important;
color:#282A3A !important;
font-style:italic; 
padding-left: 5px !important;
}
.input-field label.active
{
font-size:12px !important;
color:#6F5757 !important;
}

input:not([type]).valid, input:not([type]):focus.valid, input[type=text].valid, input[type=text]:focus.valid, input[type=password].valid, input[type=password]:focus.valid, input[type=email].valid, input[type=email]:focus.valid, input[type=url].valid, input[type=url]:focus.valid, input[type=time].valid, input[type=time]:focus.valid, input[type=date].valid, input[type=date]:focus.valid, input[type=datetime-local].valid, input[type=datetime-local]:focus.valid, input[type=tel].valid, input[type=tel]:focus.valid, input[type=number].valid, input[type=number]:focus.valid, input[type=search].valid, input[type=search]:focus.valid, textarea.materialize-textarea.valid, textarea.materialize-textarea:focus.valid
{
border-bottom: 1px solid #6FDFEA !important;
box-shadow: 0 1px 0 0 #6FDFEA !important;
border-radius:5px !important;
font-size:16px !important;
}


input[type=text],input[type=number],input[type=password],input[type=email],textarea
{
 border-bottom: 1px solid #6F5757 !important;
box-shadow: 0 1px 0 0 #6F5757 !important;
border-radius:5px !important;
font-size:16px !important;
}

input[type=text].invalid,input[type=number].invalid,input[type=password].invalid,input[type=email].invalid,textarea.invalid
{
 border-bottom: 1px solid red !important;
box-shadow: 0 1px 0 0 red !important;
border-radius:5px !important;
font-size:16px !important;
}
</style>

</html> --%>