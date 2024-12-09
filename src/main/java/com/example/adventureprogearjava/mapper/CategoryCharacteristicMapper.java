package com.example.adventureprogearjava.mapper;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface CategoryCharacteristicMapper {

    @Mapping(source = "category.id", target = "categoryId")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "dataType", target = "dataType")
    @Mapping(source = "id", target = "id")
    CategoryCharacteristicDTO toDto(CategoryCharacteristic characteristic);

    @Mapping(source = "categoryId", target = "category.id")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "dataType", target = "dataType")
    @Mapping(source = "id", target = "id")
    CategoryCharacteristic toEntity(CategoryCharacteristicDTO characteristicDTO);
}
