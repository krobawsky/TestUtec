package org.springframework.samples.petclinic.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param; 
import org.springframework.samples.petclinic.model.User;

public interface UserRepository extends Repository<User, Integer> {
	
	   @Query("SELECT user FROM User user WHERE id =:id")
	   User findUserById(@Param("id") int id);
	   
	   @Query("SELECT user FROM User user WHERE username =:username")
	   User findUserByUsername(@Param("username") String username);
	    
}
