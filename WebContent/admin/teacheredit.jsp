<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>教师信息编辑</title>
	<%
    	String path = request.getContextPath();
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    %>
	<c:set var="path" value="<%=basePath %>"></c:set>
 	<link href="${path }/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
 	<link rel="stylesheet" type="text/css" href="${path }/js/zeroModal/zeroModal.css" />
 	<link href="${path }/js/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
 	<link rel="stylesheet" type="text/css" href="${path }/js/zeroModal/zeroModal.css" />
 	<style type="text/css">
 		.dropdown-toggle {
 			height: 30px;
 		}
 	</style>
</head>
<body>
	<div>
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<form class="form-horizontal" role="form" id="teacherAction" action="teacher" method="post">
						<c:if test="${teacher.teacherId != null }">
							<div class="form-group">
								 <label for="teacherId" class="col-sm-2 control-label">教师编号</label>
								 <div class="col-sm-3">
								 	<input class="form-control" id="teacherId" name="teacherId" type="text" value="${teacher.teacherId }" readonly="readonly" unselectable='on' onfocus='this.blur()' />
								 </div>
								 	<input type="hidden" value="1" name="isupdate" id="isupdate" class="form-control" />
							</div>
						</c:if>
						<div class="form-group">
							 <label for="adminPower" class="col-sm-2 control-label">后台权限</label>
							<div class="col-sm-5">
								<select class="selectpicker" name="adminPower" id="adminPower" data-live-search="true">
										<c:if test="${teacher == null }">
											<option value="0" style="display: none;">普通教职工</option>
										</c:if>
										<c:if test="${teacher.adminPower == 0 }">
											<option value="0" style="display: none;">普通教职工</option>
										</c:if>
										<c:if test="${teacher.adminPower == 1 }">
											<option value="1" style="display: none;">管理员</option>
										</c:if>
									<option value="1">管理员</option>
									<option value="0">普通教职工</option>	
								</select>
							</div>
						</div>
						<div class="form-group">
							 <label for="teacherName" class="col-sm-2 control-label">教师姓名</label>
							<div class="col-sm-5">
								<input class="form-control" id="teacherName" name="teacherName" type="text" value="${teacher.teacherName }" placeholder="教师姓名" />
							</div>
						</div>
						<div class="form-group">
							 <label for="teacherAccount" class="col-sm-2 control-label">后台登录账户</label>
							<div class="col-sm-5">
								<input class="form-control" id="teacherAccount" name="teacherAccount" type="text" value="${teacher.teacherAccount }" placeholder="后台登录账户" />
							</div>
						</div>
						<div class="form-group">
							 <label for="teacherPwd" class="col-sm-2 control-label">后台登录密码</label>
							<div class="col-sm-5">
								<input class="form-control" id="teacherPwd" name="teacherPwd" type="password" value="${teacher.teacherPwd }" placeholder="后台登录密码" />
							</div>
						</div>
						<br />
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-4">
								 <button id="sub" uUrl="teacher" aUrl="../teacher/teacher" type="button" class="btn btn-default btn-lg btn-block">
							 		提交
								 </button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- js引入 -->
    <script src="${path }/js/jquery.js"></script>
    <script src="${path }/js/bootstrap/bootstrap.min.js"></script>
    <script src="${path }/js/zeroModal/zeroModal.min.js"></script>
    <script src="${path }/js/add-update.js"></script>
    <script src="${path }/js/bootstrap-select/bootstrap-select.min.js"></script>
    <script type="text/javascript">
    	$('.selectpicker').selectpicker({
    	    style: 'btn-default',
    	    size: 8
    	});
    </script>
</body>
</html>