package com.haimp26.MerchBCA.controllers;

import com.haimp26.MerchBCA.models.entities.Category;
import com.haimp26.MerchBCA.models.entities.Product;
import com.haimp26.MerchBCA.models.repos.CategoryRepo;
import com.haimp26.MerchBCA.models.repos.ProductRepo;
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
public class ProductController {

    @Value("${app.apikey}")
    private String apikey;

    @Autowired
    ProductRepo productRepo;

    @Autowired
    CategoryRepo categoryRepo;

    @GetMapping("/products")
    public String getListProduct(Model model){
        List<Product> listProducts = productRepo.findAll();
        model.addAttribute("listProducts", listProducts);
        model.addAttribute("apikey", apikey);

        return "products";
    }

    @GetMapping("/products/add")
    public String getAddProduct(Model model){
        List<Category> listCategories = categoryRepo.findAll();
        model.addAttribute("listCategories", listCategories);

        model.addAttribute("product", new Product());
        model.addAttribute("apikey", apikey);

        return "add_product";
    }

    @PostMapping("/products")
    public String postProduct(Product product){
        productRepo.save(product);

        return "redirect:/products";
    }

    @GetMapping("/products/edit/{id}")
    public String getEditProduct(@PathVariable("id") Long id, Model model){
        List<Category> listCategories = categoryRepo.findAll();
        model.addAttribute("listCategories", listCategories);

        model.addAttribute("product", productRepo.findById(id).get());
        model.addAttribute("apikey", apikey);

        return "edit_product";
    }

    @PostMapping("/products/{id}")
    public String updateProduct(@PathVariable("id") Long id, @ModelAttribute("product") Product product, Model model){
        Product getProduct = productRepo.findById(id).get();
        getProduct.setId(id);
        getProduct.setName(product.getName());
        getProduct.setProduct_numb(product.getProduct_numb());
        getProduct.setCategory(product.getCategory());
        getProduct.setStock(product.getStock());
        getProduct.setImage(product.getImage());

        productRepo.save(getProduct);

        return "redirect:/products";
    }

    @GetMapping("/products/{id}")
    public String deleteProduct(@PathVariable("id") Long id){
        productRepo.deleteById(id);
        return "redirect:/products";
    }

    @GetMapping("/products/view/{id}")
    public String getViewProduct(@PathVariable("id") Long id, Model model){
        model.addAttribute("product", productRepo.findById(id).get());
        model.addAttribute("apikey", apikey);

        return "view_product";
    }
}
