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
            <li class=""><a href="${ctx}/static/navigate">关于我们</a></li>
            <li class="active">
              <a href="#mode">
                <i class="icon-chevron-right"></i>
              		  愿景和模式
              </a>
            </li>
            <li class=""><a href="#enroll"> <i class="icon-chevron-right"></i>注册信息</a></li>
            <li class=""><a href="#construction"> <i class="icon-chevron-right"></i>组织结构</a></li>
            <li class=""><a href="#originator"> <i class="icon-chevron-right"></i>创始人和董事会成员</a></li>
            <li class=""><a href="#team"> <i class="icon-chevron-right"></i>工作团队</a></li>
            <li class=""><a href="#faq"> <i class="icon-chevron-right"></i>常见问题</a></li>
          </ul>
        </div>
        <div class="span9">


          <section id="mode">
            <div class="page-header">
                <h1>愿景和模式</h1>
            </div >
            <div class="text">
              <p>
                                                  中国越来越多的父母在让孩子接受传统学校教育的基础上，意识到对孩子更需要在全面人格形成上得到补充发展，让孩子在进入更高一级的教育机构或者社会时，具有真正的竞争力，成为未来社会各行业的真正精英。
              </p>
              <p>芝麻开花怀抱着 “搭建青少年人格全面发展公益平台” 的愿景而成立。</p>
              <p>芝麻开花的运作模式：内部青少年会员培养+外部青少年公益机构合作。</p>
              <p> 通过参与策划、组织、实施公益项目活动，芝麻开花的青少年会员在各项课外时间活动中切身体验公益慈善理念；在实践中，全面培养青少年会员激情、正直、好学、乐于奉献、富有同情心的全人格品质。芝麻开花也通过不断地与其他青少年公益机构的项目合作，将“做更好的自己”的理念带给其他参与到芝麻开花公益项目活动的青少年们。
              </p>
              <p>芝麻开花凝聚了来自于各个领域和行业，并对教育公益事业充满激情并拥有丰富经验的资深领袖精英，作为青少年会员人才导师，指导青少年全人格综合素质的培养与发展。
              </p>
            </div>
          </section>

          <section id="enroll">
            <div class="page-header">
              <h1>注册信息</h1>
            </div >
            <div class="text">
              <p>
                芝麻开花于2015年7月31日在香港成功注册成为非盈利公益机构，法人实体全称为“芝麻开花全人格教育基金会有限公司”。
              </p>
              <p>芝麻开花全人格教育基金的本金来自于青少年会员家庭。宝峰投资团队借用该本金做投资，产生收益的5-10%惠及出资家庭青少年会员，直接用于该会员的全人格培养项目；60%用于基金会的实际运作（包括各类对外的公益合作项目、市场宣传等）；25-30%用于投资风险金，作为基金的后备保障。</p>

            </div>
          </section>

          <section id="construction">
            <div class="page-header">
              <h1>组织结构</h1>
            </div >
            <div class="row" align="center">
              <img src="${ctx}/images/constru.png" width="639" height="477"  >

            </div>
          </section>

          <section id="originator">
            <div class="page-header">
              <h1>创始人和董事会成员</h1>
            </div >
            <div class="row">
              <table cellspacing="0" cellpadding="0" width="100%" class="table-bordered" border="2" align="center">
                <tbody>
                <tr>
                  <td width="25%" height="120" rowspan="3" align="center">基金会创始人</td>
                  <td  height="40" width="50%" align="center">瞿涛</td>
                </tr>
                <tr>
                  <td  height="40"  width="50%" align="center">沈丽萍</td>
                </tr>
                <tr>
                  <td  height="40" width="50%" align="center">王宝峰</td>
                </tr>
                </tbody>
              </table>
            </div>

             <div class="row" align="center">
               <table  width="60%" align="center">
                <tr>
                  <td   align="center">
                 <img src="${ctx}/images/liping4.png" width="200" height="200" class="img-circle" >
                 <h4>沈丽萍</h4>
               <span class="text-center" >CEO</span>
                  </td>
                  <td width="100"></td>
                  <td   align="center">
                 <img src="${ctx}/images/baofeng.png" width="200" height="200" class="img-circle" >
                 <h4>王宝峰</h4>
               <span class="text-center"  >投资总监</span>
                  </td>
                  </tr>
                 </table>
             </div>
          </section>

          <section id="team">
              <div class="page-header">
                <h1>工作团队</h1>
              </div >
              <div class="row">
                <table cellspacing="0" cellpadding="0" width="100%" class="table-bordered" border="2" align="center">
                  <tbody>
                  <tr>
                    <td width="25%" height="120" rowspan="3" align="center">
                      执行秘书</td>
                    <td  height="40" width="50%" align="center">王瑞锋</td>
                  </tr>
                  <tr>
                    <td  height="40"  width="50%" align="center">黄亮磊</td>
                  </tr>
                  <tr>
                    <td  height="40" width="50%" align="center">林庆庆</td>
                  </tr>
                  </tbody>
                </table>
              </div>

              <div class="row" align="center">
                <table  width="60%" align="center">
                  <tr>
                    <td   align="center">
                      <img src="${ctx}/images/Huang Lianglei Profile.jpg" width="200" height="200" class="img-circle" >
                      <h4>黄亮磊</h4>
                      <span class="text-center" >执行秘书</span>
                    </td>
                    <td width="100"></td>
                    <td   align="center">
                      <img src="${ctx}/images/Lin Qingqing Profile.jpg" width="200" height="200" class="img-circle" >
                      <h4>林庆庆</h4>
                      <span class="text-center"> 执行秘书</span>
                    </td>
                  </tr>
                </table>
              </div>



            </section>

          <section id="faq">
              <div class="page-header">
                <h1>常见问题</h1>
              </div >
              <div class="text">

              </div>
            </section>






      </div>
    </div>
    </div>


  </body>
</html>
