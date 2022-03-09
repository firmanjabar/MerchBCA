package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.Category;
import com.haimp26.MerchBCA.models.repos.ApiCategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("apiCategoryService")
public class ApiCategoryServiceImp implements ApiCategoryService{

    @Autowired
    ApiCategoryRepo apiCategoryRepo;

    @Override
    public Iterable<Category> findAll() {
        return apiCategoryRepo.findAll();
    }
}
