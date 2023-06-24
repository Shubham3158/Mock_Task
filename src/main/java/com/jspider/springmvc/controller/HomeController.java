package com.jspider.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspider.springmvc.pojo.UserPOJO;
import com.jspider.springmvc.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService service;

	@GetMapping("/home")
	public String home() {
		return "Home";
	}

	@GetMapping("/add")
	public String Insert() {
		return "Insert";
	}

	@GetMapping("/search")
	public String Search() {
		return "Search";
	}

	@PostMapping("/insert")
	public String Insert(@RequestParam String name, ModelMap map) {

		UserPOJO pojo = service.addUser(name);
		map.addAttribute("msg", "Data inserted successfully. ");
		return "Insert";
	}
	
	
	@PostMapping("/search")
	public String searchStudent(@RequestParam String name, ModelMap map) {
		List<UserPOJO> pojo = service.searchUser(name);
		if (pojo != null) {
			map.addAttribute("user", pojo);
			map.addAttribute("msg", "User record found. ");
			
			return "Search";
		}
		map.addAttribute("msg", "User data does not exist. ");
			return "Search";
		
	}

}
