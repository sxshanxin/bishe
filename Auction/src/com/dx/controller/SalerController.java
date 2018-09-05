package com.dx.controller;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.dx.entity.Good;
import com.dx.entity.Saler;
import com.dx.service.SalerService;

@Controller
public class SalerController {
	@Autowired
	private SalerService salerService;
	@RequestMapping("findMyGoods")
	public String findMyGoods(HttpServletRequest request){
		Saler saler = (Saler) request.getSession().getAttribute("user");
		String sid = saler.getSid()+"";
		List<Good> goods = salerService.findMyGood(sid);
		System.out.println(goods);
		request.setAttribute("goods",goods);
		return "common/saler/goodList";
	}
	@RequestMapping("salermsg")
	public String salermsg(HttpServletRequest request){
		Saler saler = (Saler) request.getSession().getAttribute("user");
		request.setAttribute("user", saler);
		return "common/saler/salerMsg";
	}
	@RequestMapping("salerdelgood")
	public String salerdelgood(HttpServletRequest request){
		String gid = request.getParameter("gid");
		salerService.delgoods(gid);
		return "redirect:findMyGoods.do";
	}
	@RequestMapping("findbygid")
	public String findbygid(HttpServletRequest request){
		String gid = request.getParameter("gid");
		Good good = salerService.findbygid(gid);
		request.setAttribute("good", good);
		return "common/saler/goodmsg";
	}
	@RequestMapping("addGood")
	public String addGood(HttpServletRequest request){
		File uploadFile=new File(request.getSession().getServletContext().getRealPath("upload"));
		if(!uploadFile.exists()){
			uploadFile.mkdir();
		}
		String filename="";
		//�����ļ����ϴ�
		//����ǰ�����ĳ�ʼ����  CommonsMutipartResolver ���ಿ�ֽ�������
		CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
				request.getSession().getServletContext());
		//���form���Ƿ���enctype="multipart/form-data"
		if(multipartResolver.isMultipart(request)){
			//��request��ɶಿ��request
			MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
			//��ȡmultiRequest �����е��ļ���
			Iterator iter=multiRequest.getFileNames();
			while(iter.hasNext())
			{
				//һ�α��������ļ�
				MultipartFile file=multiRequest.getFile(iter.next().toString());
				if(file!=null)
				{
					//�ϴ����������ж�Ӧ��Ŀ�еĸ�Ŀ¼�µ�upload�ļ�����
					try {
						filename="upload/"+file.getOriginalFilename();
						file.transferTo(new File(uploadFile.getPath()+"/"+file.getOriginalFilename()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		String gname = request.getParameter("gname");
		String gthing = request.getParameter("gthing");
		String gdate = request.getParameter("gtime");
		double d = Double.parseDouble(request.getParameter("gprice"));
		String gstate = request.getParameter("gstate");
		Good g = new Good(gname, d,filename, gdate, gthing, gstate);
		salerService.addGood(g);
		String url = "addGood2.do?gname="+gname;
		return url;
	}
	@RequestMapping("addGood2")
	public String addGood2(HttpServletRequest request){
		String gname = request.getParameter("gname");
		List<Good> goods = salerService.findbygname(gname);
		int size = goods.size()-1;
		String gid = goods.get(size).getGid()+"";
		String sid = ((Saler)request.getSession().getAttribute("user")).getSid()+"";
		salerService.saleraddgood(sid, gid);
		return "redirect:findMyGoods.do";
	}
	@RequestMapping("updateSaler")
	public String updateSaler(HttpServletRequest request){
		String smail = request.getParameter("mmail");
		String stel = request.getParameter("mtel");
		Saler saler = (Saler)request.getSession().getAttribute("user");
		request.getSession().removeAttribute("user");
		saler.setStel(stel);
		saler.setSmail(smail);
		System.out.println(saler);
		request.getSession().setAttribute("user", saler);
		return "redirect:salermsg.do";
	}
}
