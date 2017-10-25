<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>团队项目详情</title>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${category.description}" />
<meta name="keywords" content="${category.keywords}" />
<link href="${ctxStaticFront}/themes/sc/bootstrapadd.css" type="text/css" rel="stylesheet" />
<script src="${ctxStaticFront}/themes/sc/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctxStaticFront}/themes/sc/jquery.js" type="text/javascript"></script>

<!-- 轮播图片 -->
<link rel="stylesheet" href="${ctxStaticFront}/themes/sc/tplb/pageSwitch.min.css" />
<script src="${ctxStaticFront}/themes/sc/tplb/pageSwitch.min.js" type="text/javascript"></script>
<%-- <link rel="stylesheet" href="${ctxStatic}/style/base.css" /> --%>

<style type="text/css">
input:read-only{
	background-color: #fff;
}

.thumbnail {
	margin-bottom: 0px;
}

.thumbnail>img {
	width: 100%;
	height: 250px;
}

h3 {
	margin-top: 10px;
	margin-bottom: 20px;
	font: bold;
}

.bs-example {
	padding: 15px;
}

.btn_right {
	position: fixed;
	float: right;
}
.bs-example {
	position: relative;
	padding: 15px 15px 15px;
	margin: 0 -15px 15px;
	border-style: solid;
	margin-right: 0;
	margin-left: 0;
	background-color: #fff;
	border-color: #ddd;
	border-width: 1px;
	border-radius: 4px 4px 0 0;
	box-shadow: none
}
	
/* 图片轮播 */	
	#containerbanner {
			width: 100%;
			height: 500px;
			overflow: hidden;
			margin-bottom: 10px;
	}
	
	#containerbanner,.sections {
		position: relative;
	}

	#pageBanner {
			width: 100%;
			height: 300px;
			overflow: hidden;
	}
	.sections,.section {
		height:100%;
	}
	#pageBanner,.sections {
		position: relative;
	}

	.section {
		background-color: #000;
		background-size: cover;
		background-position: 50% 50%;
		text-align: center;
		color: white;
	}
	
/*  双创资讯 */

.news-content:FIRST-CHILD {
	border-top: 1px dashed #808080;
}

.news-content {
	height: 50px;
	line-height: 50px;
	font-size: 15px;
	display: block;
	border-bottom: 1px dashed #808080;
	padding:0px 0px 0px 15px;
	overflow: hidden;
	position: static;
	font-weight: bold;
}		

.news-content a {
	color: #999999;'
}	


/*
去掉li前面的圆点
*/
ul li{
	list-style-type: none;
	float: left;
}
.ulcss{
	margin-top:30px;
	width: 200px;
	margin-left: 50px;
}

.licss{
  width:50px;
  height: 21px;
  border:1px solid #CBCBCF;
  margin-left:10px;
  background: #fff;
  border-radius:3px;
  text-align: center;
}
</style>
<script type="text/javascript">
	function changecolor(id,index){
		var pid=id+"_"+index;
		var aa=$("#"+id+"_"+index).attr("data-"+id+"_"+index);
		var pAry=document.getElementById("lilist").getElementsByTagName("p");
		for(var i=0;i<pAry.length;i++){
			 if(pAry[i].id==pid){
				 if(aa=="1"){
						$("#"+id+"_"+index).attr("data-"+id+"_"+index,"0");
						$(".licss_"+index).css("border","1px solid #CBCBCF");
					}else{
						$("#"+id+"_"+index).attr("data-"+id+"_"+index,"1");
						$(".licss_"+index).css("border","1px solid #CBCBCF");
						$("#"+id+"_"+index).css("border","1px solid red");
					}
			 }else{
				 
			 }
		}
		
		/*
		var aa=$("#"+id+"_"+index).attr("data-"+id+"_"+index);
		var bb=$("#"+id+"_"+index).attr("data-list");
		if(bb==id){
			alert(bb+"同一个"+id);
		}else{
			alert(bb+"不是同一个"+id);			
		}
		$("#"+id+"_"+index).attr("data-list",id);
		
		if(aa=="1"){
			$("#"+id+"_"+index).attr("data-"+id+"_"+index,"0");
			$(".licss_"+index).css("border","1px solid #CBCBCF");
		}else{
			$("#"+id+"_"+index).attr("data-"+id+"_"+index,"1");
			$(".licss_"+index).css("border","1px solid #CBCBCF");
			$("#"+id+"_"+index).css("border","1px solid red");
		}
		*/
		//说明执行的尺码的点击
		if(index==1){
			
			
		}else{
		//说明执行的颜色的点击
		
		
		}
	}
</script>

</head>
<body>
	<h3 style="margin-left: 250px;">团队信息</h3>
	<!-- 商城介绍 -->
	<div class="bs-example">
		<div class="row">
			<div class="col-sm-12 col-md-6">
				<!-- 图片轮播 -->
				<div id="pageBanner">
					<div class="sections">
						<!-- 
						<c:forEach items="${banner1List2}" var="banner1List2">
							<div class="section">
								<img src="${pageContext.request.contextPath}/${banner1List2.siiUrl}" alt="" style="height: 100%;width: 100%">
							</div>
						</c:forEach>
						 -->
						<div class="section">
								<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_1.jpg" alt="" style="height: 100%;width: 100%">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-6">
				<ul id="lilist" class="ulcss ulcss_1">
					<c:forEach items="${list}" var="list">
						<li>
							<p id="${list.id}_1"  data-list="0" data-${list.id}_1="0" class="licss licss_1" onclick="changecolor('${list.id}',1)">
								${fns:getDictLabel(list.scShopsize, 'scShopsize', '')}
							</p>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="col-sm-12 col-md-6">
				<ul class="ulcss ulcss_2">
					<c:forEach items="${list}" var="list">
						<li>
							<p id="${list.id}_2" data-${list.id}_2="0" class="licss licss_2" onclick="changecolor('${list.id}',2)">
								${fns:getDictLabel(list.scShopcolor, 'scShopcolor', '')}
							</p>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>