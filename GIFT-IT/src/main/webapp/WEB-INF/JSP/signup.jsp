<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
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

<link  rel="stylesheet" type="text/css" href="resources\css\style.css">

</head>
<body>
<div class="container"><!-- Container -->
<div>
<!-- <div class="modal-content">
 <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
 <span class="sr-only">Close</span></button>
 <h2 class="modal-title" id="myModalLabel">Sign in</h2>
 </div>
 <div class="modal-body">
 <form class="form-signin" role="form">
 <h3 class="form-signin-heading">Sign in with your email
address</h3>
 <div class="form-group">
 <input type="email" class="form-control"
placeholder="Email address" required autofocus>
 </div>
 <div class="form-group">
 <input type="password" class="form-control"
placeholder="Password" required>
 </div>
 <div class="checkbox">
 <label>
 <input type="checkbox" value="remember-me"> Remember
me
 </label>
 </div>
 <button class="btn btn-lg btn-primary btn-block"
type="submit">Sign in</button>
 </form>
 </div>
 <div class="modal-footer">
 </div>
 </div>
</div></div>-->
<div class="jumbotron">
<form action="check" method="post">
<div class="form-group log">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" name="pass">
  </div>
 <button type="submit" class="btn btn-default">Submit</button>
</form>
</div><!-- jumbotron end -->
</div>
</div>
</body>
</html>