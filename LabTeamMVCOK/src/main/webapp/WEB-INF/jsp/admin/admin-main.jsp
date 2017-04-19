<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		
	</div>

	<div id="footer">© 2017 by <a href="http://www.baidu.com" target="_blank">蓝十七</a></div>
</body>

</html>
