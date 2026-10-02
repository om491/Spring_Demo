package com.nt.service;

import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Dao.HomeDao;
import com.nt.entity.*;

@Service
public class HomeService {

	@Autowired
	private HomeDao homeDao;

	public boolean registerUser(Employee e) {
		e.setPassword(RandomStringUtils.random(8, "ABCDEFGHIghijklmnopqrstuvwxyz0123456789!@#$%&*"));

		return homeDao.registerUser(e);
	}

	public boolean loginUser(String userName, String password) {

		return homeDao.loginUser(userName, password);
	}

	public List<Employee> getAllUsers() {
		return homeDao.getAllUsers();

	}

	public boolean updateUser(int id, String name, String userName, float salary) {
		return homeDao.updateUser(id, name, userName, salary);
	}

	public boolean deleteUser(int id) {
		return homeDao.deleteUser(id);
	}

}