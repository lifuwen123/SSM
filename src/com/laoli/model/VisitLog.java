package com.laoli.model;

import java.util.Date;

public class VisitLog {
	private int id;//表id
	private Date sttime;//登录开始时间
	private String username;//登录的用户名
	private String ip;//登录的ip地址
	private String computerName;//主机用户名
	private int time;//访问时长
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getSttime() {
		return sttime;
	}
	public void setSttime(Date sttime) {
		this.sttime = sttime;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getComputerName() {
		return computerName;
	}
	public void setComputerName(String computerName) {
		this.computerName = computerName;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "VisitLog [id=" + id + ", sttime=" + sttime + ", username=" + username + ", ip=" + ip + ", computerName="
				+ computerName + ", time=" + time + "]";
	}
	
}
