package com.model;

public class CabClass 
{
	int driverid;
	String name,cabtype;
	int cost;
	String city;
	
	
	@Override
	public String toString() {
		return "driverid=" + driverid + ", name=" + name
				+ ", cabtype=" + cabtype + ", cost=" + cost + ", city=" + city
				;
	}
	public int getDriverid() {
		return driverid;
	}
	public void setDriverid(int driverid) {
		this.driverid = driverid;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCabtype() {
		return cabtype;
	}
	public void setCabtype(String cabtype) {
		this.cabtype = cabtype;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	
}
