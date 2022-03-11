package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.User;
import com.haimp26.MerchBCA.models.repos.ApiUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;

public interface ApiUserService {
    public Iterable<User> findAll();
    public User create(@RequestBody User user);

}
