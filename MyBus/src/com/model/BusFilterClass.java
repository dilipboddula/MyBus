package com.model;

public class BusFilterClass 
{
	int busId;
	String drivername,fromPlace,toPlace;
	int d1,d2,a1,a2;
	String busType;
	int seats,cost;
	long driverPhone;
	int adminId;
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	public String getFromPlace() {
		return fromPlace;
	}
	public void setFromPlace(String fromPlace) {
		this.fromPlace = fromPlace;
	}
	public String getToPlace() {
		return toPlace;
	}
	public void setToPlace(String toPlace) {
		this.toPlace = toPlace;
	}
	public int getD1() {
		return d1;
	}
	public void setD1(int d1) {
		this.d1 = d1;
	}
	public int getD2() {
		return d2;
	}
	public void setD2(int d2) {
		this.d2 = d2;
	}
	public int getA1() {
		return a1;
	}
	public void setA1(int a1) {
		this.a1 = a1;
	}
	public int getA2() {
		return a2;
	}
	public void setA2(int a2) {
		this.a2 = a2;
	}
	public String getBusType() {
		return busType;
	}
	public void setBusType(String busType) {
		this.busType = busType;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public long getDriverPhone() {
		return driverPhone;
	}
	public void setDriverPhone(long driverPhone) {
		this.driverPhone = driverPhone;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	@Override
	public String toString() {
		return "BusFilterClass [busId=" + busId + ", drivername=" + drivername
				+ ", fromPlace=" + fromPlace + ", toPlace=" + toPlace + ", d1="
				+ d1 + ", d2=" + d2 + ", a1=" + a1 + ", a2=" + a2
				+ ", busType=" + busType + ", seats=" + seats + ", cost="
				+ cost + ", driverPhone=" + driverPhone + ", adminId="
				+ adminId + "]";
	}
	
}
