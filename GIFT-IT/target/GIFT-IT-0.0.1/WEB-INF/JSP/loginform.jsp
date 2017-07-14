<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="resources\js\script1.js"></script>
<link  rel="stylesheet" type="text/css" href="resources\css\style.css">

</head>
<body>
<div class="container"><!-- Container -->


<!-- Modal 
 <div class="modal fade" id="signupmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
 <div class="modal-content">
 </div>
 </div>
 </div><!-- Sign in Modal  -->
<br>
<br>
<br>
<!-- <div>
<div class="jumbotron">
<form>
<div class="form-group log">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name">
  </div>
  <div class="form-group log">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group log">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group log">
    <label for="pwd">Confirm Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group log">
    <label for="phno">Phone Number</label>
    <input type="text" class="form-control" id="phno">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div><!-- jumbotron -->
<!-- </div>
</div>
</body>
</html>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Person
</h1>

<c:url var="addAction" value="user/add" ></c:url>-->

<h1>Add New User</h1>  
       <form:form method="post" action="saveuser" name="f1" >    
        <table >    
         <tr>    
          <td>First Name: </td>   
          <td><form:input name="fn" path="fname" required="required" /></td>  
         </tr>    
          <tr>    
          <td> Last Name : </td>   
          <td><form:input path="lname"  /></td>  
         </tr>  
          <tr>    
          <td>Email: </td>   
          <td><form:input type="email" path="email" required="required" /></td>  
         </tr>  
          <tr>    
          <td>Password : </td>   
          <td><form:input name="p1" type="password" path="password"  /></td>  
         </tr> 
         <tr>    
          <td>Confirm Password : </td>   
          <td><form:input type="password" name="p2" path="password"   /></td>  
         </tr>  
          <tr>    
          <td>Address 1 : </td>   
          <td><form:input path="address1" required="required" /></td>  
         </tr>  
          <tr>    
          <td>Address 2 : </td>   
          <td><form:input path="address2" required="required" /></td>  
         </tr>  
          <tr>    
          <td>City: </td>   
          <td><form:input path="city" name="city" required="required"/></td>  
         </tr>  
          <tr>    
          <td>State : </td>   
          <td><form:input path="state" name="state" required="required" /></td>  
         </tr>  
          <tr>    
          <td>Zip: </td>   
          <td><form:input path="zip" name="zip" required="required" /></td>  
         </tr>  
         <tr>    
          <td>Country :</td>    
          <td><form:input path="country" name="country" required="required"/></td>  
         </tr>   
         <tr>    
          <td>Phone no:</td>    
          <td><form:input path="phone" name="phno" type="tel" required="required"  /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>  


</div>
</body>
</html>