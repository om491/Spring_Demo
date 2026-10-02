package com.nt.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nt.entity.Employee;

public class EmployeeMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		return new Employee(rs.getInt(1), rs.getString(2), rs.getFloat(3),rs.getString(4),rs.getString(5));
	}

}
