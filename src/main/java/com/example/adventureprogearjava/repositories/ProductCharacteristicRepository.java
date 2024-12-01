package com.example.adventureprogearjava.repositories;

import com.example.adventureprogearjava.entity.ProductCharacteristic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductCharacteristicRepository extends JpaRepository<ProductCharacteristic, Long> {
    List<ProductCharacteristic> findAllByProduct_Id(Long productId);
}
