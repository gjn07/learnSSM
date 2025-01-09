package com.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.User;

public interface UserService {
	public String login (String account, String password, HttpSession session, Model model);
	public String insert (User user, Model model);
	public String delete (Integer number, Model model);
	public String update (User user, Model model);
	public String query (Model model);
}
