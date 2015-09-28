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
                <img src="${ctx}/images/teacher/wuzhengang.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>吴振刚</span>
              </div>
              <div class="span9 text" >
                <p>宝钢集团宁波钢铁有限公司，董事，副总经理。</p>
                <p>80年代末作为中国早期计算机软件技术人员，参加了世界上最先进
			                  的宝钢冷连轧生产线的自动化信息系统调试工作。后来于90年代初
			                  参加并组织宝钢第一代CIMS管理系统的开发，由于受国内计划经济
			                  向市场经济转轨期管理观念的局限，项目取得了其成功与失败的两
			                  面经验，由此也使得我对企业管理产生了浓厚的兴趣，并参加复旦
			                  大学与挪威BI管理学院的EMBA课程，潜心学习管理。</p>
                <p>学习过程中有幸参与上市公司宝信软件全国营销体系的组建与市场
			                  策划推广工作，对产品策划、市场营销及渠道管理颇有心得。曾经
			                  策划了全国知名的网络安全产品，并取得较高的市场占有率和政府
			                  核心业务部门的全国业务。?</p>
                <p>经过近10年的市场磨练后，我又回到世界500强宝钢集团总部从事大
			                  企业集团管控模式的研究，取得多项管理成果并在全宝钢集团内推
			                  广。</p>
                <p>最近6年多来，作为现代化钢铁联合企业主管经营的副总，潜心于用
			                  大数据的方法研究钢铁企业的经营工作，关注黑色系大宗商品的交
			                  易趋势，并利用现代金融的工具，为钢铁实体企业的稳健经营保驾
			                  护航。多年的市场营销、企业经营管理经验，也使得我非常关注心
			                  理学，特别是心理学在企业重组、整合中的应用等。</p>
                <p>2001年毕业于FUDAN-Norway BI Business School，Oslo, Norway获
                  MBA学位。</p>
                <p>1987年毕业于华东工学院计算机软件专业，获学士学位。。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

