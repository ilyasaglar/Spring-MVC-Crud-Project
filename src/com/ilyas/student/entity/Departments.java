package com.ilyas.student.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "DEPARTMENTS")
public class Departments {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "department-numerator")
	@SequenceGenerator(name = "department-numerator", sequenceName = "departments_seq", allocationSize = 10)
	@Column(name = "department_id")
	private Integer id;

	@Column(name = "department_name")
	@NotBlank( message= "Ýsim boþ olamaz")
	private String departmentName;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "MANAGER_ID")
	private Employee manager;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "LOCATION_ID")
	private Location location;

	
	public Employee getManager() {
		return manager;
	}

	public void setManager(Employee manager) {
		this.manager = manager;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}


	@Override
	public String toString() {
		return "Departments [departmentName=" + departmentName + ", manager=" + manager + ", location=" + location + "]";
	}

	public Departments() {
		super();
	}

}
