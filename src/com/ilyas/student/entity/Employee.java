package com.ilyas.student.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYEES")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "employee-numarator" )
	@SequenceGenerator(name = "employee-numarator", allocationSize = 1, sequenceName = "employees_seq")
	@Column(name = "EMPLOYEE_ID")
	private Integer id;
	
	@Column(name = "FIRST_NAME")
	private String firstName;
	
	@Column(name = "LAST_NAME")
	private String lastName;
	
	@OneToMany(mappedBy = "manager", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	//private Departments departments;
	private List<Departments> departments;
	
	
	public void setDepartments(List<Departments> departments) {
		this.departments = departments;
	}



	public Integer getId() {
		return id;
	}
	
	

	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/*
	public Departments getDepartments() {
		return departments;
	}

	public void setDepartment(Departments departments) {
		this.departments = departments;
	}
	*/
	public Employee() {
		super();
	}

	@Override
	public String toString() {
		return firstName + " " + lastName;
	}
	
	
	
}
