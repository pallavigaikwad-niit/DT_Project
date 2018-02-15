package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.UserDao;
import com.Model.User;

@Controller
public class UserController {

	@Autowired
	UserDao userDaoImpl;
	@Autowired
	User user;

	@RequestMapping(value="/insertUser", method=RequestMethod.POST )
	public ModelAndView insertUser(@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("address") String address,@RequestParam("phone") String phone)
	{
		System.out.println("Inside addUser");
		ModelAndView mv=new ModelAndView();
		user=new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setAddress(address);
		user.setPhone(phone);
		userDaoImpl.insertUser(user);
		mv.addObject(user);
		mv.setViewName("newuser");
		return mv;
	}
}
