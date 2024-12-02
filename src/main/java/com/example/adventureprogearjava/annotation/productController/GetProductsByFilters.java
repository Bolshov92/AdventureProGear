package com.example.adventureprogearjava.annotation.productController;

import com.example.adventureprogearjava.dto.ProductDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.core.annotation.AliasFor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.GET)
@Operation(
        summary = "Filter products by various criteria",
        description = "Retrieves a list of products filtered by optional criteria such as category, subcategory, price range, and gender. " +
                "Note: If no filters are provided, all products will be retrieved.",
        parameters = {
                @Parameter(
                        name = "categoryId",
                        description = "ID of the category to filter by",
                        required = false,
                        schema = @Schema(type = "long")
                ),
                @Parameter(
                        name = "subcategoryId",
                        description = "ID of the subcategory to filter by",
                        required = false,
                        schema = @Schema(type = "long")
                ),
                @Parameter(
                        name = "priceFrom",
                        description = "Minimum price for filtering",
                        required = false,
                        schema = @Schema(type = "long")
                ),
                @Parameter(
                        name = "priceTo",
                        description = "Maximum price for filtering",
                        required = false,
                        schema = @Schema(type = "long")
                ),
                @Parameter(
                        name = "gender",
                        description = "Gender of the products (e.g., 'MALE', 'FEMALE', 'UNISEX')",
                        required = false,
                        schema = @Schema(type = "string")
                )
        },
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation.",
                        content = @Content(
                                mediaType = "application/json",
                                schema = @Schema(implementation = ProductDTO.class)
                        )
                ),
                @ApiResponse(
                        responseCode = "400",
                        description = "Invalid request. Check the provided filters.",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface GetProductsByFilters {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}

