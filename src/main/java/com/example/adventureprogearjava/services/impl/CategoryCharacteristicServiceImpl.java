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
