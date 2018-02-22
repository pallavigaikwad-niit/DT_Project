package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.DaoImpl.UserDaoImpl;
//import com.Model.User;

@Controller
public class IndexController {
	
   @RequestMapping(value = "/")
   public String index() {
      return "index";
   }
   @RequestMapping(value = "/newuser")
   public String newuser() {
      return "newuser";
   }
   @RequestMapping(value = "/index")
   public String index1() {
      return "index";
   }
   
   @RequestMapping(value = "/signin")
   public String signin() {
      return "signin";
   }
   
    /* 
   @RequestMapping(value = "/admin")
   public String admin() {
      return "admin";
   }
   */
}

