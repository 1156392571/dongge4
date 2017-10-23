<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/sc/tScShop/">商品表列表</a></li>
		<shiro:hasPermission name="sc:tScShop:edit"><li><a href="${ctx}/sc/tScShop/form">商品表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="tScShop" action="${ctx}/sc/tScShop/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>商品名称：</label>
				<form:input path="shopName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>商品种类：</label>
				<form:select path="shopType" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shopType')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>商品名称</th>
				<th>商品描述</th>
				<th>商品类型</th>
				<th>上架时间</th>
				<th>商品备注</th>
				<shiro:hasPermission name="sc:tScShop:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tScShop">
			<tr>
				<td>
					${tScShop.shopName}
				</td>
				<td>
					${tScShop.shopDescribe}
				</td>
				<td>
					${fns:getDictLabel(tScShop.shopType, 'shopType', '')}
				</td>
				<td>
					<fmt:formatDate value="${tScShop.shopCreatedate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${tScShop.shopRemarks}
				</td>
				<shiro:hasPermission name="sc:tScShop:edit">
				<td>
    				<a class="sel_btn ch_blue" href="${ctx}/sc/tScShop/form?id=${tScShop.id}">修改</a>
					<a class="sel_btn ch_red" href="${ctx}/sc/tScShop/delete?id=${tScShop.id}" onclick="return confirmx('确认要删除该商品表吗？', this.href)">删除</a>
					<a class="sel_btn ch_green" href="${ctx}/sc/tScShop/addshopsize?scShopid=${tScShop.id}">添加产品规格</a>
				</td>
				</shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination" align="center">${page}</div>
</body>
</html>