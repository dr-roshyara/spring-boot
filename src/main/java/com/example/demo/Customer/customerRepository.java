package com.example.demo.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
//This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
//CRUD refers Create, Read, Update, Delete

@Repository
interface CustomerRepository extends CrudRepository<Customer, Integer> {
	List<Customer> findAll();
}