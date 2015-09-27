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
          <a href="#teacher">
            <i class="icon-chevron-right"></i>
           			 导师介绍
          </a>
        </li>
        <li class=""><a href="#fangtan"> <i class="icon-chevron-right"></i>访谈</a></li>
      </ul>
    </div>
    <div class="span9">
      <section id="teacher">
        <div class="page-header">
          <h1>导师介绍</h1>
        </div >
        <div class="row" align="center">
          <ul class="thumbnails" >
            <li class="span3" >
              <a href="${ctx}/mentor/details/wangyi.html?id=1" class="thumbnail">
                <img src="${ctx}/images/teacher/wangyi.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/mentor/details/wangyi.html">王颐</a>
            </li>
            <li class="span3" >
              <a href="chenjianzhu.html" class="thumbnail">
                <img src="${ctx}/images/teacher/chenjianzhu.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="chenjianzhu.html">陈建柱</a>
            </li>
            <li class="span3" >
              <a href="chenguangxian.html" class="thumbnail">
                <img src="${ctx}/images/teacher/chenguangxian.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="chenguangxian.html">陈光宪</a>
            </li>
            <li class="span3" >
              <a href="shaoliming.html" class="thumbnail">
                <img src="${ctx}/images/teacher/shaoliming.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="shaoliming.html">邵黎明</a>
            </li>
          </ul>
          <ul class="thumbnails" >
            <li class="span3" >
              <a href="renhuichuan.html" class="thumbnail">
                <img src="${ctx}/images/teacher/renhuichuan.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="renhuichuan.html">任汇川</a>
            </li>
            <li class="span3" >
              <a href="liubaodong.html" class="thumbnail">
                <img src="${ctx}/images/teacher/liubaodong.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="liubaodong.html">刘宝东</a>
            </li>
            <li class="span3" >
              <a href="chenyougang.html" class="thumbnail">
                <img src="${ctx}/images/teacher/chenyougang.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="chenyougang.html">陈有刚</a>
            </li>
            <li class="span3" >
              <a href="wangqing.html" class="thumbnail">
                <img src="${ctx}/images/teacher/wangqing.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="wagnqing.html">汪青</a>
            </li>
          </ul>
          <ul class="thumbnails" >
            <li class="span3" >
              <a href="wuzhengang.html" class="thumbnail">
                <img src="${ctx}/images/teacher/wuzhengang.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="wuzhengang.html">吴振刚</a>
            </li>
            <li class="span3" >
              <a href="shenliping.html" class="thumbnail">
                <img src="${ctx}/images/teacher/shenliping.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="shenliping.html">沈丽萍</a>
            </li>
            <li class="span3" >
              <a href="wangbaofeng.html" class="thumbnail">
                <img src="${ctx}/images/teacher/wangbaofeng.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="wangbaofeng.html">王宝峰</a>
            </li>
            <li class="span3" >
              <a href="huotao.html" class="thumbnail">
                <img src="${ctx}/images/teacher/huotao.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="huotao.html">瞿涛</a>
            </li>
          </ul>
        </div>



      </section>
		

          <section id="fangtan">
            <div class="page-header">
              <h1>访谈</h1>
            </div >
            <div class="row" align="center">
              <img src="${ctx}/images/zuzhijiegouone.png"  >

            </div>
          </section>
    </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

