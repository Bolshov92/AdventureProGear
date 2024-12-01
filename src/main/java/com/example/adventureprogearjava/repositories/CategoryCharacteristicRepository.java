package com.example.adventureprogearjava.repositories;

import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryCharacteristicRepository extends JpaRepository<CategoryCharacteristic, Long> {
    List<CategoryCharacteristic> findAllByCategory_Id(Long categoryId);
}
