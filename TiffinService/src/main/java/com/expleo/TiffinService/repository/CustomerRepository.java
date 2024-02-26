package com.expleo.TiffinService.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.expleo.TiffinService.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Long>{
	boolean existsByPhoneNumber(String phoneNumber);
	Customer findByNameAndPassword(String name, String password);
}
