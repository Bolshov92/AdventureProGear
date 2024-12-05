package com.example.adventureprogearjava.annotation.ProductCharacteristicController;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.core.annotation.AliasFor;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for creating a new product characteristic.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.POST)
@ResponseStatus(HttpStatus.CREATED)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Create a new product characteristic",
        description = "Creates a new characteristic for a specific product.",
        security = @SecurityRequirement(name = "bearerAuth"),
        requestBody = @RequestBody(
                description = "Product characteristic data required for creation",
                required = true,
                content = @Content(
                        mediaType = "application/json",
                        schema = @Schema(implementation = ProductCharacteristicDTO.class),
                        examples = {
                                @ExampleObject(
                                        name = "Good request",
                                        value = """
                                                 {
                                                   "value": "Рюкзак для походів",
                                                   "productId": 142,
                                                   "categoryCharacteristicId": 38
                                                 }
                                                """
                                )
                        }
                )
        ),
        responses = {
                @ApiResponse(
                        responseCode = "201",
                        description = "Successful creation.",
                        content = @Content(schema = @Schema(implementation = ProductCharacteristicDTO.class))
                ),
                @ApiResponse(
                        responseCode = "400",
                        description = "Invalid data",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),
                @ApiResponse(
                        responseCode = "403",
                        description = "Access Denied",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface CreateProductCharacteristic {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
