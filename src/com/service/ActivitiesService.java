package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Activities;
@Service("activitiesService")
public interface ActivitiesService {
	// 插入数据 调用activitiesDAO里的insertActivities配置
	public int insertActivities(Activities activities);

	// 更新数据 调用activitiesDAO里的updateActivities配置
	public int updateActivities(Activities activities);

	// 删除数据 调用activitiesDAO里的deleteActivities配置
	public int deleteActivities(String activitiesid);

	// 查询全部数据 调用activitiesDAO里的getAllActivities配置
	public List<Activities> getAllActivities();

	// 按照Activities类里面的字段名称精确查询 调用activitiesDAO里的getActivitiesByCond配置
	public List<Activities> getActivitiesByCond(Activities activities);

	// 按照Activities类里面的字段名称模糊查询 调用activitiesDAO里的getActivitiesByLike配置
	public List<Activities> getActivitiesByLike(Activities activities);

	// 按主键查询表返回单一的Activities实例 调用activitiesDAO里的getActivitiesById配置
	public Activities getActivitiesById(String activitiesid);

}

