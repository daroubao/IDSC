<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>publications</title>
	<base href="<%=basePath%>/resources/">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>

<link rel="stylesheet" type="text/css" href="css/slider.css" />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/fwslider.css" media="all">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/paper.css">

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
<script type="text/javascript" src="js/jquery.cslider.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".row").delegate(".btn","click",function(){
			var value=$(".form-control").val();
			console.log(value);
			var url="/LabTeamMVCOK/publication/SearchRsult?contents="+value;
			location.href=url;
		});
	});

</script>
	
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
			            <a class=" headlogo" href="<%=path %>/index"><img src="images/logo_1.png" alt="回首页"/></a>
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
	<!-- <script type="text/javascript"  src="js/menu.js"></script> 
	-->
</div>


<div class="chu" >
	<span >BOOKS</span>
	<hr>
</div>
<!--å¾çè½®æ­-->
<div id="Slide1" class="zy-Slide ">
	<!--prev:åç´ ä¸­çææ¬éå¸¸ä¼ä¿çç©ºæ ¼åæ¢è¡ç¬¦ãèææ¬ä¹ä¼åç°ä¸ºç­å®½å­ä½ã-->
	<section><img src="images/arrow-left-direction.png"></section>
	<section><img src="images/right-black-arrow.png"></section>
	<ul>
		<c:if test="${!empty book}">
			<c:forEach items="${book }" var="b">
			<li><a href="<%=path %>/publication/getBook/${b.PUid }"><img src="images/book1.1.jpg" /></a></li>
			</c:forEach>
		</c:if>
	</ul>
</div>

<script src="js/jq.min.js"></script>
<script src="js/jquery.zySlide.js"></script>
<script src="js/index.js"></script>
<!--æç´¢æ¡-->
<div class="row" style="margin:60px 0 0 0;">
  <div class="col-md-8 col-md-offset-2">
    <div class="input-group">
     	<input type="text" class="form-control" placeholder="Search From Here">
      	<span class="input-group-btn">
       		<button class="btn btn-default" type="button">Search</button>
      	</span>
    </div>
  </div>
</div>
<!--è®ºæå±ç¤º-->
<div class="chu" >
	<span >PAPERS</span>
	<hr>
</div>
<div class="row" style="margin:0 0 20px 0;">
<c:if test="${!empty map}">
  <c:forEach items="${map}" var="m">
   <!--papers-left-->
    <div class="col-md-6" >
    	<ul class="list-group list-font">
          <li class="list-group-item " style="clear:both;background-color:#36506C;color:#fff;">${m.key }</li>
          <c:if test="${!empty m.value}">
			  <c:forEach items="${m.value}" var="p">	
           		<li class="list-group-item ">
             		<div class="row">
              			<a href="<%=path %>/publication/getPaper/${p.PAid }">${p.PAtitle }</a>
              		</div>
              		<div class="row">
              			authors:
              			<c:if test="${!empty p.persons}">
              				<c:forEach items="${p.persons}" var="s">
              				<a href="<%=path %>/member/${s.pname}">${s.pname}</a>
                	     	</c:forEach>
                	     </c:if>
              		</div>
             	 	<div class="row">
             	 		<b>publisher</b>:Computational Intelligence       
             		 </div>
           		</li>
			  </c:forEach>
			</c:if>   
                 
        </ul>
    </div>
  </c:forEach>
</c:if>   
</div>



<div id="footer" style="margin:30px 0 0 0;">
		<div class="copy-right">
			<p class="foot" style="text-align:center;">
				Copyright &copy; 2016-2017. IDSC Joint Laboratory.
			</p>
		</div>
	</div>
</body>
</html>