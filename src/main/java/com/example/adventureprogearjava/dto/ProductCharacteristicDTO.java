package com.example.adventureprogearjava.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Data
@NoArgsConstructor
public class ProductCharacteristicDTO {
@JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Long id;
    private String name;
    private String value;
    private Long productId;
    private Long categoryCharacteristicId;


    public ProductCharacteristicDTO(Long id,String name, String value, Long productId, Long categoryCharacteristicId) {
        this.id = id;
        this.name = name;
        this.value = value;
        this.productId = productId;
        this.categoryCharacteristicId = categoryCharacteristicId;

    }

}
