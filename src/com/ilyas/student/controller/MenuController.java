package com.ilyas.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("/")
	public String mainMenu() {
		return "main-menu";
	}
}
