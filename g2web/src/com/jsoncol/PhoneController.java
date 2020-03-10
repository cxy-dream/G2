package com.jsoncol;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bean.Phone;
import com.utils.Getcon;

@Controller
public class PhoneController {
	
	@ResponseBody
	@RequestMapping(value="/findPhone.do",produces="application/json;charset=utf-8")
	public String  findPhone() {
		List<Phone> phones = getPhones();
		System.out.println(phones);
		return JSON.toJSONString(phones);
	}
	
	public  List<Phone> getPhones(){
		List<Phone> phones = new ArrayList<Phone>();
		Connection connection = Getcon.getConnection();
		try {
			CallableStatement cs = connection.prepareCall("{call selectphone()}");//MYSQL执行过程调用
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				 Phone phone = new Phone(); //实例化Book对象
				 phone.setBattery(rs.getDouble("Battery"));  //对Battery属性赋值
				 phone.setBrand(rs.getDouble("Brand")); //对Brand属性赋值
				 phone.setContract(rs.getDouble("Contract")); //对Controct属性赋值
				 phone.setDesign(rs.getDouble("Design")); //对Design属性赋值
				 phone.setInternet(rs.getDouble("Internet"));
				 phone.setLarge(rs.getDouble("Large"));
				 phone.setPhonename(rs.getString("Phonename"));
				 phone.setPrice(rs.getDouble("Price"));
				 phone.setSmartphone(rs.getDouble("Smartphone"));
				 phones.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phones;
	}
	
}
