package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.UserDao;
import com.po.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public String login(String account, String password, HttpSession session, Model model) {
		if (account == null || account == "") account = "-1";
		Integer number = Integer.parseInt(account);
		User result = userDao.selectUserByNumber(number);
		if(result == null || !result.getPassword().equals(password)) {
			String message[] = new String[3];
			message[0] = account;
			message[1] = password;
			message[2] = "账号或密码错误！";
			model.addAttribute("message", message);
			return "relogin";
		}
		session.setAttribute("username", result.getUsername());
		model.addAttribute("loginInfo", result);
		return "home";
	}

	@Override
	public String insert(User user, Model model) {
		if (userDao.insertUser(user) == 1) model.addAttribute("message", "插入成功");
		else model.addAttribute("message", "插入成功");
		return "home";
	}

	@Override
	public String delete(Integer number, Model model) {
		if (userDao.deleteUserByNumber(number) == 1) model.addAttribute("message", "删除成功");
		else model.addAttribute("message", "删除成功");
		return "home";
	}

	@Override
	public String update(User user, Model model) {
		if (userDao.updateUserByNumber(user) == 1) model.addAttribute("message", "更新成功");
		else model.addAttribute("message", "更新成功");
		return "home";
	}

	@Override
	public String query(Model model) {
		List<User> list = userDao.selectAllUser();
		if (!list.isEmpty()) model.addAttribute("message", "查询成功" + list);
		else model.addAttribute("messsage", "查询成功");
		return "home";
	}

}
