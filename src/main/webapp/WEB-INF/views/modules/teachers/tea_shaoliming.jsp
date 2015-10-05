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
                <img src="${ctx}/images/teacher/shaoliming.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>邵黎明</span>
              </div>
              <div class="span9 text" >
                <p>复旦大学特聘教授，博士生导师。</p>
                <p>主要研究方向为中枢神经药物的发现和拓展。曾参与和主持了多种中枢神经方面药物的研究与开发工作，其中4个化合物获美国 FDA认准进入临床试验。曾参与避孕药研发工作并有一个药物获得中国FDA批准上市。国家千人计划第三批入选者。</p>
                <p>兼任：美国化学学会东北分会2013年主席兼药物化学部主席。美国《Current Topic of Medicinal Chemistry》期刊中枢神经篇编辑。􀀁</p>
                <p>2010-2012年任美国Sunovion Pharmaceuticals Inc.公司临床前研究及转化医学部资深总监。</p>
                <p>1998-2010年历任美国Sepracor Inc.公司药物研发及临床前研究部科学家、资深科学家、助理总监、总监和资深总监。</p>
                <p>1993-1996年美国哈佛大学化学系从事博士后研究工作。</p>
                <p>1993年毕业于东京大学工业化学科，获工学博士学位。</p>
                <p>1982年毕业于复旦大学有机化学专业，获理学学士学位。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

