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
    <title>发布编辑(new)</title>
    <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    
    <!-- 配置文件 -->
    <script type="text/javascript" src="${ctx}/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${ctx}/ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
	<style type="text/css">
		body{
			background-color: grey;
		}
		#edui1{
			margin: 0 auto;
		}
		
		#mainBody{
			width: 948px;
			margin: 0 auto;
			padding: 30px 10px 50px;
			background-color: white;
		}
		.btnGroups{
			position: relative;
			float: right;
		}
		.btnGroupsDiv{
			position: relative;
			right: 30px;
		}
    </style>
    <script type="text/javascript">
    	var ctx = "${ctx}";
    	var ue = {};
    	$(document).ready(function(){
    		ue = UE.getEditor('container');
    		
    		// 编辑项目事件注册
    		$("#editSaveBtn").click(function(){
    			var msgType = $("#msgType").val();
    			var title = $("#msgTitle").val();
    			var content = ue.getContent();

				if(title == ""){
					alert("标题不能为空！");
					return -1;
				}
				if(content == ""){
					alert("内容不能为空！");
					return -1;					
				}
				
				$.ajax({
			    	url: ctx + "/admin/post/addSave",
			    	data: {title:title, content:content, msgType:msgType},
			    	async : false,
			        type:"post",
			        dataType:"json",
			        success:function(data){
			        	if(data.loginStatus == false){
			        		window.location.href = ctx + "/admin/login";
			        	}
						if(data.success == true){
							alert("保存成功！");
						}
			     	},
			        error: function(){
			        	console.log("request fail");
			        }
				});
    		});
    		
    		$("#editCancleBtn").click(function(){
    			var id = $("#msgId").val();
    			window.location.href = ctx + "/admin/post/add";
    		});
    			
    	});
    	
    	
    </script>    
	</head>
	
	<body>
		<div id="mainBody" >
			<form class="form-horizontal">
			  <div class="control-group hide">
			    <label class="control-label">消息编号：</label>
			    <div class="controls">
			      <input type="text" id="msgId" value="">
			    </div>
			  </div>			
			  <div class="control-group">
			    <label class="control-label">发布类型：</label>
			    <div class="controls">
					<select id="msgType">
					  <option value="1">活动预告及报名</option>
					  <option value="2">往期回顾</option>
					  <option value="3">好文分享</option>
					  <option value="4">书籍推荐</option>
					</select>			      
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label">标题：</label>
			    <div class="controls">
			      <input class="input-xxlarge" type="text" id="msgTitle" placeholder="请输入标题" value="">
			    </div>
			  </div>
			</form>
		    <script id="container" name="content" type="text/plain">
				
			</script>
			<div class="btnGroupsDiv">
			    <div class="btnGroups">
			      	<a id="editSaveBtn" class="btn btn-primary">确 认</a>
			      	<a id="editCancleBtn" class="btn btn-default" href="">取消</a>
			    </div>
			</div>
		</div>
	</body>
</html>

