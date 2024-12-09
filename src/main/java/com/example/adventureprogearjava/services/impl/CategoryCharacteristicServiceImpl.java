package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
import com.example.adventureprogearjava.entity.Category;
import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import com.example.adventureprogearjava.exceptions.ResourceNotFoundException;
import com.example.adventureprogearjava.repositories.CategoryCharacteristicRepository;
import com.example.adventureprogearjava.repositories.CategoryRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
public class CategoryCharacteristicServiceImpl implements CRUDService<CategoryCharacteristicDTO> {

    private final CategoryCharacteristicRepository repository;
    private final CategoryRepository categoryRepository;


    private CategoryCharacteristicDTO convertToDTO(CategoryCharacteristic characteristic) {
        return new CategoryCharacteristicDTO(
                characteristic.getId(),
                characteristic.getName(),
                characteristic.getDataType(),
                characteristic.getCategory().getId()
        );
    }

    private CategoryCharacteristic convertToEntity(CategoryCharacteristicDTO characteristicDTO) {
        CategoryCharacteristic characteristic = new CategoryCharacteristic();
        characteristic.setName(characteristicDTO.getName());
        characteristic.setDataType(characteristicDTO.getDataType());

        Category category = categoryRepository.findById(characteristicDTO.getCategoryId())
                .orElseThrow(() -> new ResourceNotFoundException("Category not found with id: " + characteristicDTO.getCategoryId()));

        characteristic.setCategory(category);
        characteristic.setCategoryName(category.getCategoryNameEn());

        return characteristic;
    }


    public List<CategoryCharacteristicDTO> getCharacteristicsByCategoryName(String categoryName) {
        Category category = (Category) categoryRepository.findByCategoryNameEnOrCategoryNameUa(categoryName, categoryName)
                .orElseThrow(() -> new ResourceNotFoundException("Category not found with name : " + categoryName));

        return category.getCharacteristics().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
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
                .orElseThrow(() -> new ResourceNotFoundException("CategoryCharacteristic not found with id: " + id));
        return convertToDTO(characteristic);
    }

    @Override
    public CategoryCharacteristicDTO create(CategoryCharacteristicDTO characteristicDTO) {
        if (characteristicDTO.getCategoryId() == null) {
            throw new IllegalArgumentException("Category ID must not be null");
        }

        categoryRepository.findById(characteristicDTO.getCategoryId())
                .orElseThrow(() -> new ResourceNotFoundException("Category not found with id: " + characteristicDTO.getCategoryId()));

        CategoryCharacteristic characteristic = convertToEntity(characteristicDTO);
        CategoryCharacteristic savedCharacteristic = repository.save(characteristic);

        return convertToDTO(savedCharacteristic);
    }
    @Override
    @Transactional
    public void update(CategoryCharacteristicDTO characteristicDTO, Long id) {
        CategoryCharacteristic existingCharacteristic = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));

        if (characteristicDTO.getId() != null && !characteristicDTO.getId().equals(existingCharacteristic.getId())) {
            throw new RuntimeException("ID mismatch");
        }

        if (characteristicDTO.getDataType() != null) {
            List<String> validDataTypes = Arrays.asList("STRING", "NUMBER", "BOOLEAN");
            if (!validDataTypes.contains(characteristicDTO.getDataType())) {
                throw new IllegalArgumentException("Invalid dataType: " + characteristicDTO.getDataType());
            }
            existingCharacteristic.setDataType(characteristicDTO.getDataType());
        }

        if (characteristicDTO.getName() != null) {
            existingCharacteristic.setName(characteristicDTO.getName());
        }

        if (characteristicDTO.getCategoryId() != null) {
            Category category = categoryRepository.findById(characteristicDTO.getCategoryId())
                    .orElseThrow(() -> new ResourceNotFoundException("Category not found with id: " + characteristicDTO.getCategoryId()));
            existingCharacteristic.setCategory(category);
        }

        repository.save(existingCharacteristic);
        characteristicDTO.setId(existingCharacteristic.getId());
    }


    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
