<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${ctx}/images/logo.png">

    <title>关于我们</title>

	  

    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">
 	<link href="${ctxCss}/loading.css" rel="stylesheet">

    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
	

  </head>

  <body>
   <div class="carousel-inner">
    	<img  src="${ctx}/images/backgroundImg1.jpg" >
    	
    	<div class="progress progress-striped active load" >
 		 <div class="bar transparent_class" style="width: 50%;"><div><h5 class="loadSize">建设中</h5></div></div>
 		 
		</div>
    	<%-- 	<img class="" src="${ctx}/images/load.bmp" >--%>
    	
    </div>

	 
  </body>
</html>

