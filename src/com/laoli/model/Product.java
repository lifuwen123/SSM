package com.laoli.model;

public class Product {
	private Integer id;//自增长的id
	private String img;//图片的存放地址
	private String name;//图片名字
	private String imgname;//图片标题名称
	
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", img=" + img + ", name=" + name + "]";
	}
	
}
