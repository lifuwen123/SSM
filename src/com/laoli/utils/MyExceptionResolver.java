package com.laoli.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionResolver implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object arg2,
			Exception e) {
		// TODO Auto-generated method stub
		MyException my=null;
		if(e instanceof MyException) {
			my=(MyException) e;
		}
		else {
			my=new MyException("你的程序出现了出现了异常,请联系管理员老李,联系方式:QQ号码961222512");
		}
		ModelAndView mv=new ModelAndView();
		mv.addObject("err", my.getMessage());
		mv.setViewName("err");
		return mv;
	}
	
}
