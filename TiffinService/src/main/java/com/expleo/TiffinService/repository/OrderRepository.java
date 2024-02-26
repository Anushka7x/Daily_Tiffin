package com.expleo.TiffinService.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.expleo.TiffinService.entity.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order,Integer> {

}
