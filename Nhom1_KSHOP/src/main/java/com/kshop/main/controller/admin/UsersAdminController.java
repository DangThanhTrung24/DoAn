package com.kshop.main.controller.admin;


import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kshop.main.common.Constant;
import com.kshop.main.service.SessionService;
import com.kshop.main.service.UserHasRolesService;
import com.kshop.main.utils.Roles;

@Controller
@RequestMapping("/admin-panel")
public class UsersAdminController extends com.kshop.main.controller.Controller {
    
    @Autowired
    HttpServletResponse response;
    @Autowired
    SessionService sessionService;
    @Autowired
    UserHasRolesService userHasRolesService;
    
    private List<Long> listRole = Arrays.asList(Constant.ROLES.ADMIN);
    
	@GetMapping("users")
	public String layout(Model model) throws IOException { 
        
        boolean isAdmin = Roles.UserHasRoles(listRole, sessionService, userHasRolesService);
        if(!isAdmin) {
            response.sendRedirect("/404");
        }
	    
	    dataLayoutMaster.setView("admin/user/list");
	    dataLayoutMaster.setJsList(Arrays.asList("/admin/assets/users/script.js"));
	    	    
	    dataLayoutMaster.setObjs(objsDataLayout);
	    
	    model.addAttribute(__CONTENT__, dataLayoutMaster);
	    
	    return adminLayout;
	}
    
	
    @GetMapping("add/users")
    public String add(Model model) throws IOException { 
        
        boolean isAdmin = Roles.UserHasRoles(listRole, sessionService, userHasRolesService);
        if(!isAdmin) {
            response.sendRedirect("/404");
        }
        
        dataLayoutMaster.setView("admin/user/add");
                
        dataLayoutMaster.setObjs(objsDataLayout);
        
        model.addAttribute(__CONTENT__, dataLayoutMaster);
        
        return adminLayout;
    }
}
