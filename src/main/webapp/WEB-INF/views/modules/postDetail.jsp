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
    <title>芝麻推荐</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">
	<link href="${ctxCss}/postDetail.css" rel="stylesheet">
	
    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>

  </head>

  <body>
    <div class="mainBody">
   <div id="infocenter_middle">  	
		 <div class="page-header-post"> 
			 <div>
			  <strong>
		            <span>
		               <span class="blog_tit_detail" tabindex="1">                 
		                       ${post.title}
		               </span>
		             </span>
		         </strong>
		     </div>
		     <div  class="blog_tit_con pull-right pull-bottom" style="display: block;">
			    			  <span id="pubTime" >发布时间：${post.createDate.toString().split(" ")[0]}</span>
			                  <span id="readNum" >阅读(${post.visitedTimes})</span>
		     </div>
		</div>
		<div class="blog_cont">${post.content}</div>
    </div>	
	   
    </div>  
    <%@ include file="/WEB-INF/views/include/footer.jsp"%>
  </body>
</html>

