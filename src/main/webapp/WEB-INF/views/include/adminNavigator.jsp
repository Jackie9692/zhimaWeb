<%@ page contentType="text/html;charset=UTF-8"%>
   <div class="bs-docs-example" style="margin: 0 auto;">
     <div id="navbar-example" class="navbar navbar-static">
       <div class="navbar-inner">
         <div class="container" style="width: auto;">
           <a class="brand" href="${ctx}/static/welcome" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="返回首页">芝麻开花</a>
           <ul class="nav" role="navigation">
             <li class="dropdown">
               <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">会员活动<b class="caret"></b></a>
               <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
	              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/admin/memberAcitivty/foreshowList">活动预告及报名</a></li>
	              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/admin/memberAcitivty/reviewList">往期回顾</a></li>
               </ul>
             </li>
             <li class="dropdown">
               <a href="#" id="drop4" role="button" class="dropdown-toggle" data-toggle="dropdown">芝麻推荐<b class="caret"></b></a>
               <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
	              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/admin/recommend/articleList">好文分享</a></li>
	              <li role="presentation"><a role="menuitem" tabindex="-1" href="${ctx}/admin/recommend/bookList">书籍推荐</a></li>
               </ul>
             </li>
           </ul>
         </div>
       </div>
     </div> 
   </div>

