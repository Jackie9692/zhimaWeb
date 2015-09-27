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
    <link rel="icon" href="${ctx}/images/pic16x16dpi.png">
    <title>芝麻推荐</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">

    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>

    <script>
      
    </script>
    <style type="text/css">
		body {
		    margin: 0;
		    padding: 0;
		    font-family: Verdana;
		    background-color: #f9f9f1;
		}
		.mainBody{
			width: 928px;
			margin: 0 auto;
		}
		#infocenter_middle {
			width: 100%;
		    height: 1000px;
		    padding: 0 20px;
		    over-flow: hide;
		    background-color: white;
		    background: url(${ctx}/images/infocenter_bg.png) repeat-y center;
		    overflow: hidden;
		}
		.bottom_border_middle {
		    width: 928px;
		    height: 40px;
		    margin: 0 auto;
		    float: left;
		    padding-top: 10px;
		    color: #747567;
		    background: url(${ctx}/images/bottom_border.png) top repeat-x;
		}
		#bottom {
			padding: 0 20px;
		    width: 100%;
		    height: 40px;
		    margin: 0 auto;
		}
					
    </style>
  </head>

  <body>
    <div class="mainBody">
      <div id="infocenter_middle">
      	<h3><small>${thead}>>>发布时间：${post.createDate}>>>阅读次数:<em>${post.visitedTimes}</em></small></h3>
		<div class="page-header">
		  <h3>${post.title}</small></h3>
		</div>
		<div>${post.content}</div>
    </div>
	<div id="bottom">
	    <div class="bottom_border_middle">
	        <div class="text-right">Copyright© 2015 芝麻开花全人格教育基金会有限公司</div>
	    </div>
	</div>      
    </div>
    
    
  </body>
</html>

