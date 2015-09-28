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

  <title>人才导师</title>



  <link href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="${ctxCss}/navigate.css" rel="stylesheet">


  <script src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
  <script src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>

  <script>
    $(document).ready(function(){
      $("#navMaodian").find("li").click(function(){
        var a = 1;
        var arr = [];
        var arr = {};
        $("#navMaodian").find("li").removeClass("active");
        $(this).addClass("active");
      });

    });

  </script>
</head>

<body data-spy="scroll" data-target=".jianting">
	<%@ include file="/WEB-INF/views/include/navigatorList.jsp"%>

<div class="container-fluid jianting">
  <div class="row-fluid">
    <div class="span3">
      <ul class="nav nav-list bs-docs-sidenav affix" id="navMaodian">
        <li class=""><a href="#">人才导师</a></li>
        <li class="active">
          <a href="${ctx}/static/mentor/init#teacher">
            <i class="icon-chevron-right"></i>
           			 导师介绍
          </a>
        </li>
        <li class=""><a href="#fangtan"> <i class="icon-chevron-right"></i>访谈</a></li>
      </ul>
    </div>
     <div class="span9">
          <section>
            <div class="page-header">
              <h1>导师介绍</h1>
            </div >
            <div class="row" >
              <div class="span3"  align="center">
                <img src="${ctx}/images/teacher/chenyougang.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>陈有刚</span>
              </div>
              <div class="span9 text" >
                <p>麦肯锡大中华区零售咨询业务领导人，高级合伙人</p>
                <p>麦肯锡全球研究院大中华区负责人</p>
                <p>在零售与消费品行业具备20年以上的工作经验</p>
                <p>为中国及全球领先的零售、消费品及服务型公司就战略及运营管理方面提供咨询建议</p>
                <p>于1992年加入宝洁中国，任职于品牌营销部</p>
                <p>获得北京大学经济学学士学位及欧洲工商管理学院</p>
                <p>（INSEAD）MBA学位</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

