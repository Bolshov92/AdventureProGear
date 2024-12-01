package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import com.example.adventureprogearjava.entity.ProductCharacteristic;
import com.example.adventureprogearjava.repositories.ProductCharacteristicRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductCharacteristicServiceImpl implements CRUDService<ProductCharacteristicDTO> {

    private final ProductCharacteristicRepository repository;

    private ProductCharacteristicDTO convertToDTO(ProductCharacteristic characteristic) {
        return new ProductCharacteristicDTO(
                characteristic.getId(),
                characteristic.getName(),
                characteristic.getDataType(),
                characteristic.getProduct().getId()
        );
    }

    private ProductCharacteristic convertToEntity(ProductCharacteristicDTO characteristicDTO) {
        ProductCharacteristic characteristic = new ProductCharacteristic();
        characteristic.setName(characteristicDTO.getName());
        characteristic.setDataType(characteristicDTO.getDataType());
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
        existingCharacteristic.setName(characteristicDTO.getName());
        existingCharacteristic.setDataType(characteristicDTO.getDataType());
        repository.save(existingCharacteristic);
    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
