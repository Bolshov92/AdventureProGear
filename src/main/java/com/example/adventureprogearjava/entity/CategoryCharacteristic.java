package com.example.adventureprogearjava.entity;


import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Entity
@Table(name = "category_characteristics")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CategoryCharacteristic  {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "category_characteristics_seq")
    @SequenceGenerator(name = "category_characteristics_seq", sequenceName = "category_characteristics_seq", allocationSize = 1)
    Long id;

    @Column(name = "name", nullable = false)
    String name;

    @Column(name = "data_type", nullable = false)
    String dataType;

    @Column(name = "category_name", nullable = false)
    String categoryName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id", nullable = false)
    Category category;

    @OneToMany(mappedBy = "categoryCharacteristic", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ProductCharacteristic> productCharacteristics;

}
