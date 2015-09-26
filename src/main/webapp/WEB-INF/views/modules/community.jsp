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
        <li class=""><a href="#">公益合作</a></li>
        <li class="active">
          <a href="#gongyi">
            <i class="icon-chevron-right"></i>
          		  久牵志愿者服务社简介
          </a>
        </li>

      </ul>
    </div>
    <div class="span9">


      <section id="gongyi">
        <div class="page-header">
          <h1>久牵志愿者服务社简介</h1>
        </div >
        <div class="row" align="center">
          <img src="${ctx}/images/gongyi/jiuqian.kpg" width="639" height="477"  >

        </div>
        <div class="text">
          <p>
            上海久牵志愿者服务社是一家专门致力于改善来沪外来农民工子女及孤残儿童课外教育环境的非赢利机构。该机构从2006年开始，为上海外来农民工子女开设合唱、舞蹈、吉他、笛子等音乐艺术类科目，丰富他们的课余生活。2008年5月，“久牵”正式在浦东新区民政局民办非企业单位。2008年7月，久牵又开辟了浦东唐镇中心，并且将课程拓展到电脑应用、科学实验、社会认知等领域，日渐成为一个专业的公益性课外教育机构
          </p>
          <p>“久牵宣桥音你而精彩—儿童艺术活动中心（南汇）”于2014年8月开始运营，旨在为上海宣桥镇孤儿，提供一套课余音乐、美术、英语及阅读培训，通过艺术教育丰富他们的课余生活，协助他们开发智能，提升个人沟通，并能更加快乐健康的成长，成长后能够真正融入社会。</p>

        </div>
      </section>

    </div>
  </div>
</div>


</body>
</html>

