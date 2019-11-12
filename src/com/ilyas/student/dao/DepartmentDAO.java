package com.ilyas.student.dao;

import java.util.List;
import com.ilyas.student.entity.Departments;
import com.ilyas.student.entity.Employee;
import com.ilyas.student.entity.Location;

public interface DepartmentDAO {

	public List<Departments> getDepartments();

	public void saveDepartment(Departments departmentId);

	public Departments getDepartment(int departmentId);

	public void deleteDepartment(int departmentId);

	public List<Departments> searchDepartment(String departmentName, int managerName, int locationName);

	public Employee getEmployee(Integer managerId);

	public Location getLocation(Integer locationId);

	public List<Employee> getEmployees();
}
