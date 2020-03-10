package com.service;


import java.util.List;

import com.bean.Users;
import com.bean.Wares;

public interface UserService {
	
	Wares findById(int uid);
	
	List<Wares> findAll();

	void update(Wares wares);
	
	void inerst(Wares wares);

	void delete(int wid);
	
	public List<Wares> selectByName(String keywords);
}
