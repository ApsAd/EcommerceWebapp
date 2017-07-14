<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Category</h1>  
       <form:form method="post" action="categorysave">    
        <table >    
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
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    