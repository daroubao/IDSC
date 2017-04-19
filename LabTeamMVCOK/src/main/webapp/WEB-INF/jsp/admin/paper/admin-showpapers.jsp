<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base src="<%=path %>/frame/"> --%>

<title>Lab管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
a {
	text-decoration: none
}

#header {
	background-color: #0099FF;
	color: white;
	text-align: center;
	padding: 3px;
	font-size: 10px;
}

#nav {
	line-height: 5px;
	background-color: #DDF0FB;
	height: 80%;
	width: 100px;
	float: left;
	padding: 5px;
}

#footer {
	background-color: #0099FF;
	color: white;
	clear: both;
	text-align: center;
	padding: 5px;
}

#addcolor {
	color: red;
}

.table1 {
	border: 1px solid #ddd;
	width: 1000px;
}

#section {
width: 1120px;
	height:523px;
	float: left;
	padding: 10px;
	background-color: #E6E6FA;
}
</style>

</head>


<%--     <frameset rows="80,*">
   <frame name="top" src="<%=path %>/frame/top.jsp">
   <frameset cols="150,*" id="main">

      <frame src="<%=path %>/frame/left.jsp"> 
     <frame name="right" src="<%=path %>/frame/right.jsp">
   </frameset>
</frameset> --%>

<body>
	<div id="header">
		<h1>欢迎</h1>
	</div>

	<div id="nav">
		<p>
			<a href="<%=path %>/admin/persons">教师管理</a>
		</p>
		<br>
		<p>
			<a href="<%=path %>/admin/papers">论文管理</a>
		</p>
		<br>

	</div>

	<div id="section">
		<table border="0" width="1100px">
			<tr>
				<td align="center" style="font-size:24px; color:#666">论文管理</td>
			</tr>
			<tr>
				<td align="right"><a href="<%=path %>/admin/addpaper"><span id="addcolor">添加</span></a></td>
			</tr>
		</table>
		<br />


		<table cellspacing="2" border="1" class="table1">
			<thead>
				<tr>
					<td align="center">标题</td>
					<td align="center">出版日期</td>
					<td align="center">链接</td>
					<td align="center">出版地址</td>
					<td align="center">关键词</td>
					<td align="center" width="100px"><span><font color="FF0099">详细介绍</font></span></td>
				</tr>
			</thead>
		</table>
		<table cellspacing="2" border="1" class="table1">
		<c:forEach var="p" items="${list }">
				<tr>
					<td align="center">${p.PAtitle }</td>
					<td align="center">${p.PAdate }</td>
					<td align="center">${p.PAurl }</td>
					<td align="center">${p.PAaddress }</td>
					<td align="center">${p.PAkeyword }</td>
					<td align="center" width="100px"><a href=""><span><font color="0000FF">点击查看</font></span></a></td>
				</tr>
		</c:forEach>
		</table>


	</div>

	<div id="footer">
		© 2017 by <a href="http://www.baidu.com" target="_blank">蓝十七</a>
	</div>
</body>

</html>
