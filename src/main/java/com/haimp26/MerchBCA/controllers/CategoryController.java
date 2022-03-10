package com.haimp26.MerchBCA.controllers;

import com.haimp26.MerchBCA.models.entities.Category;
import com.haimp26.MerchBCA.models.repos.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CategoryController {

    @Value("${app.apikey}")
    private String apikey;

    @Autowired
    CategoryRepo categoryRepo;

    @GetMapping("/categories")
    public String getListCategory(Model model){
        List<Category> listCategories = categoryRepo.findAll();
        model.addAttribute("listCategories", listCategories);
        model.addAttribute("apikey", apikey);

        return "categories";
    }

    @GetMapping("/categories/add")
    public String getAddCategory(Model model){
        model.addAttribute("category", new Category());
        model.addAttribute("apikey", apikey);

        return "add_category";
    }

    @PostMapping("/categories")
    public String postCategory(Category category){
        categoryRepo.save(category);

        return "redirect:/categories";
    }

    @GetMapping("/categories/edit/{id}")
    public String getEditCategory(@PathVariable("id") Long id, Model model){
        model.addAttribute("category", categoryRepo.findById(id).get());
        model.addAttribute("apikey", apikey);

        return "edit_category";
    }

    @PostMapping("/categories/{id}")
    public String updateCategory(@PathVariable("id") Long id, @ModelAttribute("category") Category category, Model model){
        Category getCategory = categoryRepo.findById(id).get();
        getCategory.setId(id);
        getCategory.setName(category.getName());
        getCategory.setDesc(category.getDesc());

        categoryRepo.save(getCategory);

        return "redirect:/categories";
    }

    @GetMapping("/categories/{id}")
    public String deleteCategory(@PathVariable("id") Long id){
        categoryRepo.deleteById(id);
        return "redirect:/categories";
    }
}
