package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Activities;
import com.service.ActivitiesService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/activities", produces = "text/plain;charset=utf-8")
public class ActivitiesController extends BaseController {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	private ActivitiesService activitiesService;

	// 准备添加数据
	@RequestMapping("createActivities.action")
	public String createActivities() {
		return "admin/addactivities";
	}

	// 添加数据
	@RequestMapping("addActivities.action")
	public String addActivities(Activities activities) {
		activities.setAddtime(VeDate.getStringDateShort());
		activities.setHits("0");
		activities.setNum("0");
		activities.setStatus("未结束");
		this.activitiesService.insertActivities(activities);
		return "redirect:/activities/createActivities.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteActivities.action")
	public String deleteActivities(String id) {
		this.activitiesService.deleteActivities(id);
		return "redirect:/activities/getAllActivities.action";
	}

	// 批量删除数据
	@RequestMapping("deleteActivitiesByIds.action")
	public String deleteActivitiesByIds() {
		String[] ids = this.getRequest().getParameterValues("activitiesid");
		for (String activitiesid : ids) {
			this.activitiesService.deleteActivities(activitiesid);
		}
		return "redirect:/activities/getAllActivities.action";
	}

	// 更新数据
	@RequestMapping("updateActivities.action")
	public String updateActivities(Activities activities) {
		this.activitiesService.updateActivities(activities);
		return "redirect:/activities/getAllActivities.action";
	}

	// 更新状态
	@RequestMapping("status.action")
	public String status(String id) {
		Activities activities = this.activitiesService.getActivitiesById(id);
		activities.setStatus("已结束");
		this.activitiesService.updateActivities(activities);
		return "redirect:/activities/getAllActivities.action";
	}

	// 显示全部数据
	@RequestMapping("getAllActivities.action")
	public String getAllActivities(String number) {
		List<Activities> activitiesList = this.activitiesService.getAllActivities();
		PageHelper.getPage(activitiesList, "activities", null, null, 10, number, this.getRequest(), null);
		return "admin/listactivities";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryActivitiesByCond.action")
	public String queryActivitiesByCond(String cond, String name, String number) {
		Activities activities = new Activities();
		if (cond != null) {
			if ("title".equals(cond)) {
				activities.setTitle(name);
			}
			if ("contents".equals(cond)) {
				activities.setContents(name);
			}
			if ("addtime".equals(cond)) {
				activities.setAddtime(name);
			}
			if ("hits".equals(cond)) {
				activities.setHits(name);
			}
			if ("num".equals(cond)) {
				activities.setNum(name);
			}
			if ("status".equals(cond)) {
				activities.setStatus(name);
			}
			if ("memo".equals(cond)) {
				activities.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.activitiesService.getActivitiesByLike(activities), "activities", nameList, valueList, 10, number,
				this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryactivities";
	}

	// 按主键查询数据
	@RequestMapping("getActivitiesById.action")
	public String getActivitiesById(String id) {
		Activities activities = this.activitiesService.getActivitiesById(id);
		this.getRequest().setAttribute("activities", activities);
		return "admin/editactivities";
	}

	public ActivitiesService getActivitiesService() {
		return activitiesService;
	}

	public void setActivitiesService(ActivitiesService activitiesService) {
		this.activitiesService = activitiesService;
	}

}
// 
