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
                <img src="${ctx}/images/teacher/huotao.png" class="img-rounded" width="200" height="250">
                <br>
                <br>
                <span>瞿涛</span>
              </div>
              <div class="span9 text" >
                <p>芝麻开花全人格教育共同基金创始人。</p>
                <p>九十年代初供职于上海证券交易所，历任团总
			                  书记、部门经理等职务，从事证券核算、国债
			                  清算、会计电算化、股票账户无纸化、交易品
			                  种创新等工作，经历和参与证券市场的各阶段
			                  创新、发展和演变过程，并连续三年获得“先
			                  进工作者”等荣誉称号。</p>
                <p>2000年起又开始筹建中国证券登记结算上海分
			                  公司，身肩财务总监开始证券市场后台结算、
			                  存管等服务工作至今，期间也获得多项奖项和
			                  荣誉，2011起连续获批上海金融人才。􀀁</p>
                <p>作为EIC“芝麻开花全人格教育”基金会创始人
			                  之一，秉承“育人强国，科学教育”的理念并
			                  愿为此奉献一生！</p>
                <p>1995年获得哈佛大学物理系和天体物理系学士学位。</p>
                <p>IMBA（国际硕士）学位，经济师，毕业于香港
			                  大学、复旦大学、上海财大、上海金融学院等
			                  各类学府。</p>
              </div>
            </div>
          </section>
        </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

