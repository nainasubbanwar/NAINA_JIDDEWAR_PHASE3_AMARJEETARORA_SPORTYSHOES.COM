package com.online.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.model.*;
import com.online.service.*;
 
@Controller
public class MemberController {

	@Autowired
	private UserService userService; 
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String login(ModelMap map) 
	    {
		  map.addAttribute("pageTitle", "SPORTY SHOES - MEMBER LOGIN");
	        return "login"; 
	    }	
	  
	  @RequestMapping(value = "/loginaction", method = RequestMethod.POST)
	    public String loginAction(ModelMap map,  HttpSession session,
	    		@RequestParam(value="email_id", required=true) String emailId,
	    		 @RequestParam(value="pwd", required=true) String pwd) 
	    {
		  User user = userService.authenticate(emailId, pwd);
		  if (user == null) { 
			  map.addAttribute("error", "Login failed");
			  return "login";
		  }
		  session.setAttribute("user_id", user.getID());
		  session.setAttribute("user_name", user.getFname());
		  
		  return "redirect:dashboard"; 
	    }		  
	  
	  	  
	  @RequestMapping(value = "/signup", method = RequestMethod.GET)
	    public String signup(ModelMap map) 
	    {
		  map.addAttribute("pageTitle", "SPORTY SHOES - MEMBER REGISTRATION");
	        return "register"; 
	    }	
	  
	  @RequestMapping(value = "/signupaction", method = RequestMethod.POST)
	    public String signupAction(ModelMap map,  javax.servlet.http.HttpServletRequest request,
	    		@RequestParam(value="email_id", required=true) String emailId,
	    		 @RequestParam(value="pwd", required=true) String pwd,
	    		 @RequestParam(value="pwd2", required=true) String pwd2,
	    		 @RequestParam(value="fname", required=true) String fname,
	    		 @RequestParam(value="lname", required=true) String lname,
	    		 @RequestParam(value="age", required=true) String age,
	    		 @RequestParam(value="address", required=true) String address) 
	    {
		 
		  if (emailId == null || emailId.equals("")) {
			  map.addAttribute("error", "Email id is required.");
			  return "register";
		  }

		  if (pwd == null || pwd2 == null || pwd.equals("") || pwd2.equals("")) {
			  map.addAttribute("error", "Error , Incomplete passwords submitted.");
			  return "register";
		  }
		  
		  if (!pwd.equals(pwd2)) {
			  map.addAttribute("error", "Error , Passwords do not match.");
			  return "register";
		  }
		  
		  if (fname == null || fname.equals("")) {
			  map.addAttribute("error", "First name is required.");
			  return "register";
		  }

		  if (lname == null || lname.equals("")) {
			  map.addAttribute("error", "Last name is required.");
			  return "register";
		  }
		  if (age == null || age.equals("")) {
			  age = "0";
		  }
		  
		  
		  User user = userService.getUserByEmailId(emailId);
		  if (user != null) { 
			  map.addAttribute("error", "This email id already exists.");
			  return "register";
		  }
		  user = new User();
		  user.setID(0);
		  user.setEmail(emailId);
		  user.setFname(fname);
		  user.setLname(lname);
		  user.setAge(Integer.parseInt(age));
		  user.setAddress(address);
		  user.setPwd(pwd);
		  
		  userService.updateUser(user);
		  
		  
	        return "redirect:registerconfirm"; 
	    }
	  
	  
	  @RequestMapping(value = "/registerconfirm", method = RequestMethod.GET)
	    public String registerConfirm(ModelMap map) 
	    {
	        return "register-confirm"; 
	    }		 		  
	  @RequestMapping(value = "/editprofile", method = RequestMethod.GET)
	    public String editProfile(ModelMap map, HttpSession session) 
	    {
		  if (session.getAttribute("user_id") == null) {
			  return "login";
		  }
		  User user = userService.getUserById((Long) session.getAttribute("user_id"));

		  map.addAttribute("pageTitle", "SPORTY SHOES - MEMBER EDIT PROFILE");
		  map.addAttribute("user", user);

	        return "edit-profile"; 
	    }		 	  


	  @RequestMapping(value = "/editprofileaction", method = RequestMethod.POST)
	    public String editProfileAction(ModelMap map,
	    		javax.servlet.http.HttpServletRequest request, 
	    		@RequestParam(value="user_id", required=true) String userId,
	    		 @RequestParam(value="pwd", required=true) String pwd,
	    		 @RequestParam(value="pwd2", required=true) String pwd2,
	    		 @RequestParam(value="fname", required=true) String fname,
	    		 @RequestParam(value="lname", required=true) String lname,
	    		 @RequestParam(value="age", required=true) String age,
	    		 @RequestParam(value="address", required=true) String address) 
	    {
		  
		  HttpSession session = request.getSession();
		  if (session.getAttribute("user_id") == null) {
			  return "login";
		  }
		  
		  User user = userService.getUserById((Long) session.getAttribute("user_id"));
		  map.addAttribute("user", user);
		  
		  if (pwd == null || pwd2 == null || pwd.equals("") || pwd2.equals("")) {
			  map.addAttribute("error", "Error , Incomplete passwords submitted.");
			  return "edit-profile";
		  }
		  
		  if (!pwd.equals(pwd2)) {
			  map.addAttribute("error", "Error , Passwords do not match.");
			  return "edit-profile";
		  }
		  
		  if (fname == null || fname.equals("")) {
			  map.addAttribute("error", "First name is required.");
			  return "edit-profile";
		  }

		  if (lname == null || lname.equals("")) {
			  map.addAttribute("error", "Last name is required.");
			  return "edit-profile";
		  }
		  if (age == null || age.equals("")) {
			  age = "0";
		  }
		  
		  user.setFname(fname);
		  user.setLname(lname);
		  user.setAge(Integer.parseInt(age));
		  user.setAddress(address);
		  user.setPwd(pwd);
		  
		  userService.updateUser(user);
		  
	        return "redirect:dashboard"; 
	    }

	  @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(ModelMap map, HttpSession session) 
	    {
		  	session.invalidate();
		  	
	        return "redirect:home"; 
	    }

}
