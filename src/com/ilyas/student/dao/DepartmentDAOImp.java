package com.ilyas.student.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ilyas.student.entity.Departments;
import com.ilyas.student.entity.Employee;
import com.ilyas.student.entity.Location;

@Repository
public class DepartmentDAOImp implements DepartmentDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Departments> getDepartments() {
		Session session=sessionFactory.getCurrentSession();
		Query<Departments> query = session.createQuery("from Departments", Departments.class);
		List<Departments> departments = query.getResultList();		
		return departments;
	}

	@Override
	public void saveDepartment(Departments department) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(department);
	}

	@Override
	public Departments getDepartment(int departmentId) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Departments.class, departmentId);
	}

	@Override
	public void deleteDepartment(int departmentId) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("delete from Departments where id =:param_id");
		query.setParameter("param_id", departmentId);
		int rowsDeleted=query.executeUpdate();
		System.out.println(rowsDeleted+" rows deleted");
	}

	@Override
	public List<Departments> searchDepartment(String departmentName, int managerName, int locationName) {
		Session session=sessionFactory.getCurrentSession();
		Query<Departments> query;
		String searchCriteria  = "1=1";
		if(departmentName != null && departmentName.trim().length() > 0) {
			searchCriteria += " and lower(departmentName) like " + "'%"+departmentName.toLowerCase()+"%'";
		}
		
		if(managerName != 0) {
			searchCriteria += " and manager=" + managerName;
		}
		
		if(locationName != 0) {
			searchCriteria += " and location=" + locationName;
		}
		
		query=session.createQuery("from Departments where "+ searchCriteria,Departments.class);
		List<Departments> departments=query.getResultList();
		
		return departments;
	}

	@Override
	public Employee getEmployee(Integer managerId) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Employee.class, managerId);
	}

	@Override
	public Location getLocation(Integer locationId) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Location.class, locationId);
	}

	@Override
	public List<Employee> getEmployees() {
		Session session=sessionFactory.getCurrentSession();
		Query<Employee> query = session.createQuery("from Employee", Employee.class);
		List<Employee> employees = query.getResultList();	
		return employees;
	}

	

}
