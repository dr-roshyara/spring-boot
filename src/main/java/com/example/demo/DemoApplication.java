package com.example.demo;

import java.util.List;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
//custom 
import com.example.demo.Customer.Customer;
//


@SpringBootApplication
@RestController
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);

	}
	@GetMapping
	public List<Customer> Customers(){
		return List.of(
			new Customer(
				1,
				"Dilip",
				"Paudyal",
				"dillip_paudyal@gmail.com"
			)
		);
	}

}
