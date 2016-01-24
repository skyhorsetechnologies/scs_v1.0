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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/materialize/css/materialize.min.css"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"/>
 </head>
<body>

    
<div class="container formDiv col-xs-offset-1 col-xs-10 col-sm-offset-7 col-sm-4 col-md-offset-4 col-md-4 col-lg-offset-8 col-lg-3">

<form:form role="form" id="form1" action="scsMain" commandName="admin" method="POST">
<%--   <div class="row form-group">
   <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <form:input type="text" path="uname" class="form-control" placeholder="Username" id="username"></form:input>
    <form:errors Style="color:red;" align="left" path="uname" cssClass="error"/>
    </div>
  </div>
  <div class="row form-group">
    <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <form:input type="password" path="psswd" class="form-control" placeholder="Password" id="pwd"></form:input>
    <form:errors Style="color:red;" align="left" path="psswd" cssClass="error"/>
    </div>
  </div>
 --%>
 
   <div class="row form-group">
        <div class="input-field col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
          <form:input id="username" path="uname" type="text" class="validate col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 form-control"></form:input>
          <label for="username" class="validate" >Username</label>
          <form:errors Style="color:red;" align="left" path="uname" cssClass="error"/>
        </div>
  </div>
  
  <div class="row form-group">
        <div class="input-field col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 ">
          <form:input id="password" path="psswd" type="password" class="validate col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 form-control"></form:input>
          <label for="password" class="validate">Password</label>
            <form:errors Style="color:red;" align="left" path="psswd" cssClass="error"/>
        </div>
      </div>
  

 
 
   <center>
   <div class="col-xs-offset-1 col-xs-10 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
    <!-- <label><input type="checkbox"> Remember me</label> -->

	<input type="button" id="btnSubmit" class="waves-effect waves-light btn btn-warning " value="Login"/>

  </div>
  </center>
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
label .waves-effect
{
overflow-x:auto !important;
}
.input-field label
{
font-size:15px !important;
color:#282A3A !important;
font-style:italic; 
padding-left: 10px !important;
}
.input-field label.active
{
font-size:12px !important;
color:#6F5757 !important;
}

input:not([type]).valid, input:not([type]):focus.valid, input[type=text].valid, input[type=text]:focus, input[type=password].valid, input[type=password]:focus
{
border-bottom: 1px solid #6FDFEA !important;
box-shadow: 0 1px 0 0 #6FDFEA !important;
border-radius:5px !important;
font-size:16px !important;
padding-left: 5px;
color: black;
font-style: oblique;
}


input[type=text],input[type=number],input[type=password]
{
 border-bottom: 1px solid #6F5757 !important;
box-shadow: 0 1px 0 0 #6F5757 !important;
border-radius:0px !important;
font-size:16px !important;
}

input[type=text].invalid,input[type=number].invalid,input[type=password].invalid
{
border-bottom: 1px solid red !important;
box-shadow: 0 1px 0 0 red !important;
border-radius:5px !important;
font-size:16px !important;
padding-left: 5px;
color: black;
font-style: oblique;
}
input[type=button]{
text-transform: none !important;
}
.btn-warning:hover, input[type=button].focus{
    color: black !important;
   /*  background-color: #fff !important;
    border-color: #eea236 !important; */
}
</style>

<script>
$(document).ready(function(){
	
	//$('#btnSubmit').attr('value','Login');
	
	});
$('#btnSubmit').click(function(){
	$('#btnSubmit').attr('disabled',true);
	$('#btnSubmit').attr('value','Logging in..');
	$('#form1').submit();
});

$(window).load(function(){/* $('#btnSubmit').attr('value','Loading page...'); */});

</script>

</html>