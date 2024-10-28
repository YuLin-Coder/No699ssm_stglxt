package com.entity;

import com.util.VeDate;

public class Applys {
	private String applysid = "A" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 申请人
	private String title;// 标题
	private String cateid;// 申请类型
	private String money;// 申请金额
	private String contents;// 申请内容
	private String addtime;// 申请日期
	private String status;// 状态
	private String realname;
	private String catename;

	public String getApplysid() {
		return applysid;
	}

	public void setApplysid(String applysid) {
		this.applysid = applysid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCateid() {
		return this.cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Applys [applysid=" + this.applysid + ", usersid=" + this.usersid + ", title=" + this.title + ", cateid=" + this.cateid
				+ ", money=" + this.money + ", contents=" + this.contents + ", addtime=" + this.addtime + ", status=" + this.status
				+ ", realname=" + this.realname + ", catename=" + this.catename + "]";
	}

}

/**
 * 
 */
