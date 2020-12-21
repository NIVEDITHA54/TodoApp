package com.nive.springboot.todoapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nive.springboot.todoapp.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value={"/","/login"}, method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String showWelcomePage(@RequestParam String username, @RequestParam String password,ModelMap model){
		
		int isValidUser = service.validateUser(username, password);
		
		switch(isValidUser) {
		case 0: model.put("errorMessage", "User doesn't exist");
		return "register";
		case -1:model.put("errorMessage", "invalid credentials");
		return "login";
		}
	
		model.put("username", username);
		model.put("password", password);
		
		return "welcome";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutUser(HttpSession session){
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/login";
	}

}
