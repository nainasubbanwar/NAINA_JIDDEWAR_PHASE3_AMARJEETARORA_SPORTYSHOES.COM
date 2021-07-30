package com.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.model.*;
import com.online.repository.UserRepository;

@Service
@Transactional
public class UserService {

	 @Autowired
	 private UserRepository repo;
	 
		public User authenticate(String userId, String pwd) {
			return repo.authenticate(userId, pwd);
		}
	
		public User getUserById(long id) {
		 	return repo.findById(id);
		}
	 
		public User getUserByEmailId(String emailId) {
			return repo.findByemailId(emailId);
		}
		
		public void updateUser(User user) {
			repo.save(user);			
		}

		public List<User> getAllUsers() {
		 return repo.findAll();
		}	 
}
