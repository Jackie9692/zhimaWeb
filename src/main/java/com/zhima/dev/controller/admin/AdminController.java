package com.zhima.dev.controller.admin;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.zhima.base.util.ContentType;
import com.zhima.base.util.PageProperty;
import com.zhima.base.util.PageResult;
import com.zhima.base.util.StringUtils;
import com.zhima.base.util.User;
import com.zhima.dev.bo.ContentPost;
import com.zhima.dev.bo.EnrollDetail;
import com.zhima.dev.service.EnrollDetailService;
import com.zhima.dev.service.PostService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private PostService postService;
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	@Autowired
	private EnrollDetailService enrollDetailService;
	public void setEnrollDetailService(EnrollDetailService enrollDetailService) {
		this.enrollDetailService = enrollDetailService;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET) // 跳转到管理员登陆界面
	public String adminLogin(HttpServletRequest request,
			HttpServletResponse response, Model model) {

		return "modules/admin/login";
	}

	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)// 用户登陆处理
	public String adminCheckLogin(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		String msg = "";
		
		String userName = request.getParameter("username");
		String password = request.getParameter("psw");

		User user = this.getUser(request);
		if(user == null) return "error/403";
		
		boolean login = validateLogin(request);
		if(login) return "redirect:/admin/memberAcitivty/foreshowList";
	
		if(userName.equals(user.getUsername()) && password.equals(user.getPassword())){
			HttpSession ss = request.getSession(true);
			ss.setAttribute("userName", userName);
			return "redirect:/admin/memberAcitivty/foreshowList";
		}else{
			msg = "用户名或密码错误,try again!";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
	}
	
	// 会员活动
	@RequestMapping(value = "/memberAcitivty/foreshowList", method = RequestMethod.GET) //会员活动预告
	public String adminActivityForeshowList(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		prepareList(request, response, model, ContentType.activity_forecast, "活动预告与报名");
		return "modules/admin/activity";
	}
	
	// 会员活动
	@RequestMapping(value = "/memberAcitivty/foreshowEnroll", method = RequestMethod.GET) //会员活动预告报名
	public String adminActivityForeshowListEnroll(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		String postId = request.getParameter("postId");
		if(StringUtils.isEmpty(postId)){
			return "error/404";
		}
		ContentPost contentPost = postService.findById(postId);
		List<EnrollDetail> enrollList = enrollDetailService.findListByPostId(postId);
		model.addAttribute("contentPost", contentPost);
		model.addAttribute("enrollList", enrollList);
		return "modules/admin/enrollDetail";
	}
	
	
	@RequestMapping(value = "/memberAcitivty/reviewList", method = RequestMethod.GET) // 会员活动回顾
	public String adminActivityReviewList(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		prepareList(request, response, model, ContentType.activity_review, "往期回顾");
		return "modules/admin/activity";
	}
	
	//芝麻推荐
	@RequestMapping(value = "/recommend/articleList", method = RequestMethod.GET) // 推荐好文
	public String adminRecommendList(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		prepareList(request, response, model, ContentType.essay_post, "好文分享");
		return "modules/admin/recommend";
	}
	
	@RequestMapping(value = "/recommend/bookList", method = RequestMethod.GET) // 推荐书籍
	public String adminRecommendBookList(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		prepareList(request, response, model, ContentType.book_post, "书籍推荐");
		return "modules/admin/recommend";
	}
	
	
	@RequestMapping(value = "/post/add", method = RequestMethod.GET) // 创建添加跳转
	public String adminAdd(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		return "modules/admin/addPost";
	}
	
	@RequestMapping(value = "/post/addSave", method = RequestMethod.POST) // 创建保存
	@ResponseBody
	public Map adminAddSave(HttpServletRequest request, HttpServletResponse response, Model model) {
		Map map = new HashMap();
		map.put("loginStatus", true);
		map.put("success", true);
		
		
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			map.put("loginStatus", true);
			return map;
		}
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String cateId = request.getParameter("msgType");
		
		
		
		if(StringUtils.isEmpty(title)||StringUtils.isEmpty(content)||StringUtils.isEmpty(cateId)){
			map.put("success", false);
			return map;
		}
		
		//改变post
		ContentPost contentPost = new ContentPost();
		contentPost.setCateId(Integer.parseInt(cateId));
		contentPost.setTitle(title);
		contentPost.setContent(content);
		
		Timestamp updateDate = new Timestamp(new Date().getTime());
		contentPost.setUpdateDate(updateDate);
		contentPost.setCreateDate(updateDate);
		
		String userNameString = (String) request.getSession().getAttribute("userName");
		contentPost.setPublisher(userNameString);
		
		contentPost.setVisitedTimes(0);
		
		postService.update(contentPost);
		
		return map;
	}
	
	@RequestMapping(value = "/post/delete", method = RequestMethod.GET) //删除
	public String adminDelete(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		
		String id = request.getParameter("id");
		if(StringUtils.isEmpty(id)) return "error/404";
		
		postService.delete(id);
		
		return "redirect:/admin/memberAcitivty/foreshowList";
	}
	
	@RequestMapping(value = "/post/edit", method = RequestMethod.GET) //编辑
	public String adminEdit(HttpServletRequest request, HttpServletResponse response, Model model) {
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			return "modules/admin/login";
		}
		String id = request.getParameter("id");
		if(StringUtils.isEmpty(id)) return "error/404";
		
		ContentPost contentPost = postService.findById(id);
		
		String typeString = "";
		if(contentPost != null){
			typeString = getTypeString(contentPost.getCateId());
		}
		model.addAttribute("contentPost", contentPost);	
		model.addAttribute("typeString", typeString);	
		return "modules/admin/editPost";
	}
	
	@RequestMapping(value = "/post/editSave", method = RequestMethod.POST) //编辑保存
	@ResponseBody
	public Map adminEditSave(HttpServletRequest request, HttpServletResponse response, Model model) {
		Map map = new HashMap();
		map.put("loginStatus", true);
		map.put("success", true);
		
		
		boolean login = validateLogin(request);
		if(!login){
			String msg = "请重新登录";
			model.addAttribute("msg", msg);
			map.put("loginStatus", true);
			return map;
		}
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		if(StringUtils.isEmpty(id) || StringUtils.isEmpty(title) || StringUtils.isEmpty(content)){
			map.put("success", false);
			return map;
		}
		
		//改变post
		ContentPost contentPost = postService.findById(id);
		if(contentPost == null){
			map.put("success", false);
			return map;
		}
		
		contentPost.setTitle(title);
		contentPost.setContent(content);
		Timestamp updateDate = new Timestamp(new Date().getTime());
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		contentPost.setUpdateDate(updateDate);
		
		postService.update(contentPost);
		return map;
	}
	
	
	
	public User getUser(HttpServletRequest request){
		String rootName = RequestContextUtils.getWebApplicationContext(request)
				.getServletContext().getInitParameter("rootName");
		String rootPassWord = RequestContextUtils
				.getWebApplicationContext(request).getServletContext()
				.getInitParameter("passWord");
		User user = new User();
		user.setUsername(rootName);
		user.setPassword(rootPassWord);
		return user;
	}

	
	public boolean validateLogin(HttpServletRequest request){ //判断是否已经登录
		HttpSession ss = request.getSession(false);
		if(ss == null){
			return false;
		}
		if(ss.getAttribute("userName") == null){
			return false;
		}
		return true;
	}

	
	public void prepareList(HttpServletRequest request, HttpServletResponse response, Model model, int postType, String thead){
		String pageNo = request.getParameter("pageNo");
		int pageNoInt = 1;
		if(StringUtils.isNotEmpty(pageNo)){
			pageNoInt = Integer.parseInt(pageNo);
		}
		
		PageResult<ContentPost> pageResult = postService.findPageList(pageNoInt, PageProperty.pageSize, String.valueOf(postType));
		
		int pageNumber = (int) Math.ceil(Double.parseDouble(String.valueOf(pageResult.getCount()))/Double.parseDouble(String.valueOf(pageResult.getPageSize())));
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
		String dateStr = sdf.format(date);
		
		sdf = new SimpleDateFormat("EEEE");
		String weekStr = sdf.format(date);
		
		model.addAttribute("thead", thead);
		model.addAttribute("dateStr", dateStr);
		model.addAttribute("weekStr", weekStr);
		model.addAttribute("pageResult", pageResult);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("type", postType);
	}
	
	public String getTypeString(int type){
		String typeString = "";
		switch (type) {
		case 1:
			typeString = "活动预告及报名";
			break;
		case 2:
			typeString = "往期回顾";
			break;
		case 3:
			typeString = "好文推荐";
			break;
		case 4:
			typeString = "书籍推荐";
			break;
		default:
			break;
		}
	
		return typeString;
	}

}
