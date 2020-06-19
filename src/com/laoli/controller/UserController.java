package com.laoli.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.laoli.model.VisitLog;
import com.github.pagehelper.PageInfo;
import com.laoli.model.PageBean;
import com.laoli.model.Product;
import com.laoli.model.User;
import com.laoli.service.impl.IUserServiceImpl;
import com.laoli.utils.MyException;
@Controller
@SessionAttributes(value = {"Sessionuser"})
public class UserController {
	@Autowired
	private IUserServiceImpl service;
	/*
	 * 查询所有用户
	 * 
	 * */
	@RequestMapping("/main")
	public String men(Model model,@RequestParam(value = "currPage",defaultValue = "1",required = false) int currPage) {
		PageBean<Product> list=service.AllByPage(currPage);
		model.addAttribute("pro", list);
		return"main";
	}
	@RequestMapping(value = "/findAll")
	public String test(Model model,@RequestParam(value = "currPage",defaultValue = "1") int currPage,@RequestParam(value = "size" ,defaultValue = "5") int size) {
		List<User> users=service.findAll(currPage,size);
		//PageInfo就是一个分页Bean
		PageInfo<User> info=new PageInfo<>(users);
		model.addAttribute("users", info);
		
		/* for(User user:users) { System.out.println(user); } */
		 
		return "success";
	}
	/*
	 *用户登录
	 * 
	 * */
	@RequestMapping("/login")
	public String login(Model model,String username,String rcpassword) {
		if(username==""||rcpassword=="") {
			model.addAttribute("err", "用户名或密码不能为空");
			return "login";
		}
		if(username==null||rcpassword==null) {
			model.addAttribute("err", "请输入用户名和密码");
			return "login";
		}
		User Sessionuser=service.login(username);
		if(Sessionuser!=null&&Sessionuser.getPassword().equals(rcpassword)) {
			model.addAttribute("Sessionuser", Sessionuser);
			return "redirect:main";
		}
		model.addAttribute("err", "用户名或者密码错误");
		return "login";
	}
	
	/*
	 * 退出用户
	 * 
	 * */
	@RequestMapping("/loginout")
	public String loginout(SessionStatus status) throws Exception{
		try {
			status.setComplete();
		} catch (Exception e) {
			// TODO: handle exception
			new MyException("抱歉,你还未进行登录");
		}
		
		return "login";
	}
	
	/*
	 * 用户去修改密码
	 * 
	 * */
	
	@RequestMapping("/to_chpassword")
	public String to_chpassword() {
		return"chpassword";
	}
	
	/*
	 * 用户修改密码
	 * 
	 * */
	

	@RequestMapping("/chpassword")
	public String chpassword(ModelMap map,String old,String new1,String new2) {
		User user=(User) map.get("Sessionuser");
		System.out.println(user);
		if(!user.getPassword().equals(old)) {
			map.addAttribute("err","你输入的原密码错误");
			return"chpassword";
		}
		if((new1==null||new1=="")||(new2==null||new2=="")) {
			map.addAttribute("err", "新密码不能为空");
			return "chpassword";
		}
		if(!new1.equals(new2)) {
			map.addAttribute("err", "两次输入的密码不一致");
			return "chpassword";
		}
		user.setPassword(new2);
		service.chpassword(user);
		return "login";
	}
	
	/*
	 * 删除用户
	 * 
	 * */
	@RequestMapping("/delete")
	public String delete(int id) {
		service.delete(id);
		return "redirect:findAll";
	}
	/*
	 * 删除用户
	 * 
	 * */
	@RequestMapping("/deleteLot")
	public void deleteLot(int ids) {
		System.out.println("666");
		System.out.println(ids);
		//service.delete(id);
		//return "redirect:findAll";
	}
	
	/*
	 * 去保存用户
	 * 
	 * */
	@RequestMapping("/to_save")
	public String to_save() {
		return "add";
	}
	/*
	 * 保存用户
	 * 
	 * */
	@RequestMapping("/save")
	public String save(Model model,User us) {
		if((us.getUsername()==null||us.getUsername()=="")||
				(us.getPassword()==null)||
				(us.getBirthday()==null)||
				(us.getAddress()==null||
				(us.getSex()==null))) {
			model.addAttribute("repet", "带有*的为必填项");
			return "add";
		}
		if(us.getPhone()==null||us.getPhone()=="") {
			model.addAttribute("repet", "密保问题必须输入");
			return "add";
		}
		
		String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$";
		if (Pattern.matches(regex, us.getPhone())) {
		   System.out.println("校验成功");
		} else {
			model.addAttribute("repet", "手机号格式错误");
			return "add";
		}
		User u=service.findByName(us.getUsername());
		if(us.getUsername()==null||us.getUsername()=="") {
			model.addAttribute("repet", "用户名不能为空");
			return "add";
		}
		if(u!=null) {
			model.addAttribute("repet", "用户名重复");
			return "add";
		}
		service.save(us);
		return "redirect:findAll";
	}
	
	/*
	 * 去修改用户
	 * 
	 * */
	@RequestMapping("/to_update")
	public String to_update(Model model,Integer id) {
		User user=service.findById(id);
		model.addAttribute("user", user);
		return"update";
	}
	/*
	 * 修改用户
	 * 
	 * */
	@RequestMapping("/update")
	public String update(Model model,User user) {
		/*
		 * 这是通过修改用户的id进行查询，这样可以保证能继续用以前的用户名
		 * */
		User user2=service.findById(user.getId());
		if(user2.getUsername().equals(user.getUsername())) {
			service.update(user);
			return "redirect:findAll";
		}
		/*
		 * 这是通过修改用户的用户名进行查询，这样可以保证用户名不重复
		 * */
		User user3=service.findByName(user.getUsername());
		if(user3!=null) {
			model.addAttribute("repet", "用户已经存在");
			return "forward:to_update";
		}
		service.update(user);  
		return "redirect:findAll";
	}
	/*
	 * 根据关键字查找用户
	 * 
	 * */
	@RequestMapping("/findName")
	public String info(Model model,String name,String birthday) {
		if((name!=null&&name!="")||(birthday!=null&&birthday!="")){
		String uname="%"+name+"%";
		System.out.println(uname);
		List<User> comuser=service.findByUnclare(uname,birthday);
		if(!comuser.isEmpty()) {
			model.addAttribute("comuser", comuser);
			return "info";
			}
		}
		model.addAttribute("emp", "未查询到你输入的数据,请你返回重新输入");
		return "info";
		
	}
	
	/*
	 * 查询所有登录日志
	 * 
	 * */
	@RequestMapping("/findAllLog")
	public String SysLog(Model model) {
		List<VisitLog> syslog=service.findSysLog();
		model.addAttribute("visitlog", syslog);
		for(VisitLog s:syslog) {
			System.out.println(s);
		}
		return "visitlog";
	}
	/*
	 * 删除某个登录日志
	 * 
	 * */
	@RequestMapping("/deleteLog")
	public String deleteLog(int id) {
		service.deleteLog(id);
		return "redirect:findAllLog";
	}
	
	/*
	 * 下载图片
	 * 
	 * */
	
	@RequestMapping(value = "/img",method = RequestMethod.GET)
	public ResponseEntity<byte[]> download(HttpServletRequest request,HttpServletResponse response,String filename) throws Exception {
		//获取下载文件的路径
		String path=request.getServletContext().getRealPath("/img/");
		//把下载文件构成一个文件处理   filename:前台传过来的文件名称
		File file=new File(path,filename);
		//设置响应头
		HttpHeaders headers=new HttpHeaders();
		String downloadFileName = new String(filename.getBytes("UTF-8"), "iso-8859-1");//设置响应的文件名
		 
		headers.setContentDispositionFormData("attachment", downloadFileName);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
 
		// MediaType:互联网媒介类型 contentType：具体请求中的媒体类型信息
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.OK);
	}
	
	/*默认地址
	 * 
	 * */
	@RequestMapping("/address")
	
	public @ResponseBody String address() {
		return "河南省商丘市";
	}
	/*
	 * 找回密码
	 * */
	@RequestMapping("/to_forget")
	public String forget() {
		return "forget";
	}
	
	/*
	 * 找回密码时验证用户
	 * 
	 * */
	@RequestMapping("/repassword")
	public String repassword(Model model,String username,String phone,String birthday) {
		if(username==null||username=="") {
			model.addAttribute("no", "不能输入空的值哦!");
			return "forget";
		}
		User u4=service.findByName(username.trim());
		if(u4==null) {
			model.addAttribute("no", "抱歉,没有查到此用户");
			return "forget";
		}
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		if((!u4.getPhone().equals(phone))||(!sf.format(u4.getBirthday()).equals(birthday))) {
			model.addAttribute("no", "验证未通过");
			return "forget";
		}
		service.forget(u4);
		model.addAttribute("user", u4);
		return "pass";
	}
	/*
	 * 去举报用户
	 * 
	 * */
	@RequestMapping("/aberrant")
	public String aberrant(Model model,@RequestParam(value = "currPage",defaultValue = "1") int currPage,@RequestParam(value = "size" ,defaultValue = "5") int size) {
		List<User> users=service.findAll(currPage,size);
		model.addAttribute("users", users);
		return "aberrant";
	}
	
	
}
