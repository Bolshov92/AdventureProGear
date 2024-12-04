package com.example.adventureprogearjava.annotation.ProductCharacteristicController;

import com.example.adventureprogearjava.dto.ProductCharacteristicDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.core.annotation.AliasFor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for retrieving all product characteristics.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.GET)
@Operation(
        summary = "Retrieve all product characteristics",
        description = "Fetches a list of all available product characteristics in the system.",
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation",
                        content = @Content(
                                mediaType = "application/json",
                                schema = @Schema(implementation = ProductCharacteristicDTO.class)
                        )
                ),
                @ApiResponse(
                        responseCode = "500",
                        description = "Internal server error",
                        content = @Content(schema = @Schema(type = "string"))
                )
        }
)
public @interface GetAllProductCharacteristic {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
