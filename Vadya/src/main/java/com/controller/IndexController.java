package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Dao.CategoryDao;
import com.Model.Category;

//import com.DaoImpl.UserDaoImpl;
//import com.Model.User;

@Controller
public class IndexController {
	@Autowired
	CategoryDao categoryDaoImpl;

   @RequestMapping(value = "/")
   public String index() {
      return "index";
   }
   @RequestMapping(value = "/index")
   public String index1() {
      return "index";
   }
   
   @RequestMapping(value = "/signin",method=RequestMethod.GET)
   public String signin() {
      return "signin";
   }
   
   @RequestMapping(value = "/newuser")
   public String newuser() {
      return "newuser";
   }
   @RequestMapping(value = "/error")
   public String error() {
      return "error";
   }
   /*
   @RequestMapping(value = "/admin")
   public String admin() {
      return "admin";
   }
   */
	//returning all categories to Product form
	@ModelAttribute("categories")
	public List<Category> getCategories(){
		
	 	return categoryDaoImpl.getAllCategories();
	}
}

