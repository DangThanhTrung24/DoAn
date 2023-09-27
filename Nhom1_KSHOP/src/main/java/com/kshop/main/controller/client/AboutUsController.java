package com.kshop.main.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about-us-dev")
public class AboutUsController extends com.kshop.main.controller.Controller {
	
	
	@GetMapping("")
	public String layout(Model model) {
	    
	    dataLayoutMaster.setView("client/about-us/about-us");
	    dataLayoutMaster.setMainCss("css/style.min.css");
	    
	    objsDataLayout.put("key", "value");
	    
	    dataLayoutMaster.setObjs(objsDataLayout);
	    
	    model.addAttribute(__CONTENT__, dataLayoutMaster);
	    
	    return clientLayout;
	}
}
