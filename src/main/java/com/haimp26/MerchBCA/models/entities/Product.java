package com.haimp26.MerchBCA.models.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name", length = 100)
    private String name;
    private Integer product_numb;
    private String category;
    private Integer stock;
    @Column(length = 600)
    private String image;
}
