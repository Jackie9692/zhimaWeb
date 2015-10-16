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
    <title>阅读详情</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxCss}/navigate.css" rel="stylesheet">
	<link href="${ctxCss}/postDetail.css" rel="stylesheet">
	
    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	var ctx = "${ctx}";
    	var postId = "${post.id}";
    	$(document).ready(function(){
    		$("#enrolCommitBtn").click(function(){
    			var username = $("#username").val();
    			var phoneNum = $("#phoneNum").val();
    			var enrollNum = $("#enrollNum").val();
    			var description = $("#description").val();

				if(username == ""){
					alert("用户名不能为空！");
					return -1;
				}
				
				var re = /^1\d{10}$/;
				if(!re.test(phoneNum)){
					alert("手机号非法！");
					return -1;					
				}
				if(enrollNum < 1){
					alert("参与人数不少于1人！");
					return -1;
				}
				
				$.ajax({
			    	url: ctx + "/content/memberAcitivty/enroll/save",
			    	data: {username:username, phoneNum:phoneNum, description:description, postId:postId,enrollNum:enrollNum},
			    	async : false,
			        type:"post",
			        dataType:"json",
			        success:function(data){
						if(data.avaliable != true){
							alert("活动手机号已注册！");
							$("#myModal").modal("hide");
							return -1;
						}
						if(data.success == true){
							alert("保存成功！");
							$("#myModal").modal("hide");
							return ;
						}
			     	},
			        error: function(){
			        	console.log("request fail");
			        }
				});
    		});
    		
    			
    	});
    	
    	
    </script> 
  </head>

  <body>
    <div class="mainBody">
   <div id="infocenter_middle">  	
		 <div class="page-header-post" style="background:#90b83d ;"> 
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
		<div class="blog_cont" style="background-color:rgba(144, 184, 61, 0.2);">${post.content}</div>
		<c:if test="${post.cateId == 1}">
			<!-- Button to trigger modal -->
			<a href="#myModal" role="button" class="btn btn-primary" data-toggle="modal" style="background:#90b83d ;float:right; margin-right:40px">我要报名</a>
			 
			<!-- Modal -->
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h3 id="myModalLabel">完善报名信息</h3>
			  </div>
			  <div class="modal-body">
				<form class="form-horizontal">
				  <div class="control-group">
				    <label class="control-label">姓名：</label>
				    <div class="controls">
				      <input type="text" id="username" value="">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label">参与人数：</label>
				    <div class="controls">
				      <input type="number" id="enrollNum" value="">
				    </div>
				  </div>			
				  <div class="control-group">
				    <label class="control-label">手机号码：</label>
				    <div class="controls">
				      <input type="text" id="phoneNum" value="${typeString}" placeholder="非常重要">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label">备注：</label>
				    <div class="controls">
				      <textarea  rows="3" class="" type="text" id="description" placeholder="不多于80个字" value=""></textarea>
				    </div>
				  </div>
				</form>			    
			  </div>
			  <div class="modal-footer">
			  	<button class="btn btn-primary" id="enrolCommitBtn">提交</button>
			    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
			  </div>
			</div>
		</c:if>
    </div>	
	   
    </div>  
    <%@ include file="/WEB-INF/views/include/footer.jsp"%>
  </body>
</html>

