package com.laoli.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.laoli.model.User;
/*
 * 登录的拦截器
 * */
public class LoginInter implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		String path=request.getRequestURI();
		if(path.toLowerCase().indexOf("login")>=0) {
			return true;
		}
		User user=(User) request.getSession().getAttribute("Sessionuser");
		//HttpSession session=request.getSession();
		if(user!=null) {
			return true;
		}
		request.getRequestDispatcher("login").forward(request, response);
		return false;
	}
	
}
