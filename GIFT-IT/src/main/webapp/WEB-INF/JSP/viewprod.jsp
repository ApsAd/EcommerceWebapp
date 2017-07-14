 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Product List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Desc</th><th>Category</th></tr>  
   <c:forEach var="product" items="${list}">   
   <tr>  
   <td>${product.id}</td>  
   <td>${product.pname}</td>  
   <td>${product.pdesc}</td> 
    <td>${product.cid}</td>  
   <td>${product.category}</td> 
    <td>${product.availsize}</td>  
     <td>${product.availcolor}</td> 
      <td>${product.unitprice}</td> 
       <td>${product.discount}</td> 
        <td>${product.unitsinstock}</td> 
         <td>${product.image}</td> 
          <td>${product.ranking}</td> 
          <td><a href="editprod/${product.id }">Edit Product</a></td>
          <td><a href="delprod/${product.id }">Delete Product</a></td>
          
          
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="productform">Add New Product</a>  