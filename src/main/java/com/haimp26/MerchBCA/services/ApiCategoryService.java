package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.Category;

public interface ApiCategoryService {
    public Iterable<Category> findAll();
}
