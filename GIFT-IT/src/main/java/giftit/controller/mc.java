package giftit.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import giftit.model.Product;

@Controller
public class mc {
	

	//@RequestMapping("/toLogin")
	//public ModelAndView loginpage(){
		//return new ModelAndView("loginform");
	//}
	@RequestMapping("/signup")
	public ModelAndView signup(){
		return new ModelAndView("signup");
	}
	@RequestMapping("/gfh")
	public ModelAndView gfh(@RequestParam("cid") String cid){
		ModelAndView mv = new ModelAndView();
    	mv.setViewName("hm");
    	mv.addObject("req",cid);
		return mv;
	}
	@RequestMapping("/gfhim")
	public ModelAndView gfhim(){
		return new ModelAndView("gfhim");
	}
	/*@RequestMapping("/hm")
	public  @ResponseBody String hm(@RequestParam("cid1") String cid1, @RequestParam("cid2")String cid2){
		List<Product> list=pdi.listbycategory("Handmade ");
		return cid2;
		
		//return new ModelAndView("hm");
	}*/
	@RequestMapping("/flower")
	public ModelAndView flower(){
		return new ModelAndView("flower-choc");
	}
	
}
