package com.bean;

public class Phone {
	private double Battery;
	private double Brand;
	private double Contract;
	private double Design;
	private double Internet;
	private double Large;
	private double Price;
	private double Smartphone;
	private int phoneid;
	private String phonename;
	public String getPhonename() {
		return phonename;
	}
	public void setPhonename(String phonename) {
		this.phonename = phonename;
	}
	public double getBattery() {
		return Battery;
	}
	public void setBattery(double battery) {
		Battery = battery;
	}
	public double getBrand() {
		return Brand;
	}
	public void setBrand(double brand) {
		Brand = brand;
	}
	public double getContract() {
		return Contract;
	}
	public void setContract(double contract) {
		Contract = contract;
	}
	public double getDesign() {
		return Design;
	}
	public void setDesign(double design) {
		Design = design;
	}
	public double getInternet() {
		return Internet;
	}
	public void setInternet(double internet) {
		Internet = internet;
	}
	public double getLarge() {
		return Large;
	}
	public void setLarge(double large) {
		Large = large;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public double getSmartphone() {
		return Smartphone;
	}
	public void setSmartphone(double smartphone) {
		Smartphone = smartphone;
	}
	public int getPhoneid() {
		return phoneid;
	}
	public void setPhoneid(int phoneid) {
		this.phoneid = phoneid;
	}
	public Phone() {
	}
	@Override
	public String toString() {
		return "Phone [Battery=" + Battery + ", Brand=" + Brand + ", Contract=" + Contract + ", Design=" + Design
				+ ", Internet=" + Internet + ", Large=" + Large + ", Price=" + Price + ", Smartphone=" + Smartphone
				+ ", phoneid=" + phoneid + ", phonename=" + phonename + "]";
	}
	
	
}
