package com.bitacademy.guestbook.vo;

import java.sql.Date;

public class guestbookVo {
	private int no;
	private String name;
	private String password;
	private String contents;
	private Date reg_date;
	private int num;
	
	public void setNo(int no){
	this.num=no;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getNo() {
		return no;
	}

	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "guestbookVo [no=" + no + ", name=" + name + ", password=" + password + ", contents=" + contents
				+ ", reg_date=" + reg_date + "]";
	}
		
}
