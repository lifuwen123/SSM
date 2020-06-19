package com.laoli.service;

import java.util.HashMap;
import java.util.List;

import com.laoli.model.PageBean;
import com.laoli.model.Product;
import com.laoli.model.VisitLog;
import com.laoli.model.User;

public interface IUserService {
	//查询所有用户
		List<User> findAll(int currPage,int size);
		//通过用户名查询
		User findByName(String username);
		//通过用户ID查询用户
		User findById(Integer id);
		//保存用户
		void save(User user);
		//删除用户
		void delete(Integer id);
		//批量删除用户
		void deleteLot(Integer[] ids);
		//修改用户
		void update(User user);
		//用户登录
		User login(String username);
		//修改密码
		void chpassword(User user);
		//查询商品
		PageBean<Product> AllByPage(int currPage);
		//查询商品条数
		int selectCount();
		//模糊查询
		List<User> findByUnclare(String uname,String birthday);
		//保存日志
		void saveLog(VisitLog visitLog);
		//查找日志
		List<VisitLog> findSysLog();
		//删除某个日志
		void deleteLog(int id);
		//查找密码
		void forget(User user);
}
