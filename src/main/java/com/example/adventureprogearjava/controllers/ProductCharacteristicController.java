package com.example.adventureprogearjava.controllers;

import com.example.adventureprogearjava.annotation.ProductCharacteristicController.*;
import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import com.example.adventureprogearjava.services.impl.ProductCharacteristicServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/public/product-characteristics")
@RequiredArgsConstructor
public class ProductCharacteristicController {

    private final ProductCharacteristicServiceImpl productCharacteristicService;

    @GetAllProductCharacteristic
    public List<ProductCharacteristicDTO> getAllProductCharacteristics() {
        return productCharacteristicService.getAll();
    }

    @GetProductCharacteristicById(path = "/{id}")
    public ResponseEntity<ProductCharacteristicDTO> getProductCharacteristicById(@PathVariable Long id) {
        ProductCharacteristicDTO productCharacteristicDTO = productCharacteristicService.getById(id);
        return ResponseEntity.ok(productCharacteristicDTO);
    }

    @GetProductCharacteristicByName(path = "/by-name/{productName}")
    public ResponseEntity<List<ProductCharacteristicDTO>> getProductCharacteristicsByName(
            @PathVariable String productName) {
        List<ProductCharacteristicDTO> productCharacteristics = productCharacteristicService.getCharacteristicsByProductName(productName);
        return ResponseEntity.ok(productCharacteristics);
    }

    @CreateProductCharacteristic
    public ResponseEntity<ProductCharacteristicDTO> createProductCharacteristic(@RequestBody ProductCharacteristicDTO productCharacteristicDTO) {
        ProductCharacteristicDTO savedProductCharacteristic = productCharacteristicService.create(productCharacteristicDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedProductCharacteristic);
    }

    @UpdateProductCharacteristic(path = "/{id}")
    public ResponseEntity<ProductCharacteristicDTO> updateProductCharacteristic(
            @RequestBody ProductCharacteristicDTO productCharacteristicDTO, @PathVariable Long id) {
        productCharacteristicService.update(productCharacteristicDTO, id);
        return ResponseEntity.ok(productCharacteristicDTO);
    }

    @DeleteProductCharacteristic(path = "/{id}")
    public ResponseEntity<Void> deleteProductCharacteristic(@PathVariable Long id) {
        productCharacteristicService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
