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
    <title>会员活动</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">

    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>

    <script>
      var ctx = "${ctx}";
      var type = ${type};//类型
      
      var count = ${pageResult.count};
      var pageNo = ${pageResult.pageNo};
      var pageSize = ${pageResult.pageSize};
      
      var pageNumber =  ${pageNumber};
      
      $(document).ready(function(){
        init();
      	$("#minusPage").click(function(e){
			changeUrl(pageNo-1);
      	});
      	
      	$("#addPage").click(function(){
			changeUrl(pageNo+1);
      	});
      	
       	$("#pageNo").change(function(){
          var toPageNo = $("#pageNo").val();
      		if(checkPageNo(toPageNo)){
              changeUrl(toPageNo);
          }
      	});     	
    	
      });
      
      function changeUrl(toPageNum){
      	    var href = ctx;
      		if(type == 1){
      			href += "/content/memberAcitivty/foreshowList?pageNo=" + toPageNum;
      		}
      		if(type == 2){
      			href += "/content/memberAcitivty/reviewList?pageNo=" + toPageNum;
      		}
      		window.location.href = href;
      }
      
      function init(){//初识化
        $($("#navMaodian").find("li")[type]).addClass("active");//左侧导航栏active选择
        initPaganationBar();
      }
      function initPaganationBar(){
      	if(pageNo <= 1) {
      		$("#minusPage").hide();
      	}
      	if(pageNo >= pageNumber){
      		$("#addPage").hide();
      	}   	
      }

      function checkPageNo(toPageNo){
        var msg = "";
        if(toPageNo < 1) {
          msg = "分页数不能小于0";
          alert(msg);
          return false;
        }
        if(toPageNo > pageNumber){
          msg = "超过分页数";
          alert(msg);
          return false;
        } 
        return true;
      }

    </script>
    <style type="text/css">
    	.paganationLabel{
    		width:15px; 
    		height: 15px; 
    		text-align: center;
    	}
    	#pageNo{
    		width:30px;
    		height: 20px;
    		text-align: center;
    	}
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
          </ul>
        </div>
        <div class="span9" style="boder: 1px solid grey">
		 	<table class="table table-striped table-condensed">
              <thead>
                <tr>
                  <%-- <th colspan="1"><span>${thead}</sapn><span>${dateStr}</span><span>${weekStr}</span></th> --%>
                  <th colspan="1">
					 <h3>${thead}<small>${dateStr}</small><em>${weekStr}</em></h3>               
                  </th>
                </tr>
              </thead>
              <tbody>
	          <c:forEach var="each" items="${pageResult.voList}">
		          <tr>
	                 <td colspan="3"><a href="${ctx}/content/post/detail?id=${each.id}" target="_Blank"><p>${each.id}${each.title}&nbsp;&nbsp;${each.createDate}</p></a> </td>
	                 <td colspan="1" style="line-height: 50px">
		                 <span><a href="${ctx}/admin/post/edit?id=${each.id}">编辑</a></span>&nbsp;&nbsp;
		                 <span><a href="${ctx}/content/post/delete?id=${each.id}" onClick="return confirm('确定删除?');">删除</a></span>
		             </td>
	              </tr>		            
	          </c:forEach>
              </tbody>
            </table>
            
			<h4 class="text-right">
				<ul class="pager">
 					 <li  id="minusPage" class="previous" >
   						<a  href="#">&larr; 上一页</a>
 					 </li>
 					 
 					 <li class="next" id="addPage" >
   						<a  href="#">下一页 &rarr;</a>
 					 </li>
					<span>第</span>
					<span><input id="pageNo" value="${pageResult.pageNo}"></span>
					<span>页</span>&nbsp;&nbsp;
					<span>总共<em><span class="badge">${pageNumber}</span></em>页</span>
					
				</ul>
			</h4>					
      	</div>
    </div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
  </body>
</html>

