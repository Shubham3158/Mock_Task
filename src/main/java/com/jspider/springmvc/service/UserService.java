package com.jspider.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspider.springmvc.pojo.UserPOJO;
import com.jspider.springmvc.repository.UserRespository;

@Service
public class UserService {

	@Autowired
	private UserRespository respository;
	
	public UserPOJO addUser(String name) {
		UserPOJO pojo = respository.addUser(name);
		return pojo;
	}
	
	
	public List<UserPOJO> searchUser(String name) {
		List<UserPOJO> user = respository.searchUser(name);
		return user;
	}
}
