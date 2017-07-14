<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Users List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>FName</th><th>LName</th><th>Email</th><th>Password</th></tr>  
   <c:forEach var="user" items="${list}">   
   <tr>  
   <td>${user.id}</td>  
   <td>${user.fname}</td>  
    <td>${user.lname }</td> 
   <td>${user.email}</td>  
   <td>${user.password}</td> 
  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   