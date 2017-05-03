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
<base href="<%=basePath%>/resources/">
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link  href="css/style_members_display.css" rel="stylesheet"type="text/css">
			<link rel="stylesheet" type="text/css" href="css/display_normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/display_default.css">
	<link rel="stylesheet" type="text/css" href="css/display_component.css" />
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	<script type="text/javascript">
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
		</script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
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
								<li class="active"><a  href="<%= request.getContextPath()%>/index">HOME</a></li>
								<li><a href="<%= request.getContextPath()%>/index-welcome.jsp" class="scroll">WELCOME</a></li>
								<li><a href="<%= request.getContextPath()%>/IDSC-Recent.jsp" class="scroll">RECENT</a></li>
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
<div style="width:1024px;margin:0 auto;text-align:left;">
<div class="left">

<div class="sidebar">
			<h3></h3>
			<ul>
				<li>
					<span class="picture"><h2></h2></span>
					<!-- <img style="box-shadow: 1px 1px 5px #696969;" src="images/zhihua4.jpg" alt=""> -->
					<img style="box-shadow: 1px 1px 5px #696969;" src="images/${p.ppicture }" alt="刘继明">
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
		<c:forEach items="${pubs }" var="pub" >
		<li><p style="line-height:150%"><a href="${pub.PUbuyUrl }"><span>${pub.PUtitle }</span></a></li>
		</c:forEach>
	</ul>
	<h3>Articles</h3>
	<ul>
		<!-- <li><span ><b style="mso-bidi-font-weight:bold"><span><a href="http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/l/Liu:Jiming.html"><span>DBLP Bibliography Server</span></a></span></b></span></li>
		<li><span><b><span><a href="http://ieeexplore.ieee.org/search/searchresult.jsp?sortType=desc_p_Publication_Year&amp;rowsPerPage=10&amp;searchWithin=%22First%20Name%22:Jiming&amp;searchWithin=%22Last%20Name%22:Liu"><span>IEEE Xplore Digital Library</span></a></span></b></span</li>
		<li><span><a href="http://dl.acm.org/results.cfm?query=Owner%3AACM%28Author%3A%22Liu%2C%20Jiming%22%29&amp;querydisp=Owner%3AACM%28Author%3A%22Liu%2C%20Jiming%22%29&amp;srt=meta_published_date%20dsc&amp;short=0&amp;coll=DL&amp;dl=ACM&amp;source_disp=&amp;source_query=Owner%3AACM&amp;since_month=&amp;since_year=&amp;before_month=&amp;before_year=&amp;termshow=matchboolean&amp;range_query=&amp;zadv=1&amp;CFID=731782521&amp;CFTOKEN=58919645">
			<span>ACM Digital Library</span></a></span></b></span></li>
		<li><span><b><span><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=Liu%2C+Jiming"><span>PubMed</span></a></span></b></span</li>
		<li><span class="MsoHyperlink"><b style="mso-bidi-font-weight:normal">
		<a href="http://scholar.google.com/scholar?q=%22Jiming+Liu%22&amp;btnG=&amp;hl=en&amp;as_sdt=0%2C5"><span style="">Google Scholar</span></a></li> -->
		
		
		<c:forEach var="paper" items="${papers }" begin="0" step="1" end="4">
			
		 <li><span ><b style="mso-bidi-font-weight:bold"><span><a href="paper.PAurl"><span>${paper.PAtitle }</span></a></span></b></span></li>
		 	
		</c:forEach>
		
		 
	</ul>

</div>	


	
		<div class="information-sdbar">
		<small></small>
	<ul class="yiji">
		<li class="information-sdbar-logo"><img src="images/membersicon.png" alt=""/></li>
		<li  style="text-align:center;font-size:12px;padding-left:0px;"><a     href="<%= request.getContextPath()%>/members">---REASERCH MEMBERS---</a></li> 
		
		<li><a  class="inactive">Chair Professor</a>
			
			<ul style="display: none;">
			<c:forEach var="p" items="${listProfessor }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach> 
				
				<!-- <li class="last"><a href="#">Jiming Liu</a></li>  -->
			</ul>
		</li>
		<li><a  class="inactive">Associate Fellow</a>
			<ul style="display: none">
				<c:forEach var="p" items="${listFellow }">
				<li class="last"><a href="<%= request.getContextPath()%>/member/${p.pname }">${p.pname }</a></li> 
			</c:forEach> 
			</ul>
		</li>
		<li><a  class="inactive">Lecturer</a>
			<ul style="display: none">
				<c:forEach var="p" items="${listLecturer }">
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
			<span>${p.presume}..</span>			
  </br>
  </br>
			<!-- Prof. Liu’s present research focuses on: Data Analytics, Complex Network Analytics, Digital Healthcare, Spatio-Temporal Analytics and Computational Epidemiology, Data-Driven Complex Systems Modeling, and Autonomy-Oriented Computing (AOC).
			 -->
			 Prof. Liu’s present research focuses on: ${p.pinterests}..
			 </br>
			</br>
				<!-- He was named IEEE Fellow in 2011 for his original contributions to Multi-Agent Autonomy-Oriented Computing (AOC) and Web Intelligence (WI), and received HKBU President's Award for Outstanding Performance in 
				Scholarly Work in 2007. -->
				${p.paward}.<!-- He has been invited to give Keynote Talks at ICDS’14 (<a href="http://icds2014.feds.ac.cn/"><span style="color:#262626">1st
				International Conference on Data Science</span></a>), BHI’13 (<a href="http://wi-consortium.org/conferences/amtbi13/bhi/index.php"><span style="color:#262626">International Conference on Brain/Health Informatics</span></a>), 
				<a href="https://www.taai.org.tw/TAAI/"><span style="color:#262626">AI
				Forum’13</span></a>, <a href="http://www.computer.org/csdl/proceedings/icnc/2008/3304/01/3304a003-abs.html"><span style="color:#262626">ICNC’08-FSKD’08</span></a>,
				ADMA’08, AWIC’07, RSEISP’07, RSKT 2006, AMT’06, and AWIC'05 (Atlantic Web Intelligence Conference), as well as Plenary Talks at WI-IAT’08, KES’05, MMAS 2004, ISMIS’03, and IJCAI’03 (International Joint Conference on Artificial Intelligence), among others, on research related to Autonomy-Oriented Computing, Web Intelligence, Collective Behaviors, Self-Organizing Systems, Complex Systems, Big Data Analytics, Healthcare Informatics, and Computational Epidemiology etc.. -->
			</br>
			</br>
				<!-- Prof. Liu has served as the Founding Editor-in-Chief of <a href="http://www.iospress.nl/journal/web-intelligence-and-agent-systems/"><span style="color:#262626">Web Intelligence Journal</span></a> (IOS), 
				an Associate Editor of<a href="http://aimsciences.org/journals/BDIA.jsp?journalID=27"><span style="color:#262626">Big Data and Information Analytics</span></a> (AIMS), 
				<a href="http://www.computer.org/portal/web/tkde"><span style="color:#262626">IEEE Transactions on Knowledge and Data Engineering</span></a>, 
				<a href="http://www.ieeesmc.org/publications/transactions-on-cybernetics"><span style="color:#262626">IEEE Transactions on Cybernetics</span></a>, 
				<a href="http://benthamscience.com/journal/aims-scope.php?journalID=nbe#top"><span style="color:#262626">Neuroscience and Biomedical Engineering</span></a> (Bentham), 
				and <a href="http://www.blackwellpublishing.com/journal.asp?ref=0824-7935"><span style="color:#262626">Computational Intelligence</span></a> (Wiley) etc.,
				a Book Series Editor of <a href="http://www.iospress.nl/bookserie/frontiers-in-artificial-intelligence-and-applications/"><span style="color:#262626">Frontiers in Artificial Intelligence and Applications</span></a> (IOS)
				and Health Information Science (Springer), and an Editorial Board Member of several other journals, e.g.,
				 <a href="http://link.springer.com/journal/13721"><span style="color:#262626">Network Modeling and Analysis in Health Informatics and Bioinformatics</span></a>
				(Springer) and <a href="http://www.igi-global.com/journal/international-journal-computational-models-algorithms/1166"><span style="color:#262626">International Journal of Computational Models and
				Algorithms in Medicine</span></a> (IGI). 
				Prof. Liu was the General or Program Chair of international conferences, e.g., ACM IHI’12 (<a href="http://www.comp.hkbu.edu.hk/ihi2011/"><span style="color:#262626">ACM
				SIGHIT International Health Informatics Symposium</span></a>), 
				IEEE CBMS’13 (<a href="http://cbms2013.med.up.pt/?cfp.html"><span style="color:#262626;
				mso-bidi-font-style:normal">IEEE International Symposium on Computer-Based
				Medical Systems</span></a>), ISMIS’12, IEEE ICDM’06, IEEE/WIC/ACM WI-IAT’05, EEE’04, and IDEAL’03 etc.. He was the Chair of IEEE Computer Society Technical Committee on Intelligent Informatics (TCII) in 2010-2014. -->
			</p>
			<!--
			<div class="teaching">
			<h2>Teaching</h2>
			<a class=" teachingimg" href="#teaching"><img src="images/teaching.png" alt=""/></a>
			<p>COMP 7820  </br><b style="font-weight:bold;">Decision Analysis and Support<span style="mso-spacerun:yes">&nbsp;&nbsp; </span></b> </br> </p>
			<a class=" teachingimg" href="#teaching"><img src="images/teaching.png" alt=""/></a>
			<p>COMP 4016  </br><b style="font-weight:bold;">Clinical Decision Support and Information Systems</b></br> </p>
			<a class=" teachingimg" href="#teaching"><img src="images/teaching.png" alt=""/></a>
			<p>COMP 7420  </br><b style="font-weight:bold;">Decision Analysis and Support in Healthcare Systems</b></p>
			
			<p>
				COMP 7820  <b style="font-weight:bold;">Decision Analysis and Support<span style="mso-spacerun:yes">&nbsp;&nbsp; </span></b> </br> 
				COMP 4016  <b style="font-weight:bold;">Clinical Decision Support and Information Systems</b></br> 
				COMP 7420  <b style="font-weight:bold;">Decision Analysis and Support in Healthcare Systems</b>
			</p>
			</div>-->
			
			<h2>Research</h2>
			<!--
			<h3>Books (authored & edited)</h3>
			<p style="line-height:150%"><a href="http://www.amazon.com/s/ref=sr_pg_1?rh=n%3A283155%2Ck%3Ajiming+liu&amp;keywords=jiming+liu&amp;ie=UTF8&amp;qid=1432711121"><span>Amazon.com</span></a>
			</p>
			
			<h3>Articles</h3>
		
			<p style="line-height:150%"><span ><b style="mso-bidi-font-weight:bold"><span><a href="http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/l/Liu:Jiming.html"><span>DBLP Bibliography Server</span></a></span></b></span>
			<span><b style="mso-bidi-font-weight:normal"><span> <span style="mso-spacerun:yes">&nbsp;</span></span></b></span>
			<span><b><span>||</span></b></span><span><b><span> 
			<span style="mso-spacerun:yes">&nbsp;</span></span></b></span><span><b><span><a href="http://ieeexplore.ieee.org/search/searchresult.jsp?sortType=desc_p_Publication_Year&amp;rowsPerPage=10&amp;searchWithin=%22First%20Name%22:Jiming&amp;searchWithin=%22Last%20Name%22:Liu"><span>IEEE Xplore Digital Library</span></a></span></b></span>
			<span><b><span> <span style="mso-spacerun:yes">&nbsp;</span></span></b></span><span><b><span>|| </span></b></span><span><b><span><span>&nbsp;</span></span></b></span><span><b>
			<span><a href="http://dl.acm.org/results.cfm?query=Owner%3AACM%28Author%3A%22Liu%2C%20Jiming%22%29&amp;querydisp=Owner%3AACM%28Author%3A%22Liu%2C%20Jiming%22%29&amp;srt=meta_published_date%20dsc&amp;short=0&amp;coll=DL&amp;dl=ACM&amp;source_disp=&amp;source_query=Owner%3AACM&amp;since_month=&amp;since_year=&amp;before_month=&amp;before_year=&amp;termshow=matchboolean&amp;range_query=&amp;zadv=1&amp;CFID=731782521&amp;CFTOKEN=58919645">
			<span>ACM Digital Library</span></a></span></b></span>
			<span><b><span> <span style="mso-spacerun:yes">&nbsp;</span></span></b></span><span><b>
			<span> <span style="mso-spacerun:yes">&nbsp;</span></span></b></span><span><b><span><a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=Liu%2C+Jiming"><span>PubMed</span></a></span></b></span>
			<span class="MsoHyperlink"><b style="mso-bidi-font-weight:normal">
		<a href="http://scholar.google.com/scholar?q=%22Jiming+Liu%22&amp;btnG=&amp;hl=en&amp;as_sdt=0%2C5"><span style="">Google Scholar</span></a>
		</p>-->
		<!--<h3>US Patents</h3>
		<!--<a class=" articleimg" href="#teaching"><img src="images/diploma.png" alt=""/></a>
		<p style="line-height:150%"><b>Methods and Apparatus for Smart Healthcare Decision Analytics and Support, US 20130253942 A1 (Co-Inventers: Tao, L. and Leung, C.H.C.)</b> </br>
		Digital Resources Searching and Mining through Collaborative Judgment and Dynamic Index Evolution, US 8489571 B2 (Co-Inventers: Leung, C.H.C.)</br>
		Automatic and Semi-Automatic Image Classification, Annotation and Tagging through the Use of Image Acquisition Parameters and Metadata, US 8520909 B2 (Co-Inventers: Leung, C.H.C. and Wong, C.F.) </br>
		</p>-->
		

		
		<div class="research_menu">	
		<section class="section section--menu" id="Stephano">
			<nav class="menu menu--stephano">
				<ul class="menu__list">
					<c:choose>
						<c:when test="${empty listPaperMax}">
                       		<li class="menu__item menu__item--current"><a class="menu__link">2017</a></li>
                    	</c:when>
                    	<c:otherwise>
							<li class="menu__item menu__item--current"><a class="menu__link" href="<%= request.getContextPath()%>/pAdate/${listPaperMax.get(0).PAdate }&${p.pname }">${listPaperMax.get(0).PAdate }</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${empty listPaperLess}">
                       		<li class="menu__item"><a class="menu__link" href="">2016</a></li>
                       		<li class="menu__item"><a class="menu__link" href="">2015</a></li>
                       		<li class="menu__item"><a class="menu__link" href="">2014</a></li>
                    	</c:when>
                    	<c:otherwise>
							<c:forEach items="${listPaperLess }" var="listless" begin="0" end="2">
								<li class="menu__item"><a class="menu__link" href="<%= request.getContextPath()%>/pAdate/${listless }&${p.pname }">${listless }</a></li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- <li class="menu__item menu__item--current"><a class="menu__link" href="https://www.douyu.com/524080">2017</a></li> -->
					<!-- <li class="menu__item"><a class="menu__link" href="https://www.douyu.com/524080">2017</a></li>
					<li class="menu__item"><a class="menu__link"></a></li>
					<li class="menu__item"><a class="menu__link"></a></li> -->
					
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
			<tbody>
				<!-- <tr>
					<td>Methods and Apparatus for Smart Healthcare Decision Analytics and Support, US 20130253942 A1 (Co-Inventers: Tao, L. and Leung, C.H.C.)</td>
					<td style="text-align:center;"><a href="#">[PDF]</a></td>
					<td> <a href="#"><img src="images/download.png" alt=""/></a></td>
				</tr>
				<tr style="background-color:#ddd;">
					<td>Digital Resources Searching and Mining through Collaborative Judgment and Dynamic Index Evolution, US 8489571 B2 (Co-Inventers: Leung, C.H.C.)</td>
					<td style="text-align:center;"><a href="#">[PDF]</a></td>
					<td><a href="#"><img src="images/download.png" alt=""/></a></td>
					
				</tr> -->
				
				<c:forEach items="${ listByDate}" var="listByDate">
				<tr>
					<td>${listByDate.PAtitle }</td>
					<td style="text-align:center;"><a href="#">[PDF]</a></td>
					<td> <a href="#"><img src="images/download.png" alt=""/></a></td>
					
				</tr>
				</c:forEach> 
				
				
				<!-- <tr>
					<td>233333333333333</td>
					<td style="text-align:center;"><a href="#">[PDF]</a></td>
					<td> <a href="#"><img src="images/download.png" alt=""/></a></td>
					
				</tr> -->
				
			</tbody>
		</table>
		
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
	<script src="js/classie.js"></script>
	<script src="js/clipboard.min.js"></script>
	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.menu')).forEach(function(menu) {
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
			});

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

		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

</body>
</html>