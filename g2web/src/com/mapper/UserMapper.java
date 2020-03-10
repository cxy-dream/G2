package com.mapper;

import java.util.List;

import com.bean.Users;
import com.bean.Wares;

public interface UserMapper {
	/**����id��ѯ�û���Ϣ*/
	public Wares findById(int uid);
	
	public List<Wares> findAll();
	
	public void update(Wares wares); 
	
	public void inerst(Wares wares);
	
	public void delete(int wid);
	
	public List<Wares> selectByName(String keywords);
}
