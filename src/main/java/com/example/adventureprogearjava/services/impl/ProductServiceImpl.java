package com.example.adventureprogearjava.services.impl;

import com.example.adventureprogearjava.dto.CategoryDTO;
import com.example.adventureprogearjava.dto.ProductDTO;
import com.example.adventureprogearjava.entity.enums.Gender;
import com.example.adventureprogearjava.mapper.ProductMapper;
import com.example.adventureprogearjava.repositories.CategoryRepository;
import com.example.adventureprogearjava.repositories.ProductRepository;
import com.example.adventureprogearjava.services.CRUDService;
import com.example.adventureprogearjava.services.ProductService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ProductServiceImpl implements ProductService {
    ProductRepository productRepo;

    ProductMapper mapper;

    @Autowired
    CRUDService<ProductDTO> productCRUDService;

    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<ProductDTO> getProductsByName(String productName) {
        log.info("Getting products by name");
        return productRepo.findByProductName(productName)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByGender(String gender) {
        log.info("Getting products by gender");
        String upperGender = gender.toUpperCase();
        return productRepo.findByGender(upperGender)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByCategory(String category) {
        log.info("Getting products by category");
        return productRepo.findByCategory(category)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByCategoryAndGender(String category, String gender) {
        log.info("Getting products by category and gender");
        return productRepo.findByCategoryAndGender(category, gender)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPrice(Long priceFrom, Long priceTo) {
        log.info("Getting products by price");
        return productRepo.findByBasePriceBetween(priceFrom, priceTo)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPriceAndGender(Long priceFrom, Long priceTo, String gender) {
        log.info("Getting products by price and gender");
        return productRepo.findByBasePriceBetween(priceFrom, priceTo)
                .stream()
                .filter(product -> product.getGender().equals(Gender.valueOf(gender)))
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPriceAndCategory(Long priceFrom, Long priceTo, String category) {
        log.info("Getting products by price and category");
        return productRepo.findByBasePriceBetween(priceFrom, priceTo)
                .stream()
                .filter(product -> product.getCategory().getCategoryNameEn().equals(category))
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPriceAndCategoryAndGender(Long priceFrom, Long priceTo, String category, String gender) {
        log.info("Getting products by price and category and gender");
        return productRepo.findByBasePriceBetween(priceFrom, priceTo)
                .stream()
                .filter(product -> product.getCategory().getCategoryNameEn().equals(category))
                .filter(product -> product.getGender().equals(Gender.valueOf(gender)))
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPriceTo(Long priceTo) {
        log.info("Getting products with price up to {}", priceTo);
        return productRepo.findByBasePriceLessThanEqual(priceTo)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public List<ProductDTO> getProductsByPriceFrom(Long priceFrom) {
        log.info("Getting products with price from {}", priceFrom);
        return productRepo.findByBasePriceGreaterThanEqual(priceFrom)
                .stream()
                .map(mapper::toDto)
                .toList();
    }

    @Override
    public Page<ProductDTO> getAllProducts(String gender, String category, Long priceFrom, Long priceTo, int page, int size) {
        log.info("🔍 [START] Отримання всіх продуктів з пагінацією");

        Pageable pageable = PageRequest.of(page, size);
        Long categoryId = (category != null) ? Long.valueOf(category) : null;

        // Виконання SQL-запиту
        Page<Object[]> results = productRepository.findByFilters(categoryId, priceFrom, priceTo, gender, pageable);

        // Мапимо результати у ProductDTO
        Page<ProductDTO> products = results.map(row -> ProductDTO.builder()
                .productId(((Number) row[0]).longValue())  // productId
                .productNameUa((String) row[1])  // productNameUa
                .productNameEn((String) row[2])  // productNameEn
                .descriptionUa((String) row[3])  // descriptionUa
                .descriptionEn((String) row[4])  // descriptionEn
                .basePrice(((Number) row[5]).longValue())  // basePrice
                .gender(Gender.valueOf((String) row[6]))  // gender
                .averageRating(((Number) row[7]).doubleValue())  // averageRating
                .reviewCount(((Number) row[8]).intValue())  // reviewCount
                .category(CategoryDTO.builder()
                        .id(((Number) row[9]).longValue())  // categoryId
                        .categoryNameEn((String) row[10])  // categoryNameEn
                        .categoryNameUa((String) row[11])  // categoryNameUa
                        .build())
                .selfLink("https://adventure-production.up.railway.app/api/public/products/" + ((Number) row[0]).longValue())
                .build());

        return products;
    }


    @Override
    public Page<ProductDTO> getProductsByAdvancedFilters(Long categoryId, Long subcategoryId, Long priceFrom, Long priceTo, String gender, int page, int size) {
        log.info("🔍 [START] Отримання продуктів з фільтрами + пагінацією");

        validateFilters(categoryId, subcategoryId, priceFrom, priceTo, gender);

        Pageable pageable = PageRequest.of(page, size);

        Page<Object[]> results = productRepository.findByFilters(categoryId, priceFrom, priceTo, gender, pageable);

        Page<ProductDTO> products = results.map(row -> ProductDTO.builder()
                .productId(((Number) row[0]).longValue())  // productId
                .productNameUa((String) row[1])  // productNameUa
                .productNameEn((String) row[2])  // productNameEn
                .descriptionUa((String) row[3])  // descriptionUa
                .descriptionEn((String) row[4])  // descriptionEn
                .basePrice(((Number) row[5]).longValue())  // basePrice
                .gender(Gender.valueOf((String) row[6]))  // gender
                .averageRating(((Number) row[7]).doubleValue())  // averageRating
                .reviewCount(((Number) row[8]).intValue())  // reviewCount
                .category(CategoryDTO.builder()
                        .id(((Number) row[9]).longValue())  // categoryId
                        .categoryNameEn((String) row[10])  // categoryNameEn
                        .categoryNameUa((String) row[11])  // categoryNameUa
                        .build())
                .selfLink("https://adventure-production.up.railway.app/api/public/products/" + ((Number) row[0]).longValue())
                .build());

        return products;
    }


    private void validateFilters(Long categoryId, Long subcategoryId, Long priceFrom, Long priceTo, String gender) {
        List<Long> numericParams = Arrays.asList(categoryId, subcategoryId, priceFrom, priceTo);
        for (Long param : numericParams) {
            if (param != null && param < 0) {
                throw new IllegalArgumentException("Invalid value: must be a positive number");
            }
        }
        if (priceFrom != null && priceTo != null && priceFrom > priceTo) {
            throw new IllegalArgumentException("PriceFrom cannot be greater than PriceTo");
        }
        if (gender != null) {
            try {
                Gender.valueOf(gender.toUpperCase());
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid gender value: " + gender + ". Allowed values: " + Arrays.toString(Gender.values()));
            }
        }
    }

    private boolean isValidNumber(Long value) {
        return value != null && value >= 0;
    }

}
