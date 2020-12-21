package com.nive.springboot.todoapp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nive.springboot.todoapp.model.Todo;


    @Repository
	public interface TodoRepository extends JpaRepository<Todo, Long>{
        
    	@Query(value="select t from Todo t where t.user.username=user")
	    List<Todo> findByUserOrderBytargetDateDesc(@Param("String user")String user);
        
	    Optional<Todo> findById(Long id);

	}

	
	