package com.online.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.online.model.Category;


public interface CategoryRepository extends JpaRepository<Category, Long> {

	  Category findById(long id);
}
