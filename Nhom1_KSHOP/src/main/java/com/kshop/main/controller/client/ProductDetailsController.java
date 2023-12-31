package com.kshop.main.controller.client;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kshop.main.domain.ProductImages;
import com.kshop.main.domain.ProductReviews;
import com.kshop.main.domain.ProductTypeItem;
import com.kshop.main.domain.Products;
import com.kshop.main.domain.ShopVouchers;
import com.kshop.main.service.ProductImagesService;
import com.kshop.main.service.ProductTypeItemService;
import com.kshop.main.service.ProductsService;
import com.kshop.main.service.SessionService;
import com.kshop.main.service.UserHasRolesService;
import com.kshop.main.utils.Roles;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@RequestMapping("/product")
public class ProductDetailsController extends com.kshop.main.controller.Controller {
	
    @Autowired
    HttpServletResponse response;
    @Autowired
    ProductsService productsService;
    @Autowired
    ProductImagesService productImagesService;
    @Autowired
    ProductTypeItemService productTypeItemService;
	@Autowired
	SessionService sessionService;
	@Autowired
	UserHasRolesService userHasRolesService;
    
	private List<Long> listRole = Arrays.asList(1L);
	
	@GetMapping("{handleProductRoute}")
	public String layout(Model model, @PathVariable String handleProductRoute) throws IOException {
	    
	    String[] routes = handleProductRoute.split("\\-");
	    
	    Long idProduct = Long.parseLong(routes[routes.length - 1]);
	    String productCode = "";
	    
	    for(int i = 0;i < routes.length - 1; i++) {
	        productCode += routes[i] + "-";
	    }
	    productCode = (productCode + "kodokuprovip").replaceAll("-kodokuprovip", "");
	    
	    Products product = productsService.checkHasProduct(idProduct, productCode);
	    
	    if(product == null) {
	        response.sendRedirect("/");
	    }
	    
        dataLayoutMaster.setView("client/product-details/product-details");
        
        dataLayoutMaster.setMainCss("/css/style.min.css");
        dataLayoutMaster.setCssList(Arrays.asList("/css/photoswipe.min.css", 
                "/css/default-skin.min.css"));
        dataLayoutMaster.setJsList(Arrays.asList("/js/product-detail/script.js", 
                "/js/photoswipe.min.js", 
                "/js/photoswipe-ui-default.min.js",
                "/js/product-detail/product-reviews.js"));
        
        objsDataLayout.put("product", product);
        
        List<ProductImages> productImages = productImagesService.selectsByProductId(product.getId());
        List<ProductTypeItem> productTypeItems = productTypeItemService.selectsByProductId(product.getId());
        List<Map<String, Object>> listMap = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        List<ProductTypeItem> listProductTypeItems = new ArrayList<>();
        if(!productTypeItems.isEmpty()) {

            String firstTypeName = productTypeItems.get(0).getProductType().getName();
            map.put("name", firstTypeName);
            
            for(ProductTypeItem item: productTypeItems) {
                
                if(!firstTypeName.equalsIgnoreCase(item.getProductType().getName())) {
                    map.put("data", listProductTypeItems);
                    Map<String, Object> newMap = new HashMap<>();
                    newMap.put("name", map.get("name"));
                    newMap.put("data", map.get("data"));
                    listMap.add(newMap);
                    map.clear();
                    
                    listProductTypeItems = new ArrayList<>();
                    
                    firstTypeName = item.getProductType().getName();
                    map.put("name", firstTypeName);
                    
                }
                listProductTypeItems.add(item);
            }
            map.put("data", listProductTypeItems);
            listMap.add(map);
            objsDataLayout.put("listMapType", listMap);
        } else {

            objsDataLayout.put("listMapType", new ArrayList<>());
        }
        objsDataLayout.put("imgs", productImages);
        
        dataLayoutMaster.setObjs(objsDataLayout);
        
        model.addAttribute(__CONTENT__, dataLayoutMaster);
        
        return clientLayout;
	}
}
