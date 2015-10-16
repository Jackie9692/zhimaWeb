<%@ page contentType="text/html;charset=UTF-8"%>
<div class=" navbar  container navbar-fixed-top navf" style="font-size: 5px">
		<ul class="nav pull-right ">
			<li id="fat-menu" class="dropdown">
				<li><a href="${ctx}/static/navigate">中文 </a></li>	
				<li><a href="${ctx}/static/English" target="_blank">English</a></li>
				<li><a href="${ctx}/static/contact" target="_blank">联系我们</a></li>
				<li><a href="${ctx}/static/bbs" target="_blank">BBS</a></li>
			</li>
        </ul>
</div>
<div class="bs-docs-example">
  <div id="navbar-example" class="navbar navbar-static navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container" style="width: auto;">
      	<ul class="nav"><a class="brand" href="${ctx}/static/welcome" title="返回欢迎界面">芝麻开花</a></ul>
        
        <ul class="nav" role="navigation">
          <li class="dropdown">
            <a   id="drop1" href="${ctx}/static/navigate" role="button" class="dropdown-toggle" data-toggle="dropdown">关于我们 <b class="caret"></b></a>
            <ul  class="dropdown-menu" role="menu" aria-labelledby="drop1">
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
              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/content/memberAcitivty/foreshowList">活动预告及报名</a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/content/memberAcitivty/reviewList">往期回顾</a></li>
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
              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/content/recommend/articleList">好文分享</a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/content/recommend/bookList">书籍推荐</a></li>
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
      </div>
    </div>
  </div>
</div>
