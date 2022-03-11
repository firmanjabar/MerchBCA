package com.haimp26.MerchBCA.models.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "categories")
public class Category {
    @Id
    @SequenceGenerator(
            name="category_sequence",
            sequenceName = "category_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "category_sequence"
    )
    private Long id;
//    @Column(name = "name", length = 50, unique = true)
    private String name;
//    @Column(name="description", length = 500)
    private String description;
}
