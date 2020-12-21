package com.nive.springboot.todoapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nive.springboot.todoapp.model.Todo;
import com.nive.springboot.todoapp.model.User;
import com.nive.springboot.todoapp.repository.TodoRepository;
import com.nive.springboot.todoapp.repository.UserRepository;

@Service
public class TodoService {
	
	private TodoRepository todoRepository;
	private UserRepository userRepository;
	
	  @Autowired
	    public TodoService(TodoRepository todoRepository) {
	        this.todoRepository = todoRepository;
	    }
	  
    public List<Todo> retrieveTodos(String username) {
   
        List<Todo> filteredTodos = todoRepository.findByUserOrderBytargetDateDesc(username);

        return filteredTodos;
        }
   
    
    public Optional<Todo> retrieveTodo(Long id) {
       return todoRepository.findById(id);
    }

    public void updateTodo(Todo todo){
    		todoRepository.delete(todo);
    		todoRepository.saveAndFlush(todo);
    }

    public void addTodo(Todo todo) {
    	
        todoRepository.saveAndFlush(todo);
    }

    public void deleteTodo(Long id) {
        todoRepository.deleteById(id);
    }
}