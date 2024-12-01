package com.example.adventureprogearjava.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "product_characteristics")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductCharacteristic {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_characteristics_seq")
    @SequenceGenerator(name = "product_characteristics_seq", sequenceName = "product_characteristics_seq", allocationSize = 1)
    Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "data_type")
    private String dataType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    private Product product;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_characteristic_id")
    private CategoryCharacteristic categoryCharacteristic;
}
