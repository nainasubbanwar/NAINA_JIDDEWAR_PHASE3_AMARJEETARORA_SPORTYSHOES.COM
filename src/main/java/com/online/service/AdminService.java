package com.online.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.online.model.Admin;
import com.online.repository.AdminRepository;

@Component
public class AdminService {

	 @Autowired
	 private AdminRepository repo;

		@Transactional
		public Admin authenticate(String adminId, String pwd) {
			return repo.authenticate(adminId, pwd);
		}
		
		@Transactional
		public Admin getAdminById(long id) {
			return repo.findById(id);
		}		
		
		@Transactional
		public void updatePwd(Admin admin) {
			repo.save(admin);
		}

		 
}
