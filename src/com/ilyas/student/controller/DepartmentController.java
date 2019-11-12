package com.ilyas.student.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ilyas.student.entity.Departments;
import com.ilyas.student.entity.Employee;
import com.ilyas.student.entity.Location;
import com.ilyas.student.service.DepartmentService;

@Controller
@RequestMapping("/department")
public class DepartmentController {
	public static List<Employee> managers = new ArrayList<>();;
	public static List<Location> locations = new ArrayList<>();;
	public static List<Departments> departments;

	public static List<Employee> employees;
	public static Departments department;

	@Autowired
	private DepartmentService departmentService;

	@GetMapping("/list")
	public String listDepartment(Model model) {

		departments = departmentService.getDepartments();

		for (Departments department : departments) {
			if (department.getManager() != null) {
				managers.add(department.getManager());
			}
			if (department.getLocation() != null) {
				if (!locations.contains(department.getLocation())) {
					locations.add(department.getLocation());
				}
			}
		}

		model.addAttribute("managers", managers);
		model.addAttribute("locations", locations);
		model.addAttribute("departments", departments);

		return "list-departments";

	}

	@GetMapping("/addDepartmentForm")
	public String addDepartmentForm(Model model) {
		employees = departmentService.getEmployees();
		model.addAttribute("managers", employees);
		model.addAttribute("locations", locations);
		department = null;

		return "departments-form";

	}

	@PostMapping("/saveDepartment")
	public String saveDepartment(@RequestParam("id") Integer departmentId, @RequestParam("name") String departmentName,
			@RequestParam("manager") String managerName, @RequestParam("location") String locationName, Model model) {

		try {
			if (department != null) {
				department.setDepartmentName(departmentName);
				if (managerName.equals("")) {
					department.setManager(null);
				} else {
					department.setManager(departmentService.getManager(Integer.valueOf(managerName)));
				}

				if (locationName.equals("")) {
					department.setLocation(null);
				} else {
					department.setLocation(departmentService.getLocation(Integer.valueOf(locationName)));
				}

				departmentService.saveDepartment(department);
				System.out.println("departmentId : " + departmentId);

			} else {
				Departments department = new Departments();
				department.setDepartmentName(departmentName);
				if (managerName.equals("")) {
					department.setManager(null);
				} else {
					department.setManager(departmentService.getManager(Integer.valueOf(managerName)));
				}

				if (locationName.equals("")) {
					department.setLocation(null);
				} else {
					department.setLocation(departmentService.getLocation(Integer.valueOf(locationName)));
				}

				departmentService.saveDepartment(department);
				System.out.println("departmentId : " + departmentId);

			}
			model.addAttribute("msg", "");

			return "redirect:/department/list";
		} catch (Exception e) {
			// System.out.println("Hata");
			return "redirect:/department/addDepartmentForm";
		}
	}

	/*
	 * @PostMapping("/saveDepartment") public String
	 * saveDepartment(@RequestParam("departmentId") Integer departmentId,
	 * 
	 * @RequestParam("departmentName") String
	 * departmentName, @RequestParam("manager") String managerName,
	 * 
	 * @RequestParam("location") String locationName) {
	 * 
	 * // Departments department = departmentService.getDepartment(departmentId);
	 * Departments department = new Departments();
	 * department.setDepartmentName(departmentName);
	 * department.setManager(departmentService.getManager(Integer.valueOf(
	 * managerName)));
	 * department.setLocation(departmentService.getLocation(Integer.valueOf(
	 * locationName))); departmentService.saveDepartment(department);
	 * 
	 * return "redirect:/department/list"; }
	 */
	@GetMapping("/updateDepartmentForm")
	public String updateDepartmentForm(@RequestParam("id") int departmentId, Model model) {

		employees = departmentService.getEmployees();
		department = departmentService.getDepartment(departmentId);
		model.addAttribute("departments", department);
		model.addAttribute("managers", employees);
		model.addAttribute("locations", locations);
	/*	model.addAttribute("empID", department.getManager().getId());
		model.addAttribute("locId",department.getLocation().getLocationId());
*/
		return "departments-form";
	}

	@GetMapping("/deleteDepartment")
	public String deleteDepartment(@RequestParam("departmentId") int departmentId) {

		departmentService.deleteDepartment(departmentId);
		return "redirect:/department/list";
	}

	@GetMapping("/searchDepartment")
	public String searchDepartment(@RequestParam("searchName") String departmentName,
			@RequestParam("searchManager") String managerName, @RequestParam("searchLocation") String locationName,
			Model model) {
		List<Departments> departments = departmentService.searchDepartment(departmentName, Integer.valueOf(managerName),
				Integer.valueOf(locationName));
		model.addAttribute("departments", departments);
		model.addAttribute("managers", managers);
		model.addAttribute("locations", locations);
		
		return "list-departments";
	}

}
