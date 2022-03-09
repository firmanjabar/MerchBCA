package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.Product;

public interface ApiProductService {
    public Iterable<Product> findAll();
}
