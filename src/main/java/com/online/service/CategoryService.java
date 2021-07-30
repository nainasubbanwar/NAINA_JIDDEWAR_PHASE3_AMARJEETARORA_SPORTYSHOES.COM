package com.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.model.*;
import com.online.repository.CategoryRepository;

@Service
@Transactional
public class CategoryService {

	 @Autowired
	 private CategoryRepository repo;
	 
	 public Category getCategoryById(long id) {
		 return repo.findById(id);
	 }
	 
	 public void updateCategory(Category category) {
		 repo.save(category);
	 }
	 
	 public void deleteCategory(long id) {
		 repo.deleteById(id);
	 }
	 
	 public List<Category> getAllCategories() {
		 return repo.findAll();
	 }
	 
	 public String getCategoriesDropDown(long id) {
		 StringBuilder sb = new StringBuilder("");
		 List<Category> list = repo.findAll();
		 for(Category cat: list) {
			 if (cat.getID() == id)
				 sb.append("<option value=" + String.valueOf(cat.getID()) + " selected>" + cat.getName() + "</option>");
			 else
				 sb.append("<option value=" + String.valueOf(cat.getID()) + ">" + cat.getName() + "</option>");
				 
		 }
		 return sb.toString();
	 }
}
