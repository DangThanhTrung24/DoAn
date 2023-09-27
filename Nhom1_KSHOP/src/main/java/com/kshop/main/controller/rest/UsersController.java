package com.kshop.main.controller.rest;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
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
import com.kshop.main.common.Constant;
import com.kshop.main.domain.ShopStores;
import com.kshop.main.domain.Users;
import com.kshop.main.service.SessionService;
import com.kshop.main.service.ShopStoresService;
import com.kshop.main.service.UsersService;
import com.kshop.main.utils.MD5;

@RestController
@RequestMapping("/Users")
@CrossOrigin
public class UsersController {

    @Autowired
    UsersService usersService;
    @Autowired
    SessionService sessionService;
    @Autowired
    ShopStoresService storesService;

    private List<Users> hiddenPassword(List<Users> list) {
        for (Users item : list) {
            item.setPassword("");
        }
        return list;
    }

    private Users hiddenPassword_(Users item) {
        item.setPassword("");
        return item;
    }

    /**
     * Api get all Users
     * 
     * - GET Method: __/get
     * - Return(JSON): item
     * 
     */
    @GetMapping("/get") // api get all Users
    public List<Users> getAllUsers() {

        return hiddenPassword(usersService.findAll());
    }

    @GetMapping("/get/{start}/{total}") // api get all Users
    public List<Users> getPageUsers(@PathVariable int start, @PathVariable int total) {

        return hiddenPassword(usersService.findAll(PageRequest.of(start, total)).getContent());
    }

    /**
     * Api get last item in Users
     * 
     * - GET Method: __/getLast
     * - Return(JSON): list item
     * 
     */
    @GetMapping("/getLast")
    public Users getLastUsers() {

        List<Users> list = usersService.findAll();
        int totalItem = list.size();

        return list.get(totalItem - 1);
    }

    /**
     * Api get first item in Users
     * 
     * - GET Method: __/getFirst
     * - Return(JSON): item
     * 
     */
    @GetMapping("/getFirst")
    public Users getFirstUsers() {

        return usersService.findAll().get(0);
    }

    /**
     * Api get item by id in Users
     * 
     * - GET Method: __/get/{id}
     * - Return(JSON): item
     * 
     */
    @GetMapping("/get/{id}")
    public Users getShopVoucher(@PathVariable Long id) {
        Optional<Users> itemUsers = usersService.findById(id);
        if (itemUsers.isPresent()) {
            return hiddenPassword_(itemUsers.get());
        }

        return null;
    }

    /**
     * Api add item to Users
     * 
     * - POST Method: __/add
     * - --data-raw: JSON
     * - Return(JSON): item
     * 
     */
    @PostMapping("/add")
    public Users addUsers(@RequestBody Users Users) {

        usersService.save(Users);

        return getLastUsers();
    }

    /**
     * Api update item
     * 
     * - PUT Method: __/update
     * - --data-raw: JSON
     * - Return(JSON): item
     * 
     */
    @PutMapping("/update")
    public APIResponse updateUsers(@RequestBody Users usersBody) {
        
        APIResponse response = new APIResponse();
        
        Users usersLogin = (Users) sessionService.get(Constant.SESSION_LOGIN_TYPE.ADMIN, null);
        
        if(usersLogin == null) {
            response.setError(400);
            response.setData("Token hết hạn hoặc không tồn tại. Vui lòng thử lại");
            response.setError("Error token failed");
            
            return response;
        }
        
        if(!usersLogin.getId().equals(usersBody.getId())) {
            response.setError(400);
            response.setData("Không thể thực hiện hành động này. Vui lòng thử lại");
            response.setError("Error token failed access");
            
            return response;
        }
        Users users = usersService.findById(usersBody.getId()).get();
        
        users.setUpdated_at(new Date());
        
        usersService.save(users);
        
        response.setData("Chỉnh sửa thành công!");      

        return response;
    }
    
    @PutMapping("/updateMoneyType")
    public APIResponse updateMoneyTypeUsers(@RequestBody Map<Object, String> body) {
        
        APIResponse response = new APIResponse();
        
        Users usersLogin = (Users) sessionService.get(Constant.SESSION_LOGIN_TYPE.ADMIN, null);
        
        if(usersLogin == null) {
            response.setError(400);
            response.setData("Token hết hạn hoặc không tồn tại. Vui lòng thử lại");
            response.setError("Error token failed");
            
            return response;
        }
        if(body.get("data") == null) {
            response.setError(400);
            response.setData("Đã xãy ra lỗi, thiếu key data. Vui lòng thử lại");
            response.setError("Error data key not found");
            
            return response;
            
        }
        Users users = usersService.findById(usersLogin.getId()).get();
        Double soduNgoai = Double.parseDouble(body.get("sodu_ngoai"));
        
        users.setInfo_receive_money(body.get("data"));
        users.setUpdated_at(new Date());
        users.setSodu_ngoai(soduNgoai);
        
        usersService.save(users);
        
        response.setData("Chỉnh sửa thành công!");      

        return response;
    }
    
    @PostMapping("/updateProfile")
    public APIResponse updateProfileUsers(@RequestBody Users users) {
        
        APIResponse response = new APIResponse();
        
        Users usersLogin = (Users) sessionService.get(Constant.SESSION_LOGIN_TYPE.ADMIN, null);
        
        if(usersLogin == null) {
            response.setError(400);
            response.setData("Token hết hạn hoặc không tồn tại. Vui lòng thử lại");
            response.setError("Error token failed");
            
            return response;
        }
        if(!usersLogin.getId().equals(users.getId())) {
            response.setError(400);
            response.setData("Không thể thực hiện hành động này. Vui lòng thử lại");
            response.setError("Error token not access.");
            
            return response;
            
        }
        ShopStores shopStores = users.getStores();
        Optional<ShopStores> stores = storesService.findById(shopStores.getId()); 
        if(stores.isEmpty()) {
            response.setError(400);
            response.setData("Không tìm thấy store này. Vui lòng thử lại");
            response.setError("Error store not found.");
            
            return response;
            
        }
        storesService.save(shopStores);
        
        Users usersPost = usersService.findById(usersLogin.getId()).get();
        
        usersPost.setAddress1(users.getAddress1());
        usersPost.setLast_name(users.getLast_name());
        usersPost.setFirst_name(users.getFirst_name());
        usersPost.setCity(users.getCity());
        usersPost.setState(users.getState());
        usersPost.setWard(users.getWard());
        usersPost.setCode(users.getCode());
        usersPost.setPhone(users.getPhone());
//        usersPost.setEmail(users.getEmail());
        usersPost.setStores(shopStores);
        
        usersService.save(usersPost);
        
        response.setData("Chỉnh sửa thành công.");      

        return response;
    }

    /**
     * Api delete item
     * 
     * - DELETE Method: __/delete/{id}
     * - Return(JSON): item
     * 
     */
    @DeleteMapping("/delete/{id}")
    public Users deleteUsers(@PathVariable Long id) {

        Users item = usersService.findById(id).get();

        usersService.delete(item);

        return item;
    }
}
