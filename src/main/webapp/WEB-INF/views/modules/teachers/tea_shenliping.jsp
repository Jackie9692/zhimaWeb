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
                <img src="${ctx}/images/teacher/shenliping.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>沈丽萍</span>
              </div>
              <div class="span9 text" >
                <p>芝麻开花全人格教育共同基金创始人。</p>
                <p>沈丽萍女士曾全面领导TESCO（乐购）中国区人才招募，
			                  人才与发展及组织结构发展业务；之前担任光辉国际人
			                  才顾问和复旦大学生命科学院讲师以及本科生班主任。
			                  沈女士拥有20多年的工作经历，其中15年人才顾问经验，
			                  为不同行业提供人力资源与企业管理咨询服务；作为哥
			                  伦比亚大学和国际教练联合会认证教练，沈女士担任企
			                  业高管教练和年轻人才发展教练，同时作为EIC全人格人
			                  才教育基金项目发起人和管理人，为年轻一代提供职业
			                  发展辅导和教练辅导。</p>
                <p>哈佛大学肯尼迪学院，非赢利组织战略培训。</p>
                <p>哥伦比亚大学& 国际教练联合会，认证高管教练。</p>
                <p>SHL （职业心理问卷），认证分析诠释导师。</p>
                <p>NBI （头脑倾向性评估），评估及诠释顾问。</p>
                <p>光辉国际，高管评估与搜寻顾问。</p>
                <p>马努卡理工学院，行政管理及计算机学位。</p>
                <p>复旦大学生命科学学院，理学硕士&学士。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

