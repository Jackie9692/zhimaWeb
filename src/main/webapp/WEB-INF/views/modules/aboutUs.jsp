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

    <title>关于我们</title>



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

    <div class="container-fluid jianting " >
      <div class="row-fluid">
        <div class="span3 jianting">
          <ul class="nav nav-list bs-docs-sidenav affix" id="navMaodian">
            <li class=""><a href="#mode">关于我们</a></li>
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
        <div class="span9 ">
			
          <section id="mode" >
            <div class="page-header">
                <h2>愿景和模式</h2>
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
		  
          <section id="enroll" >
          <br><br><br><br>
            <div class="page-header">
              <h2>注册信息</h2>
            </div >
            <div class="text">
              <p>
                芝麻开花于2015年7月31日在香港成功注册成为非盈利公益机构，法人实体全称为“芝麻开花全人格教育基金会有限公司”。
              </p>
              <p>芝麻开花全人格教育基金的本金来自于青少年会员家庭。宝峰投资团队借用该本金做投资，产生收益的5-10%惠及出资家庭青少年会员，直接用于该会员的全人格培养项目；60%用于基金会的实际运作（包括各类对外的公益合作项目、市场宣传等）；25-30%用于投资风险金，作为基金的后备保障。</p>

            </div>
          </section>

          <section id="construction">
          <br><br><br><br>
            <div class="page-header">
              <h2>组织结构</h2>
            </div >
            <div class="row" align="center">
              <img src="${ctx}/images/zuzhijiegouone.png"  >

            </div>
          </section>

          <section id="originator">
          <br><br><br><br>
            <div class="page-header">
              <h2>创始人和董事会成员</h2>
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
               <table  width="100%" align="center">
                <tr>
                  <td   align="center">
	                 <img src="${ctx}/images/teacher/huotao.jpg" width="200" height="200" class="img-circle" >
	                 <h4>瞿涛</h4>
	                 <span class="text-center" >基金会创始人</span>
                  </td>
                  <td align="center">
                  	 <img src="${ctx}/images/teacher/shenliping.jpg" width="200" height="200" class="img-circle" >
	                 <h4>沈丽萍</h4>
	                 <span class="text-center" >CEO</span>
                  </td>
                  <td   align="center">
	                 <img src="${ctx}/images/teacher/wangbaofeng.jpg" width="200" height="200" class="img-circle" >
	                 <h4>王宝峰</h4>
	                 <span class="text-center"  >投资总监</span>
                  </td>
                  </tr>
                 </table>
             </div>
          </section>

          <section id="team">
          <br><br><br><br>
              <div class="page-header">
                <h2>工作团队</h2>
              </div >
              <div class="row">
                <table cellspacing="0" cellpadding="0" width="100%" class="table-bordered" border="2" align="center">
                  <tbody>
                  <tr>
                    <td width="25%" height="120" rowspan="3" align="center"> 执行秘书</td>
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
                <table  width="100%" align="center">
                  <tr>
                    <td  align="center">
                      <img src="${ctx}/images/teacher/wangruifeng.jpg" width="200" height="200" class="img-circle" >
                      <h4>王瑞锋</h4>
                      <span class="text-center" >执行秘书</span>
                    </td>
                    <td align="center">
                      <img src="${ctx}/images/teacher/huanglianglei.jpg" width="200" height="200" class="img-circle" >
                      <h4>黄亮磊</h4>
                      <span class="text-center" >执行秘书</span>
                    </td>
                    <td   align="center">
                      <img src="${ctx}/images/teacher/linqingqing.jpg" width="200" height="200" class="img-circle" >
                      <h4>林庆庆</h4>
                      <span class="text-center"> 执行秘书</span>
                    </td>
                  </tr>
                </table>
              </div>
            </section>

          <section id="faq">
          <br><br><br><br>
              <div class="page-header">
                <h2>常见问题</h2>
              </div >
		           <section>
		               <h4>EIC芝麻开花的愿景，理念，运作机制，法人，资金来源，财务机制。</h4>
		              <div class="accordion" id="accordion2">
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
						        问题1：EIC芝麻开花全人格教育基金（以下简称EIC芝麻开花）的愿景?理念？运作机制？法人实体?资金来源？财务机制？
						      </a>
						    </div>
						    <div id="collapseOne" class="accordion-body collapse in">
						      <div class="accordion-inner">
						       <h5> 解答：</h5>
						        <p>•	愿景：青少年人格全面发展的公益平台。</p>
								<p>•	理念：做更好的自己；激情，正直，好学 (Enthusiasm, Integrity, Curiosity)。</p>
								<p>•	具体运作机制：聘请最专业的人才教练和顾问及其他相关专家，建立每一位会员青少年的个人人才档案，运用科学的测评和教练辅导，专业的职业规划咨询，以及对于父母的专业指导，定期的回顾和目标复核与调适，记录青少年成长的过程和进步，不断辅以各类素质教育的项目，最终帮助青少年成长为努力好学，热情，积极向上，诚实正直的未来行业楷模。</p>
								<p>•	法人实体：芝麻开花是注册于香港的非盈利组织。</p>
								<p>•	资金来源：芝麻开花的运作类似于美国常春藤盟校的Endowment Management，本金来自于会员的家庭，每个会员家庭出资50万人民币，宝峰投资团队借用该本金做投资产生的收益用于基金的运作，其中5-10%会惠及家庭提供出资的会员，但是直接用于该会员的全人格培养的项目。</p>
								<p>•	财务机制：目前以三方协议形式，出资父母将资金打入一个统一的池，投资收益将会分三部分使用，第一部分：出资家庭的5-10%；第二部分：收益的60%用于基金的实际运营，运作，各类项目，市场宣传等；第三部分，投资风险金，将收益的30%用于投资风险金，以备万一。</p>
						        
						      </div>
						    </div>
						  </div>
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
						        问题2：EIC芝麻开花的成立背景？
						      </a>
						    </div>
						    <div id="collapseTwo" class="accordion-body collapse">
						      <div class="accordion-inner">
						  <h5> 解答：</h5>
							<p>•	中国越来越多的父母在让孩子接受传统学校教育的基础上，意识到对孩子更需要在全面人格形成上得到补充发展，让孩子在进入更高一级的教育机构或者社会时，具有真正的竞争力，成为未来社会各行业的真正精英。</p>
							<p>•	很多中国父母顺应潮流，送孩子去国外夏令营，游学，留学等等，但是受限制于时间或者精力，往往是没有经过非常仔细的评估和比较，钱花了，但是未必一定收到期望的效果。</p>
							<p>•	很多父母送孩子去美国读大学，通过留学中介公司包装后去中介熟悉的美国大学，未必是最适合孩子的能力特质的大学，使得孩子能力和才华没有在真正适合的大学得到提升。</p>
							<p>•	个人的能力总是有限，组织的形式可以汇聚很多个体的能力，产生更大的影响力。</p>
							<p>•	有社会责任心和爱心的父母，非常愿意将自己成功培养孩子的经验分享给其他父母。</p>
							<p>•	项目发起人们均受过高等教育，有多年行业经验，具有相关专业资质和背景并且愿意无偿为EIC芝麻开花提供专业服务，包括人才评估和发展服务，法律咨询服务等。</p>
							<p>•	综合上述背景，以及项目发起人的社会责任心和爱心，我们决定设立非营利教育组织（即，EIC芝麻开花），开始全人格教育的公益事业。在朋友推荐的前提下，分批分布招募会员，逐步通过一个个具体的项目开始芝麻开花的公益教育事业。</p>

						      </div>
						    </div>
						  </div>
						   <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapsethree">
						        问题3：EIC芝麻开花区别于学校教育、家庭教育的独特之处是什么？
						      </a>
						    </div>
						    <div id="collapsethree" class="accordion-body collapse">
						      <div class="accordion-inner">
						   <h5> 解答：</h5>
						         <p>芝麻开花是在学校和家庭教育以外的独立平台。学校教育根据国家教育计划，提供教育；家庭教育是家长额外给孩子参加的补充教学，包括体育，学科知识艺术技能。</p>
							     <p> 芝麻开花是一个平台，在这个平台上，主要的条线是根据每个会员的特点，通过各类活动和项目，孩子们通过参与，很多发展自己各方面的全面整合的能力，比如领导力，影响力，演讲能力，团队合作能力，慈善的概念，关爱和帮助他人，真诚诚实，对生活和学习充满激情，求知欲等等。</p>
						      </div>
						    </div>
						  </div>
						</div>
					</section>
					
					<section>
		             <h4>EIC芝麻开花相关运作流程。</h4>
		              <div class="accordion" id="accordion3">
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-1">
						      	  问题1：“利润超出5%到10%部分用于自己孩子的发展和活动以及慈善。”其中的“自己”是指出资人？还是基金本身？
						      </a>
						    </div>
						    <div id="collapseone-1" class="accordion-body collapse in">
						      <div class="accordion-inner">
						       <h5> 解答：</h5>
						        <p>自己指出资家庭的青少年会员。</p>
						      </div>
						    </div>
						  </div>
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-2">
						        	问题2：会员父母在芝麻开花中的角色、权利、义务？
						      </a>
						    </div>
						    <div id="collapseone-2" class="accordion-body collapse">
						      <div class="accordion-inner">
						  <h5> 解答：</h5>
							<p>青少年会员正式成为芝麻开花会员之后，出资的父母随即自动取得理事会理事成员资格，监督EIC芝麻开花项目运行。理事会成员在理事会大会享有投票、表决权。</p>
							<p>与此同时，EIC芝麻开花鼓励会员父母为青少年会员发展提供相关资源、时间、经验指导等，帮助青少年会员成长进步。EIC芝麻开花也会提供相关奖励回馈会员父母的爱心奉献。</p>
						      </div>
						    </div>
						  </div>
						   <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-3">
						       	问题3：董事会的职责、作用？
						      </a>
						    </div>
						    <div id="collapseone-3" class="accordion-body collapse">
						      <div class="accordion-inner">
						   <h5> 解答：</h5>
						         <p>董事会是芝麻开花决策指导机构，负责制定战略发展目标，监督推进项目实施，向全体理事会成员负责。</p>
							     <p>董事会由芝麻开花创始人负责组建，董事会成员由创始人选拔、聘用，实行聘用期制。董事会成员必须真正付出时间和精力在芝麻开花项目，并且每年末的时候会有对于董事会成员的绩效评估。如果下一年不再续任董事会成员，该名成员依然是理事会成员。</p>
						      </div>
						    </div>
						  </div>
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-4">
						        	问题4：董事会成员收入。
						      </a>
						    </div>
						    <div id="collapseone-4" class="accordion-body collapse">
						      <div class="accordion-inner">
						  <h5> 解答：</h5>
							<p>董事会成员目前为志愿者和义务工作，董事会成员承诺为芝麻开花付出的时间不少于一定时间。目前暂定为一个月16小时，即每周4小时。</p>
						      </div>
						    </div>
						  </div>
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-5">
						        	问题5：董事会会议召开频率。
						      </a>
						    </div>
						    <div id="collapseone-5" class="accordion-body collapse">
						      <div class="accordion-inner">
						  <h5> 解答：</h5>
							<p>董事会会议由董事长、创始人不定期召开举行。目标为每个月一次2-4小时。</p>
						      </div>
						    </div>
						  </div>
						   <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseone-6">
						        	问题6：芝麻开花通过何种方式对青少年会员进行全人格教育培养？
						      </a>
						    </div>
						    <div id="collapseone-6" class="accordion-body collapse">
						      <div class="accordion-inner">
						  <h5> 解答：</h5>
							<p>多种方式多种角度全方位。芝麻开花每月月底会举行会员聚会活动。内容包括读书清单分享会、家长经验分享、慈善理念培养、以及相关领域专家经验分享沙龙，等等。</p>
							<p>此外，芝麻开花还规划了2015年6个年度项目，详情请见第三部分。</p>
						      </div>
						    </div>
						  </div>
						</div>
					</section>
					
			        <section>
		             <h4>2015年项目展望。</h4>
		              <div class="accordion" id="accordion4">
						  <div class="accordion-group">
						    <div class="accordion-heading">
						      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapsetwo-1">
						        2015年项目展望。
						      </a>
						    </div>
						    <div id="collapseOne" class="accordion-body collapse in">
						      <div class="accordion-inner">
						       <h5> 解答：</h5>
						        <p>•	会员主题活动（知识，艺术，体育）</p>
								<p>•	未来公益战略主线</p>
								<p>•	与外部公益机构合作项目</p>
								<p>•	升学咨询辅导</p>
								<p>•	各类主题兴趣俱乐部（艺术社，科学社，网球，足球俱乐部）</p>
						      </div>
						    </div>
						  </div>
						</div>
					</section>
            </section>
      </div>
    </div>
    </div>
	  <%@ include file="/WEB-INF/views/include/footer.jsp"%>
  </body>
</html>

