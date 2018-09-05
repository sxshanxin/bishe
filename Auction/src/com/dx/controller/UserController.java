package com.dx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dx.entity.Good;
import com.dx.entity.Saler;
import com.dx.entity.User;
import com.dx.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("userMsg1")
	public String userMsg1(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		request.setAttribute("user", user);
		return "common/user/userMsg";
	}
	@RequestMapping("userMsg2")
	public String userMsg2(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		request.setAttribute("user", user);
		return "common/user/Changepsw";
	}
	@RequestMapping("changepsw")
	public String changepsw(HttpServletRequest request){
		String psw = request.getParameter("npsw");
		User user = (User)request.getSession().getAttribute("user");
		user.setUpsw(psw);
		userService.updateUserpsw(user);
		return "redirect:logout.do";
	}
	@RequestMapping("findUserGoods")
	public String findUserGoods(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");
		String uid = user.getUid()+"";
		List<Good> goods = userService.findUserGood(uid);
		System.out.println(goods);
		request.setAttribute("goods",goods);
		return "common/user/goodList2";
	}
	
	@RequestMapping("userfindbygid")
	public String userfindbygid(HttpServletRequest request){
		String gid = request.getParameter("gid");
		Good good = userService.findbygid(gid);
		request.setAttribute("good", good);
		return "common/user/goodmsg";
	}
	@RequestMapping("perfectbefore")
	public String perfectbefore(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		request.setAttribute("user", user);
		return "common/user/Perfectmes";
	}
	@RequestMapping("updateuser")
	public String updateuser(HttpServletRequest request){
		String sex = request.getParameter("usex");
		String date = request.getParameter("date");
		String utel = request.getParameter("utel");
		User user = (User)request.getSession().getAttribute("user");
		user.setUsex(sex);
		user.setUtel(utel);
		user.setUbirthday(date);
		userService.updateUser(user);
		request.getSession().removeAttribute("user");
		request.getSession().setAttribute("user", user);
		return "redirect:userMsg1.do";
	}
}
