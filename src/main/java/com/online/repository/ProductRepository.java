package com.online.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.online.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	Product findById(long id);
}
