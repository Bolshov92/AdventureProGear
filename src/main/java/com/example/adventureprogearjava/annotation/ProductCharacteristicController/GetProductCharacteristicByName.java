package com.example.adventureprogearjava.annotation.ProductCharacteristicController;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
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

/**
 * Annotation to define a method as a GET endpoint to retrieve product characteristics by name.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.GET)
@Operation(
        summary = "Get product characteristics by Product name",
        description = "Retrieves all product characteristics for the given product name. " +
                "If no characteristics are found with the provided name, the service returns an empty list.",
        parameters = @Parameter(
                name = "productName",
                description = "Name of the product to retrieve its characteristics.",
                required = true,
                in = io.swagger.v3.oas.annotations.enums.ParameterIn.PATH,
                schema = @Schema(type = "string")
        ),
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation.",
                        content = @Content(
                                mediaType = "application/json",
                                schema = @Schema(implementation = ProductCharacteristicDTO.class)
                        )
                ),
                @ApiResponse(
                        responseCode = "400",
                        description = "Invalid request.",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),
                @ApiResponse(
                        responseCode = "404",
                        description = "Product characteristics not found.",
                        content = @Content(schema = @Schema(type = "string"))
                )
        }
)
public @interface GetProductCharacteristicByName {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
