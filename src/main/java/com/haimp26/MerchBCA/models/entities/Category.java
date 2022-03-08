package com.haimp26.MerchBCA.models.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name", length = 50, unique = true)
    private String name;
    @Column(name="description", length = 500)
    private String desc;
}
