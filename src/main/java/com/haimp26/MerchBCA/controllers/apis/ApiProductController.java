package com.haimp26.MerchBCA.controllers.apis;

import com.haimp26.MerchBCA.models.entities.Product;
import com.haimp26.MerchBCA.services.ApiProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/products")
public class ApiProductController {
    @Autowired
    ApiProductService apiProductService;

    @RequestMapping("/all")
    public ResponseEntity<Iterable<Product>> findAll(){
        try {
            return new ResponseEntity<Iterable<Product>>(apiProductService.findAll(), HttpStatus.OK);
        }catch (Exception e){
            return new ResponseEntity<Iterable<Product>>(HttpStatus.BAD_REQUEST);
        }
    }
}
