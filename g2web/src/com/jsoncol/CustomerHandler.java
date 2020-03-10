package com.jsoncol;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.bean.Users;
import com.bean.Wares;
import com.service.UserService;
import com.sy.common.bean.CommonUtils;
@Controller
public class CustomerHandler{

	@Autowired
	private UserService userService;

	//根据id查询一条数据后转发到编辑页面
	@RequestMapping(value="findBId.do")
	public ModelAndView findById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String id=request.getParameter("wid");
		System.out.println(id);
		int wid=Integer.parseInt(id);
		Wares u=userService.findById(wid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customer", u);
		mv.setViewName("/edit.jsp");
		return mv;
	}

	//查询所有信息

	@RequestMapping(value="findAll.do")
	public ModelAndView findAll() {
		List<Wares> users = userService.findAll();
		ModelAndView mv= new ModelAndView();
		mv.addObject("all",users);
		mv.setViewName("/xianshi.jsp");
		return mv;
	}

	@RequestMapping(value="findB.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public List<Wares> findB() throws ServletException, IOException {
		List<Wares> wares = userService.findAll();
		System.out.println(wares);
		//		String str = JSON.toJSONString(wares);
		//		System.out.println(str);
		return wares;
	}



	//根据id修改信息
	@RequestMapping(value="updateById.do",method=RequestMethod.POST)
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Map<String, String[]> map = request.getParameterMap();
		Wares wares = CommonUtils.toBean(map, Wares.class);
		System.out.println(wares);
		userService.update(wares);
		request.getRequestDispatcher("findAll.do").forward(request, response);
	}

	//插入一条信息
	@RequestMapping(value="inerst.do",method=RequestMethod.POST)
	public void inerst(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Map<String, String[]> map = request.getParameterMap();
		Wares bean = CommonUtils.toBean(map, Wares.class);
		String s=getuid();
		bean.setWnum(s);
		System.out.println(bean);
		userService.inerst(bean);
		request.getRequestDispatcher("findAll.do").forward(request, response);
	}

	//根据id删除一条信息
	@RequestMapping(value="delete.do")
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String id=request.getParameter("wid");
		int wid=Integer.parseInt(id);
		userService.delete(wid);
		request.getRequestDispatcher("findAll.do").forward(request, response);
	}
	public String getuid() {
		String s = UUID.randomUUID().toString();
		return s;

	}
	//模糊查询
	@RequestMapping(value="findBykey.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public List<Wares> findByKey(String keywords) throws ServletException, IOException {
		List<Wares> wares = userService.selectByName(keywords);
		System.out.println(wares);
		//		String str = JSON.toJSONString(wares);
		//		System.out.println(str);
		return wares;
	}

}
