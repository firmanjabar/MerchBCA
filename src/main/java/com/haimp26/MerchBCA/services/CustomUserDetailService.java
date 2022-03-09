package com.haimp26.MerchBCA.services;

import com.haimp26.MerchBCA.models.entities.CustomUserDetail;
import com.haimp26.MerchBCA.models.entities.User;
import com.haimp26.MerchBCA.models.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepo.findByEmail(email);
        if (user == null){
            throw new UsernameNotFoundException("Email not found");
        }
        return new CustomUserDetail(user);
    }
}
