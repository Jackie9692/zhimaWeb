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
                <img src="${ctx}/images/teacher/wangqing.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>汪青</span>
              </div>
              <div class="span9 text" >
                <p>上海绿庭投资集团美国总部，副总裁，高级法律顾问。负责绿庭集团在美国的投资规划, 财务法务管理, 及人力资源配置。</p>
                <p>美国纽约州执业律师，美国律师协会会员，美国纽约州执业会计师</p>
                <p>在美国已从业十七年。先后就职于德勤 (Deloitte & Touche)会计师事务所纽约分部担任审计会计师，Thelen Reid & Priest律师事务所华盛顿分部担任律师，Computer Sciences Corporation，洛克西德.马丁公司(Lockheed Martin Corporation)和IBM担任公司法律顾问?</p>
                <p>2000毕业于New York University School of Law，税法法学硕士 (LL. M in Taxation)。</p>
                <p>1997毕业于State University of New York, Albany,财会硕士 (Master of Science in Accounting)。</p>
                <p>1991毕业于南京大学, 法学学士。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

