package com.expleo.TiffinService.controller;
 
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.client.RestTemplate;
 
import com.expleo.TiffinService.entity.Customer;

import com.expleo.TiffinService.service.CustomerService;
 
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
 
@RestController

public class CustomerRegistrationController {
     @Autowired
    private CustomerService customerService;
     @PostMapping("/register")
        public ResponseEntity<?> registerCustomer(
                @RequestParam String name,
                @RequestParam String email,
                @RequestParam String phoneNumber,
                @RequestParam String address,
                @RequestParam String password) {
            if (customerService.isPhoneNumberExists(phoneNumber)) {
                return ResponseEntity.badRequest().body("Phone number already exists");
            }
            Customer customer = new Customer();
            customer.setName(name);
            customer.setEmail(email);
            customer.setPhoneNumber(phoneNumber);
            customer.setAddress(address);
            customer.setPassword(password);
             customerService.registerCustomer(customer);
            return ResponseEntity.ok("<!DOCTYPE html>" +
                    "<html lang=\"en\">" +
                    "<head>" +
                    "<meta charset=\"UTF-8\">" +
                    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
                    "<title>Registration Successful</title>" +
                    "<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">" +
                    "</head>" +
                    "<body>" +
                    "<div class=\"container mt-5\">" +
                    "<div class=\"alert alert-success\" role=\"alert\">" +
                    "<h4 class=\"alert-heading\">Registration Successful!</h4>" +
                    "<p>Welcome to our daily customizable Tiffin service. To place an order, please log in first.</p>" +
                    "<hr>" +
                    "<p class=\"mb-0\">Click <a href=\"http://localhost:8082/login.jsp\" class=\"alert-link\">here</a> to login.</p>" +
                    "</div>" +
                    "</div>" +
                    "</body>" +
                    "</html>");

        }

    }
 
 