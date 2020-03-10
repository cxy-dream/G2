package com.jsoncol;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bean.Wares;
import com.service.UserService;


@Controller
public class JsonController {

	private UserService userService;
	@RequestMapping("test")
	public String  jsontest(HttpServletResponse response ,HttpServletRequest request) {
		System.out.println("123123");
		return "g2interval.jsp";


	}
	

	@RequestMapping(value="findj",produces="application/json;charset=utf-8")
	@ResponseBody
	public List<Wares> findByKey(String keywords) throws ServletException, IOException {
		List<Wares> wares = userService.selectByName(keywords);
		System.out.println(wares);
		//		String str = JSON.toJSONString(wares);
		//		System.out.println(str);
		return wares;
	}

	//查询所有信息
	@ResponseBody
	@RequestMapping(value="/findjson.do",produces="application/json;charset=utf-8")
	public String findAll() {
		//List<Wares> wares = userService.findAll();
		List<Wares> wares = new ArrayList();
		Wares ware=new Wares();
		ware.setPrice(123);
		ware.setWname("ware");
		wares.add(ware);
		Wares ware1 = new Wares();
		ware1.setPrice(234);
		ware1.setWname("ware1");
		wares.add(ware1);
		Wares ware2 = new Wares();
		ware2.setWname("ware2");
		ware2.setPrice(111);
		wares.add(ware2);
		System.out.println(wares);
		return JSON.toJSONString(wares);
	}

	@ResponseBody
	@RequestMapping(value="/json.do",produces="application/json;charset=utf-8")
	public List<Wares> json() {
		//String s="{\"user\":\"aaa\",\"age\":\"12\"}";
		List<Wares> wares = new ArrayList();
		Wares ware = new Wares();
		ware.setPrice(1111);
		ware.setWid(2);
		ware.setWname("warename");
		wares.add(ware);
		Wares ware1 = new Wares();
		ware.setPrice(2222);
		ware.setWid(3);
		ware.setWname("warename2");
		wares.add(ware1);
		Wares ware2 = new Wares();
		ware.setPrice(3333);
		ware.setWid(4);
		ware.setWname("warename3");
		wares.add(ware2);
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaa");
		return wares;

	}
}
