package com.DAO;

import java.util.Comparator;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EmpDetails")
public class EmpEntity  {
	@Id
	private int id;
	private String name;
	private String email;
	private String deptName;
	private String phoneNum;
	public EmpEntity()
	{

	}
	public EmpEntity(int id, String name, String email, String deptName, String phoneNum) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.deptName = deptName;
		this.phoneNum = phoneNum;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	@Override
	public String toString() {
		return id+" "+name+" "+email+" "+deptName+" "+phoneNum;
	}
	
	
}



