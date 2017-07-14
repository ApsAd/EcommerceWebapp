package giftit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import giftit.model.Product;
import giftit.model.User;
import giftit.service.ProductServDao;

@Controller
public class ProductController {
	Product holder;
	String cid;
	ArrayList<Product> one=new ArrayList<Product>();
	String toreturn;
	Gson gson=new Gson();
@Autowired
ProductServDao pdi;
@RequestMapping("/insertprod")
public ModelAndView insertMap(){
	Product p=new Product();
	pdi.addProduct(p);
	ModelAndView mv=new ModelAndView();
	
	
	mv.addObject("hello");
	return mv;
}
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listProducts", pdi.listProducts());
		return "product";
	}
	@RequestMapping(value="/product/add",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product p){
		if(p.getId()==0){
			pdi.addProduct(p);
		}
		
		return "redirect:/products";
		
	}
	@RequestMapping("/productform")
	public ModelAndView showform(){
		return new ModelAndView("productform","command",new Product());
		
		
	}
	@RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("product") Product product){  
        pdi.addProduct(product);  
        return new ModelAndView("redirect:/viewprod");//will redirect to viewemp request mapping  
    }  
    /* It provides list of employees in model object */  
    @RequestMapping("/viewprod")  
    public ModelAndView viewproduct(){  
        List<Product> list=pdi.listProducts();  
        return new ModelAndView("viewprod","list",list);  
    } 
    
    @RequestMapping(value="/editprod/{id}")
    public ModelAndView edit(@PathVariable int id){
    	Product p=pdi.getProductById(id);
    	return new ModelAndView("prodeditform","command",p);
    }
    @RequestMapping(value="/editprod/editsave",method = RequestMethod.POST)
    public ModelAndView editsave(@ModelAttribute("prod")Product prod){
    	pdi.updateProduct(prod);
    	return new ModelAndView("redirect:/viewprod");
    }
    @RequestMapping(value="/delprod/{id}")
    public ModelAndView delete(@PathVariable int id){
    	pdi.removeProduct(id);
    	return new ModelAndView("redirect:/viewprod");
    }
    @RequestMapping("/Music")
	public @ResponseBody String getValues()
	{
    	List<Product> list=pdi.listbycategory("Women ");
    		/*for(int i=4;i<=11;i++)
    		{ holder = pdi.getProductById(i);
			
			one.add(holder);
			System.out.println(one);}*/
			toreturn=gson.toJson(list);
			return toreturn;
	}
    @RequestMapping("/Products")
    public ModelAndView gfhim(HttpServletRequest req,HttpServletResponse res,@RequestParam("cid") String cid){
    	
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("Products");
    	mv.addObject("cat",cid);
   
		return mv;
	}
    /*@RequestMapping("/Products")
    public String displayProducts (HttpServletRequest request, ModelMap model,@RequestParam("cid") String cid) {
    	String c=request.getParameter("cid");
	if(cid.equals("women"))
		model.addAttribute("category","women");
	List<Product> list=pdi.listbycategory(cid);
	Gson gson = new Gson();
	String json;
	json = gson.toJson(list);
	System.out.println(json);
	//model.addAttribute("lists", list);
	model.addAttribute("lists", json);
	return "Products";
    
    }*/
    @RequestMapping("/Product")
	public  @ResponseBody String hm(@RequestParam("cid") String cid){
    	
		List<Product> list=pdi.listbycategory(cid);
		
		toreturn=gson.toJson(list);
		System.out.println(toreturn);
		return toreturn;
		//return new ModelAndView("hm");
	}
    @RequestMapping("/Handmade")
	public @ResponseBody String getHmValues()
	{
    	List<Product> list=pdi.listbycategory("Handmade ");
    		/*for(int i=4;i<=11;i++)
    		{ holder = pdi.getProductById(i);
			
			one.add(holder);
			System.out.println(one);}*/
			toreturn=gson.toJson(list);
			return toreturn;
	}
    @RequestMapping("/Men")
	public @ResponseBody String getMenValues()
	{
    	List<Product> list=pdi.listbycategory("Men");
    		/*for(int i=4;i<=11;i++)
    		{ holder = pdi.getProductById(i);
			
			one.add(holder);
			System.out.println(one);}*/
			toreturn=gson.toJson(list);
			return toreturn;
	}
    @RequestMapping("/Flower")
	public @ResponseBody String getFlowerValues()
	{
    	List<Product> list=pdi.listbycategory("Flowers");
    		/*for(int i=4;i<=11;i++)
    		{ holder = pdi.getProductById(i);
			
			one.add(holder);
			System.out.println(one);}*/
			toreturn=gson.toJson(list);
			return toreturn;
	}
    @RequestMapping("/Choc")
	public @ResponseBody String getChocValues()
	{
    	List<Product> list=pdi.listbycategory("Chocolates");
    		/*for(int i=4;i<=11;i++)
    		{ holder = pdi.getProductById(i);
			
			one.add(holder);
			System.out.println(one);}*/
			toreturn=gson.toJson(list);
			return toreturn;
	}
    
}

