package com.expleo.TiffinService.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.expleo.TiffinService.entity.Order;
import com.expleo.TiffinService.service.OrderService;

import java.util.Date;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/create")
    public ResponseEntity<String> createOrder(
       		@RequestParam("name") String customerName,
    		@RequestParam("itemname") String itemName,
            @RequestParam("price") double price,
            @RequestParam("quantity") int quantity)
             {
	try {
        Order order = new Order();
        order.setItemName(itemName);
        order.setQuantity(quantity);
        order.setPrice(price);
        order.setCustomerName(customerName);
        order.setOrderDate(new Date());
        orderService.saveOrder(order);
        double billAmount = orderService.calculateBillAmount(order);
        return ResponseEntity.ok("<!DOCTYPE html>"
        	    + "<html lang=\"en\">"
        	    + "<head>"
        	    + "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n"
       
        	    + "<meta charset=\"UTF-8\">"
        	    + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
        	    + "<title>Order Placed Successfully</title>"
        	    + "<style>"
        	    + "body {"
        	    + "    display: flex;"
        	    + "    justify-content: center;"
        	    + "    align-items: center;"
        	    + "    height: 100vh;"
        	    + "    margin: 0;"
        	    + "    background-color: #f2f2f2;"
        	    + "}"
        	    + ".message {"
        	    + "    text-align: center;"
        	    + "    padding: 20px;"
        	    + "    background-color: #fff;"
        	    + "    border-radius: 10px;"
        	    + "    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);"
        	    + "}"
        	    + ".firecrackers {"
        	    + "    animation: firecrackers 1s infinite alternate;"
        	    + "}"
        	    + "@keyframes firecrackers {"
        	    + "    from {"
        	    + "        transform: rotate(0deg);"
        	    + "    }"
        	    + "    to {"
        	    + "        transform: rotate(10deg);"
        	    + "    }"
        	    + "}"
        	    + "</style>"
        	    + "</head>"
        	    + "<body>"
        	    + "<div class=\"message\">"
        	    + "<h1 style=\"color: #007bff;\">Order Placed Successfully!</h1>"
        	    + "<p>Order placed successfully for customer: " + customerName + " and Bill Amount is " + billAmount + ". Please Pay it on Counter.</p>"
        	    + "<a style=\"text-decoration: none; color: #007bff; font-weight: bold;\" href=\"http://localhost:8080/index.html\">Go to Home</a>"
        	    + "</div>"
        	    + "</body>"
        	    + "</html>");
 } catch (Exception e) {
          return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to place order: " + e.getMessage());
    }
}
}
