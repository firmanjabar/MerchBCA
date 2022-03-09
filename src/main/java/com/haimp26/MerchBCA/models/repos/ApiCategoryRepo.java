package com.haimp26.MerchBCA.models.repos;

import com.haimp26.MerchBCA.models.entities.Category;
import org.springframework.data.repository.CrudRepository;

public interface ApiCategoryRepo extends CrudRepository<Category, Long> {
}
