<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>IDSC Lab</title>
<base href="<%=basePath%>/resources/">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    	
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- 
		<link href="css/style-login.css" rel='stylesheet' type='text/css' /> -->
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
    	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--start slider -->
	    <link rel="stylesheet" href="css/fwslider.css" media="all">
		<!--  jquery plguin -->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
	    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<!-- <script type="text/javascript" src="js/placeholder.js"></script> 
		 -->
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


</head>
<body>
<!-- start header -->
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
								<li class="active"><a  href="#home">HOME</a></li>
								<li><a href="#about" class="scroll">IDSC</a></li>
								<li><a href="#portfolio" class="scroll">EVENTS</a></li>
								<li><a href="#team" class="scroll">MEMBERS</a></li>
								<li><a href="#blog" class="scroll">PUBLICATIONS</a></li>
								<li class="last"><a href="#contact" class="scroll">CONTACT US</a></li>
								
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
<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide"> 
		                <!-- Slide image -->
		                    <img src="images/background_.jpg" alt=""/>
		                <!-- /Slide image -->
		                <!-- Texts container -->
		                <div class="slide_content">
		                    <div class="slide_content_wrap">
		                    	 <!-- Text description -->
		                        <p class="description" > </p> <!-- i dont know put what... -->
								
		                        <!-- /Text description -->
		                        <!-- Text title -->
		                        <h4 class="title">THE <span  style="color:#47c5de">REPRESENTATIVE</span><br>CONFERENCE
		                         <span style="color:#47c5de">PDF </span> FOR <span style="color:#47c5de">FREE</span></h4>
		                        <!-- /Text title -->
		                        <p class="description"><a href="index.html">DOWNLOAD <img src="images/download.png" alt=""/></a></p>
		                        <div class="slide-btns description">	                      
		                        </div>
		                    </div>
		                </div>
		                 <!-- /Texts container -->
		            </div>
		            <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/background1_.jpg" alt=""/>
		                 <div class="slide_content">
		                    <div class="slide_content_wrap">
		                    	 <!-- Text description -->
		                        <p class="description">  </p>
		                        <!-- /Text description -->
		                        <!-- Text title -->
		                        <h4 class="title">THE <span>REPRESENTATIVE</span><br>PERIODICAL
		                         <span>PDF </span> FOR <span>FREE</span></h4>
		                        <!-- /Text title -->
		                        <p class="description"><a href="index.html">DOWNLOAD <img src="images/download.png" alt=""/></a></p>
		                        <div class="slide-btns description">	                      
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="slide">
		                <img src="images/background2_.jpg" alt=""/>
		                 <div class="slide_content">
		                    <div class="slide_content_wrap">
		                    	 <!-- Text description -->
		                        <p class="description"></p>
		                        <!-- /Text description -->
		                        <!-- Text title -->
		                        <h4 class="title">THE <span>LATEST</span> PROJECT <br>
		                         <span>PROGRESS</span></h4>
		                        <!-- /Text title -->
		                        <p class="description"><a href="index.html">LEARN MORE<img src="images/download.png" alt=""/></a></p>
		                        <div class="slide-btns description">	                      
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev"><span> </span></div>
		        <div class="slideNext"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>
<!-- about -->
		<div class="about" id="about">
	    	<div class="container">
				<div class="row">               
				    <div class="col-md-12">			
				        <a href="<%= request.getContextPath()%>/welcome/Introduction"><h3>ABOUT US</h3></a>
				        <span> </span>
				        <p  style="color:#a0a0a0">IDSC is IZA's organizational unit whose purpose is to serve the scientific and infrastructural computing needs of IZA and its affiliated communities.</p>
					</div>
				</div>		
			</div>
		</div>
        	
<div class="about-bottom">
		<div class="about-left pull-left">
			<h4>WE ARE THE IDSC</h4>
			<p>IDSC is dedicated to supporting all users of data from the novice researcher to the experienced data analyst. </p>
			<p>IDSC aims at becoming the place for economically minded technologists and technologically savvy economists looking for data support, data access support and data services about labor economics.</p>
			<p>IDSC is actively involved in organizing events (see our next Red Cube Seminar Talk) for data professionals, data analysts, and scientific data users and young researchers to discuss and share findings and to establish contacts for future cooperation.</p>
			<p><a href="<%= request.getContextPath()%>/welcome/Introduction">READ MORE</a></p>
		</div>	
		<div class="about-right pull-right">
			<img src="images/about_.jpg" alt=""/>
		</div>
		<div class="clearfix"></div>
</div>
<!-- service -->
<div class="service text-center">
	<div class="container">
        <a href="<%= request.getContextPath()%>/welcome/ResearchDirection"><h3>RESEARCH DIRECTION</h3></a>
        <p style="color:#a0a0a0;text-align:center;">--乱写的--实验室以分布式平台为基础，结合多种机器学习与数据挖掘算法，在移动互联网、金融、服务计算等各个应用领域深入研究，挖掘信息，创造价值。</p>
       <div class="service-bottom">
	        <div class="row">
			    <div class="col-md-4">	
			    	<img src="images/contact.png" alt=""/>		
			        <h4><a href="<%= request.getContextPath()%>/welcome/Projects">DISTRIBUTED PLATFORM</a></h4>
			        <p style="color:#686868">分布式平台是指将数据存储、数据分析和计算等构建在由多个主机构成的集群上的软件平台。实验室主要关注用于大数据分析的分布式机器学习运算平台。在该研究方向上，实验室与香港中文大学开展紧密合作，并在香港中文大学深圳研究院设立联合研究基地，定期进行访问交流。在平台资源方面，实验室能调用天河二号超级计算机、香港中文大学GraphLab集群、PlanetLab、阿里云、Amazon EC2等平台资源，为该研究方向的开展提供有力的支撑。</p>
				</div>
				<div class="col-md-4">	
					<img src="images/flag.png" alt=""/>		
			        <h4><a href="<%= request.getContextPath()%>/welcome/Projects">ALGORITHM</a></h4>
			        <p style="color:#686868">围绕常用的机器学习及数据挖掘算法，比如包括矩阵分解、协同过滤、分解机、SVM、LDA、深度学习等算法进行深入研究，为顶层各种应用场景提供支撑。实验室的各个应用研究方向都需要用到相关算法。例如，在移动应用研究中，我们获取用户、移动应用等信息后，使用矩阵分解、协同过滤、SVM等算法，分析用户与应用的相关性，为用户推荐可能喜欢的应用；而在金融大数据的研究上面，需要各种机器学习算法分析大量的金融交易数据，构建各种量化交易模型；服务计算研究中，使用分解机、深度学习等方法，对大量网络请求服务质量数据进行计算，推荐、从而预测网络的性能，提高服务质量。以上各个应用场景均存在计算量巨大的挑战，因此需要通过算法并行化的方法，结合底层分布式平台，加快运算速度。同时，也需要将算法在线化，提高算法动态性和自适应性，以实时适应动态多变的现实计算环境。</p>
				</div>
				<div class="col-md-4">	
					<img src="images/fl.png" alt=""/>		
			        <h4><a href="<%= request.getContextPath()%>/welcome/Projects">APPLICATION</a></h4>
			        <p style="color:#686868">随着移动互联网的快速发展，各种各样移动应用不断涌现。移动应用市场的规模巨大、应用数量惊人，对应用开发者及使用者都提出了严峻的挑战。开发者面临定位市场需求、快速搜集第三方库、选择远程API、控制安全性等实际设计及开发问题。使用者在应用搜索、选择、安全等多方面更是面临不少困难。 </p>
				</div>
			</div>	
		</div>	
   </div>
</div>
<!-- skills -->
<div class="skills text-center">
	<div class="container">
        <h4>OUR APPLICATIONS</h4>
       <div class="client">		
		<div class="pie-wrapper progress-45 style-2">
		  <span class="label">45<span class="smaller">%</span></span>
		  <div class="pie">
		    <div class="left-side half-circle"></div>
		    <div class="right-side half-circle"></div>
		  </div>
		  <div class="shadow"></div>
		  <h3>MOBILE INTERNET</h3>
		</div>
		<div class="pie-wrapper progress-75 style-2">
		  <span class="label">75<span class="smaller">%</span></span>
		  <div class="pie">
		    <div class="left-side half-circle"></div>
		    <div class="right-side half-circle"></div>
		  </div>
		  <div class="shadow"></div>
		   <h3>FINANCIAL DATA+</h3>
		</div>
		<div class="pie-wrapper progress-95 style-2">
		  <span class="label">95<span class="smaller">%</span></span>
		  <div class="pie">
		    <div class="left-side half-circle"></div>
		    <div class="right-side half-circle"></div>
		  </div>
		  <div class="shadow"></div>
		   <h3>SERVICE COMPUTING</h3>
		</div>
		</div>	
	</div>
   </div>
</div>
<!-- portfolio -->
<div class="portfilio" id="portfolio">
	<div class="container">
		<div class="about">	   
				<div class="row  Protects">
				    <div class="col-md-12">			
				        <a href="<%= request.getContextPath()%>/recent/r"><h3>EVENTS</h3></a>
				        <span style="padding: 0px 45px;"></span>
				        <p  style="color:#a0a0a0">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
					</div>
				</div>		
		</div>	
	</div>	
	 <div class="port">
       		<ul>
					<li><div class="view view-fourth">
						     <img src="images/port1_.jpg" alt=""/>
						     <a href="<%= request.getContextPath()%>/recent/r">
							 <div class="mask">	
							      <div class="border">                   
									   <h2>IDSC  Lab</h2>
									   <span></span>
									   <p class="a">EVENTS</p>		                       
								  </div>                                                 
							 </div>	
							 </a>	
						</div>	
					</li>
					<li><div class="view view-fourth">
						     <img src="images/port2_.jpg" alt=""/>
						     <a href="<%= request.getContextPath()%>/recent/r">
							 <div class="mask">	
							      <div class="border">                   
									   <h2>IDSC  Lab</h2>
									   <span></span>
									   <p class="a">NEWS</p>		                       
								  </div>                                                 
							 </div>
							 </a>		
						</div>	
					</li>
					<li><div class="view view-fourth">
						     <img src="images/port3_.jpg" alt=""/>
							 <a href="<%= request.getContextPath()%>/recent/meeting">
							 <div class="mask">	
							      <div class="border">                   
									   <h2>IDSC  Lab</h2>
									   <span></span>
									   <p class="a">MEETING</p>		                       
								  </div>                                                 
							 </div>	
							 </a>	
						</div>	
					</li>
					<li><div class="view view-fourth">
						     <img src="images/port4_.jpg" alt=""/>
							 <a href="<%= request.getContextPath()%>/recent/meeting">
							 <div class="mask">	
							      <div class="border">                   
									   <h2>IDSC  Lab</h2>
									   <span></span>
									   <p class="a">MORE+</p>		                       
								  </div>                                                 
							 </div>
							 </a>		
						</div>	
					</li>
			</ul>	
     </div>
    <div class="slider">
	<div id="da-slider1" class="da-slider">
							<!-- da-slider -->
							<div class="da-slide">
								<h2>27.10.2016 - 28.10.2016, IZA Conference</h2>
								<p>Labor Markets in Southern Africa: Evidence and Policy Lessons</p>							    
							</div>
							<div class="da-slide">
								<h2>29.10.2016 - 30.10.2016, IZA Conference</h2>
								<p>IZA/DFID Short Course on Program Evaluation</p>							    
							</div>
							<div class="da-slide">
								<h2>18.11.2016 - 19.11.2016, IZA Conference</h2>
								<p>ICID/IZA/Renmin University/UCW Workshop on the Chinese Labor Market in Transition</p>						    
							</div>
							<div class="da-slide">
								<h2>21.11.2016, IZA Conference</h2>
								<p>IZA/OECD Employment Seminar on Policies for a Better Working Environment</p>							    
							</div>
	</div><!-- da-slider -->			
</div> 
	<!-- <div class="port-text">
       		<p ><a href="index.html" style="color:#a0a0a0">LEARN MORE+</a></p>
     </div>-->
  
<div class="team" id="team">
	<div class="container">
		<div class="about">	   
				<div class="row">
				    <div class="col-md-12">			
				        <a href="<%= request.getContextPath()%>/members"><h3>MEMBERS</h3></a>
				        <span> </span>
				        <p  style="color:#a0a0a0">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
					</div>
				</div>		
		</div>	
		<div class="team-member">
			<ul>
				<li><div class="view1 view-fourth1">
						     <img src="images/${listFellow.get(0).ppicture }" alt="${listFellow.get(0).pname }"/>
							 
					</div>	
					<div class="clearfix"></div>
					 <P style="white-space:nowrap;font-size:90%;"><a href="<%= request.getContextPath()%>/member/${listFellow.get(0).pname }">${listFellow.get(0).pname }<br><label>${listFellow.get(0).pposition }</label></a></P>
				</li>
				
				<li><div class="view1 view-fourth1">
						     <img src="images/${listPro.get(0).ppicture }" alt="${listPro.get(0).pname }"/>
							 
					</div>	
					<div class="clearfix"></div>
					 <P style="white-space:nowrap;font-size:90%;"><a href="<%= request.getContextPath()%>/member/${listPro.get(0).pname }">${listPro.get(0).pname }<br><label>${listPro.get(0).pposition }</label></a></P>
				</li>
				
				<li><div class="view1 view-fourth1">
						     <img src="images/${listLec.get(0).ppicture }" alt="${listLec.get(0).pname }"/>
							 
					</div>	
					<div class="clearfix"></div>
					 <P style="white-space:nowrap;font-size:90%;"><a href="<%= request.getContextPath()%>/member/${listLec.get(0).pname }">${listLec.get(0).pname }<br><label>${listLec.get(0).pposition }</label></a></P>
				</li>
				
			</ul>		
		</div>		
	</div>									
</div>

<div class="blog" id="blog">
	<div class="container">
		<div class="about">	   
				<div class="row">
				    <div class="col-md-12">			
				        <h3><a href="<%= request.getContextPath()%>/publication/getPublication">PUBLICATIONS</a></h3>
				        <span style="padding: 0px 100px;"></span>
				        <p style="color:#a0a0a0">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
					</div>
				</div>		
		</div>	
		 <div class="blog-bottom">
	        <div class="blog-left">
	        	<a href="<%=path %>/publication/getBook/${book.get(0).PUid}" ><img src="images/book1.1.jpg" alt=""/></a>
				<h6>${book.get(0).PUdate }</h6>
	        	<h4>${book.get(0).PUtitle }</h4>
	        	<p>${book.get(0).PUauthor },${book.get(0).PUpress }, ISBN 978-3-642-34206-6, 2013</p>
	        </div>
	        <!--<span class="circle"></span>-->
	         <div class="blog-right">       	
	        	<a href="<%=path %>/publication/getBook/${book.get(1).PUid}" ><img src="images/book1.2.jpg" alt=""/></a>
				<h6>${book.get(1).PUdate }</h6>
	        	<h4>${book.get(1).PUtitle }</h4>
	        	<p>${book.get(1).PUauthor },${book.get(1).PUpress }, ISBN 978-3-642-34206-6, 2013</p>
	        </div>
	        <div class="clearfix"></div>
         </div>
         <div class="blog-bottom">
	        <div class="blog-left">
	        	<a href="<%=path %>/publication/getBook/${book.get(2).PUid}" ><img src="images/book1.3.jpg" alt=""/></a>
				<h6>${book.get(2).PUdate }</h6>
	        	<h4>${book.get(2).PUtitle }</h4>
	        	<p> ${book.get(2).PUauthor },${book.get(2).PUpress }. 22nd IEEE International Conference on Web Services, New York, USA, June 2015, 
     accepted.</p>
	        </div>
	        <!--<span class="circle"></span>-->
	         <div class="blog-right"> 
				<a href="<%=path %>/publication/getBook/${book.get(3).PUid}" ><img src="images/book1.1.jpg" alt=""/></a>			 
	        	<h6>${book.get(3).PUdate }</h6>
	        	<h4>${book.get(3).PUtitle }</h4>
	        	<p>Z${book.get(3).PUauthor },${book.get(3).PUpress }, ISBN 978-3-642-34206-6, 2013</p>	
	        </div>
	        <div class="clearfix"></div>
         </div>
          <div class="blog-bottom">
	        
	       <!-- <span class="circle"> </span>-->
	        
			
	        <div class="clearfix"> </div>
         </div>
		 <div class="paperbutton"><a href="<%= request.getContextPath()%>/publication/getPublication">READ MORE</a></div>
         <div id="allposts">
		 
		 <!--<div class="post" style="margin:0 auto;"><a href="#">All  Posts</a></div>
		 
		 <!--存在问题 没有修改好 = =</div>-->
	</div>
</div>

<!---start-contact---->
<div class="contact s4" id="contact">
	<div class="container">
		<div class="col-md-12">	
		<!--<span> </span>-->
		<a href="<%= request.getContextPath()%>/welcome/Contact"><h3>CONTACT US</h3></a>
			
			</div>
		<div class="row">
			<div class="col-md-12">
				<form action="<%= request.getContextPath()%>/contact/us" method="post">
					<input type="text" class="textbox" value="Name" name="Fname" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}">
					<input type="text" class="textbox" value="Email" name="Femail" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
					<textarea value="Message" name="Finformation" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
</div>
<!---End-contact---->
<div class="footer-top">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="index.html"><img src="images/logo_.png" alt=""/></a>
			    <p>Address: Xiasha Higher Education Zone, Hangzhou, 310018, Zhejiang Province, People's Republic of China.</p>
				<P>Tel: +86-571-86878576, 86873869, 86878616.   &nbsp;&nbsp; Fax: +86-571-86878576.</P>
				<P></P>
				<div class="foot">
					<span>information@idsc.com</span>
				</div>
				<div>
					<p style="text-align: center;"><a href="<%= request.getContextPath()%>/admin/login">管理员入口</a></p>
				</div>
				</div>
			</div>				  
			</div>	
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="row">
 			<div class="col-md-12">	
				<div class="copy-right">
					<p>Copyright &copy; 2016-2017.IDSC Joint Laboratory.</p>	
				</div>	
			</div>
		</div>
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

		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

</body>
</html>
