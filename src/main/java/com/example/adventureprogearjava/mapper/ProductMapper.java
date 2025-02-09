package com.example.adventureprogearjava.mapper;

import com.example.adventureprogearjava.dto.*;
import com.example.adventureprogearjava.entity.*;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", uses = {CategoryMapper.class})
public interface ProductMapper {
    String api = "https://adventure-production.up.railway.app/api/public/products/";

    @Mapping(target = "productId", source = "product.id")
    @Mapping(target = "basePrice", source = "product.basePrice")
    @Mapping(target = "gender", source = "product.gender")
    @Mapping(target = "averageRating", source = "product.averageRating")
    @Mapping(target = "reviewCount", source = "product.reviewCount")
    @Mapping(target = "category", source = "product.category", qualifiedByName = "mapToCategoryDto")
    @Mapping(target = "attributes", source = "product.attributes")
    @Mapping(target = "contents", source = "product.contents")
    @Mapping(target = "selfLink", source = "product.id", qualifiedByName = "idToLink")
    @Mapping(target = "characteristics", source = "product.productCharacteristics", qualifiedByName = "mapToProductCharacteristicDtos")
    ProductDTO toDto(Product product);


    @Mapping(target = "basePrice", source = "dto.basePrice")
    @Mapping(target = "gender", source = "dto.gender")
    @Mapping(target = "category", source = "dto.category", qualifiedByName = "mapToCategory")
    @Mapping(target = "attributes", source = "dto.attributes")
    @Mapping(target = "contents", source = "dto.contents")
    @Mapping(target = "productCharacteristics", source = "dto.characteristics", qualifiedByName = "mapToProductCharacteristics")
    Product toEntity(ProductDTO dto);

    @Named("mapToCategoryDto")
    default CategoryDTO mapToCategoryDto(Category category) {
        if (category == null) {
            return null;
        }
        CategoryDTO categoryDTO = new CategoryDTO();
        categoryDTO.setId(category.getId());
        categoryDTO.setCategoryNameEn(category.getCategoryNameEn());
        categoryDTO.setCategoryNameUa(category.getCategoryNameUa());
        categoryDTO.setSectionId(category.getSection() != null ? category.getSection().getId() : null);

        if (category.getParentCategory() != null) {
            categoryDTO.setParentCategoryId(category.getParentCategory().getId());
        }

        if (category.getSubcategories() != null) {
            List<SubcategoryDTO> subcategoryDTOs = category.getSubcategories().stream()
                    .map(this::mapToSubcategoryDto)
                    .collect(Collectors.toList());
            categoryDTO.setSubcategories(subcategoryDTOs);
        }

        categoryDTO.setSelfLink("/categories/" + category.getId());

        return categoryDTO;
    }

    @Named("mapToSubcategoryDto")
    default SubcategoryDTO mapToSubcategoryDto(Category subcategory) {
        if (subcategory == null) {
            return null;
        }
        SubcategoryDTO subcategoryDTO = new SubcategoryDTO();
        subcategoryDTO.setId(subcategory.getId());
        subcategoryDTO.setSubcategoryNameEn(subcategory.getCategoryNameEn());
        subcategoryDTO.setSubcategoryNameUa(subcategory.getCategoryNameUa());
        subcategoryDTO.setParentCategoryId(subcategory.getParentCategory() != null ? subcategory.getParentCategory().getId() : null);

        if (subcategory.getSubcategories() != null) {
            List<SubSubCategoryDTO> subSubCategoryDTOs = subcategory.getSubcategories().stream()
                    .map(this::mapToSubSubCategoryDto)
                    .collect(Collectors.toList());
            subcategoryDTO.setSubSubCategories(subSubCategoryDTOs);
        }
        return subcategoryDTO;
    }

    @Named("mapToSubSubCategoryDto")
    default SubSubCategoryDTO mapToSubSubCategoryDto(Category subSubCategory) {
        if (subSubCategory == null) {
            return null;
        }
        SubSubCategoryDTO subSubCategoryDTO = new SubSubCategoryDTO();
        subSubCategoryDTO.setId(subSubCategory.getId());
        subSubCategoryDTO.setSubSubCategoryNameEn(subSubCategory.getCategoryNameEn());
        subSubCategoryDTO.setSubSubCategoryNameUa(subSubCategory.getCategoryNameUa());
        subSubCategoryDTO.setSubCategoryId(subSubCategory.getParentCategory() != null ? subSubCategory.getParentCategory().getId() : null);

        return subSubCategoryDTO;
    }

    @Named("mapToCategory")
    default Category mapToCategory(CategoryDTO categoryDTO) {
        if (categoryDTO == null) {
            return null;
        }
        Category category = new Category();
        category.setId(categoryDTO.getId());
        category.setCategoryNameEn(categoryDTO.getCategoryNameEn());
        category.setCategoryNameUa(categoryDTO.getCategoryNameUa());

        if (categoryDTO.getSubcategories() != null) {
            List<Category> subcategories = categoryDTO.getSubcategories().stream()
                    .map(this::mapToSubcategory)
                    .collect(Collectors.toList());
            category.setSubcategories(subcategories);
        }

        return category;
    }

    @Named("mapToSubcategory")
    default Category mapToSubcategory(SubcategoryDTO subcategoryDTO) {
        if (subcategoryDTO == null) {
            return null;
        }
        Category subcategory = new Category();
        subcategory.setId(subcategoryDTO.getId());
        subcategory.setCategoryNameEn(subcategoryDTO.getSubcategoryNameEn());
        subcategory.setCategoryNameUa(subcategoryDTO.getSubcategoryNameUa());

        if (subcategoryDTO.getSubSubCategories() != null) {
            List<Category> subSubCategories = subcategoryDTO.getSubSubCategories().stream()
                    .map(this::mapToSubSubCategory)
                    .collect(Collectors.toList());
            subcategory.setSubcategories(subSubCategories);
        }

        return subcategory;
    }

    @Named("mapToSubSubCategory")
    default Category mapToSubSubCategory(SubSubCategoryDTO subSubCategoryDTO) {
        if (subSubCategoryDTO == null) {
            return null;
        }
        Category subSubCategory = new Category();
        subSubCategory.setId(subSubCategoryDTO.getId());
        subSubCategory.setCategoryNameEn(subSubCategoryDTO.getSubSubCategoryNameEn());
        subSubCategory.setCategoryNameUa(subSubCategoryDTO.getSubSubCategoryNameUa());

        return subSubCategory;
    }

    @Named("mapToProductCharacteristicDtos")
    default List<ProductCharacteristicDTO> mapToProductCharacteristicDtos(List<ProductCharacteristic> characteristics) {
        if (characteristics == null) {
            return null;
        }
        return characteristics.stream()
                .map(this::mapToProductCharacteristicDto)
                .collect(Collectors.toList());
    }

    @Named("mapToProductCharacteristicDto")
    default ProductCharacteristicDTO mapToProductCharacteristicDto(ProductCharacteristic productCharacteristic) {
        if (productCharacteristic == null) {
            return null;
        }

        ProductCharacteristicDTO dto = new ProductCharacteristicDTO();
        dto.setId(productCharacteristic.getId());
        dto.setValue(productCharacteristic.getValue());

        if (productCharacteristic.getProduct() != null) {
            dto.setProductId(productCharacteristic.getProduct().getId());
        }

        CategoryCharacteristic categoryCharacteristic = productCharacteristic.getCategoryCharacteristic();
        if (categoryCharacteristic != null) {
            dto.setName(categoryCharacteristic.getName());
        }

        if (categoryCharacteristic != null) {
            dto.setCategoryCharacteristicId(categoryCharacteristic.getId());
        }

        return dto;
    }


    @Named("mapToProductCharacteristics")
    default List<ProductCharacteristic> mapToProductCharacteristics(List<ProductCharacteristicDTO> characteristicDTOs) {
        if (characteristicDTOs == null) {
            return null;
        }
        return characteristicDTOs.stream()
                .map(this::mapToProductCharacteristic)
                .collect(Collectors.toList());
    }

    @Named("mapToProductCharacteristic")
    default ProductCharacteristic mapToProductCharacteristic(ProductCharacteristicDTO productCharacteristicDTO) {
        if (productCharacteristicDTO == null) {
            return null;
        }
        ProductCharacteristic productCharacteristic = new ProductCharacteristic();
        productCharacteristic.setId(productCharacteristicDTO.getId());
        productCharacteristic.setValue(productCharacteristicDTO.getValue());

        CategoryCharacteristic categoryCharacteristic = new CategoryCharacteristic();
        categoryCharacteristic.setId(productCharacteristicDTO.getCategoryCharacteristicId());
        productCharacteristic.setCategoryCharacteristic(categoryCharacteristic);

        return productCharacteristic;
    }

    @Mapping(target = "productId", source = "product.id")
    ProductAttributeDTO toAttributeDto(ProductAttribute attribute);


    @Named("idToLink")
    default String getLink(Long id) {
        return api + id;
    }
}
