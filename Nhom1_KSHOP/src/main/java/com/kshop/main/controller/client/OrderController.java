package com.kshop.main.controller.client;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kshop.main.domain.Customers;
import com.kshop.main.domain.Orders;
import com.kshop.main.service.OrderService;
import com.kshop.main.service.SessionService;

@Controller
@RequestMapping("/order")
public class OrderController extends com.kshop.main.controller.Controller {
	
    @Autowired
    OrderService orderService;
    @Autowired
    SessionService sessionService;
    @Autowired
    HttpServletResponse response;
	
	@GetMapping("{idOrder}")
	public String layout(Model model, @PathVariable Long idOrder) throws IOException {
	    
	    dataLayoutMaster.setView("client/order/order");
	    dataLayoutMaster.setMainCss("/css/style.min.css");
	    
	    Optional<Orders> orders = orderService.findById(idOrder);
	    
	    if(orders.isPresent()) {
	        Customers customers = (Customers) sessionService.get("userLogin");
	        
	        if(!customers.getId().equals(orders.get().getCustomers().getId())) {
	            response.sendRedirect("/profile");
	        }
	    }
	    
	    dataLayoutMaster.setObjs(objsDataLayout);
	    
	    model.addAttribute(__CONTENT__, dataLayoutMaster);
	    
	    return clientLayout;
	}
}
