package com.laoli.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.laoli.dao.IUserDao;
import com.laoli.model.PageBean;
import com.laoli.model.Product;
import com.laoli.model.VisitLog;
import com.laoli.model.User;
import com.laoli.service.IUserService;
@Service
public class IUserServiceImpl implements IUserService{
	@Autowired
	private IUserDao dao;
	@Override
	public List<User> findAll(int currPage,int size) {
		// TODO Auto-generated method stub
		//获取第1页，10条内容，默认查询总数count
		//PageHelper.startPage(1, 10);
		PageHelper.startPage(currPage, size);
		return dao.findAll();
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		
		dao.save(user);
	}

	@Override
	public User findByName(String username) {
		// TODO Auto-generated method stub
		return dao.findByName(username);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		dao.update(user);
	}

	@Override
	public User findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public User login(String username) {
		// TODO Auto-generated method stub
		User user=dao.findByName(username);
		if(user!=null) {
			return user;
		}
		return null;
	}

	@Override
	public void chpassword(User user) {
		// TODO Auto-generated method stub
		dao.chpassword(user);
	}
	@Override
	public List<User> findByUnclare(String uname) {
		// TODO Auto-generated method stub
		List<User> user=dao.findByUnclare(uname);
		
		if(user!=null) {
			return user;
		}
		return null;
	}

	public void saveLog(VisitLog visitLog) {
		// TODO Auto-generated method stub
		dao.saveLog(visitLog);
	}

	@Override
	public List<VisitLog> findSysLog() {
		// TODO Auto-generated method stub
		return dao.findSysLog();
	}

	@Override
	public void deleteLog(int id) {
		// TODO Auto-generated method stub
		dao.deleteLog(id);
	}

	@Override
	public PageBean<Product> AllByPage(int currPage) {
		// TODO Auto-generated method stub
		PageBean<Product> page=new PageBean<>();
		HashMap<String, Object> map=new HashMap<>();
		//封装当前页数
		page.setCurrPage(currPage);
		//每页显示的数据
		int pageSize=4;
		page.setPageSize(pageSize);
		//总记录数
		int totalCount=dao.selectCount();
		page.setTotalCount(totalCount);
		//总页数
		Double tc=(double) totalCount;
		Double num=Math.ceil(tc/pageSize);
		page.setTotalPage(num.intValue());
		map.put("start", (currPage-1)*pageSize);
		map.put("size", pageSize);
		List<Product> lists=dao.AllByPage(map);
		page.setLists(lists);
		return page;
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteLot(Integer[] ids) {
		// TODO Auto-generated method stub
		
	}

}
