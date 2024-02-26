package com.expleo.TiffinService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expleo.TiffinService.entity.Order;
import com.expleo.TiffinService.repository.OrderRepository;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public void saveOrder(Order order) {
        orderRepository.save(order);
    }

    public double calculateBillAmount(Order order) {
        return order.getPrice() * order.getQuantity();
    }

}
