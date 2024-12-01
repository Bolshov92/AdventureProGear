package com.example.adventureprogearjava.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductCharacteristicDTO {

    private Long id;
    private String name;
    private String dataType;
    private Long productId;

}
