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

  <title>1</title>



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

<body >
<div class="container" style="width:  auto;">
  <p style="text-align: center"> <img src="${ctx}/images/daohang.jpg" class="img-responsive" alt="Responsive image" /></p>
</div>
    <div class="bs-docs-example" style="margin: 0 auto;">
      <div id="navbar-example" class="navbar navbar-static">
        <div class="navbar-inner">
          <div class="container" style="width: auto;">
            <a class="brand" href="#">芝麻开花</a>
            <ul class="nav" role="navigation">
              <li class="dropdown">
                <a id="drop1" href="${ctx}/static/navigate" role="button" class="dropdown-toggle" data-toggle="dropdown">关于我们 <b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#mode">愿景和模式</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#enroll">注册信息</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#construction">组织结构</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#originator">创始人和董事会成员</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#team">工作团队</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/navigate#faq">FAQs</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">会员活动<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">活动预告及报名</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">往期回顾</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="${ctx}/static/mentor/init" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">人才导师<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/mentor/init#teacher">导师介绍</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">访谈</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" id="drop4" role="button" class="dropdown-toggle" data-toggle="dropdown">芝麻推荐<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">好文分享</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">书籍推荐</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="${ctx}/static/welfareCoperate/detail" id="drop5" role="button" class="dropdown-toggle" data-toggle="dropdown">公益合作<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/welfareCoperate/detail#gongyi">久牵志愿者服务社简介</a></li>
                 
                </ul>
              </li>
              <li class="dropdown">
                <a href="${ctx}/static/volunteer/detail" id="drop6" role="button" class="dropdown-toggle" data-toggle="dropdown"> 志愿报名<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/volunteer/detail#youxiu">优秀青年导师计划</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/static/volunteer/detail#zhongmei">中美小伙伴共同成长计划</a></li>
                 
                </ul>
              </li>
            </ul>
            <ul class="nav pull-right">
              <li id="fat-menu" class="dropdown">
                <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 7<b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                  <li role="presentation" class="divider"></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div> <!-- /navbar-example -->
    </div>

<div class="container-fluid">
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
        <li class=""><a href="#"> <i class="icon-chevron-right"></i>访谈</a></li>
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
              <a href="wangyi.html" class="thumbnail">
                <img src="${ctx}/images/teacher/wangyi.png" class="img-rounded" width="200" height="250">
              </a>
              <br>
              <a href="wangyi.html">王颐</a>
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







    </div>
  </div>
</div>


</body>
</html>

