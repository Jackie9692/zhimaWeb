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

  <title>志愿报名</title>



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
	        <li class=""><a href="#">志愿报名</a></li>
	        <li class="active">
	          <a href="#youxiu">
	            <i class="icon-chevron-right"></i>
	            优秀青年导师计划
	          </a>
	        </li>
	        <li class=""><a href="#zhongmei"> <i class="icon-chevron-right"></i>中美小伙伴共同成长计划</a></li>
	      </ul>
	    </div>
		<div class="span9">
	      <section id="youxiu">
	        <div class="page-header">
	          <h1>“优秀青年导师计划”志愿者招募（美国站）</h1>
	        </div >
	        <div class="text">
	          <p>
	            未来中国人屹立于世界舞台正面向上的良好形象，在这里播种，从这里迈出......
	          </p>
	          <p>随着越来越多的会员前往美国求学、工作、生活，芝麻开花美国站将筹备为在美国生活的会员提供相应的全人格教育成长资源和服务。</p>
	          <p>诚挚面向社会招募优秀青年才俊担任芝麻开花青年导师志愿者，自愿付出宝贵时间和精力，作为青少年会员良师益友和成长道路楷模，为在美国生活的芝麻开花青少年会员提供经验指导，帮助会员在青少年成长关键阶段持续进步、不断完善全人格品质发展。</p>
	          <h4>【青年导师职责】</h4>
	          <p>根据自身在美国发展所积累的个人经验，为在美国生活的芝麻开花青少年会员提供升学指导咨询、职业生涯规划指导、美国社会感悟分享、个人经验传承等。
	          </p>
	          <h4>【资质条件】</h4>
	          <p>1、正直、阳光、有爱心、乐于奉献、有上进心、热忱于帮助下一代年轻人成长。
	          </p>
	          <p>2、具有美国生活、工作/实习、学习经历。对美国社会文化、校园&学术生活、职场生涯等方面，具有一定程度个人经验心得。
	          </p>
	          <br>
	          <br>
	          <p>您的加入，将为芝麻开花青少年会员成长的道路上，种下全人格品质积极向上的种子，培育生根，带来甘露，滋润，发芽！
	          </p>
	          <p>《少年中国说》有云：“少年智则国智，少年富则国富；少年强则国强，少年进步则国进步......红日初升，其道大光。”
	          </p>
	          <p>诚挚邀请您加入“优秀青年导师计划”志愿者导师团队。
	          </p>
	          <h4>【报名咨询】</h4>
	          <p>Email：ruifeng@eicchina.org</p>
	          <p>Cell: 1-334-372-5580 (美国)</p>
	          <p>WeChat: KSJG4973</p>
	          <p>联系人：基金会行政秘书-王瑞锋</p>
	        </div>
	      </section>
	
	      <section id="zhongmei">
	        <div class="page-header">
	          <h1>“中美小伙伴共同成长计划”志愿者招募（美国站）</h1>
	        </div >
	        <div class="text">
	          <h5>致美国出生长大的小伙伴们：</h5>
	          <p>你是否对古老神秘的中国元素充满好奇？</p>
	          <p>你是否想寻求机会了解中国传统文化？</p>
	          <p>东西方文明之间究竟存在哪些思维异同？</p>
	          <p>全球化背景下怎能忽略东方文明！</p>
	          <p>现在，机会来了！</p>
	          <p>欢迎加入芝麻开花全人格教育基金会“中美小伙伴共同成长计划”。</p>
	          <p>在这里，你将有机会与在美国上学的同龄中国小伙伴实时交流互动、分享日常心得体会。</p>
	          <p>在这里，你将有机会亲身体验中美文化的异同。</p>
	          <p>思维交流，灵感互动，智慧迸发！</p>
	          <h4>【参与方式】</h4>
	          <p>以志愿者方式报名加入。</p>
	          <p>与在美国上学的的同龄中国小伙伴结成“Buddy”，携手成长，共同进步！</p>
	          <p>实时互动分享学校、课余生活心得体会，假期还有机会组队共同外出游学交流。</p>
	          <h4>【报名资质】</h4>
	          <p>1、在美国出生、成长的青少年中学生。 </p>
	          <p>2、年龄范围：15-18周岁。	          </p>
	          <br>
	          <p>零时差与中国小伙伴交流互动。</p>
	          <p>假期更有机会组队出游，零距离感受中国文化。</p>
	          <p>亲，还在犹豫什么？报名加入我们吧！</p>
	          <h4>【报名咨询】</h4>
	          <p>Email：ruifeng@eicchina.org</p>
	          <p>Cell: 1-334-372-5580 (美国)</p>
	          <p>WeChat: KSJG4973</p>
	          <p>联系人：基金会行政秘书-王瑞锋</p>
	         </div>
	      </section>
	    </div>

	  </div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

