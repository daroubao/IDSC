<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>IDSC-Members</title>
<base href="<%=basePath%>/resources/">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link  href="css/style_members.css" rel="stylesheet"type="text/css">
		<link href="css/font.css" rel="stylesheet" type="text/css">
    	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--start slider -->
	    <link rel="stylesheet" href="css/fwslider.css" media="all">
		
		<!--  jquery plguin -->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
    	<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>


</head>
<body>
<div class="header_bg">
	<!-- start header -->
<div class="header_bg">
	<!-----start-conatiner---->
		<div class="container">
			<!-----start-header---->
			<div class="header">
					<!----start-top-nav---->
		      <header id="topnav">
			  <div class="topnavifloat">
				<div class="topnavifloat">
				   <div class="topnavifloat">
			         <a class=" headlogo" href="<%= request.getContextPath()%>/index"><img src="images/logo_1.png" alt=""/></a>
					 </div>
					 <div style="; overflow:hidden;">
					 <div style="width:1000000px;">
					 <div style="float:left;;">
					 <nav>
			        		 <ul>
								<li><a href="<%=path %>/index">HOME</a></li>
								<li><a href="<%=path %>/welcome/Introduction" class="scroll">IDSC</a></li>
								<li><a href="<%=path %>/recent/r" class="scroll">EVENTS</a></li>
								<li class="active"><a href="<%=path %>/members" class="scroll">MEMBERS</a></li>
								<li><a href="<%=path %>/publication/getPublication" class="scroll">PUBLICATIONS</a></li>
								<li class="last"><a href="<%=path %>/welcome/Contact" class="scroll">CONTACT US</a></li>
							</ul>
		        	</nav>
					</div>
					</div>
					</div>
					</div>
					
					 <div style="clear:both"></div>
					 </div>
			        	<a href="#" id="navbtn">Nav Menu</a>
						<div style="clear:both"></div>
			       <div class="clearfix"> </div>
		        </header>
		         <!----start-top-nav---->
		    </div>
		   <!-----start-header---->
		</div>
	</div>
	<!-- 
		<script type="text/javascript"  src="js/menu.js"></script> -->
</div>
<!------------------------left---------------------------->

<div class="left">
<div class="AM">
	<h1>Members</h1>
	<ul>
		<li><span ><b style="mso-bidi-font-weight:bold"><span><a href="<%= request.getContextPath()%>/showPos/Co-founders"><span>Co-founders</span></a></span></b></span></li>
		<li><span><b><span><a href="<%= request.getContextPath()%>/showPos/Coordinators"><span>Coordinators</span></a></span></b></span</li>
		<li><span><a href="<%= request.getContextPath()%>/showPos/Academic Advisory Panel"><span>Academic Advisory Panel</span></a></span></b></span></li>
		<li><span><a href="<%= request.getContextPath()%>/showPos/LabMembers"><span>LabMembers</span></a></span></b></span></li>
	</ul>
</div>			
</div>

					 
<div class="right">
	<div id="body">
		
		<div class="content">
			
			      <header class="case_right_f">
                <div class="case_right_f_l">MEMBERS</div>
                <div class="case_right_f_r">
                    <!-- <a href="jvascript:;">HOME</a>&gt -->
                    <a href="<%= request.getContextPath()%>/index">HOME</a>&gt
                    <a href="<%= request.getContextPath()%>/members">MEMBERS</a>&gt
                    <!-- <a href="">Professor</a> -->
                </div>
                <div class="clear"></div>
            </header>
            <div class="case_right_box">
                <!-- <dl class="case_right_dl">
                    <dt><a href=""><img src="images/zhihua2.jpg" alt=""></a></dt>
                    <dd>Zhihua Zhou</dd>
                </dl>
                <dl class="case_right_dl">
                    <dt><a href=""><img src="images/zhihua.jpg" alt=""></a></dt>
                    <dd>Jiming Liu</dd>
                </dl>
                <dl class="case_right_dl">
                    <dt><a href=""><img src="images/zhihua2.jpg" alt=""></a></dt>
                    <dd>Jiming Liu</dd>
                </dl>
                <dl class="case_right_dl">
                    <dt><a href=""><img src="images/zhihua.jpg" alt=""></a></dt>
                    <dd>Jiming Liu</dd>
                </dl>
                <dl class="case_right_dl">
                    <dt><a href=""><img src="images/zhihua2.jpg" alt=""></a></dt>
                    <dd>Jiming Liu</dd>
                </dl> -->
			<c:forEach var="p" items="${list }">
			<dl class="case_right_dl">
                    <dt><a href="<%= request.getContextPath()%>/member/${p.pname }"><img src="images/${p.ppicture }" alt=""></a></dt>
                    <dd>${p.pname }</dd>
                </dl>
			</c:forEach>
			
		</div>
	</div>
	</div>
    </div>

	<div id="footer">
		<div class="copy-right">
			<p style="text-align:center;">
				Copyright &copy; 2016-2017. IDSC Joint Laboratory.
			</p>
		</div>
	</div>

</body>
</html>