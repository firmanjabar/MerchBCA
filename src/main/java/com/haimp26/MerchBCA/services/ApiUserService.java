package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.User;

public interface ApiUserService {
    public Iterable<User> findAll();
}
