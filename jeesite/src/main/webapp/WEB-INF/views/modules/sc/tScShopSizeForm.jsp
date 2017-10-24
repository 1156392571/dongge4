<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品规格表管理</title>
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
		input:read-only{
			background-color: #fff;
		}
		#s2id_scShopsize{
			width: 284px;
		}
		#s2id_scShopcolor{
			width: 284px;
		}
	</style>
	
	<link href="${ctxStatic}/modules/cms/front/themes/sc/upload/css/webuploader.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStatic}/modules/cms/front/themes/sc/upload/css/style.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStatic}/modules/cms/front/themes/sc/upload/js/webuploader.js" type="text/javascript"></script>
	<script src="${ctxStatic}/modules/cms/front/themes/sc/upload/js/shopupload.js" type="text/javascript"></script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/sc/tScShopSize/">商品规格表列表</a></li>
		<li class="active"><a href="${ctx}/sc/tScShopSize/form?id=${tScShopSize.id}">商品规格表<shiro:hasPermission name="sc:tScShopSize:edit">${not empty tScShopSize.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="sc:tScShopSize:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="tScShopSize" action="${ctx}/sc/tScShopSize/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="scShopid"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">商品名称：</label>
			<div class="controls">
				<form:input path="scReserve4" htmlEscape="false" maxlength="45" class="input-xlarge required" readonly="true"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品的规格：</label>
			<div class="controls">
				<form:select path="scShopsize" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('scShopsize')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">此规格下库存量：</label>
			<div class="controls">
				<form:input path="scShopcount" htmlEscape="false" maxlength="45" class="input-xlarge digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品颜色类型：</label>
			<div class="controls">
				<form:select path="scShopcolor" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('scShopcolor')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品价格：</label>
			<div class="controls">
				<form:input path="scShopprice" htmlEscape="false" maxlength="45" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<!-- ====================================================================================================== -->	
		<form:hidden path="scReserve1"/>
		<form:hidden path="scPhotourl1"/>
		<!-- 这里是图片1上传的地方
			<div class="control-group">
				<label class="control-label">商品图片1路径：</label>
				<div class="controls">
					<form:input path="scPhotourl1" htmlEscape="false" maxlength="255" class="input-xlarge" readonly="true"/>
				</div>
			</div>
		 -->
		<div class="control-group">
			<label class="control-label">图片1：</label>
				<div class="controls">
					<div class="width_auto" style="width: 580px;">
					    <div class="upload_container" >
					        <!--头部，相册选择和格式选择-->
					        <div id="uploader" >
					            <div class="item_container">
					                <div id="" class="queueList" >
					                    <div id="dndArea" class="placeholder">
					                        <div id="filePicker"></div>
					                    </div>
					                </div>
					            </div>
					            <div class="statusBar">
					                <div class="info"></div>
					                <div class="btns">
					                    <div id="filePicker2_0" class="filePicker2 element-invisible"></div><div class="uploadBtn">开始上传</div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
		</div>
		<!-- ====================================================================================================== -->	
		<form:hidden path="scReserve2"/>
		<form:hidden path="scPhotourl2"/>
		<!-- 这里是图片2上传的地方
		<div class="control-group">
			<label class="control-label">商品图片2路径：</label>
			<div class="controls">
				<form:input path="scPhotourl2" htmlEscape="false" maxlength="255" class="input-xlarge" readonly="true"/>
			</div>
		</div>
		 -->
		<div class="control-group">
			<label class="control-label">图片2：</label>
				<div class="controls">
					<div class="width_auto" style="width: 580px;">
					    <div class="upload_container" >
					        <!--头部，相册选择和格式选择-->
					        <div id="uploader" >
					            <div class="item_container">
					                <div id="" class="queueList" >
					                    <div id="dndArea" class="placeholder">
					                        <div id="filePicker"></div>
					                    </div>
					                </div>
					            </div>
					            <div class="statusBar">
					                <div class="info"></div>
					                <div class="btns">
					                    <div id="filePicker2_1" class="filePicker2 element-invisible"></div><div class="uploadBtn">开始上传</div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
		</div>
		
		<!-- ====================================================================================================== -->	
		<form:hidden path="scReserve3"/>
		<form:hidden path="scPhotourl3"/>
		<!-- 这里是图片3上传的地方 
		<div class="control-group">
			<label class="control-label">商品图片3路径：</label>
			<div class="controls">
				<form:input path="scPhotourl3" htmlEscape="false" maxlength="255" class="input-xlarge" readonly="true"/>
			</div>
		</div>
		-->
		<div class="control-group">
			<label class="control-label">图片3：</label>
				<div class="controls">
					<div class="width_auto" style="width: 580px;">
					    <div class="upload_container" >
					        <!--头部，相册选择和格式选择-->
					        <div id="uploader" >
					            <div class="item_container">
					                <div id="" class="queueList" >
					                    <div id="dndArea" class="placeholder">
					                        <div id="filePicker"></div>
					                    </div>
					                </div>
					            </div>
					            <div class="statusBar">
					                <div class="info"></div>
					                <div class="btns">
					                    <div id="filePicker2_2" class="filePicker2 element-invisible"></div><div class="uploadBtn">开始上传</div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="scRemarks" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="sc:tScShopSize:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
<!-- 			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp; -->
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>