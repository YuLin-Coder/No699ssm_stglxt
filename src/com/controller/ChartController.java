package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.entity.Applys;
import com.entity.Cate;
import com.service.ApplysService;
import com.service.CateService;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/chart", produces = "text/plain;charset=utf-8")
public class ChartController extends BaseController {
	@Autowired
	private CateService cateService;
	@Autowired
	private ApplysService applysService;

	@RequestMapping("chartPie.action")
	@ResponseBody
	public String chartPie() {
		JSONArray names = new JSONArray();
		JSONArray count = new JSONArray();// 定义count存放数值
		List<Cate> cateList = this.cateService.getAllCate();
		for (Cate cate : cateList) {
			Applys applys = new Applys();
			applys.setCateid(cate.getCateid());
			List<Applys> list = this.applysService.getApplysByCond(applys);
			names.add(cate.getCatename());
			count.add(list.size());
		}
		JSONObject json = new JSONObject();
		json.put("count", count.toString());
		json.put("names", names.toString().replaceAll("\"", ""));
		System.out.println(json.toString());
		return json.toString();
	}
}
