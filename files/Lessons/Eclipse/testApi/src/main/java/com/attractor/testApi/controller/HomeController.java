package com.attractor.testApi.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	@RequestMapping("/")
	public String getHome() {
		return "Hello";
	}
	
	//http:/localhost
	
	@RequestMapping("/getName/{name}")
	public String getName(@PathVariable("name") String name) {
		return "Hello " + name;
	}
	
	@RequestMapping("/getSurname")
	public String getSurname(@RequestParam(name = "surname") String surname) {
		return "Hello " + surname;
	}

}