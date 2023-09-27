package com.kshop.main.controller.rest;

import java.util.List;
import java.util.Map;
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

import com.kshop.main.common.APIResponse;
import com.kshop.main.domain.Customers;
import com.kshop.main.service.CustomerService;
import com.kshop.main.service.SessionService;
import com.kshop.main.utils.MD5;


@RestController
@RequestMapping("/Customer")
@CrossOrigin
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	@Autowired
	SessionService sessionService;
	
	private List<Customers> hiddenPassword(List<Customers> list) {
        for(Customers item : list) {
            item.setPassword("");
        }
        return list;
    }
    
    private Customers hiddenPassword_(Customers item) {
        item.setPassword("");
        return item;
    }
	
	/** Api get all Customers 
	 * 
	 * - GET Method: __/get
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/get") // api get all Customers
	public List<Customers> getAllCustomers() {
		
		return hiddenPassword(customerService.findAll());
	}

	
	/** Api get last item in Customers 
	 * 
	 * - GET Method: __/getLast
	 * - Return(JSON): list item
	 * 
	 * */
	@GetMapping("/getLast")
	public Customers getLastCustomers() {
		
		List<Customers> list = customerService.findAll();
		int totalItem = list.size();
		
		return list.get(totalItem - 1);
	}

	
	/** Api get first item in Customers 
	 * 
	 * - GET Method: __/getFirst
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/getFirst")
	public Customers getFirstCustomers() {
		
		return customerService.findAll().get(0);
	}

	
	/** Api get item by id in Customers 
	 * 
	 * - GET Method: __/get/{id}
	 * - Return(JSON): item
	 * 
	 * */
	@GetMapping("/get/{id}")
	public Customers getShopVoucher(@PathVariable Long id) {
		Optional<Customers> itemCustomers = customerService.findById(id);
		if(itemCustomers.isPresent()) {
			return hiddenPassword_(itemCustomers.get());
		} 
		
		return null;
	}

	
	/** Api add item to Customers 
	 * 
	 * - POST Method: __/add
	 * - --data-raw: JSON
	 * - Return(JSON): item
	 * 
	 * */
	@PostMapping("/add")
	public Customers addCustomers(@RequestBody Customers Customers) {
		
		customerService.save(Customers);
		
		return hiddenPassword_(getLastCustomers());
	}
	
	//change password
	@PostMapping("/changepassword")
    public APIResponse changePassword(@RequestBody Map<String, String> objMap) {
        
        APIResponse response = new APIResponse();
        
        String password = MD5.encode(objMap.get("currentPass"));
        String new_password = objMap.get("newPass");
        
        Customers customers = (Customers) sessionService.get("userLogin");
        if(customers == null) {
            response.setData("Đã xảy ra lỗi, vui lòng thử lại. Error code: 169");
            return response;
        }
        Customers customer = customerService.findById(customers.getId()).get();
        System.out.println(new_password);
        if(customer.getPassword().equals(password)) {
            
            response.setStatus(200);            
            customer.setPassword(MD5.encode(new_password));   
            
            customerService.save(customer);
            
            response.setData("Đổi mật khẩu thành công");
        } else {
            
            response.setStatus(104);
            response.setData("Mật khẩu cũ không đúng.");
        }
        
        return response;
    }

	
	/** Api update item 
	 * 
	 * - PUT Method: __/update
	 * - --data-raw: JSON
	 * - Return(JSON): item
	 * 
	 * */
	@PutMapping("/update")
	public Customers updateCustomers(@RequestBody Customers Customers) {
	    
	    Customers customer = (Customers) sessionService.get("userLogin");
	    if(customer == null) return customer;
	    String password = customerService.findById(customer.getId()).get().getPassword();
	    
	    Customers.setEmail(customer.getEmail());
	    Customers.setPassword(password);
	    Customers.setUsername(customer.getUsername());
	    Customers.setCreated_at(customer.getCreated_at());
	    
	    boolean status = true;
	    //check xác nhận người dùng
	    //....
	    
	    Customers.setStatus(status);
		
		customerService.save(Customers);
		
		return customerService.findById(Customers.getId()).get();
	}
	
	
	/** Api delete item 
	 * 
	 * - DELETE Method: __/delete/{id}
	 * - Return(JSON): item
	 * 
	 * */
	@DeleteMapping("/delete/{id}")
	public Customers deleteCustomers(@PathVariable Long id) {
		
		Customers item = customerService.findById(id).get();
		
		customerService.delete(item);
		
		return item;
	}
}
