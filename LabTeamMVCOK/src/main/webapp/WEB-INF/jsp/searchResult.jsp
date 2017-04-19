<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" href="<%=basePath %>resources/css/searchResultStyle.css" type='text/css'/>
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/resources/js/searcch_result.js"></script>
	<script type="text/javascript">
	</script>	
  </head>
  
  <body>
  	<div id="head" class="s_down">
  		<div class="s_form">
  		<a href="<%=path %>/index" id="result_logo">
  			<img src="<%=basePath %>resources/images/logo_m.png" alt="到实验室首页" title="到实验室首页">
  		</a>
  		<form id="form" name="f" class="fm" action="<%=path %>/publication/SearchRsult" method="get">
  			<span class="s_ipt_wr">
 	 			<input id="keyword" name="contents" value="${contents }" class="s_ipt" maxlength="255" >
  			</span>
  			<span class="s_btn_wr">
 	 			<input type="submit" id="su" value="Search" class="bg s_btn">
  			</span>
  		</form>
  		</div>
  	</div>
  	<div id="container" class="container_s">
  		<div id="content_left">
  		</div>
  		<div id="page">
  			
  		</div>
  	</div>
  </body>
</html>
