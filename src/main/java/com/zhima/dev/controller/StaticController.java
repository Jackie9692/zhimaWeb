package com.zhima.dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/static")
public class StaticController {
	
	@RequestMapping(value="/welcome", method=RequestMethod.GET)//欢迎界面
	public String welcomePage(HttpServletRequest request, HttpServletResponse response){
		
		return "modules/welcome";
	}
	
	@RequestMapping(value="/navigate", method=RequestMethod.GET)//首页导航
	public String navigate(HttpServletRequest request, HttpServletResponse response){
		
		return "forward:static/welcome";
	}
	
	@RequestMapping(value="/aboutus", method=RequestMethod.GET)//关于我们
	public String aboutUs(HttpServletRequest request, HttpServletResponse response){
		
		return "home";
	}
	
	@RequestMapping(value="/mentor/init", method=RequestMethod.GET)//人才导师列表
	public String mentorInit(HttpServletRequest request, HttpServletResponse response){
		
		return "mentorInit";
	}
	
	
	@RequestMapping(value="/mentor/detail", method=RequestMethod.GET)//人才导师详情
	public String mentorDetail(HttpServletRequest request, HttpServletResponse response){
		
		
		return "mentor/person" + request.getParameter("id");
	}
	
	
	@RequestMapping(value="/welfareCoperate/init", method=RequestMethod.GET)//公益合作列表
	public String welfareInit(HttpServletRequest request, HttpServletResponse response){
		
		
		return "welfareCoperateInit" + request.getParameter("id");
	}
	
	@RequestMapping(value="/welfareCoperate/detail", method=RequestMethod.GET)//公益合作详情
	public String welfareDetail(HttpServletRequest request, HttpServletResponse response){
		
		
		return "welfareCoperateDetail" + request.getParameter("id");
	}
	
	@RequestMapping(value="/volunteer/init", method=RequestMethod.GET)//志愿者报名列表
	public String volunteerInit(HttpServletRequest request, HttpServletResponse response){
		
		
		return "volunteerInit" + request.getParameter("id");
	}
	
	@RequestMapping(value="/volunteer/detail", method=RequestMethod.GET)//志愿者报名详情
	public String volunteerDetail(HttpServletRequest request, HttpServletResponse response){
		
		
		return "volunteerDetail" + request.getParameter("id");
	}
	
	
	@RequestMapping(value="/ueditor", method=RequestMethod.GET)//ueditor
	public String volunteerUeditor(HttpServletRequest request, HttpServletResponse response){
		
		
		return "modules/testUeditor";
	}
	
	@RequestMapping(value="/imageUpload", method=RequestMethod.POST)//ueditor
	public String imageLoad(HttpServletRequest request, HttpServletResponse response){
		
/*		@SuppressWarnings("deprecation")
		String configPath = request.getRealPath("/static/ueditor/jsp/config.json");
		File file = new java.io.File(configPath);
		
		JSONObject jsonObject =  null;*/
/*		Map<String, Object> configMap = new HashMap<String, Object>();
		configMap.put("imageActionName", "uploadimage");
		configMap.put("imageFieldName", "upfile");
		configMap.put("imageMaxSize", 2048000);
		configMap.put("imageAllowFiles", "[\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"]");
		configMap.put("imageCompressEnable", true);
		configMap.put("imageCompressBorder", 1600);
		configMap.put("imageInsertAlign", "none");
		configMap.put("imagePathFormat", "/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}");
		Uploader uploader = new Uploader(request, configMap);
		uploader.doExec();
//		Json
		
		Uploader uploader = new Uploader(request, null);
		uploader.doExec();
//		uploader.
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		out.write( new ActionEnter( request, "/" ).exec() );
		out.close();*/
		return "modules/testUeditor";
	}
	
	
}
