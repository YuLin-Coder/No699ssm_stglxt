package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.ActivitiesDAO;
import com.entity.Activities;
import com.service.ActivitiesService;

@Service("activitiesService")
public class ActivitiesServiceImpl implements ActivitiesService {
	@Autowired
	private ActivitiesDAO activitiesDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertActivities(Activities activities) {
		return this.activitiesDAO.insertActivities(activities);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateActivities(Activities activities) {
		return this.activitiesDAO.updateActivities(activities);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteActivities(String activitiesid) {
		return this.activitiesDAO.deleteActivities(activitiesid);
	}

	@Override // 继承接口的查询全部
	public List<Activities> getAllActivities() {
		return this.activitiesDAO.getAllActivities();
	}

	@Override // 继承接口的按条件精确查询
	public List<Activities> getActivitiesByCond(Activities activities) {
		return this.activitiesDAO.getActivitiesByCond(activities);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Activities> getActivitiesByLike(Activities activities) {
		return this.activitiesDAO.getActivitiesByLike(activities);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Activities getActivitiesById(String activitiesid) {
		return this.activitiesDAO.getActivitiesById(activitiesid);
	}

}

// 
