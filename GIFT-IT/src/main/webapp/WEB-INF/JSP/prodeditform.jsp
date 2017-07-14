<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Product</h1>  
       <form:form method="post" action="editsave">    
        <table >   
        <tr>    
          <td></td>   
          <td><form:hidden path="id"  /></td>  
         </tr> 
         <tr>    
          <td>Name : </td>   
          <td><form:input path="pname"  /></td>  
         </tr>    
         <tr>    
          <td>Desc :</td>    
          <td><form:input path="pdesc" /></td>  
         </tr>  
         <tr>    
          <td>Available Sizes :</td>    
          <td><form:input path="availsize" /></td>  
         </tr>  
         <tr>    
          <td>Available Colors :</td>    
          <td><form:input path="availcolor" /></td>  
         </tr> 
          <tr>    
          <td>Unit Price :</td>    
          <td><form:input path="unitprice" /></td>  
         </tr>
          <tr>    
          <td>Discount :</td>    
          <td><form:input path="discount" /></td>  
         </tr> 
         <tr>    
          <td>Units in stock:</td>    
          <td><form:input path="unitsinstock" /></td>  
         </tr>   
         <tr>    
          <td>image :</td>    
          <td><form:input path="image" /></td>  
         </tr>  
         <tr>    
          <td>Ranking :</td>    
          <td><form:input path="ranking" /></td>  
         </tr> 
         <tr>    
          <td>Category Id:</td>    
          <td><form:input path="cid" /></td>  
         </tr>  
         <tr>    
          <td>Category:</td>    
          <td><form:input path="category" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit" /></td>    
         </tr>    
        </table>    
       </form:form>    