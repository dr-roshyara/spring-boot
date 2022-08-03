package com.example.demo.Customer;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

	 @GetMapping
		public List<Customer> getStundents(){
			return List.of(
				new Customer(
					1L,
					"Dilip",
					"Paudyal",
					"dillip_paudyal@gmail.com"
				)
			);
		}
}
