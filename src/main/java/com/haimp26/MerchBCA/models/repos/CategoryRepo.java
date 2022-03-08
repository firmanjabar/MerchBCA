package com.haimp26.MerchBCA.models.repos;

import com.haimp26.MerchBCA.models.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepo extends JpaRepository<Category, Long> {
}
