<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>IDSC-About Us</title>
<base href="<%=basePath%>/resources/">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link  href="css/style_welcome.css" rel="stylesheet"type="text/css">		
    	<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
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
			         <a class=" headlogo" href="<%=path %>/index"><img src="images/logo_1.png" alt=""/></a>
					 </div>
					 <div style="; overflow:hidden;">
					 <div style="width:1000000px;">
					 <div style="float:left;;">
					 <nav>
			        		  <ul>
								<li><a href="<%=path %>/index">HOME</a></li>
								<li class="active"><a href="<%=path %>/welcome/Introduction" class="scroll">IDSC</a></li>
								<li><a href="<%=path %>/recent/r" class="scroll">EVENTS</a></li>
								<li><a href="<%=path %>/members" class="scroll">MEMBERS</a></li>
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
<div style="width:1304px;margin:0 auto;text-align:left;">
<div class="left">
<div class="AM">
	<h1>Lab Overview</h1>
	<ul>
		<li><span ><b style="mso-bidi-font-weight:bold"><span><a href="<%= request.getContextPath()%>/welcome/Introduction"><span>INTRODUCTION</span></a></span></b></span></li>
		<li><span><b><span><a href="<%= request.getContextPath()%>/welcome/ResearchDirection"><span>RESEARCH DIRECTION</span></a></span></b></span</li>
		<li><span><a href="<%= request.getContextPath()%>/welcome/Projects"><span>PROJECTS</span></a></span></b></span></li>
		<li><span><a href="<%= request.getContextPath()%>/welcome/ShareCooperation"><span>SHARE COOPERATION</span></a></span></b></span></li>
		<li><span><a href="<%= request.getContextPath()%>/welcome/Contact"><span>CONTACT</span></a></span></b></span></li>				
	</ul>
</div>			
</div>

					 
<div class="right">
	<div id="body">
		
		<div class="content">
			
			<header class="case_right_f">
                <div class="case_right_f_l">Introduction</div>
                <div class="case_right_f_r">
                    <a href="<%= request.getContextPath()%>/index">Home</a>&gt
                    <a href="<%= request.getContextPath()%>/welcome/Introduction">Lab Overview</a>&gt
                    <a href="<%= request.getContextPath()%>/welcome/Introduction">Introduction</a>
                </div>
                <div class="clear"></div>
            </header>
                                                      <!--正文-->			
			<a  href=""><img src="images/intro1.jpg" alt=""/></a>
			
			<h2>Foreword</h2>
			<p>
			IDSC is dedicated to supporting all users of data from the novice researcher to the experienced data analyst.
			IDSC aims at becoming the place for economically minded technologists and technologically savvy economists looking for data support, data access support and data services about labor economics.
			IDSC is actively involved in organizing events (see our next Red Cube Seminar Talk) for data professionals, data analysts, and scientific data users and young researchers to discuss and share findings and to establish contacts for future cooperation.
			</p>
			
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