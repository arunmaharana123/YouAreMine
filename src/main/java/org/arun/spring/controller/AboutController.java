package org.arun.spring.controller;

import org.arun.spring.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/about", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model) {

		return "about";
	}

}
