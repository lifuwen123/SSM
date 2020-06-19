package com.laoli.utils;
import java.net.InetAddress;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.laoli.model.User;
import com.laoli.model.VisitLog;
import com.laoli.service.IUserService;
/*
 * 
 * 切面类
 * */
@Component
@Aspect
public class LogAop {
		@Autowired
	    private HttpServletRequest request;
	    @Autowired
	    private IUserService service;
	    private Date sttime;
	    //前置通知 
	    @Before("execution(* com.laoli.controller.*.loginout(..))")
	    public void doBefore(JoinPoint jp) throws NoSuchMethodException, Exception {
	    	InetAddress id=InetAddress.getLocalHost();
		    String ip=id.getHostAddress();
		    System.out.println("主机名称"+id.getHostName().toString());
		    String computerName= id.getHostName();
	        System.out.println("用户访问的ip"+ip);
	    	User user=(User) request.getSession().getAttribute("Sessionuser");
	    	Date endtime=new Date();
	    	System.out.println("结束时间"+endtime);
	    	String username=user.getUsername();
	    	System.out.println("访问用户名"+username);
	    	int Longtime=(int) ((endtime.getTime()-sttime.getTime())/1000);
	    	System.out.println("访问时长"+Longtime);
	    	VisitLog visitLog=new VisitLog();
	    	visitLog.setSttime(sttime);
	    	visitLog.setUsername(username);
	    	visitLog.setIp(ip);
	    	visitLog.setTime(Longtime);
	    	visitLog.setComputerName(computerName);
	    	service.saveLog(visitLog);
	    }
	    //后置通知
	    @After("execution(* com.laoli.controller.*.login(..))")
	    public void doAfter(JoinPoint jp) throws Exception {
	       sttime=new Date();
	       System.out.println("开始时间"+sttime);
	    }
}
