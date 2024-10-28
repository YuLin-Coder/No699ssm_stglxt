package com.dao;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Activities;

@Repository("activitiesDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface ActivitiesDAO {

	/**
* ActivitiesDAO 接口 可以按名称直接调用activities.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包activities.xml里的insertActivities配置 返回值0(失败),1(成功)
	public int insertActivities(Activities activities);

	// 更新数据 调用entity包activities.xml里的updateActivities配置 返回值0(失败),1(成功)
	public int updateActivities(Activities activities);

	// 删除数据 调用entity包activities.xml里的deleteActivities配置 返回值0(失败),1(成功)
	public int deleteActivities(String activitiesid);

	// 查询全部数据 调用entity包activities.xml里的getAllActivities配置 返回List类型的数据
	public List<Activities> getAllActivities();

	// 按照Activities类里面的值精确查询 调用entity包activities.xml里的getActivitiesByCond配置 返回List类型的数据
	public List<Activities> getActivitiesByCond(Activities activities);

	// 按照Activities类里面的值模糊查询 调用entity包activities.xml里的getActivitiesByLike配置 返回List类型的数据
	public List<Activities> getActivitiesByLike(Activities activities);

	// 按主键查询表返回单一的Activities实例 调用entity包activities.xml里的getActivitiesById配置
	public Activities getActivitiesById(String activitiesid);

}


