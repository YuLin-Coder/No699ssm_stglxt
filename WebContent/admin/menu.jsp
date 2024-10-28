<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>管理员信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="admin/createAdmin.action" data-title="新增管理员" href="javascript:void(0)">新增管理员信息</a></li>
					<li><a data-href="admin/getAllAdmin.action" data-title="管理员列表" href="javascript:void(0)">管理员信息列表</a></li>
					<li><a data-href="admin/queryAdminByCond.action" data-title="管理员查询" href="javascript:void(0)">管理员信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-member">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>社团用户信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="users/getAllUsers.action" data-title="社团用户列表" href="javascript:void(0)">社团用户信息列表</a></li>
					<li><a data-href="users/queryUsersByCond.action" data-title="社团用户查询" href="javascript:void(0)">社团用户信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站栏目信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="banner/createBanner.action" data-title="新增网站栏目" href="javascript:void(0)">新增网站栏目信息</a></li>
					<li><a data-href="banner/getAllBanner.action" data-title="网站栏目列表" href="javascript:void(0)">网站栏目信息列表</a></li>
					<li><a data-href="banner/queryBannerByCond.action" data-title="网站栏目查询" href="javascript:void(0)">网站栏目信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站内容信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="article/createArticle.action" data-title="新增网站内容" href="javascript:void(0)">新增网站内容信息</a></li>
					<li><a data-href="article/getAllArticle.action" data-title="网站内容列表" href="javascript:void(0)">网站内容信息列表</a></li>
					<li><a data-href="article/queryArticleByCond.action" data-title="网站内容查询" href="javascript:void(0)">网站内容信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>社团活动信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="activities/createActivities.action" data-title="新增社团活动" href="javascript:void(0)">新增社团活动信息</a></li>
					<li><a data-href="activities/getAllActivities.action" data-title="社团活动列表" href="javascript:void(0)">社团活动信息列表</a></li>
					<li><a data-href="activities/queryActivitiesByCond.action" data-title="社团活动查询" href="javascript:void(0)">社团活动信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>申请类型信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cate/createCate.action" data-title="新增申请类型" href="javascript:void(0)">新增申请类型信息</a></li>
					<li><a data-href="cate/getAllCate.action" data-title="申请类型列表" href="javascript:void(0)">申请类型信息列表</a></li>
					<li><a data-href="cate/queryCateByCond.action" data-title="申请类型查询" href="javascript:void(0)">申请类型信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>用户申请信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="applys/getAllApplys.action" data-title="用户申请列表" href="javascript:void(0)">用户申请信息列表</a></li>
					<li><a data-href="applys/queryApplysByCond.action" data-title="用户申请查询" href="javascript:void(0)">用户申请信息查询</a></li>
					<li><a data-href="admin/chart.jsp" data-title="用户申请统计" href="javascript:void(0)">用户申请信息统计</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>活动报名信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="asign/getAllAsign.action" data-title="活动报名列表" href="javascript:void(0)">活动报名信息列表</a></li>
					<li><a data-href="asign/queryAsignByCond.action" data-title="活动报名查询" href="javascript:void(0)">活动报名信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>留言交流信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="bbs/getAllBbs.action" data-title="留言交流列表" href="javascript:void(0)">留言交流信息列表</a></li>
					<li><a data-href="bbs/queryBbsByCond.action" data-title="留言交流查询" href="javascript:void(0)">留言交流信息查询</a></li>
					<li><a data-href="rebbs/getAllRebbs.action" data-title="留言回复列表" href="javascript:void(0)">留言回复信息列表</a></li>
					<li><a data-href="rebbs/queryRebbsByCond.action" data-title="留言回复查询" href="javascript:void(0)">留言回复信息查询</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>


