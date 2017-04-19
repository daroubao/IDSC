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
function addperson()
{
alert("添加教师成功！");
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
		<form action="<%=path %>/admin/addpersonok" method="post" id="addform">  
    Pname:<input type="text" name="Pname" placeholder="姓名"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Ppicture:<input type="text" name="Ppicture" placeholder="照片"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Pposition:<input type="text" name="Pposition" placeholder="职务"/>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    Paddress:<input type="text" name="Paddress" placeholder="住址"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Poffice:<input type="text" name="Poffice" placeholder="办公室"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Ptel:<input type="text" name="Ptel" placeholder="电话"/>&nbsp; &nbsp; &nbsp; &nbsp;<br/><br/> 
    Pfax:<input type="text" name="Pfax" placeholder="传真"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Purl:<input type="text" name="Purl" placeholder="个人链接"/>&nbsp; &nbsp; &nbsp; &nbsp; 
    Pemail:<input type="text" name="Pemail" placeholder="Email"/>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    Pinterests:<textarea rows="5" cols="30" name="Pinterests" placeholder="Pinterests"></textarea>&nbsp; &nbsp; &nbsp; &nbsp; 
    Presume:<textarea rows="5" cols="30" name="Presume" placeholder="Presume"></textarea>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    Pbc:<textarea rows="5" cols="30" name="Pbc" placeholder="Pbc"></textarea>&nbsp; &nbsp; &nbsp; &nbsp; 
    Paward:<textarea rows="5" cols="30" name="Paward" placeholder="荣誉"></textarea>&nbsp; &nbsp; &nbsp; &nbsp; <br/><br/>
    <input type="submit" value="添加" id="addperson" onclick="addperson()"/>  
</form>  
	</div>

	<div id="footer">© 2017 by <a href="http://www.baidu.com" target="_blank">蓝十七</a></div>
</body>

</html>
