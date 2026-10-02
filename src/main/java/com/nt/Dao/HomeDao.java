package com.nt.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.entity.Employee;

@Repository
public class HomeDao {

	@Autowired
	private JdbcTemplate template;

	public boolean registerUser(Employee e) {

		Object[] args = { e.getId(), e.getName(), e.getSalary(), e.getUserName(), e.getPassword() };

		int result = template.update("insert into user values(?,?,?,?,?)", args);

		if (result == 1) {

			return true;
		}
		return false;

	}

	public boolean loginUser(String userName, String password) {
		Object[] args = { userName, password };
		int loggedin = template.queryForObject("SELECT COUNT(*) FROM user WHERE userName = ? AND password = ?",
				Integer.class, args);
		if (loggedin == 1) {
			return true;
		} else {
			return false;
		}
	}

	public List<Employee> getAllUsers() {

		List<Employee> empList = template.query("select * from user", new EmployeeMapper());

		return empList;
	}

	public boolean updateUser(int id, String name, String userName, float salary) {

		Object[] args = {name, userName, salary,id};
		int result = template.update("UPDATE user SET name = ?, userName = ?, salary = ? WHERE id = ?", args);

		if (result > 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean deleteUser(int id) {
		
		int result = template.update("DELETE FROM user WHERE id = ?",id);
		if(result > 0) {
			return true;
		}else {
			return false;
		}
	}
}
