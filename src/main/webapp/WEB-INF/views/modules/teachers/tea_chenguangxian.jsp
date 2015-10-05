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
         <!-- <li class=""><a href="#fangtan"> <i class="icon-chevron-right"></i>访谈</a></li>  -->     
      </ul>
    </div>
     <div class="span9">
          <section>
            <div class="page-header">
              <h1>导师介绍</h1>
            </div >
            <div class="row" >
              <div class="span3"  align="center">
                <img src="${ctx}/images/teacher/chenguangxian.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>陈光宪</span>
              </div>
              <div class="span9 text" >
                <p>现任中国音乐家协会理事、上海音乐家协会常务理事、上海演出家协会常务理事、上海交响乐团文化发展基金会副会长、中国交响乐发展基金会主席、国家一级演奏员。􀀁</p>
                <p>曾任上海歌剧院中提琴副首席，上海歌剧院交响乐团团长、上海歌剧院副院长、上海歌剧院院长助理。</p>
                <p>1997年调入上海交响乐团任团长。?</p>
                <p>1984年毕业于上海音乐学院管弦系中提琴专业，师从沈西蒂教授。􀀁</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

