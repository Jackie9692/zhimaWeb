package com.zhima.dev.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhima.dev.bo.ContentType;
import com.zhima.dev.service.ContentTypeService;

@Controller
@RequestMapping("/content")
public class ContentController {
	private ContentTypeService contentTypeService;
	@Autowired
	public void setContentTypeService(ContentTypeService contentTypeService) {
		this.contentTypeService = contentTypeService;
	}
	
	@RequestMapping(value="contentType", method=RequestMethod.GET)
	public String getContentType(HttpServletRequest request, HttpServletResponse response, Model model){
		List<ContentType> contentTypeList = contentTypeService.findList();
		model.addAttribute("list", contentTypeList);
		return "modules/contentType";
	}
	
	
	
	
	
	

	
	
	
	
}
