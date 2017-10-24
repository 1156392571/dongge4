<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品规格表管理</title>
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
		<li class="active"><a href="${ctx}/sc/tScShopSize/">商品规格表列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="tScShopSize" action="${ctx}/sc/tScShopSize/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>商品名称：</label>
				<form:select path="scShopid" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${list}" itemLabel="shopName" itemValue="id" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>商品规格：</label>
				<form:select path="scShopsize" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('scShopsize')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>商品库存：</label>
				<form:input path="scShopcount" htmlEscape="false" maxlength="255" class="input-medium "/>
			</li>
			<li><label>商品价格：</label>
				<form:input path="scShopprice" htmlEscape="false" maxlength="255" class="input-medium"/>
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
				<th>商品规格</th>
				<th>商品库存</th>
				<th>商品颜色</th>
				<th>商品价格</th>
				<shiro:hasPermission name="sc:tScShopSize:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tScShopSize">
			<tr>
				<td>
					${tScShopSize.scReserve4}
				</td>
				<td>
					${fns:getDictLabel(tScShopSize.scShopsize, 'scShopsize', '')}
				</td>
				<td>
					${tScShopSize.scShopcount}
				</td>
				<td>
					${fns:getDictLabel(tScShopSize.scShopcolor, 'scShopcolor', '')}
				</td>
				<td>
					${tScShopSize.scShopprice}
				</td>
				<shiro:hasPermission name="sc:tScShopSize:edit"><td>
    				<a class="sel_btn ch_blue" href="${ctx}/sc/tScShopSize/form?id=${tScShopSize.id}">修改</a>
					<a class="sel_btn ch_red" href="${ctx}/sc/tScShopSize/delete?id=${tScShopSize.id}" onclick="return confirmx('确认要删除该商品规格表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>