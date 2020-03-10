package com.bean;

public class Wares {
private int wid;
private String wname;
private String classify;
private int price;
private String wnum;
private String img;
private String keywords;
private int pageview;
private String addTime;
private String description;
private int status;
public Wares(int wid, String wname, String classify, int price, String wnum, String img, String keywords, int pageview,
		String addTime, String description, int status) {
	super();
	this.wid = wid;
	this.wname = wname;
	this.classify = classify;
	this.price = price;
	this.wnum = wnum;
	this.img = img;
	this.keywords = keywords;
	this.pageview = pageview;
	this.addTime = addTime;
	this.description = description;
	this.status = status;
}
public Wares() {
	super();
}
public int getWid() {
	return wid;
}
public void setWid(int wid) {
	this.wid = wid;
}
public String getWname() {
	return wname;
}
public void setWname(String wname) {
	this.wname = wname;
}
public String getClassify() {
	return classify;
}
public void setClassify(String classify) {
	this.classify = classify;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getWnum() {
	return wnum;
}
public void setWnum(String wnum) {
	this.wnum = wnum;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public String getKeywords() {
	return keywords;
}
public void setKeywords(String keywords) {
	this.keywords = keywords;
}
public int getPageview() {
	return pageview;
}
public void setPageview(int pageview) {
	this.pageview = pageview;
}
public String getAddTime() {
	return addTime;
}
public void setAddTime(String addTime) {
	this.addTime = addTime;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
@Override
public String toString() {
	return "Wares [wid=" + wid + ", wname=" + wname + ", classify=" + classify + ", price=" + price + ", wnum=" + wnum
			+ ", img=" + img + ", keywords=" + keywords + ", pageview=" + pageview + ", addTime=" + addTime
			+ ", description=" + description + ", status=" + status + "]";
}

}
