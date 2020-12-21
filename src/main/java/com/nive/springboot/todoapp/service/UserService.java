package com.nive.springboot.todoapp.service;

import com.nive.springboot.todoapp.model.User;
import com.nive.springboot.todoapp.repository.UserRepository;


import org.springframework.stereotype.Service;


@Service
public class UserService{

    private UserRepository userRepository;
 
    public UserService() {
    	
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    

    public User save(User user) {
        user.setPassword(user.getPassword());
        user.setActive(1);
        return userRepository.saveAndFlush(user);
        
      
    }
}
