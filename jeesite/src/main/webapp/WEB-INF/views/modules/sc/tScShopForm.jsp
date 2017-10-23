<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
	<style type="text/css">
		.input-medium{
			width: 270px;
		}
		#s2id_shopType{
			width: 284px;
		}
	</style>
	
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/sc/tScShop/">商品表列表</a></li>
		<li class="active"><a href="${ctx}/sc/tScShop/form?id=${tScShop.id}">商品表<shiro:hasPermission name="sc:tScShop:edit">${not empty tScShop.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="sc:tScShop:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="tScShop" action="${ctx}/sc/tScShop/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">商品名称：</label>
			<div class="controls">
				<form:input path="shopName" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品种类：</label>
			<div class="controls">
				<form:select path="shopType" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shopType')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<!-- 
		<div class="control-group">
			<label class="control-label">商品价格：</label>
			<div class="controls">
				<form:input path="shopPrice" htmlEscape="false" class="input-xlarge"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品库存：</label>
			<div class="controls">
				<form:input path="shopCount" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		 -->
		<div class="control-group">
			<label class="control-label">商品描述：</label>
			<div class="controls">
				<form:input path="shopDescribe" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品上架时间：</label>
			<div class="controls">
				<input name="shopCreatedate" type="text"  maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${tScShop.shopCreatedate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品备注：</label>
			<div class="controls">
				<form:textarea path="shopRemarks" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="sc:tScShop:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>