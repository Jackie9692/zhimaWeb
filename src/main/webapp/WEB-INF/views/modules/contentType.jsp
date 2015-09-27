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
	<c:forEach items="${list}" var="item">
		<div>${item.id}</div>
	</c:forEach>
</body>
</html>
