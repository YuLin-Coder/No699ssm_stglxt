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
<title>${title }</title>
<link href="themes/nzblue/css/css.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/css_2.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/nzcms_top.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="themes/nzblue/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="js/users.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5" class="bg_qc">
					<tr>
						<td width="25" height="20" align="center"><img src="themes/nzblue/images/nzcms.xinxin.gif" alt="标" width="9"
							height="9" /></td>
						<td align="left" class="p12">您的位置： <a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;&nbsp;用户注册
						</td>
					</tr>
				</table>
				<table height="30" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<form action="index/register.action" method="post" name="myform">
					<table width="56%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="2" align="center" background="themes/nzblue/images/nzcms/list_bg.gif" class="white14B">用户注册</td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">用户账号：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="username" style="width: 260px; height: 30px" id="username"
								placeholder="请输入用户账号" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">用户密码：</td>
							<td bgcolor="#FFFFFF"><input type="password" name="password" style="width: 260px; height: 30px"
								id="password" placeholder="请输入用户密码" /></td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">用户姓名：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="realname" style="width: 260px; height: 30px" id="realname"
								placeholder="请输入用户姓名" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">性别：</td>
							<td bgcolor="#FFFFFF"><input type="radio" name="sex" id="sex" value="男" checked="checked" />男 &nbsp;&nbsp;
								<input type="radio" name="sex" id="sex" value="女" />女</td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">出生日期：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="birthday" onclick="WdatePicker()" readonly="readonly"
								style="width: 260px; height: 30px" id="birthday" placeholder="请输入出生日期" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">联系方式：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="contact" style="width: 260px; height: 30px" id="contact"
								placeholder="请输入联系方式" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">头像：</td>
							<td bgcolor="#FFFFFF"><input type="text" style="width: 260px; height: 30px" name="image" id="image"
								onclick="selimage();" placeholder="请选择图片" readonly="readonly" /></td>
						</tr>
						<tr>
							<td bgcolor="#FFFFFF" colspan="2" align="center"><input type="hidden" name="status" id="status" value="正常" />
								<input type="submit" id="sub" value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" id="res" value="重置" /></td>
						</tr>
					</table>
				</form>
				<table height="50" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
