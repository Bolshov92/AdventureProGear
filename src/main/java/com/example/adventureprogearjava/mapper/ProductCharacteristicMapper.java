package com.example.adventureprogearjava.mapper;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import com.example.adventureprogearjava.entity.ProductCharacteristic;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ProductCharacteristicMapper {
    @Mapping(source = "categoryCharacteristic.name", target = "name")
    @Mapping(source = "categoryCharacteristic.id", target = "categoryCharacteristicId")
    @Mapping(source = "product.id", target = "productId")
    ProductCharacteristicDTO toDto(ProductCharacteristic characteristic);

    @Mapping(source = "categoryCharacteristicId", target = "categoryCharacteristic.id")
    @Mapping(source = "productId", target = "product.id")
    ProductCharacteristic toEntity(ProductCharacteristicDTO characteristicDTO);
}


