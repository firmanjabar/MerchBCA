package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.Product;
import com.haimp26.MerchBCA.models.repos.ApiProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("apiProductService")
public class ApiProductServiceImp implements ApiProductService{

    @Autowired
    ApiProductRepo apiProductRepo;

    @Override
    public Iterable<Product> findAll() {
        return apiProductRepo.findAll();
    }
}
