package com.example.adventureprogearjava.controllers;

import com.example.adventureprogearjava.annotation.productController.*;
import com.example.adventureprogearjava.dto.ProductDTO;
import com.example.adventureprogearjava.services.CRUDService;
import com.example.adventureprogearjava.services.ProductService;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/public/products")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Tag(name = "Product Controller",
        description = "API operations for the product catalog")
@Slf4j
public class ProductController {
    CRUDService<ProductDTO> productCRUDService;

    ProductService productService;

    @GetAllProducts(path = "")
    public List<ProductDTO> getAllProducts(
            @RequestParam(required = false) String gender,
            @RequestParam(required = false) String category,
            @RequestParam(required = false) Long priceFrom,
            @RequestParam(required = false) Long priceTo) {
        return productService.getAllProducts(gender, category, priceFrom, priceTo);
    }

    @GetProductById(path = "/{id}")
    public ProductDTO getProductById(@PathVariable Long id) {
        return productCRUDService.getById(id);
    }

    @GetProductsByName(path = "/search")
    public List<ProductDTO> getProductsByName(@RequestParam String name) {
        return productService.getProductsByName(name);
    }

    @CreateProduct(path = "")
    public ProductDTO createProduct(@Valid @RequestBody ProductDTO productDTO) {
        return productCRUDService.create(productDTO);
    }

    @UpdateProduct(path = "/{id}")
    public void updateProduct(@PathVariable Long id, @Valid @RequestBody ProductDTO productDTO) {
        productCRUDService.update(productDTO, id);
    }

    @DeleteProduct(path = "/{id}")
    public void deleteProduct(@PathVariable Long id) {
        productCRUDService.delete(id);
    }

    @GetProductsByFilters(path = "/filter")
    public List<ProductDTO> getProductsByFilters(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) Long subcategoryId,
            @RequestParam(required = false) Long priceFrom,
            @RequestParam(required = false) Long priceTo,
            @RequestParam(required = false) String gender) {


        return productService.getProductsByAdvancedFilters(categoryId, subcategoryId,
                priceFrom, priceTo, gender);
    }
}
