package com.nt.entity;

public class Employee {

	private int id;
	private String name;
	private float salary;
	private String userName;
	private String password;

	public Employee(int id, String name, float salary, String userName, String password) {
		this.id = id;
		this.name = name;
		this.salary = salary;
		this.userName = userName;
		this.password = password;
	}

	public Employee() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString(){
		return this.getId() + " " + this.getName() + " " + this.getSalary() + " " + this.getUserName() + " "
				+ this.getPassword();
	}

}
