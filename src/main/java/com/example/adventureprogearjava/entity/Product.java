package com.example.adventureprogearjava.entity;

import com.example.adventureprogearjava.entity.enums.Gender;
import com.example.adventureprogearjava.entity.enums.ProductCategory;
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

    @Enumerated(EnumType.STRING)
    ProductCategory category;

    @OneToMany(mappedBy = "product")
    List<OrdersList> ordersLists;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    List<ProductAttribute> attributes;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    List<ProductContent> contents;

}