 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Category List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Desc</th></tr>  
   <c:forEach var="category" items="${list}">   
   <tr>  
   <td>${category.id}</td>  
   <td>${category.cname}</td>  
   <td>${category.cdesc}</td>
   <td><a href="editcategory/${category.id }">Edit Category</a></td>
   <td><a href="delcategory/${category.id }">Delete Category</a></td>
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="categoryform">Add New Category</a>  