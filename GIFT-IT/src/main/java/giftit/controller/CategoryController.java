package giftit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import giftit.model.Category;
import giftit.model.Product;
import giftit.service.CategoryServDao;



@Controller
public class CategoryController {
	@Autowired
	CategoryServDao cdi;
	@RequestMapping("/insertcategory")
	public ModelAndView insertMap(){
		Category c=new Category();
		c.setCname("women");
		c.setCdesc("Dresses");
		cdi.addCategory(c);
		ModelAndView mv=new ModelAndView();
		
		
		mv.addObject("hello");
		return mv;
	}
	@RequestMapping("/categoryform")
	public ModelAndView showform(){
		return new ModelAndView("categoryform","command",new Category());
	}
	@RequestMapping(value="/categorysave",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("category") Category category){  
       cdi.addCategory(category);
        return new ModelAndView("redirect:/viewcategory");
    } 
	@RequestMapping("/viewcategory")  
    public ModelAndView viewproduct(){  
        List<Category> list=cdi.listCategories();  
        return new ModelAndView("viewcategory","list",list);  
    } 
	@RequestMapping(value="/editcategory/{id}")
    public ModelAndView edit(@PathVariable int id){
    	Category c=cdi.getCategoryById(id);
    	return new ModelAndView("cateditform","command",c);
    }
	 @RequestMapping(value="/editcategory/editsave",method = RequestMethod.POST)
	    public ModelAndView editsave(@ModelAttribute("c")Category c){
	    	cdi.updateCategory(c);
	    	return new ModelAndView("redirect:/viewcategory");
	    }
	 @RequestMapping(value="/delcategory/{id}")
	    public ModelAndView delete(@PathVariable int id){
	    	cdi.removeCategory(id);
	    	return new ModelAndView("redirect:/viewcategory");
	    }
    
}
