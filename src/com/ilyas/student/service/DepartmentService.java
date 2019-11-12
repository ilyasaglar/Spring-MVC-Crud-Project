package com.ilyas.student.service;

import java.util.List;


import com.ilyas.student.entity.Departments;
import com.ilyas.student.entity.Employee;
import com.ilyas.student.entity.Location;

public interface DepartmentService {

	

public List<Departments> getDepartments();

public void saveDepartment(Departments department);

public Departments getDepartment(int departmentId);

public void deleteDepartment(int departmentId);

public List<Departments> searchDepartment(String departmentName, int managerName, int locationName);

public Employee getManager(Integer managerId);

public Location getLocation(Integer locationId);

public List<Employee> getEmployees();




}
