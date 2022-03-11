package com.haimp26.MerchBCA.models.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "products")
public class Product {

    @Id
    @SequenceGenerator(
            name="product_sequence",
            sequenceName = "product_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "product_sequence"
    )
    private Long id;
//    @Column(name = "name", length = 100)
    private String name;
    private Integer product_numb;
    private String category;
    private Integer stock;
    @Column(length = 600)
    private String image;
}
