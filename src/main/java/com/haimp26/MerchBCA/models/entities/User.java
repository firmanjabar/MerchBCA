package com.haimp26.MerchBCA.models.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "full_name", nullable = false)
    private String name;
    @Column(unique = true, nullable = false, length = 75)
    private String email;
    @Column(nullable = false)
    private String password;
}
