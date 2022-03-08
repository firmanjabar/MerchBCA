package com.haimp26.MerchBCA.models.repos;

import com.haimp26.MerchBCA.models.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepo extends JpaRepository<Product, Long> {
}
