<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>EIC&nbsp;芝麻开发全人格教育基金</title>
<link rel="icon" href="${ctx}/images/favicon.ico" type="image/x-icon" /> 
<link rel="shortcut icon" href="/test.ico" type="image/x-icon" />
<base href="${ctx}">
<meta name="decorator" content="default" />
<link rel="stylesheet" type="text/css"href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${ctxCss}/welcome.css">


<script type="text/javascript"src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
<script type="text/javascript"src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div style="margin:40px auto; width:300px; background-color：grey">
		<form style="width: 200px;" action="${ctx}/admin/checkLogin" method="post">
		  <fieldset>
		    <legend>管理员登陆</legend>
		    <label>用户名：</label>
		    <input name="username" type="text" placeholder="请输入用户名">
		   	<label>密码：</label>
		    <input name="psw" type="password" placeholder="请输入密码">
		    <button type="submit" class="btn">Submit</button>
		  </fieldset>
		</form>
		<div>${msg}</div>		
	</div>
</body>
</html>
