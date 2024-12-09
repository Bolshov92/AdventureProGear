package com.example.adventureprogearjava.repositories;

import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryCharacteristicRepository extends JpaRepository<CategoryCharacteristic, Long> {
    List<CategoryCharacteristic> findAllByCategory_Id(Long categoryId);

    @Query("SELECT cc FROM CategoryCharacteristic cc WHERE cc.category.categoryNameEn = :categoryName OR cc.category.categoryNameUa = :categoryName")
    List<CategoryCharacteristic> findByCategoryNameEnOrCategoryNameUa(@Param("categoryName") String categoryName);

}
