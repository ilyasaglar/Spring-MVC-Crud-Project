package com.ilyas.student.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="LOCATIONS")
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "location-numerator" )
	@SequenceGenerator( name =" location-numerator" , allocationSize = 100, sequenceName = "locations_seq")
	@Column(name = "LOCATION_ID")
	private Integer locationId;
	
	@Column(name = "CITY")
	private String city;
	
	
	@OneToMany(mappedBy = "location",cascade = { CascadeType.DETACH , CascadeType.MERGE , CascadeType.PERSIST, CascadeType.REFRESH})
	private List<Departments> department;


	public Integer getLocationId() {
		return locationId;
	}


	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public List<Departments> getDepartments() {
		return department;
	}


	public void setDepartments(List<Departments> departments) {
		this.department = department;
	}

	

	public Location() {
		
	}


	@Override
	public String toString() {
		return city;   
	}
	
	
	
}
