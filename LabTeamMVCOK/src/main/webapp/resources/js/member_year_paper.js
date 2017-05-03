	$(document).ready(function(){
		$.ajax({
				url:"/LabTeamMVCOK/member/getYears",
				type:"get",
				dataType:"html",
				async:false,
				success:function(data){
					data= $.parseJSON(data);
					console.log(data);
					setYear(data);
					setCurrentLink();
					ajaxgetContent(data[0]);
				}
		});
		$(".menu__item").delegate(".a","click",function(){
			var year = $(this).html();
			console.log(year);
			ajaxgetContent(year);
		});
		$(".menu__item").delegate(".more","click",function(){
			var year ="all";
			console.log(year);
			ajaxgetContent(year);
		});
	});
	//设置当前预览效果
	function setView(){
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
	}
	//设置点击选中效果
	function setCurrentLink(){
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
		})(window);
	}

	//异步去后台获取当前年的数据
	function ajaxgetContent(content){
		$.ajax({
				url:"/LabTeamMVCOK/member/getYearPaper?year="+content,
				type:"get",
				dataType:"html",
				success:function(data){
					data= $.parseJSON(data);
					console.log(data);
					setPaper(data);
					setView();
				}
		});
	}
	//动态设置年份
	function setYear(data){
		clearYear();
		var size=data.length;
		var str="";
		str+="<li class=\"menu__item menu__item--current\"><a class=\"menu__link a\">"+data[0]+"</a></li>";
		if(size<4){
			for(var i=1;i<size;i++){
				str+="<li class=\"menu__item\"><a class=\"menu__link a\">"+data[i]+"</a></li>";
			}
		}else{
			for(var i=1;i<4;i++){
				str+="<li class=\"menu__item\"><a class=\"menu__link a\">"+data[i]+"</a></li>";
			}
			str+="<li class=\"menu__item\"><a class=\"menu__link more\">MORE..</a></li>";
		}
		$("#menu__list").append(str);
	}
	//删除当前年的节点
	function clearYear(){
		var ul=document.getElementById("menu__list");
		var size=ul.childNodes.length;
		for(var i=size-1;i>=0;i--){
			ul.removeChild(ul.childNodes[i]);
		}
	}
	//动态设置当前年的paper信息
	function setPaper(data){
		clearPaper();
		var size=data.length;
		var str="";
		for(var i=0;i<size-1;i++){
			str+="<tr><td>"+data[i].PAtitle+"</td>";
			str+="<td style=\"text-align:center;\"><a class=\"button\" type=\"button\">[PDF]</a></td>";
			str+="<td><a href=\"document/"+data[i].PAurl+"\" download><img src=\"images/download.png\" alt=\"下载\"/></a></td></tr>";
			//str+="<div class=\"black_background\" style=\"position:fixed;top:0px;left:0px;display:none;width:100%;height:100%;background-color: rgba(0, 0, 0,0.5);z-index:1;\">";
			//str+="<div class=\"media\" style=\"margin:0px auto;background-color: rgb(255, 255, 255); width: 800px;height:100vh;z-index:2;\">";
			//str+="<iframe width=\"800\" height=\"100%\" src=\"document/"+data[i].PAurl+"\">";
			//str+="</iframe></div></div>";
		}
		$("#tbody").append(str);		
	}
	//删除原先有的paper信息
	function clearPaper(){
		var tbody=document.getElementById("tbody");
		var size=tbody.childNodes.length;
		for(var i=size-1;i>=0;i--){
				tbody.removeChild(tbody.childNodes[i]);
		}
	}	