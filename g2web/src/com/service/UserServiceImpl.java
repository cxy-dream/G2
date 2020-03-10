package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Users;
import com.bean.Wares;
import com.mapper.UserMapper;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Override
	public Wares findById(int uid) {
		return userMapper.findById(uid);
	}
	@Override
	public List<Wares> findAll() {
		return userMapper.findAll();
	}
	@Override
	public void update(Wares wares) {
		userMapper.update(wares);
	}
	@Override
	public void inerst(Wares wares) {
		userMapper.inerst(wares);
	}
	@Override
	public void delete(int wid) {
		userMapper.delete(wid);
	}
	@Override
	public List<Wares> selectByName(String keywords) {
		List<Wares> list = userMapper.selectByName(keywords);
		return list;
	}

}
