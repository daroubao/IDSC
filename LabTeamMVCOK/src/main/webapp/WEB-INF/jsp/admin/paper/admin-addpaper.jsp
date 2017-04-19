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

#addform{
	padding:20px;
}
</style>
<script type="text/javascript">
function addpaper()
{
alert("添加论文成功！");
}
</script>
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
		<form action="<%=path %>/admin/addpaperok" method="post" id="addform">  
    PAtitle:<input type="text" name="PAtitle" placeholder="标题"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAdate:<input type="text" name="PAdate" placeholder="出版日期"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAurl:<input type="text" name="PAurl" placeholder="论文链接"/>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    PAaddress:<input type="text" name="PAaddress" placeholder="论文地址"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAkeyword:<input type="text" name="PAkeyword" placeholder="关键词"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAvolume:<input type="text" name="PAvolume" placeholder="PAvolume"/>&nbsp; &nbsp; &nbsp; &nbsp;<br/><br/> 
    PAissue:<input type="text" name="PAissue" placeholder="PAissue"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PApagenum:<input type="text" name="PApagenum" placeholder="PApagenum"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAjournal:<input type="text" name="PAjournal" placeholder="PAjournal"/>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    PAconference:<input type="text" name="PAconference" placeholder="PAconference"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    PAconfLoca:<input type="text" name="PAconfLoca" placeholder="PAconfLoca"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    所属作者:<input type="text" name="pname" placeholder="所属作者"/>&nbsp; &nbsp; &nbsp; &nbsp;    <br/><br/>
    <input type="submit" value="添加" id="addpaper" onclick="addpaper()"/>  
</form>  
	</div>

	<div id="footer">© 2017 by <a href="http://www.baidu.com" target="_blank">蓝十七</a></div>
</body>

</html>
