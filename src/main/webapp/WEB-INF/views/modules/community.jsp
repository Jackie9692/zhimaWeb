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

  <title>公益合作</title>



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
          <img src="${ctx}/images/gongyi/jiuqian.jpg"  class="picSize" >

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

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

