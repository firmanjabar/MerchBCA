package com.haimp26.MerchBCA.models.repos;

import com.haimp26.MerchBCA.models.entities.Product;
import org.springframework.data.repository.CrudRepository;

public interface ApiProductRepo extends CrudRepository<Product, Long> {
}
