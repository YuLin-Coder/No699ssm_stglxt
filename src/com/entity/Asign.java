package com.entity;

import com.util.VeDate;

public class Asign {
	private String asignid = "A" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 用户
	private String activitiesid;// 活动
	private String addtime;// 报名日期
	private String status;// 状态
	private String realname;
	private String title;

	public String getAsignid() {
		return asignid;
	}

	public void setAsignid(String asignid) {
		this.asignid = asignid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getActivitiesid() {
		return this.activitiesid;
	}

	public void setActivitiesid(String activitiesid) {
		this.activitiesid = activitiesid;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Asign [asignid=" + this.asignid + ", usersid=" + this.usersid + ", activitiesid=" + this.activitiesid + ", addtime="
				+ this.addtime + ", status=" + this.status + ", realname=" + this.realname + ", title=" + this.title + "]";
	}

}

/**
 * 
 */
