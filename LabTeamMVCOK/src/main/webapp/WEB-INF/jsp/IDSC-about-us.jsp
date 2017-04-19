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
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
    	<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
    	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--  jquery plguin -->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
		<!--start slider -->
	    <link rel="stylesheet" href="css/fwslider.css" media="all">
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
								<li class="active"><a  href="<%= request.getContextPath()%>/index">HOME</a></li>
								<li><a href="<%= request.getContextPath()%>/index-welcome.jsp" class="scroll">IDSC</a></li>
								<li><a href="<%= request.getContextPath()%>/IDSC-Recent.jsp" class="scroll">EVENTS</a></li>
								<li><a href="<%= request.getContextPath()%>/members" class="scroll">MEMBERS</a></li>
								<li><a href="<%= request.getContextPath()%>/index-welcome-APPLICATIONS.jsp" class="scroll">PUBLICATIONS</a></li>
								<li class="last"><a href="<%= request.getContextPath()%>/index-welcome-CONTACT.jsp" class="scroll">CONTACT US</a></li>
								
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
		<script type="text/javascript"  src="js/menu.js"></script>
</div>
<!------------------------left---------------------------->

<div class="left">
<div class="AM">
	<h1>Members</h1>
	<ul>
		<li><span ><b style="mso-bidi-font-weight:bold"><span><a href="<%= request.getContextPath()%>/showPos/Chair_Professor"><span>Chair Professor</span></a></span></b></span></li>
		<li><span><b><span><a href="<%= request.getContextPath()%>/showPos/Associate_Fellow"><span>Associate Fellow</span></a></span></b></span</li>
		<li><span><a href="<%= request.getContextPath()%>/showPos/Lecturer"><span>Lecturer</span></a></span></b></span></li>
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