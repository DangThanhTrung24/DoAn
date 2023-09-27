package com.kshop.main.controller.client;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kshop.main.domain.Customers;
import com.kshop.main.domain.ShopUsersCart;
import com.kshop.main.service.SessionService;
import com.kshop.main.service.ShopUsersCartService;

@Controller
@RequestMapping("/checkout")
public class CheckOutController extends com.kshop.main.controller.Controller {
	
    @Autowired
    ShopUsersCartService shopUsersCartService;
    @Autowired
    SessionService sessionService;
    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;
    
    private boolean isCheckout() {
        Customers customers = sessionService.get("userLogin", null);
        List<ShopUsersCart> list = shopUsersCartService.selectAllByCustomerId(customers.getId());
        
        boolean isCheckout = list.stream().anyMatch(e -> e.is_checked());
        
        return isCheckout;
    }
	
	@GetMapping("")
	public String layout(Model model) throws IOException {
	    
	    if(!isCheckout()) {
	        response.sendRedirect("/cart");
	    }
	    
	    dataLayoutMaster.setView("client/checkout/checkout");
	    dataLayoutMaster.setMainCss("css/style.min.css");
	    dataLayoutMaster.setJsList(Arrays.asList("/js/checkout/checkout.js"));
	    
	    
	    dataLayoutMaster.setObjs(objsDataLayout);
	    
	    model.addAttribute(__CONTENT__, dataLayoutMaster);
	    
	    return clientLayout;
	}
	
	
}
