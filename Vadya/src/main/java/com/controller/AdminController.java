package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.Model.Category;
import com.Model.Product;
import com.Model.Supplier;

@Controller
@RequestMapping(value="/adminAdd")
public class AdminController {
@Autowired
SupplierDao supplierDaoImpl;
@Autowired
CategoryDao categoryDaoImpl;
@Autowired
Category category;
@Autowired
ProductDao productDaoImpl;
@Autowired
Product product;
	//Adding supplier
	@RequestMapping(value="/saveSupplier" , method=RequestMethod.POST)
	public ModelAndView saveSupplierData(@RequestParam("sid") String sid,
			@RequestParam("supplierName") String supplierName) {
		//System.out.println("SID: "+sid);
		//System.out.println("SNAME: "+ supplierName);
		ModelAndView mv = new ModelAndView();
		Supplier supplier = new Supplier();
		supplier.setSid(sid);
		supplier.setSupplierName(supplierName);
		supplierDaoImpl.insertSupplier(supplier);
		System.out.println("Supplier Added Successfully.");
		mv.addObject("msg", "Supplier \'"+ sid + " - "+ supplierName  +"\' Added Successfully");
		mv.setViewName("adminAdd");
		return mv;
	}
	//Adding Category
	@RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
 	public ModelAndView saveCategotyData(@RequestParam("cid") String cid, @RequestParam("cname") String cname) {
		ModelAndView mv = new ModelAndView();
		Category category = new Category();
		category.setCid(cid);
		category.setCname(cname);
		categoryDaoImpl.insertCategory(category);
		mv.addObject("msg", "Category \'"+ cid + " - " + cname+ "\' Added Successfully");
		System.out.println("Category "  + cname + " Added Successfully");
		mv.setViewName("adminAdd");
		return mv;
	}
	
	//Adding Product
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public ModelAndView saveProductData(HttpServletRequest request,@RequestParam("pimage")MultipartFile file)
	{
		ModelAndView mv =new ModelAndView();
		
		Category category = new Category();
		Supplier supplier= new Supplier();
		product.setProductName(request.getParameter("pName"));
		product.setProductDescription(request.getParameter("pDesc"));
		product.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		product.setStock(Integer.parseInt(request.getParameter("pStock")));
		category.setCid(request.getParameter("category"));
		product.setCategory(category);
		supplier.setSid(request.getParameter("supplier"));
		product.setSupplier(supplier);
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		product.setImageName(filename);
		productDaoImpl.insertProduct(product);
		//Actual Path is ---> F:\git\DT_Project\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\Vadya\resources
		try
		{
			byte []imagebyte=file.getBytes();
			BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		 catch(Exception e)
		{
			 
		}
		mv.setViewName("adminAdd");
		return mv;
	}
	
	//Adding Product
	@RequestMapping(value="/updateProduct", method=RequestMethod.POST)
	public ModelAndView updateProductData(HttpServletRequest request,@RequestParam("pimage")MultipartFile file)
	{
		ModelAndView mv =new ModelAndView();
		
		Category category = new Category();
		Supplier supplier= new Supplier();
		product.setPid(Integer.parseInt(request.getParameter("pid")));
		product.setProductName(request.getParameter("pName"));
		product.setProductDescription(request.getParameter("pDesc"));
		product.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		product.setStock(Integer.parseInt(request.getParameter("pStock")));
		category.setCid(request.getParameter("category"));
		product.setCategory(category);
		supplier.setSid(request.getParameter("supplier"));
		product.setSupplier(supplier);
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		product.setImageName(filename);
/*		productDaoImpl.insertProduct(product);*/
		productDaoImpl.updateProduct(product);
		//Actual Path is ---> F:\git\DT_Project\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\Vadya\resources
		try
		{
			byte []imagebyte=file.getBytes();
			BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		 catch(Exception e)
		{
			 
		}
		mv.addObject("products",productDaoImpl.getAllProducts());	
		mv.setViewName("ProductList");
		return mv;
	}
	
	@RequestMapping(value="/deleteProduct/{pid}")
	public ModelAndView deleteProduct(@PathVariable("pid") int pid){
		ModelAndView mv = new ModelAndView("adminAdd");
		Product product = productDaoImpl.getProduct(pid);
		
		productDaoImpl.deleteProduct(product);
		
		//mv.addObject("msg","Product "+ pid + " Deleted Successfully");
		
		mv.addObject("products",productDaoImpl.getAllProducts());
		System.out.println("In Delete Product");
		mv.setViewName("ProductList");
		
		
		return mv;
	}
	
	@RequestMapping(value="/editProduct/{pid}")
	public ModelAndView editProduct(@PathVariable("pid") int pid){
		ModelAndView mv = new ModelAndView("editProductList");

		Product product = productDaoImpl.getProduct(pid);
		mv.addObject("product", product);
		mv.setViewName("editProductList");
		return mv;
	}
	
	  @RequestMapping()
	 	public ModelAndView addData()
	{
		System.out.println("Inside add Data Method");
		ModelAndView mv=new ModelAndView();
		mv.addObject(getCategories());
		mv.addObject(getSuppliers());
		mv.setViewName("adminAdd");
		return mv;
		
	}
		// return supplier model to admin page
		@ModelAttribute("supplier")
		public Supplier getSupplier(){
			return new Supplier();
		}
		
		//return product model to admin page
		@ModelAttribute("product")
		public Product getProduct(){
			return new Product();
		}
		
		//return category model to admin page
		@ModelAttribute("category")
		public Category getCategory(){
			return new Category();
		}
	  
		//returning all categories to Product form
		@ModelAttribute("categories")
		public List<Category> getCategories(){
			
		 	return categoryDaoImpl.getAllCategories();
		}
		
		//returing all supplier to Product form
		@ModelAttribute("suppliers")
		public List<Supplier> getSuppliers(){
			return supplierDaoImpl.getAllSuppliers();
		}		
}