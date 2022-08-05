package com.example.demo.Customer;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
@Service
public class CustomerService {
	 @Autowired
	 private CustomerRepository customerRepository;
	 
	 
	public List<Customer> getCustomers(){
		//return "test";
		return  customerRepository.findAll();
		//return (List<Customer>) repository.findAll();
	}
}
