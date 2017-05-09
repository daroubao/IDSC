<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lab.entity.Person,com.lab.controller.ShowInfoController" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>${p.pname } from IDSC Lab</title>
<base href="<%=basePath%>resources/">
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link  href="css/style_members_display.css" rel="stylesheet"type="text/css">
		<link rel="stylesheet" type="text/css" href="css/display_normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/display_default.css">
		<link rel="stylesheet" type="text/css" href="css/display_component.css" />
		<link href="css/font.css" rel='stylesheet' type='text/css'>
    	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />		
		<!--start slider -->
	    <link rel="stylesheet" href="css/fwslider.css" media="all">
	    
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
	    <!--  jquery plguin -->
	    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
    	<script src="js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/jquery.media.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<!--end slider -->
	 	<script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		<!-- start testimonials -->
		<!-- da-slider -->
		<link rel="stylesheet" type="text/css" href="css/slider.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
		<!-- <script type="text/javascript">
			$(function() {

				$('#da-slider').cslider({
					autoplay : true,
					bgincrement : 450
				});

			});
		</script>
		<script type="text/javascript">
			$(function() {

				$('#da-slider1').cslider({
					autoplay : true,
					bgincrement : 450
				});

			});
		</script> -->
<!-- <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript">
		$(document).ready(function() {
		$('.inactive').click(function(){
		if($(this).siblings('ul').css('display')=='none'){
			$(this).parent('li').siblings('li').removeClass('inactives');
			$(this).addClass('inactives');
			$(this).siblings('ul').slideDown(100).children('li');
			if($(this).parents('li').siblings('li').children('ul').css('display')=='block'){
				$(this).parents('li').siblings('li').children('ul').parent('li').children('a').removeClass('inactives');
				$(this).parents('li').siblings('li').children('ul').slideUp(100);

			}
		}else{
			//控制自身变成+号
			$(this).removeClass('inactives');
			//控制自身菜单下子菜单隐藏
			$(this).siblings('ul').slideUp(100);
			//控制自身子菜单变成+号
			$(this).siblings('ul').children('li').children('ul').parent('li').children('a').addClass('inactives');
			//控制自身菜单下子菜单隐藏
			$(this).siblings('ul').children('li').children('ul').slideUp(100);

			//控制同级菜单只保持一个是展开的（-号显示）
			$(this).siblings('ul').children('li').children('a').removeClass('inactives');
		}
	})
});
		
		
</script>




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
<div style="width:1304px;margin:0 auto;text-align:left;">
<div class="left">

<div class="sidebar">
			<h3></h3>
			<ul>
				<li>
					<span class="picture"><h2></h2></span>
					<!-- <img style="box-shadow: 1px 1px 5px #696969;" src="images/zhihua4.jpg" alt=""> -->
					<img style="box-shadow: 1px 1px 5px #696969;" src="images/${p.ppicture }" alt="照片">
					<ul>
						<li style=" line-height:180%;font-size:2.2em;font-weight:bold;border-bottom: 1px solid #eee;margin-right:20px;">
							${p.pname }
						</li>
						<li style="line-height:120%;font-size:1.1em;">
							<!-- <br/>Chair Professor of</br> Computer Science -->
							${p.pposition }
						</li>
						<li style="line-height:150%;font-size:1.1em;color:#22B2DA;;">
							<!-- 这里的荣誉显示有点问题 -->
							IEEE Fellow
						</li>
						
					</ul>
				</li>
				
			</ul>
			
	<div class="members_contact">
		<table>
				<tr>
					<td>Tel:</td>
					<!-- <td style="text-align:center;">+86 0571-88888888</td> -->
					<%-- <td style="text-align:center;"><%=p.getPtel() %></td> --%>
					<td style="text-align:center;">${p.ptel }</td>
				</tr>
				<tr>
					<td>Email:</td>
					<!-- <td style="text-align:center;"><a href="#">Jimmyliu@idsc.com</a></td> -->
					<%-- <td style="text-align:center;"><a href="#"><%=p.getPemail() %></a></td> --%>
					<td style="text-align:center;"><a href="#">${p.pemail }</a></td> 
				</tr>
				<tr>
					<td>Fax:</td>
					<!-- <td style="text-align:center;">+86 0571-519-88888888</a></td> -->
					<%-- <td style="text-align:center;"><%=p.getPfax() %></a></td> --%>
					<td style="text-align:center;">${p.pfax }</a></td>
				</tr>
		</table>
</div>
</div>



<div class="publication">
	<h1>His publication</h1>
	<h2>Books (authored & edited)</h2>
	<ul>
		<li><p style="line-height:150%">
			<a href="http://www.amazon.com/s/ref=sr_pg_1?keywords=${name}+${surname}&ie=UTF8&qid=1432711121">
				<span>Amazon.com</span>
			</a>
		</p></li>
	</ul>
	<h3>Articles</h3>
	<ul>			
		 <li><span ><b style="mso-bidi-font-weight:bold"><span>
		 	<a href="http://dblp.uni-trier.de/pers/hd/l/${surname}:${name}">
		 		<span>DBLP Bibliography Server</span>
		 	</a></span></b></span>
		 </li>
		 <li><span ><b style="mso-bidi-font-weight:bold"><span>
		 	<a href="http://ieeexplore.ieee.org/search/searchresult.jsp?searchWithin=%22First%20Name%22:${name}&searchWithin=%22Last%20Name%22:${surname}&newsearch=true">
		 		<span>IEEE Xplore Digital Library</span>
		 	</a></span></b></span>
		 </li>
		 <li><span ><b style="mso-bidi-font-weight:bold"><span>
		 	<a href="http://dl.acm.org/results.cfm?query=${surname}%20${name}">
		 		<span>ACM Digital Library</span>
		 	</a></span></b></span>
		 </li>
		 <li><span ><b style="mso-bidi-font-weight:bold"><span>
		 	<a href="https://www.ncbi.nlm.nih.gov/pubmed/?term=${surname}%2C+${name}">
		 		<span>PubMed</span>
		 	</a></span></b></span>
		 </li>
		 <li><span ><b style="mso-bidi-font-weight:bold"><span>
		 	<a href="http://scholar.google.com/scholar?q=${name}+${surname}">
		 		<span>Google Scholar</span>
		 	</a></span></b></span>
		 </li>	 
	</ul>

</div>	


	
		<div class="information-sdbar">
		<small></small>
	<ul class="yiji">
		<li class="information-sdbar-logo"><img src="images/membersicon.png" alt=""/></li>
		<li  style="text-align:center;font-size:12px;padding-left:0px;"><a     href="<%= request.getContextPath()%>/members">---REASERCH MEMBERS---</a></li> 
		
		<li><a  class="inactive">Co-founders</a>
			
			<ul style="display: none;">
			<c:forEach var="p" items="${listProfessor }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach> 
				
				<!-- <li class="last"><a href="#">Jiming Liu</a></li>  -->
			</ul>
		</li>
		<li><a  class="inactive">Coordinators</a>
			<ul style="display: none">
				<c:forEach var="p" items="${listFellow }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach> 
			</ul>
		</li>
		<li><a  class="inactive">Academic Advisory</a>
			<ul style="display: none">
				<c:forEach var="p" items="${listLecturer }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach>
			</ul>
		</li>
		<li><a  class="inactive">LabMembers</a>
			<ul style="display: none">
				<c:forEach var="p" items="${listothers }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach>
			</ul>
		</li>		
	</ul>
</div>

		

</div>


					 
<div class=" right">
	<div id="body">		
		<div class="content">			
			<header class="case_right_f">
                <div class="case_right_f_l">Introduction</div>
                <div class="case_right_f_r">
                	<!-- <a href="jvascript:;">HOME</a>&gt -->
                    <a href="<%= request.getContextPath()%>/index">HOME</a>&gt
                    <a href="<%= request.getContextPath()%>/members">MEMBERS</a>&gt
                    <a href="<%= request.getContextPath()%>/showPos/${p.pposition }">${p.pposition }</a>&gt
					<a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a>
                </div>
                <div class="clear"></div>
            </header>
			<p style="line-height:150%">
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${p.presume}.</span>			
  				</br>
  				</br>
			<span style="color: #262626;font-weight:bold;font-size: 15.5pt;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;present research focuses on:
				</span> ${p.pinterests}.
			 	</br>
				</br>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${p.paward}.</span>
				</br>
				</br>
			</p>
			<h2>Research</h2>
			<div class="research_menu">	
				<section class="section section--menu" id="Stephano">
					<nav class="menu menu--stephano">
						<ul class="menu__list" id="menu__list">
						 
						</ul>
					</nav>
				</section>
			</div>
			<div class="research_table">
				<table>
					<thead>
						<tr>
						<th>Details</th>
						<th>Preview</th>
						<th>Download</th>
						</tr>
					</thead>
					<tbody id="tbody">	
					</tbody>
				</table>
					<div class="black_background" style="position:fixed;top:0px;left:0px;display:none;width:100%;height:100%;background-color: rgba(0, 0, 0,0.5);z-index:1;">
 							<div class="media" style="margin:0px auto;background-color: rgb(255, 255, 255); width: 800px;height:100vh;z-index:2;">
							<iframe id="iframe" width="800" height="100%" src="">
							</iframe>
							</div>
 						</div>
			</div>	
		</div>
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
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
	
	
	 <!-- scroll_top_btn -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
	
	<script type="text/javascript" src="js/member_year_paper.js"></script>
	
	<script src="js/classie.js"></script>
	<script src="js/clipboard.min.js"></script>
	<script>
	(function() {
			  /* [].slice.call(document.querySelectorAll('.menu')).forEach(function(menu) {
				var menuItems = menu.querySelectorAll('.menu__link'),
					setCurrent = function(ev) {
						ev.preventDefault();

						var item = ev.target.parentNode; // li

						// return if already current
						if( classie.has(item, 'menu__item--current') ) {
							return false;
						}
						// remove current
						classie.remove(menu.querySelector('.menu__item--current'), 'menu__item--current');
						// set current
						classie.add(item, 'menu__item--current');
					};

				[].slice.call(menuItems).forEach(function(el) {
					el.addEventListener('click', setCurrent);
				});  
			});  */

			[].slice.call(document.querySelectorAll('.link-copy')).forEach(function(link) {
				link.setAttribute('data-clipboard-text', location.protocol + '//' + location.host + location.pathname + '#' + link.parentNode.id);
				new Clipboard(link);
				link.addEventListener('click', function() {
					classie.add(link, 'link-copy--animate');
					setTimeout(function() {
						classie.remove(link, 'link-copy--animate');
					}, 300);
				});
			});
		})(window);
	</script>
	<!-- <script type="text/javascript">  
	$(document).ready(function(){
   		$(function() {  
        	$('a.media').media({width:800, height:600});  
    	});  
    	$(".button").click(function(){
    		var $tr=$(this).parent().parent();
    		var t=$tr[0];
    		var url=t.childNodes[2].childNodes[0].href;
    		console.log(url);
    		$("#iframe").attr("src",url);
    		$(".black_background").css("display","block");
    	

    	});
    	$(".black_background").click(function(){    	
    		$(this).css("display","none");
    	});
	});
	</script>  -->  
		 

</body>
</html>