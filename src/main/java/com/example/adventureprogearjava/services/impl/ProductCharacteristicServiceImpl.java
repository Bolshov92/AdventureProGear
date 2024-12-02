package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import com.example.adventureprogearjava.entity.ProductCharacteristic;
import com.example.adventureprogearjava.repositories.ProductCharacteristicRepository;
import com.example.adventureprogearjava.repositories.CategoryCharacteristicRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductCharacteristicServiceImpl implements CRUDService<ProductCharacteristicDTO> {

    private final ProductCharacteristicRepository repository;
    private final CategoryCharacteristicRepository categoryCharacteristicRepository;

    private ProductCharacteristicDTO convertToDTO(ProductCharacteristic characteristic) {
        return new ProductCharacteristicDTO(
                characteristic.getId(),
                characteristic.getCategoryCharacteristic().getName(),
                characteristic.getValue(),
                characteristic.getProduct().getId(),
                characteristic.getCategoryCharacteristic().getId()

        );
    }

    private ProductCharacteristic convertToEntity(ProductCharacteristicDTO characteristicDTO) {
        ProductCharacteristic characteristic = new ProductCharacteristic();
        characteristic.setValue(characteristicDTO.getValue());

        CategoryCharacteristic categoryCharacteristic = categoryCharacteristicRepository.findById(characteristicDTO.getId())
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));
        characteristic.setCategoryCharacteristic(categoryCharacteristic);

        return characteristic;
    }

    @Override
    public List<ProductCharacteristicDTO> getAll() {
        return repository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public ProductCharacteristicDTO getById(Long id) {
        ProductCharacteristic characteristic = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("ProductCharacteristic not found"));
        return convertToDTO(characteristic);
    }

    @Override
    public ProductCharacteristicDTO create(ProductCharacteristicDTO characteristicDTO) {
        ProductCharacteristic characteristic = convertToEntity(characteristicDTO);
        ProductCharacteristic savedCharacteristic = repository.save(characteristic);
        return convertToDTO(savedCharacteristic);
    }

    @Override
    public void update(ProductCharacteristicDTO characteristicDTO, Long id) {
        ProductCharacteristic existingCharacteristic = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("ProductCharacteristic not found"));
        existingCharacteristic.setValue(characteristicDTO.getValue());

        CategoryCharacteristic categoryCharacteristic = categoryCharacteristicRepository.findById(characteristicDTO.getId())
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));
        existingCharacteristic.setCategoryCharacteristic(categoryCharacteristic);

        repository.save(existingCharacteristic);
    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
