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
                <img src="${ctx}/images/teacher/renhuichuan.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>任汇川</span>
              </div>
              <div class="span9 text" >
                <p>中国平安集团总经理，平安集团迄今最年轻的本土高层管理人员，也是该集团年轻管理团队的典范之一。</p>
                <p>1992年加入中国平安集团，最初在中国平安产险深圳分公司业务部工作，因成绩优越，获提升到集团核心部门，任集团发展改革中心主任助理，参与策划，并负责组织实施了平安第一例产险营销体制改革，为产险销售创新做出了有益尝试.。</p>
                <p>2002年12月，晋升为平安产险公司副总经理，在产险领域积累了丰富的实践及管理经验。􀀁</p>
                <p>2004年，晋升为平安集团总经理助理兼财务总监，成功推行了中国平安财务企划系列架构改革，搭建了财务内控管理平台，并通过优化资源配置和成本集中管控，为保障公司利润计划顺利达成起到有力支持作用。任职期间，为平安成功在香港及内地资本市场上市，和深圳市商业银行的成功收购做出了贡献。</p>
                <p>2007年5月被任命为中国平安财产保险股份有限公司董事长兼首席执行长。</p>
                <p>2011年3月19日起，担任中国平安总经理职务。</p>
                <p>1992年毕业于哈尔滨工程大学，北京大学光华管理学院深圳分院2002级MBA。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

