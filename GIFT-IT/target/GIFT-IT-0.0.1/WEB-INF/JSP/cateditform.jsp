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
          <td><form:input path="cname"  /></td>  
         </tr>    
         <tr>    
          <td>Desc :</td>    
          <td><form:input path="cdesc" /></td>  
         </tr>  
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit" /></td>    
         </tr>    
        </table>    
       </form:form>    