package com.example.demo.Customer;

import java.util.List;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;

@RestController

@RequestMapping(value = "api/v1/customers")
public class CustomerController {
   private final CustomerService customerService; 
   
   @Autowired	
   public CustomerController(CustomerService customerService) {
	   this.customerService =customerService;
   }
   
	@GetMapping 
	 public List<Customer> getStudents(){
		   return this.customerService.getCustomers();
	   }
}
