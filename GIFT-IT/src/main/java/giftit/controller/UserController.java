package giftit.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import giftit.model.Product;
import giftit.model.User;
import giftit.service.UserServDao;



@Controller
public class UserController {
	@Autowired
	UserServDao udi;
	@RequestMapping("/Insert")
	public ModelAndView InsertMap()
	{
		
		User u = new User();
		u.setFname("Aparna");
		u.setLname("a");
		u.setEmail("aparna@gmail.com");
		u.setPassword("xxx");
		u.setAddress1("6/29 bk street");
		u.setAddress2("sri venkatesh nagar virugambakkam");
		u.setCity("chennai");
		u.setCountry("India");
		u.setState("Tamilnadu");
		u.setZip("600092");
		u.setPhone("8939359631");

		udi.addUser(u);
		
		ModelAndView mv=new ModelAndView();
		
		
		mv.addObject("hello");
		return mv;
	}
	@RequestMapping("/toLogin")
	public ModelAndView showform(){
		return new ModelAndView("loginform","command",new User());
		
		
	}
	@RequestMapping("/check")
	public ModelAndView check(HttpServletRequest req){
		String email=req.getParameter("email");
		String pwd=req.getParameter("pass");
		int f=udi.check(email, pwd);
		if(f!=0){
			if(email.equals("admin@gmail.com")&& pwd.equals("admin@giftit1"))
				return new ModelAndView("admin");
			 ModelAndView mv=new ModelAndView();
		        mv.setViewName("welcome");
		        User u2=udi.getUserById(f);
		        mv.addObject("u",u2);
		     return mv;
		}
		else{
		return new ModelAndView("error");
	   }
	}
	@RequestMapping("/welcome")
	public ModelAndView welcome(){
		return new ModelAndView("welcome");
	}
	@RequestMapping(value="/saveuser",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("user") User u){  
        udi.addUser(u); 
        ModelAndView mv=new ModelAndView();
        mv.setViewName("welcome");
        User u2=udi.getUserById(u.getId());
        mv.addObject("u",u2);
        System.out.println(u2.getFname());
        //return new ModelAndView("redirect:/welcome","u",u2);//will redirect to viewemp request mapping  
        return mv;
	}  
    /* It provides list of employees in model object */  
    @RequestMapping("/viewusers")  
    public ModelAndView viewusers(){  
        List<User> list=udi.listUsers();  
        return new ModelAndView("viewusers","list",list);  
    }  

}
