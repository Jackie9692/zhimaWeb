package com.zhima.dev.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class AdminController {
	
	
	
/*	private NameService nameService;
	@Autowired
	public void setNameService(NameService nameService) {
		this.nameService = nameService;
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String checkCustomerInfo(HttpServletRequest request, HttpServletResponse response, Model model){
		Person person = nameService.getPerson(1);
		model.addAttribute("customer", person);
		request.setAttribute("name", "wangling");
//		nameService.save();
		String customerName = (String) request.getParameter("content");
		System.out.println(customerName);
		return "customerInfo";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String editCustomer(HttpServletRequest request, HttpServletResponse response, Model model){
		String name = (String) request.getParameter("name");
		System.out.println("/add name: " + name);
		Cookie cookie = new Cookie("customerInfo", "Jackie");
		request.setAttribute("customerName", "<script>console.log(document.cookie);window.open('http://localhost:8080/testapp1/customer/detail?param='+(document.cookie));</script>");
//		request.setAttribute("customerName", "customerName");
		response.addCookie(cookie);
		
		return "home";
	}
	
	@RequestMapping(value="/saveAdd", method=RequestMethod.GET)
	public String addCustomer(HttpServletRequest request, HttpServletResponse response, Model model){
		String name = "Jackie";
		model.addAttribute("username", name);
		return "home";
	}
	
	@RequestMapping(value="/jason", method=RequestMethod.GET)
	@ResponseBody
	public List<Student> testMappingBody(HttpServletRequest request, HttpServletResponse response, Model model){
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", "Jackie");
		map.put("address", "shanghai");
	
		return nameService.findList();
	}*/
	
	
	
	
}
