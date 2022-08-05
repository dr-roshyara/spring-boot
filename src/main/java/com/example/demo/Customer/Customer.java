package com.example.demo.Customer;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Setter
@Getter

@Entity
@Table(name="customers")
public class Customer {
	@Id
	@SequenceGenerator(
    		name ="curstomer_sequence",
    		sequenceName="customer_sequence",
    		allocationSize=1
    		)
	@GeneratedValue(strategy=GenerationType.AUTO)
    
	private Integer id;
    private String first_name;
    private String last_name; 
    private LocalDate dob;
    private String email;  

    public Customer(){

    }
    public Customer (Integer id, String first_name, String last_name, String email){
        this.id             =id;
        this.first_name     =first_name;
        this.last_name      =last_name;
        this.email          =email;

    }
    
    
    
}
