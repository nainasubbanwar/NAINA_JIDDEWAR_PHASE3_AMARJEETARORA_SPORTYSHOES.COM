package com.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class DashboardController {

	  @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	    public String dashboard(ModelMap map) 
	    {
		  map.addAttribute("pageTitle", "SPORTY SHOES - DASHBOARD");
	        return "dashboard"; 
	    }		  
}
