<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>publications-paper</title>
	<base href="<%=basePath%>/resources/">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/fwslider.css" media="all">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/paper.css">


 
</head>
<body>
<!--å¯¼èªæ -->
<div class="header_bg">
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
								<li><a href="<%=path %>/welcome/Introduction" class="scroll">IDSC</a></li>
								<li><a href="<%=path %>/recent/r" class="scroll">EVENTS</a></li>
								<li><a href="<%=path %>/members" class="scroll">MEMBERS</a></li>
								<li class="active"><a href="<%=path %>/publication/getPublication" class="scroll">PUBLICATIONS</a></li>
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
	
</div>

<!--Body-->
 <!--
    <div class="black_background" >
	<a class="media" src="document/Cocos2d-x-3.x.pdf" style="margin:0 auto;background-color: rgb(255, 255, 255); zindex:2;">

	</a> 
  </div>
  --> 
 <div class="black_background" style="position:fixed;top:0px;left:0px;display:none;width:100%;height:100%;background-color: rgba(0, 0, 0,0.5);z-index:1;">
 	<div class="media" style="margin:0px auto;background-color: rgb(255, 255, 255); width: 800px;height:100vh;z-index:2;">
		<iframe width="800" height="100%" src="document/${paper.PAurl }">
		</iframe>
	</div>
 </div>
   
<div class="chu" >
	<span >${paper.PAtitle }</span>
	<hr>	
</div>
<div class="row display-font">
	<div class="col-md-5">
        <span><b>Author:</b></span>
        <c:if test="${!empty paper.persons}">
        	<c:forEach items="${paper.persons}" var="s">
            	<a href="<%=path %>/member/${s.pname}">${s.pname}</a>
            </c:forEach>
        </c:if>				
    </div>	 
    <div class="col-md-1 col-md-offset-3">
    	<button id="button" type="button" class="btn btn-default btn-block">Preview</button>	
    </div>
    <div class="col-md-1 ">
    	<button type="button" class="btn btn-default btn-block"><a href="${paper.PAurl }" download>Download</a></button>
     <!--<button id="downLoad" type="button" download="" onclick="Click()" class="btn btn-default btn-block">Download</button>	
    -->
    </div>
</div>
<div class="row display-font"> 
	<div class="col-md-5">
		<span>Publisher:</span>
		<span>ICPRAM</span>		
	</div>
</div>
<div class="row display-font">		
	<div class="col-md-5">
		<span>Time:</span>
		<span>${paper.PAdate}</span>			
	</div>
	 
</div>	
<div class="row display-font">		
	<div class="col-md-5">
		<span>Keyword:</span>
		<span>${paper.PAkeyword }</span>			
	</div>
</div>	
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> 	
<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
<!-- 
<script type="text/javascript"  src="js/menu.js"></script> -->
<script type="text/javascript" src="js/jquery.media.js"></script> 	
<script type="text/javascript" src="js/jquery.cslider.js"></script>
<script type="text/javascript">  
	$(document).ready(function(){
    $(function() {  
        $('a.media').media({width:800, height:600});  
    });  
    $("#button").click(function(){
    	
    	$(".black_background").css("display","block");
    	

    });
    $(".black_background").click(function(){
    	
    	$(this).css("display","none");
    });
	});
	</script> 
</body>
</html>