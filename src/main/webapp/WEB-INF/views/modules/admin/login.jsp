<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>EIC&nbsp;后台登陆</title>
<link rel="icon" href="${ctx}/images/favicon.ico" type="image/x-icon" /> 
<link rel="shortcut icon" href="/test.ico" type="image/x-icon" />
<base href="${ctx}">
<meta name="decorator" content="default" />
<link rel="stylesheet" type="text/css"href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${ctxCss}/navigate.css">
<link rel="stylesheet" type="text/css"href="${ctxCss}/welcome.css">


<script type="text/javascript"src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
<script type="text/javascript"src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="carousel-inner">
    	<img  src="${ctx}/images/backgroundImg2.jpg" >
		<div class="load" align="center">
			<form style="width: 230px; border-width: 2px; border-color: #000;" action="${ctx}/admin/checkLogin" method="post">
			  <fieldset >
			    <legend class="pull-left">管理员登陆</legend>
			    <label class="pull-left">用户名：</label>
			    <input name="username" type="text" placeholder="请输入用户名"> 
			   	<label class="pull-left">密码：</label>
			    <input name="psw" type="password" placeholder="请输入密码">
			    <button type="submit" class="btn">Submit</button>
			  </fieldset>
			</form>
			<div>${msg}</div>		
		</div>
	</div>	
</body>
</html>
