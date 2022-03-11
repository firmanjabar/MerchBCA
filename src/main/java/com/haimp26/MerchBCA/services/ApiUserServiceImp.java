package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.User;
import com.haimp26.MerchBCA.models.repos.ApiUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

@Service("apiUserService")
public class ApiUserServiceImp implements ApiUserService{

    @Autowired
    ApiUserRepo apiUserRepo;

    @Override
    public Iterable<User> findAll() {
        return apiUserRepo.findAll();
    }

    @Override
    public User create(User user) {
        return apiUserRepo.save(user);
    }

}
