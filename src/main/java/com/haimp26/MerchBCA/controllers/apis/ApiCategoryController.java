package com.haimp26.MerchBCA.controllers.apis;

import com.haimp26.MerchBCA.models.entities.Category;
import com.haimp26.MerchBCA.services.ApiCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/categories")
public class ApiCategoryController {
    @Autowired
    ApiCategoryService apiCategoryService;

    @RequestMapping("/all")
    public ResponseEntity<Iterable<Category>> findAll(){
        try {
            return new ResponseEntity<Iterable<Category>>(apiCategoryService.findAll(), HttpStatus.OK);
        }catch (Exception e){
            return new ResponseEntity<Iterable<Category>>(HttpStatus.BAD_REQUEST);
        }
    }
}
