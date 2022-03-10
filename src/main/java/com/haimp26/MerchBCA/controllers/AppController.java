package com.haimp26.MerchBCA.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @Value("${app.apikey}")
    private String apikey;

    @GetMapping("")
    public String viewHomePage(Model model){
        model.addAttribute("apikey", apikey);
        return "index";
    };


}
