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
    <title>会员活动报名情况</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">

    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <style type="text/css">

    </style>
  </head>

  <body>
  	<%@ include file="/WEB-INF/views/include/adminNavigator.jsp"%>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <ul class="nav nav-list bs-docs-sidenav affix" id="navMaodian">
            <li class=""><a href="">会员活动</a></li>
            <li class="">
              <a href="${ctx}/admin/memberAcitivty/foreshowList"><i class="icon-chevron-right"></i>活动预告及报名</a>
            </li>
            <li class=""><a href="${ctx}/admin/memberAcitivty/reviewList"> <i class="icon-chevron-right"></i>往期回顾</a></li>
            <li class=""><a href="${ctx}/admin/post/add" target="_blank"> <i class="icon-chevron-right"></i>我要发布</a></li>
          </ul>
        </div>
        <div class="span9" style="boder: 1px solid grey">
		 	<table class="table table-striped table-condensed">
              <thead>
                <tr>
                  <th colspan="1">
					 <h3>${contentPost.title}</h3>               
                  </th>
                </tr>
              </thead>
              <tbody>
              <tr>
                 <td>编号</td>
                 <td>手机号</td>
                 <td>姓名</td>
                 <td>人数</td>
                 <td>报名时间</td>
                 <td>备注</td>
	          </tr>
	          <c:forEach var="each" items="${enrollList}" varStatus="status">
		          <tr>
	                 <td>${status.index + 1}</td>
	                 <td>${each.phoneNumber}</td>
	                 <td>${each.userName}</td>
	                 <td>${each.numbers}</td>
	                 <td>${each.signDate}</td>
	                 <td><textarea rows="2" cols="28">${each.description}</textarea></td>
	              </tr>		            
	          </c:forEach>
              </tbody>
            </table>
            					
      	</div>
    </div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
  </body>
</html>

