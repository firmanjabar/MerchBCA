package com.haimp26.MerchBCA.controllers;

import com.haimp26.MerchBCA.models.entities.User;
import com.haimp26.MerchBCA.models.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserRepo userRepo;

    @GetMapping("/users")
    public String getListUser(Model model){
        List<User> listUsers = userRepo.findAll();
        model.addAttribute("listUsers", listUsers);

        return "users";
    }

    @GetMapping("/users/add")
    public String getAddUser(Model model){
        model.addAttribute("user", new User());

        return "add_user";
    }

    @GetMapping("/users/edit/{id}")
    public String getEditUser(@PathVariable("id") Long id, Model model){
        model.addAttribute("user", userRepo.findById(id).get());

        return "edit_user";
    }

    @PostMapping("/users/{id}")
    public String updateUser(@PathVariable("id") Long id, @ModelAttribute("user") User user, Model model){
        User getUser = userRepo.findById(id).get();
        getUser.setId(id);
        getUser.setName(user.getName());
        getUser.setEmail(user.getEmail());

        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String encodedPass = bCryptPasswordEncoder.encode(user.getPassword());
        getUser.setPassword(encodedPass);

        userRepo.save(getUser);

        return "redirect:/users";
    }

    @PostMapping("/users")
    public String postUser(User user){
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String encodedPass = bCryptPasswordEncoder.encode(user.getPassword());
        user.setPassword(encodedPass);

        userRepo.save(user);

        return "redirect:/users";
    }

    @GetMapping("/users/{id}")
    public String deleteUser(@PathVariable("id") Long id){
        userRepo.deleteById(id);
        return "redirect:/users";
    }
}
