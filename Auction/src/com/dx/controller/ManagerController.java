package com.dx.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dx.entity.Good;
import com.dx.entity.Manager;
import com.dx.entity.Saler;
import com.dx.entity.User;
import com.dx.service.ManagerService;


@Controller
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	@RequestMapping("showSalers")
	public String showSaler(HttpServletRequest request){
		List<Saler> salers = managerService.findSalers();
		System.out.println(salers);
		request.setAttribute("salers", salers);
		return "common/manager/salerList";
	}
	@RequestMapping("delSaler")
	public String delSaler(HttpServletRequest request){
		String sid = request.getParameter("sid");
		managerService.updateSalerSstate(sid);
		List<Good> goods = managerService.findMyGood2(sid);
		for(Good g:goods){
			managerService.updateGoodGstate(g.getGid()+"");
		}
		return "redirect:showSalers.do";
	}
	@RequestMapping("jihuosaler")
	public String jihuosaler(HttpServletRequest request){
		String sid = request.getParameter("sid");
		managerService.updateSalerSstateP(sid);
		return "redirect:showSalers.do";
	}
	@RequestMapping("testMname")
	public void testMname(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String mname = request.getParameter("scode");
		System.out.println(mname);
		boolean b = managerService.findByMname(mname);
		if(b){
			response.getWriter().write("dui");
		}else{
			response.getWriter().write("cuo");
		}
	}
	@RequestMapping("addManager")
	public String addManager(Manager manager){
		System.out.println(manager);
		managerService.insertManager(manager);
		return "common/manager/success";
	}
	@RequestMapping("managerList")
	public String ManagerList(HttpServletRequest request){
		List<Manager> managers = new ArrayList<Manager>();
		managers = managerService.findManagers();
		request.setAttribute("managers", managers);
		return "common/manager/managerList";
	}
	@RequestMapping("deleteManager")
	public String deleteManager(HttpServletRequest request){
		String sid = request.getParameter("sid");
		managerService.delManager(sid);
		return "redirect:managerList.do";
	}
	@RequestMapping("findGoods")
	public String findGoods(HttpServletRequest request){
		List<Good> goods = new ArrayList<Good>();
		goods = managerService.findGoods();
		System.out.println(goods);
		request.setAttribute("goods", goods);
		return "common/manager/goodList";
	}
	@RequestMapping("delGood")
	public String delGood(HttpServletRequest request){
		String gid = request.getParameter("gid");
		managerService.updateGoodGstate(gid);
		return "redirect:findGoods.do";
	}
	@RequestMapping("findUsers")
	public String findUsers(HttpServletRequest request){
		List<User> users = new ArrayList<User>();
		users = managerService.findUsers();
		request.setAttribute("users", users);
		return "common/manager/userList";
	}
	@RequestMapping("dongjie")
	public String dongjie(HttpServletRequest request){
		String uid = request.getParameter("uid");
		System.out.println(uid);
		managerService.updateUserstateD(uid);
		return "redirect:findUsers.do";
	}
	@RequestMapping("jihuo")
	public String jihuo(HttpServletRequest request){
		String uid = request.getParameter("uid");
		System.out.println(uid);
		managerService.updateUserstateJ(uid);
		return "redirect:findUsers.do";
	}
	@RequestMapping("findbygid2")
	public String findbygid2(HttpServletRequest request){
		String gid = request.getParameter("gid");
		Good good = managerService.findbygid2(gid);
		request.setAttribute("good", good);
		return "common/manager/goodmsg2";
	}
}
