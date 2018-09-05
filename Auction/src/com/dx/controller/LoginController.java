package com.dx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dx.entity.Manager;
import com.dx.entity.Saler;
import com.dx.entity.User;
import com.dx.service.ManagerService;
import com.dx.service.SalerService;
import com.dx.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private SalerService salerService;
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("dologin")
	public String dologin(HttpServletRequest request){
		HttpSession session = request.getSession();
		String iden = (String) session.getAttribute("iden");
		System.out.println(iden);
		String identity = request.getParameter("identity");
		System.out.println(identity);
		String name = request.getParameter("name");
		System.out.println(name);
		String psw = request.getParameter("psw");
		System.out.println(psw);
		if(iden!=null){
			if(iden.equals("1")){
				return "common/manager/main";
			}else if(iden.equals("2")){
				return "common/saler/main";
			}else{
				return "common/user/main";
			}
		}else{
		if(identity!=null){
				if(identity.equals("1")){
					Manager manager=managerService.findByLoginm(name, psw);
					if(manager!=null){
						session.setAttribute("user", manager);
						session.setAttribute("iden", identity);
						return "common/manager/main";
					}else{
						request.setAttribute("error", "用户名或密码错误");
						return "login";
					}
					
				}else if(identity.equals("2")){
					Saler saler = salerService.findByLogins(name, psw);
					if(saler!=null){
						session.setAttribute("user", saler);
						session.setAttribute("iden", identity);
						return "common/saler/main";
					}else{
						request.setAttribute("error", "用户名或密码错误");
						return "login";
					}
				}else if(identity.equals("3")){
					User user = userService.findByLoginu(name, psw);
					if(user!=null){
						session.setAttribute("user", user);
						session.setAttribute("iden", identity);
						return "common/user/main";
					}else{
						request.setAttribute("error", "用户名或密码错误");
						return "login";
					}
				}
				request.setAttribute("error", "请选择正确的身份");
				return "login";
		}else{
			return "login";
		}
		}
	}
}
