<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${category.description}" />
<meta name="keywords" content="${category.keywords}" />
<script src="${ctxStaticFront}/themes/sc/bootstrap.min.js" type="text/javascript"></script>
<style type="text/css">
.container-fluid {
	border: 1px solid #f5f5f5;
}

.row-fluid {
	height: 50px;
}

.sel_btn {
	color: #fff;
	height: 21px;
	line-height: 21px;
	padding: 0 11px;
	background: #fff;
	border-radius: 3px;
	display: inline-block;
	text-decoration: none;
}

.input-min {
	width: 50px;
	line-height: 40px;
	margin-bottom: 0;
}

.jjh {
	height: 30px;
	font-weight: bold;
	line-height: 30px;
	padding: 0 11px;
	background: #f5f5f5;
	display: inline-block;
	text-decoration: none;
}

a:link {
	text-decoration: none !important;
}

a:visited {
	text-decoration: none !important;
}

a:hover {
	text-decoration: none !important;
}

a:active {
	text-decoration: none !important;
}

.bugshop {
	height: 38px;
	width: 140px;
	text-align: center;
	font-size: 16px;
	line-height: 38px;
}
</style>
</head>
<body>
	<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span6">
							<div class="row-fluid">
								<div class="span12">
									<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_8.jpg" alt="" style="height: 100%;width: 100%">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<span>
										<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_8.jpg" alt="" style="height: 60px;width: 60px;margin-right: 10px;">
									</span>
									<span>
										<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_8.jpg" alt="" style="height: 60px;width: 60px;margin-right: 10px;">
									</span>
									<span>
										<img src="${pageContext.request.contextPath}/static/modules/cms/front/themes/sc/friut_8.jpg" alt="" style="height: 60px;width: 60px;margin-right: 10px;">
									</span>
								</div>
							</div>
						</div>
						<div class="span6">
							<div class="row-fluid">
								<div class="span12">
									<h5>${tScShop.shopName}</h5>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<font>${tScShop.shopDescribe}</font>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									价格：<font>￥299</font>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<a class="jjh">-</a><input class="input-min" type="text" style="border-radius: 0px;margin-bottom: 0;"/><a class="jjh">+</a>
									库存量：1000件
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<div style="float: left">
										<a href="javascript:bugnow()" class="sel_btn bugshop" style="background-color: #F0CAB6;margin-right: 10px;color:#E5511D;">立即购买</a>
									</div>
									<div style="float: left">
										<a href="javascript:bugcar()" class="sel_btn bugshop" style="background-color: #E5511D">加入购物车</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 
			<div class="row-fluid">
				<div class="span12">
					sadsadadad
				</div>
			</div>
			 -->
	</div>


</body>
<script type="text/javascript">
	function bugnow(){
		
		
	}


</script>
</html>