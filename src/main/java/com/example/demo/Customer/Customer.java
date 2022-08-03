package com.example.demo.Customer;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.time.LocalDate;

@Entity
@Table(name="customers")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    
	private Long id;
    private String first_name;
    private String last_name; 
    private LocalDate dob;
    private String email; 

    public Customer(){

    }
    public Customer (Long id, String first_name, String last_name, String email){
        this.id             =id;
        this.first_name     =first_name;
        this.last_name      =last_name;
        this.email          =email;

    }
    
    public String getEmail() {
        return email;
    }
     public String getFirst_name() {
         return first_name;
     }
     public String getLast_name() {
         return last_name;
     }
     public LocalDate getDob() {
         return dob;
     }
     public Long getId() {
         return id;
     }
     public void setDob(LocalDate dob) {
         this.dob = dob;
      }
     public void setEmail(String email) {
         this.email = email;
     }
     public void setFirst_name(String first_name) {
         this.first_name = first_name;
     }
     public void setId(Long id) {
         this.id = id;
     }
     public void setLast_name(String last_name) {
         this.last_name = last_name;
     }
    //  @Override
    //  public String toString(){
    //     return "Cumstomer { "+
    //             "first name='"+first_name+ "\'"+
    //             "last name= '"+last_name+"\'" +
    //             "}";

    //  }
    
}
