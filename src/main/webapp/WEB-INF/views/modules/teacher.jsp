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
       <!-- <li class=""><a href="#fangtan"> <i class="icon-chevron-right"></i>访谈</a></li> --> 
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
              <a href="${ctx}/static/mentor/detail?name=wangyi" class="thumbnail">
                <img src="${ctx}/images/teacher/wangyi.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=wangyi">王颐</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=chenjianzhu" class="thumbnail">
                <img src="${ctx}/images/teacher/chenjianzhu.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=chenjianzhu">陈建柱</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=chenguangxian" class="thumbnail">
                <img src="${ctx}/images/teacher/chenguangxian.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=chengaungxian">陈光宪</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=shaoliming" class="thumbnail">
                <img src="${ctx}/images/teacher/shaoliming.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=shaoliming">邵黎明</a>
            </li>
          </ul>
          <ul class="thumbnails" >
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=renhuichuan" class="thumbnail">
                <img src="${ctx}/images/teacher/renhuichuan.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=renhuichuan">任汇川</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=liubaodong" class="thumbnail">
                <img src="${ctx}/images/teacher/liubaodong.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=liubaodong">刘宝东</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=chenyougang" class="thumbnail">
                <img src="${ctx}/images/teacher/chenyougang.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=chenyougang">陈有刚</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=wangqing" class="thumbnail">
                <img src="${ctx}/images/teacher/wangqing.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=wangqing">汪青</a>
            </li>
          </ul>
          <ul class="thumbnails" >
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=wuzhengang" class="thumbnail">
                <img src="${ctx}/images/teacher/wuzhengang.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=wuzhengang">吴振刚</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=shenliping" class="thumbnail">
                <img src="${ctx}/images/teacher/shenliping.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=shenliping">沈丽萍</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=wangbaofeng" class="thumbnail">
                <img src="${ctx}/images/teacher/wangbaofeng.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=wangbaofeng">王宝峰</a>
            </li>
            <li class="span3" >
              <a href="${ctx}/static/mentor/detail?name=huotao" class="thumbnail">
                <img src="${ctx}/images/teacher/huotao.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="${ctx}/static/mentor/detail?name=huotao">瞿涛</a>
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

