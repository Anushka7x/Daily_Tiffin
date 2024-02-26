package com.expleo.TiffinService.service;

import org.springframework.stereotype.Service;

import com.expleo.TiffinService.entity.Customer;
import com.expleo.TiffinService.repository.CustomerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

	@Autowired
    private CustomerRepository customerRepository;

    public Customer registerCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public boolean isPhoneNumberExists(String phoneNumber) {
        return customerRepository.existsByPhoneNumber(phoneNumber);
    }

    public Customer findByNameAndPassword(String name, String password) {
        return customerRepository.findByNameAndPassword(name, password); 
    }

	
}
