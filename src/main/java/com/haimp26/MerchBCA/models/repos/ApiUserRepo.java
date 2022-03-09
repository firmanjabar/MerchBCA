package com.haimp26.MerchBCA.models.repos;

import com.haimp26.MerchBCA.models.entities.User;
import org.springframework.data.repository.CrudRepository;

public interface ApiUserRepo extends CrudRepository<User, Long> {
}
