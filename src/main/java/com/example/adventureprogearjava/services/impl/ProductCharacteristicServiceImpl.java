package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import com.example.adventureprogearjava.entity.CategoryCharacteristic;
import com.example.adventureprogearjava.entity.Product;
import com.example.adventureprogearjava.entity.ProductCharacteristic;
import com.example.adventureprogearjava.exceptions.ResourceNotFoundException;
import com.example.adventureprogearjava.repositories.ProductCharacteristicRepository;
import com.example.adventureprogearjava.repositories.CategoryCharacteristicRepository;
import com.example.adventureprogearjava.repositories.ProductRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductCharacteristicServiceImpl implements CRUDService<ProductCharacteristicDTO> {

    private final ProductCharacteristicRepository repository;
    private final CategoryCharacteristicRepository categoryCharacteristicRepository;
    private final ProductRepository productRepository;

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

        CategoryCharacteristic categoryCharacteristic = categoryCharacteristicRepository.findById(characteristicDTO.getCategoryCharacteristicId())
                .orElseThrow(() -> new RuntimeException("CategoryCharacteristic not found"));
        characteristic.setCategoryCharacteristic(categoryCharacteristic);

        Product product = productRepository.findById(characteristicDTO.getProductId())
                .orElseThrow(() -> new RuntimeException("Product not found with ID: " + characteristicDTO.getProductId()));
        characteristic.setProduct(product);
        return characteristic;
    }

    @Override
    public List<ProductCharacteristicDTO> getAll() {
        return repository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Transactional
    public List<ProductCharacteristicDTO> getCharacteristicsByProductName(String productName) {
        Product product = productRepository.findByNameEnOrNameUa(productName)
                .orElseThrow(() -> {
                    throw new ResourceNotFoundException("Product not found with name: " + productName);
                });

        return product.getProductCharacteristics().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public ProductCharacteristicDTO getById(Long id) {
        ProductCharacteristic characteristic = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Product not found with id: " + id));
        return convertToDTO(characteristic);
    }

    @Override
    public ProductCharacteristicDTO create(ProductCharacteristicDTO characteristicDTO) {
        if (characteristicDTO.getProductId() == null) {
            throw new IllegalArgumentException("Product ID must not be null");
        }
        if (characteristicDTO.getCategoryCharacteristicId() == null) {
            throw new IllegalArgumentException("CategoryCharacteristic ID must not be null");
        }
        productRepository.findById(characteristicDTO.getProductId())
                .orElseThrow(() -> new ResourceNotFoundException("Product not found with id: " + characteristicDTO.getProductId()));

        ProductCharacteristic characteristic = convertToEntity(characteristicDTO);
        ProductCharacteristic savedCharacteristic = repository.save(characteristic);
        return convertToDTO(savedCharacteristic);
    }

    @Override
    @Transactional
    public void update(ProductCharacteristicDTO characteristicDTO, Long id) {
        ProductCharacteristic existingCharacteristic = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("ProductCharacteristic not found with id: " + id));

        if (characteristicDTO.getId() != null && !characteristicDTO.getId().equals(existingCharacteristic.getId())) {
            throw new RuntimeException("ID mismatch");
        }

        if (characteristicDTO.getValue() != null) {
            existingCharacteristic.setValue(characteristicDTO.getValue());
        }

        if (characteristicDTO.getCategoryCharacteristicId() != null) {
            CategoryCharacteristic categoryCharacteristic = categoryCharacteristicRepository.findById(characteristicDTO.getCategoryCharacteristicId())
                    .orElseThrow(() -> new ResourceNotFoundException("CategoryCharacteristic not found with id: " + characteristicDTO.getCategoryCharacteristicId()));

            existingCharacteristic.setCategoryCharacteristic(categoryCharacteristic);

            if (categoryCharacteristic.getName() != null) {
                characteristicDTO.setName(categoryCharacteristic.getName());
            }
        }

        if (characteristicDTO.getProductId() != null) {
            Product product = productRepository.findById(characteristicDTO.getProductId())
                    .orElseThrow(() -> new ResourceNotFoundException("Product not found with id: " + characteristicDTO.getProductId()));

            existingCharacteristic.setProduct(product);
            characteristicDTO.setProductId(product.getId());
        }

        repository.save(existingCharacteristic);

        characteristicDTO.setId(existingCharacteristic.getId());
        characteristicDTO.setName(characteristicDTO.getName() != null ? characteristicDTO.getName() : existingCharacteristic.getCategoryCharacteristic().getName());

    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
