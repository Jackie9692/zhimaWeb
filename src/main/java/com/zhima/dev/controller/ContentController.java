package com.zhima.dev.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhima.base.util.ContentType;
import com.zhima.base.util.PageProperty;
import com.zhima.base.util.PageResult;
import com.zhima.base.util.StringUtils;
import com.zhima.dev.bo.ContentPost;
import com.zhima.dev.service.PostService;

@Controller
@RequestMapping("/content")
public class ContentController {
	@Autowired
	private PostService postService;
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	// 会员活动
	@RequestMapping(value = "/memberAcitivty/foreshowList", method = RequestMethod.GET) //会员活动预告
	public String adminActivityForeshowList(HttpServletRequest request, HttpServletResponse response, Model model) {
		prepareList(request, response, model, ContentType.activity_forecast, "活动预告与报名");
		return "modules/memberActivity/activity";
	}
	
	
	@RequestMapping(value = "/memberAcitivty/reviewList", method = RequestMethod.GET) // 会员活动回顾
	public String adminActivityReviewList(HttpServletRequest request, HttpServletResponse response, Model model) {
		prepareList(request, response, model, ContentType.activity_review, "往期回顾");
		return "modules/memberActivity/activity";
	}
	
	//芝麻推荐
	@RequestMapping(value = "/recommend/articleList", method = RequestMethod.GET) // 推荐好文
	public String adminRecommendList(HttpServletRequest request, HttpServletResponse response, Model model) {
		prepareList(request, response, model, ContentType.essay_post, "好文分享");
		return "modules/recommend/recommend";
	}
	
	@RequestMapping(value = "/recommend/bookList", method = RequestMethod.GET) // 推荐书籍
	public String adminRecommendBookList(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		prepareList(request, response, model, ContentType.book_post, "书籍推荐");
		return "modules/recommend/recommend";
	}

	@RequestMapping(value="/post/detail", method=RequestMethod.GET)
	public String postDetail(HttpServletRequest request, HttpServletResponse response, Model model){
		String id = request.getParameter("id");
		ContentPost post = postService.findById(id);
		
		//阅读次数＋1
		post.setVisitedTimes(post.getVisitedTimes()+1);
		postService.update(post);
		String thead = "";
		if(post != null){
			int type = post.getCateId();
			switch (type) {
			case 1:
				thead = "活动预告及报名";
				break;
			case 2:
				thead = "往期回顾";
				break;
			case 3:
				thead = "好文推荐";
				break;
			case 4:
				thead = "书籍推荐";
				break;
			default:
				break;
			}
		}
		
		model.addAttribute("thead", thead);	
		model.addAttribute("post", post);
		return "modules/postDetail";
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
	
}
