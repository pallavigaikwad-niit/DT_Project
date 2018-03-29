package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Model.Category;
import com.Model.Product;
@Controller
@RequestMapping(value="/ProductList")
public class ProductController {

	@Autowired
	CategoryDao categoryDaoImpl;
	@Autowired
	ProductDao productDaoImpl;

	   @RequestMapping (value="/all")
	   public ModelAndView prodlist()
	   {
		   ModelAndView mv=new ModelAndView();
		   mv.addObject("products",productDaoImpl.getAllProducts());
		   mv.addObject("category",categoryDaoImpl.getAllCategories());
			mv.setViewName("ProductList");
			return mv;
	   }

	   @RequestMapping(value="/{cid}")
	   public ModelAndView prodlistbycid(@PathVariable("cid") String cid)
	   {
		   ModelAndView mv=new ModelAndView();
		   if(cid!=null)
		   {
		   mv.addObject("products",productDaoImpl.getProductsByCategotry(cid));
		   }
		   else
		   {
			   mv.addObject("products",productDaoImpl.getAllProducts());
			   
		   }
		   mv.setViewName("ProductList");
		   return mv;
	   }
	   @ModelAttribute("categories")
		public List<Category> getCategories(){
			
		 	return categoryDaoImpl.getAllCategories();
		}

		@ModelAttribute("products")
		public List<Product> getProducts()
		{
			return productDaoImpl.getAllProducts();
		}
	   @RequestMapping(value = "/productById/{pid}", method= RequestMethod.GET)
		public ModelAndView showProduct(@PathVariable("pid") int pid){
			System.out.println("PID: "+pid);
			 ModelAndView mv = new ModelAndView("singleProduct");
			 mv.addObject("product", productDaoImpl.getProduct(pid));
			 mv.addObject("catList", categoryDaoImpl.getAllCategories());
			return mv;
			
		}
}