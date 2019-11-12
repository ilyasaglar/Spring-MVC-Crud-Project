package com.ilyas.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilyas.student.dao.DepartmentDAO;
import com.ilyas.student.entity.Departments;
import com.ilyas.student.entity.Employee;
import com.ilyas.student.entity.Location;

@Service
public class DepartmentServiceImp implements DepartmentService {


	@Autowired
	private DepartmentDAO departmentDAO;

	@Override
	@Transactional
	public List<Departments> getDepartments() {
		return departmentDAO.getDepartments();
	}

	
	@Override
	@Transactional
	public void saveDepartment(Departments departmentId) {
		departmentDAO.saveDepartment(departmentId);
	}
	

	@Override
	@Transactional
	public void deleteDepartment(int departmentId) {
		departmentDAO.deleteDepartment(departmentId);
	}

	@Override
	@Transactional
	public List<Departments> searchDepartment(String departmentName,int managerName, int locationName) {
		return departmentDAO.searchDepartment(departmentName,managerName,locationName);
	}


	@Override
	@Transactional
	public Departments getDepartment(int departmentId) {
		return departmentDAO.getDepartment(departmentId);
	}

	@Override
	@Transactional
	public Employee getManager(Integer managerId) {
		return departmentDAO.getEmployee(managerId);
	}


	@Override
	@Transactional
	public Location getLocation(Integer locationId) {
		// TODO Auto-generated method stub
		return departmentDAO.getLocation(locationId);
	}


	@Override
	@Transactional
	public List<Employee> getEmployees() {
		return departmentDAO.getEmployees();
	}




}