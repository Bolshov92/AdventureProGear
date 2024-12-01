package com.example.adventureprogearjava.controllers;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
import com.example.adventureprogearjava.services.impl.CategoryCharacteristicServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/category-characteristics")
@RequiredArgsConstructor
public class CategoryCharacteristicController {

    private final CategoryCharacteristicServiceImpl categoryCharacteristicService;

    @GetMapping
    public List<CategoryCharacteristicDTO> getAllCategoryCharacteristics() {
        return categoryCharacteristicService.getAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<CategoryCharacteristicDTO> getCategoryCharacteristicById(@PathVariable Long id) {
        CategoryCharacteristicDTO characteristicDTO = categoryCharacteristicService.getById(id);
        return ResponseEntity.ok(characteristicDTO);
    }

    @PostMapping
    public ResponseEntity<CategoryCharacteristicDTO> createCategoryCharacteristic(@RequestBody CategoryCharacteristicDTO characteristicDTO) {
        CategoryCharacteristicDTO savedCharacteristic = categoryCharacteristicService.create(characteristicDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedCharacteristic);
    }

    @PutMapping("/{id}")
    public ResponseEntity<CategoryCharacteristicDTO> updateCategoryCharacteristic(
            @RequestBody CategoryCharacteristicDTO characteristicDTO, @PathVariable Long id) {
        categoryCharacteristicService.update(characteristicDTO, id);
        return ResponseEntity.ok(characteristicDTO);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCategoryCharacteristic(@PathVariable Long id) {
        categoryCharacteristicService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
