let currpage=1;
	$(document).ready(function(){
		$.ajax({
			url:"/LabTeamMVCOK/publication/findAll?currPage="+currpage,
			type:"get",
			dataType:"html",
			success:function(data){
				data= $.parseJSON(data);
				setContainer(data);
			}
		});
		$("#page").delegate("#n1","click",function(){
			var str="/LabTeamMVCOK/publication/findAll?currPage="+(currpage-1);
			$.ajax({
				url:str,
				type:"get",
				dataType:"html",
				success:function(data){
					data= $.parseJSON(data);
					setContainer(data);
				}
			});
		});
		$("#page").delegate("#n2","click",function(){
			var str="/LabTeamMVCOK/publication/findAll?currPage="+(currpage+1);
			$.ajax({
				url:str,
				type:"get",
				dataType:"html",
				success:function(data){
					data= $.parseJSON(data);
					setContainer(data);
				}
			});
		});
		$("#page").delegate("span","click",function(){
			let num=$(this).text();
			var str="/LabTeamMVCOK/publication/findAll?currPage="+num;
			$.ajax({
				url:str,
				type:"get",
				dataType:"html",
				success:function(data){
					data= $.parseJSON(data);
					setContainer(data);
				}
			});	
		});
	});
	
	
	function setContainer(contents){
		if(contents.length===0){
			return ;
		}
		var content=contents[1];
		setContent(content);
		var page=contents[0];
		setPage(page);
		currpage=page.currPage;
	}
	//动态设置页面个数
	function setPage(page){
		clearPageContent();
		var currPage=page.currPage;
		var totalPage=page.totalPage;
		if(totalPage<=1)
			return;
		var divPage=document.getElementById("page");
		if(currPage!=1){
			var a=document.createElement("a");
			//var url="/MyWeb6/Se/findAll?currPage="+(currPage-1);
			a.setAttribute("class","n");
			a.setAttribute("id","n1");
			a.innerText="<上一页";
			divPage.appendChild(a);
		}
		for(var i=1;i<=totalPage;i++){
			if(currPage===i){
				var strong=document.createElement("strong");
				var span=document.createElement("span");
				span.setAttribute("class", "pc");
				span.innerText=i;
				strong.appendChild(span);
				divPage.appendChild(strong);
			}else{
				var a=document.createElement("a");
				var span=document.createElement("span");
				span.setAttribute("class", "pc");
				span.innerText=i;
				a.appendChild(span);
				divPage.appendChild(a);
			}
		}
		if(currPage!=totalPage){
			var a=document.createElement("a");
		//	var url="/MyWeb6/Se/findAll?currPage="+(currPage+1);
			a.setAttribute("class","n");
			a.setAttribute("id","n2");
			a.innerText="下一页>";
			divPage.appendChild(a);
		}
	}
	//清除原先的节点
	function clearPageContent(){
		var pageContent=document.getElementById("page");
		var size=pageContent.childNodes.length;
		for(var i=size-1;i>=0;i--){
			pageContent.removeChild(pageContent.childNodes[i]);
		}
	}
	//动态设置消息
	function setContent(content){
		clearContent();
		var size=content.length;
		var str="";
		for(var i=0;i<size;i++){
			str+="<div class='result c-container ' id='"+(i+1)+"'>";
			str+="<h3 class='t'>";
			str+="<a href='"+content[i].url+"' target='_blank'>";
			str+="<em>"+content[i].Title+"</em></a></h3>";
			str+="<div class='c-abstract'>";
			str+="<span class=' newTimeFactor_before_abs m'>&nbsp;-&nbsp;</span>";
			str+=content[i].content;
			str+="</div></div>";
			$("#content_left").append(str);
			str="";
		}
	}
	//清除原先的节点
	function clearContent(){
		var Content=document.getElementById("content_left");
		var size=Content.childNodes.length;
		for(var i=size-1;i>=0;i--){
			Content.removeChild(Content.childNodes[i]);
		}
	}