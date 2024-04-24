package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.CategoryDTO;
import com.example.adventureprogearjava.entity.Category;
import com.example.adventureprogearjava.exceptions.NoContentException;
import com.example.adventureprogearjava.exceptions.ResourceNotFoundException;
import com.example.adventureprogearjava.mapper.CategoryMapper;
import com.example.adventureprogearjava.repositories.CategoryRepository;
import com.example.adventureprogearjava.services.CRUDService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CRUDCategoryServiceImpl implements CRUDService<CategoryDTO> {
    private final static String api = "https://prime-tax-production.up.railway.app/api/public/categories/";

    CategoryRepository categoryRepository;

    CategoryMapper categoryMapper;

    @Override
    public List<CategoryDTO> getAll() {
        log.info("Getting all categories");
        List<CategoryDTO> categoryDTOS = categoryRepository.findAll()
                .stream()
                .filter(category -> category.getCategory() == null)
                .map(categoryMapper::toDTO)
                .toList();
        categoryDTOS.forEach(categoryDTO -> {
            categoryDTO.setSubcategories(categoryRepository
                    .getAllSubCategories(categoryDTO.getId())
                    .stream()
                    .map(categoryMapper::toDTO)
                    .map(this::addLinkForSubcategory)
                    .toList());
            categoryDTO.setSelfLink(api + categoryDTO.getId());
        });
        return categoryDTOS;
    }

    @Override
    public CategoryDTO getById(Long id) {
        log.info("Getting category by id");
        Optional<Category> category = categoryRepository.findById(id);
        if (category.isEmpty()) {
            log.warn("Category not found!");
            throw new ResourceNotFoundException("Resource is not available!");
        }
        CategoryDTO categoryDTO = category.map(categoryMapper::toDTO).get();
        categoryDTO.setSubcategories(categoryRepository
                .getAllSubCategories(categoryDTO.getId())
                .stream()
                .map(categoryMapper::toDTO)
                .map(this::addLinkForSubcategory)
                .toList());
        return addLinkForSubcategory(categoryDTO);
    }

    @Override
    @Transactional
    public CategoryDTO create(CategoryDTO categoryDTO) {
        log.info("Creating new category.");
        categoryRepository.insertCategory(categoryDTO.getCategoryNameEn(), categoryDTO.getCategoryNameUa());
        return categoryDTO;
    }

    @Override
    @Transactional
    public void update(CategoryDTO categoryDTO, Long id) {
        log.info("Updating category by id");
        if (!categoryRepository.existsById(id)) {
            log.warn("Product not found!");
            throw new ResourceNotFoundException("Resource is not available!");
        }
        categoryRepository.updateCategory(categoryDTO.getCategoryNameEn(), categoryDTO.getCategoryNameUa(), id);
    }

    @Override
    public void delete(Long id) {
        log.info("Deleting category by id");
        if (!categoryRepository.existsById(id)) {
            log.warn("No content present!");
            throw new NoContentException("No content present!");
        }
        categoryRepository.deleteById(id);
    }

    private CategoryDTO addLinkForSubcategory(CategoryDTO categoryDTO) {
        categoryDTO.setSelfLink(api + categoryDTO.getId());
        return categoryDTO;
    }
}
