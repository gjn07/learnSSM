package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.User;
import com.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login(String account, String password, HttpSession session, Model model) {
		return userService.login(account, password, session, model);
	}

	@RequestMapping("/insert")
	public String insert(User user, Model model) {
		return userService.insert(user, model);
	}

	@RequestMapping("/delete")
	public String delete(Integer number, Model model) {
		return userService.delete(number, model);
	}

	@RequestMapping("/update")
	public String update(User user, Model model) {
		return userService.update(user, model);
	}

	@RequestMapping("/query")
	public String query(Model model) {
		return userService.query(model);
	}
}
