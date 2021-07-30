package com.online.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.model.*;
import com.online.service.CategoryService;
import com.online.service.ProductService;

@Controller 
public class HomeController {
	
	@Autowired
	private ProductService service; 
	
	@Autowired
	private CategoryService categoryService; 

	@RequestMapping(value = {"/", "/home"})
	public String viewHomePage(Model model) {
		List<Product> list = service.listAll();
		 HashMap<Long, String> mapCats = new HashMap<Long, String>();
		  for(Product product: list) {
			  Category category = categoryService.getCategoryById(product.getCategoryId());
			  if (category != null)
				  mapCats.put(product.getID(), category.getName());
		  }
		List<Category> categorylist = categoryService.getAllCategories();
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("mapCats", mapCats);
		model.addAttribute("list", list);
		model.addAttribute("pageTitle", "SPORTY SHOES - HOMEPAGE");
		return "index";
	}
	
	@RequestMapping(value = {"/bycategory"})
	public String viewCategory(Model model, @RequestParam(value="categoryname", required=true) String categoryname) {
		List<Product> list = service.listAll();
		 HashMap<Long, String> mapCats = new HashMap<Long, String>();
		  for(Product product: list) {
			  Category category = categoryService.getCategoryById(product.getCategoryId());
			  if (category != null)
				  mapCats.put(product.getID(), category.getName());
		  }
		  List<Category> categorylist = categoryService.getAllCategories();
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("mapCats", mapCats);
		model.addAttribute("list", list);
		model.addAttribute("categoryname", categoryname);
		model.addAttribute("pageTitle", "SPORTY SHOES - HOMEPAGE");
		
		return "index";
	}
}