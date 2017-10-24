<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${site.description}" />
<meta name="keywords" content="${site.keywords}" />

<link href="${ctxStaticFront}/themes/sc/bootstrapadd.css" type="text/css" rel="stylesheet" />
<script src="${ctxStaticFront}/themes/sc/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctxStaticFront}/themes/sc/jquery.js" type="text/javascript"></script>

<!-- 轮播图片 -->
<link rel="stylesheet" href="${ctxStaticFront}/themes/sc/tplb/pageSwitch.min.css" />
<script src="${ctxStaticFront}/themes/sc/tplb/pageSwitch.min.js" type="text/javascript"></script>

<script>
	$(function() {
		$("#containerbanner").PageSwitch({
			direction:'horizontal',
			easing:'ease-in',
			duration:1000,
			autoPlay:true,
			interval: 7000 // 自动播放间隔
		});
		
		$("#pageBanner").PageSwitch({
			direction:'horizontal',
			easing:'ease-in',
			duration:1000,
			autoPlay:true,
			interval: 3000 // 自动播放间隔
		});
		
	});
	
	
</script>

<style type="text/css">
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
	
</style>

</head>
<body>

	<!-- 轮播 -->
	<div id="containerbanner">
		<div class="sections">
			<!--
			<c:forEach items="${banner1List1}" var="banner1List1">
				<div class="section">
					<img src="${pageContext.request.contextPath}/${banner1List1.siiUrl}" alt="" style="height: 100%;width: 100%">
				</div>
			</c:forEach>
			-->
			<div class="section">
					<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_1.jpg" alt="" style="height: 100%;width: 100%">
			</div>
			<div class="section">
					<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_2.jpg" alt="" style="height: 100%;width: 100%">
			</div>
			<div class="section">
					<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_3.jpg" alt="" style="height: 100%;width: 100%">
			</div>
		</div>
	</div>
	
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
						<div class="section">
								<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_2.jpg" alt="" style="height: 100%;width: 100%">
						</div>
						<div class="section">
								<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_3.jpg" alt="" style="height: 100%;width: 100%">
						</div> 
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-6">
				<!-- 双创咨询列表 -->
				<div class="news-card">
					<!-- 
					<c:forEach items="${cmsArticleSczx}" var="cmsArticleSczx">
						<span class="news-content">
							<a href="${ctx}/view-${cmsArticleSczx.category_id}-${cmsArticleSczx.id}${fns:getUrlSuffix()}">
								${cmsArticleSczx.title}
							</a>
						</span>
					</c:forEach>
					 -->
					<span class="news-content">
						<a href="#">
							咨询一
						</a>
					</span>
					<span class="news-content">
						<a href="#">
							咨询二
							</a>
					</span>
					<span class="news-content">
						<a href="#">
							咨询三
							</a>
					</span>		
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 服装展示区域 -->
	<div class="bs-example">
		<h3 class="text-center">
			<small><a href="${ctx}/teamList?pageSize=8" class="pull-right">更多>></a></small> 服装
		</h3>
		<div class="row">
			<c:forEach items="${tScShop_type1}" var="tScShop">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="${ctxStaticFront}/themes/sc/1.jpg" alt="Generic placeholder thumbnail">
						<div class="caption">
							<h3>${tScShop.shopName}</h3>
							<p>${tScShop.shopName}</p>
							<p style="height: 34px;">
								<a href="${ctx}/viewshopdetail?id=${tScShop.id}" class="btn btn-primary" role="button" style="float: right;">详情</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 鞋子展示区域 -->
	<div class="bs-example">
		<h3 class="text-center">
			<small><a href="${ctx}/teamList?pageSize=8" class="pull-right">更多>></a></small> 鞋子
		</h3>
		<div class="row">
			<c:forEach items="${tScShop_type2}" var="tScShop">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="${ctxStaticFront}/themes/sc/1.jpg" alt="Generic placeholder thumbnail">
						<div class="caption">
							<h3>${tScShop.shopName}</h3>
							<p>${tScShop.shopName}</p>
							<p style="height: 34px;">
								<a href="${ctx}/viewTeam?Teamid=${tScTeamList.id}" class="btn btn-primary" role="button" style="float: right;">详情</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 首饰展示区域 -->
	<div class="bs-example">
		<h3 class="text-center">
			<small><a href="${ctx}/teamList?pageSize=8" class="pull-right">更多>></a></small> 首饰
		</h3>
		<div class="row">
			<c:forEach items="${tScShop_type3}" var="tScShop">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="${ctxStaticFront}/themes/sc/1.jpg" alt="Generic placeholder thumbnail">
						<div class="caption">
							<h3>${tScShop.shopName}</h3>
							<p>${tScShop.shopName}</p>
							<p style="height: 34px;">
								<a href="${ctx}/viewShop?shopid=${tScTeamList.id}" class="btn btn-primary" role="button" style="float: right;">详情</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	


</body>
</html>