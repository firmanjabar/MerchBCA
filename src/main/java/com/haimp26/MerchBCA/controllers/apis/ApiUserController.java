package com.haimp26.MerchBCA.controllers.apis;

import com.haimp26.MerchBCA.models.entities.User;
import com.haimp26.MerchBCA.services.ApiUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/users")
public class ApiUserController {
    @Autowired
    ApiUserService apiUserService;

    @RequestMapping("/all")
    public ResponseEntity<Iterable<User>> findAll(){
        try {
            return new ResponseEntity<Iterable<User>>(apiUserService.findAll(), HttpStatus.OK);
        }catch (Exception e){
            return new ResponseEntity<Iterable<User>>(HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping
    public User create(@RequestBody User user){
        return apiUserService.create(user);
    }
}
