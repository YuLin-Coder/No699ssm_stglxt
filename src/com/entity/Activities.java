package com.entity;

import com.util.VeDate;

public class Activities {
	private String activitiesid = "A" + VeDate.getStringId();// 生成主键编号
	private String title;// 标题
	private String contents;// 内容
	private String addtime;// 发布日期
	private String hits;// 点击数
	private String num;// 报名人数
	private String status;// 状态
	private String memo;// 备注

	public String getActivitiesid() {
		return activitiesid;
	}

	public void setActivitiesid(String activitiesid) {
		this.activitiesid = activitiesid;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getHits() {
		return this.hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Activities [activitiesid=" + this.activitiesid + ", title=" + this.title + ", contents=" + this.contents + ", addtime="
				+ this.addtime + ", hits=" + this.hits + ", num=" + this.num + ", status=" + this.status + ", memo=" + this.memo + "]";
	}

}

/**
 * 
 */
