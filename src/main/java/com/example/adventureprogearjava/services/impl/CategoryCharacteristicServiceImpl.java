package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import com.example.adventureprogearjava.repositories.CategoryCharacteristicRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoryCharacteristicServiceImpl implements CRUDService<CategoryCharacteristicDTO> {

    private final CategoryCharacteristicRepository repository;


    private CategoryCharacteristicDTO convertToDTO(CategoryCharacteristic characteristic) {
        return new CategoryCharacteristicDTO(
                characteristic.getId(),
                characteristic.getName(),
                characteristic.getDataType(),
                characteristic.getCategory().getId()
        );
    }

    @Override
    public List<CategoryCharacteristicDTO> getAll() {
        return repository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public CategoryCharacteristicDTO getById(Long id) {
        CategoryCharacteristic characteristic = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));
        return convertToDTO(characteristic);
    }

    @Override
    public CategoryCharacteristicDTO create(CategoryCharacteristicDTO characteristicDTO) {
        CategoryCharacteristic characteristic = new CategoryCharacteristic();
        characteristic.setName(characteristicDTO.getName());
        characteristic.setDataType(characteristicDTO.getDataType());

        CategoryCharacteristic savedCharacteristic = repository.save(characteristic);
        return convertToDTO(savedCharacteristic);
    }

    @Override
    public void update(CategoryCharacteristicDTO characteristicDTO, Long id) {
        CategoryCharacteristic existingCharacteristic = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));
        existingCharacteristic.setName(characteristicDTO.getName());
        existingCharacteristic.setDataType(characteristicDTO.getDataType());
        repository.save(existingCharacteristic);
    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
