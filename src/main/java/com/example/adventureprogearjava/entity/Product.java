package com.example.adventureprogearjava.entity;

import com.example.adventureprogearjava.entity.enums.Gender;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Entity
@Table(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Product extends BaseEntity {

    @Column(name = "product_name", nullable = false)
    String productName;

    @Column
    String description;

    @Column(name = "base_price", nullable = false)
    Long basePrice;

    @Enumerated(EnumType.STRING)
    Gender gender;

    @ManyToOne
    @JoinColumn(name = "category", nullable = false)
    Category category;

    @OneToMany(mappedBy = "product")
    List<OrdersList> ordersLists;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    List<ProductAttribute> attributes;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    List<ProductContent> contents;

}