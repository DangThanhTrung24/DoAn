package com.kshop.main.controller.rest;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kshop.main.domain.ProductReviews;
import com.kshop.main.domain.Products;
import com.kshop.main.domain.ProductReviews;
import com.kshop.main.service.ProductReviewsService;


@RestController
@RequestMapping("/ProductReviews")
@CrossOrigin
public class ProductReviewsController {
	
	@Autowired
	ProductReviewsService productReviewsService;

	
	/** Api get all ProductReviews 
	 * 
	 * - GET Method: __/get
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/get") // api get all ProductReviews
	public List<ProductReviews> getAllProductReviews() {
		
		return productReviewsService.findAll();
	}
	
	@GetMapping("/get/productid/{id}") // api get all ProductReviews
	public List<ProductReviews> getAllProductIdReviews(@PathVariable Long id) {
		List<ProductReviews> list = productReviewsService.selectAllByProductId(id);
		return list;
	}
	
//	@GetMapping("/get/{start}/{total}") // api get all Products
//    public List<ProductReviews> getPageProductReviews(@PathVariable int start, @PathVariable int total) {
//        
//        List<ProductReviews> list = productReviewsService.findAll();
////        for(Products item: list) {
////	    	item.setUsers(null);
////	    }
////        Collections.reverse(list);
//        int toStart = start*total;
//        // 12
//        // start-total
//        // 0-5 : toStart = 0*5, toIndex = toStart+total = 5 
//        // 1-5 : toStart = 1*5, toIndex = toStart+total = 10
//        // 2-5 : toStart = 2*5, toIndex = toStart+total = 15 => 12
//        int toIndex = total + toStart;
//        toIndex = toIndex > list.size() ? list.size() : toIndex;
//        
//        return list.subList(toStart, toIndex);
//    }

	
	/** Api get last item in ProductReviews 
	 * 
	 * - GET Method: __/getLast
	 * - Return(JSON): list item
	 * 
	 * */
	@GetMapping("/getLast")
	public ProductReviews getLastProductReviews() {
		
		List<ProductReviews> list = productReviewsService.findAll();
		int totalItem = list.size();
		
		return list.get(totalItem - 1);
	}

	
	/** Api get first item in ProductReviews 
	 * 
	 * - GET Method: __/getFirst
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/getFirst")
	public ProductReviews getFirstProductReviews() {
		
		return productReviewsService.findAll().get(0);
	}

	
	/** Api get item by id in ProductReviews 
	 * 
	 * - GET Method: __/get/{id}
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/get/{id}")
	public ProductReviews getShopVoucher(@PathVariable Long id) {
		Optional<ProductReviews> itemProductReviews = productReviewsService.findById(id);
		if(itemProductReviews.isPresent()) {
			return itemProductReviews.get();
		} 
		
		return null;
	}

	
	/** Api add item to ProductReviews 
	 * 
	 * - POST Method: __/add
	 * - --data-raw: JSON
	 * - Return(JSON): item
	 * 
	 * */
	@PostMapping("/add")
	public ProductReviews addProductReviews(@RequestBody ProductReviews ProductReviews) {
		
		productReviewsService.save(ProductReviews);
		
		return getLastProductReviews();
	}

	
	/** Api update item 
	 * 
	 * - PUT Method: __/update
	 * - --data-raw: JSON
	 * - Return(JSON): item
	 * 
	 * */
	@PutMapping("/update")
	public ProductReviews updateProductReviews(@RequestBody ProductReviews ProductReviews) {
		
		productReviewsService.save(ProductReviews);
		
		return productReviewsService.findById(ProductReviews.getId()).get();
	}
	
	
	/** Api delete item 
	 * 
	 * - DELETE Method: __/delete/{id}
	 * - Return(JSON): item
	 * 
	 * */
	@DeleteMapping("/delete/{id}")
	public ProductReviews deleteProductReviews(@PathVariable Long id) {
		
		ProductReviews item = productReviewsService.findById(id).get();
		
		productReviewsService.delete(item);
		
		return item;
	}
}
