<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>">
<title>${title}</title>
<link href="themes/nzblue/css/css.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/css_2.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/nzcms_top.css" rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<!--下拉这里开始 -->

	<table width="1004" border="0" align="center" cellpadding="0" cellspacing="8" bgcolor="#FFFFFF">
		<tr valign="top">
			<td width="260" align="center" valign="top" background="themes/nzblue/images/nzcms/nzcms_left_bg.gif">
				<!--左侧栏目 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="nzcms_left_bg">
					<tr>
						<td width="35" height="35" align="center"><img src="themes/nzblue/images/word.gif" alt="分类" width="16"
							height="16" /></td>
						<td align="left"><span class="white14B">信息导航 </span></td>
					</tr>
				</table>
				<table height="10" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>


				<table width="96%" height="250" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF"
					background="themes/nzblue/images/bg/01.gif" class="kk22">
					<tr>
						<td valign="top">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="90" height="28" align="center" background="themes/nzblue/images/nzcms/left.gif" class="title14b">信息导航</td>
									<td align="right" background="themes/nzblue/images/nzcms/left2.gif"><img
										src="themes/nzblue/images/HOT.gif" /></td>
								</tr>
							</table>
							<table width="98%" height="24" border="0" align="center" cellpadding="0" cellspacing="0">
								<c:forEach items="${bannerList}" var="banner">
									<tr>
										<td height="27" align="left" valign="middle">&nbsp; <img src="themes/nzblue/images/HOT2.gif" width="7"
											height="7" /> &nbsp; <a href="index/article.action?id=${banner.bannerid }" title="标题：${banner.bannername }">${banner.bannername }</a>
										</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
				</table>
				<table height="5" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table> <!--左侧推荐文章 -->
			</td>
			<td align="center">


				<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5" class="bg_qc">
					<tr>
						<td width="25" height="20" align="center"><img src="themes/nzblue/images/nzcms.xinxin.gif" alt="标" /></td>
						<td align="left" class="p12">您的位置： <a href="<%=basePath%>">首页</a>
						</td>
					</tr>
				</table>
				<table height="10" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table> <!--文章显示 -->
				<table width="98%" border="0" cellpadding="0" cellspacing="0"
					background="themes/nzblue/images/nzcms/list_news_bg.gif">
					<tr>
						<td width="190" height="33" align="center" class="title14b">${banner.bannername }</td>
						<td align="right">&nbsp;&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<table height="20" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="dx">
					<c:forEach items="${articleList}" var="article">
						<tr>
							<td width="35" height="40" align="center"><img src="themes/nzblue/images/txt.png" alt="图标" /></td>
							<td align="left" class="p14"><a href="index/read.action?id=${article.articleid }"
								title="标题：${article.title }"><font class="p14"> ${article.title }</font> </a></td>
							<td width="110" align="left">浏览：${article.hits }次</td>
							<td width="140" align="left">发稿：${article.addtime }</td>
						</tr>
					</c:forEach>
				</table> <!--文章显示 -->
				<table height="20" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>${html }</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
