package com.example.adventureprogearjava.repositories;

import com.example.adventureprogearjava.entity.ProductCharacteristic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductCharacteristicRepository extends JpaRepository<ProductCharacteristic, Long> {
    List<ProductCharacteristic> findAllByProduct_Id(Long productId);
    @Query("SELECT pc FROM ProductCharacteristic pc JOIN FETCH pc.categoryCharacteristic WHERE pc.product.id = :productId")
    List<ProductCharacteristic> findByProductId(@Param("productId") Long productId);

}
