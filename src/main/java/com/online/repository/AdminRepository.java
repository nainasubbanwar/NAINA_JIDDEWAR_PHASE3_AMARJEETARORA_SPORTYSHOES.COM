package com.online.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.online.model.Admin;


public interface AdminRepository extends JpaRepository<Admin, Long> {
	
	  @Query("select a from Admin a where a.adminId = ?1 and a.pwd = ?2")
	  Admin authenticate(String admin_id, String admin_pwd);

	  Admin findById(long id);

}
