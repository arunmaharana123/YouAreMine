package org.arun.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.arun.spring.service.MyService;
import org.arun.spring.session_mgmt.UserSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/login", method = RequestMethod.POST, headers = "Accept=application/json")
	public String login(Model model, HttpServletRequest request) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (StringUtils.isNotBlank(username) && StringUtils.isNotBlank(password)) {
			if (username.equals("arun") && password.equals("arun")) {
				if (UserSession.session == null) {
					UserSession.session = request.getSession();
					System.out.println(UserSession.session.getId());
				}
			}
		}

		return "redirect:/home";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET, headers = "Accept=application/json")
	public String logout(Model model, HttpServletRequest request) {

		UserSession.session.invalidate();
		UserSession.session = null;
		return "redirect:/home";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET, headers = "Accept=application/json")
	public String signup(Model model, HttpServletRequest request) {
		return "signup";
	}

}
