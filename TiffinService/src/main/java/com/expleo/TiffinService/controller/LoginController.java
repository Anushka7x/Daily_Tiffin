package com.expleo.TiffinService.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.expleo.TiffinService.entity.Customer;
import com.expleo.TiffinService.service.CustomerService;

@Controller
public class LoginController {

	    @Autowired
	    private CustomerService service;
	    @PostMapping("/login")
	    public String login(@RequestParam String name, @RequestParam String password, Model model) {
	        if ("admin".equals(name) && "admin".equals(password)) {
	            return "admin";
	        } else {
	              Customer customer = service.findByNameAndPassword(name, password);
	            if (customer != null) {	
	            	return "OurMenu";
	            } else {
	              // model.addAttribute("error", "Invalid username or password");
	                return "redirect:login.jsp"; 
	            }
	        }
	    }
	}
