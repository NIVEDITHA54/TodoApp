package com.nive.springboot.todoapp.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.nive.springboot.todoapp.model.User;
import com.nive.springboot.todoapp.repository.UserRepository;

@Service
public class LoginService {
	
	private UserRepository userRepository;
	
	  @Autowired
	    public LoginService(UserRepository userRepository) {
	        this.userRepository = userRepository;
	    }

	public int validateUser(String username, String password) {
		
		User user=userRepository.findByUsername(username);
		if(user==null)
			return 0;
		else if(user.getPassword().equals(password)) return 1;
	    else return -1;


}

}