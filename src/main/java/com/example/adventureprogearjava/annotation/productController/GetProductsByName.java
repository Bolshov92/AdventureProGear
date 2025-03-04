package com.example.adventureprogearjava.annotation.productController;

import com.example.adventureprogearjava.dto.ProductDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
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
        summary = "Search products by name",
        description = "Retrieves all available products matching the provided name. " +
                "Note: When there are no products with the provided name, the service " +
                "returns an empty list instead of a 404 status code.",
        parameters = @Parameter(
                name = "name",
                description = "Name of the product to search for",
                required = true,
                in = ParameterIn.QUERY, // Параметр передається через query
                schema = @Schema(type = "string")
        ),
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
                        description = "Invalid request.",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface GetProductsByName {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}

