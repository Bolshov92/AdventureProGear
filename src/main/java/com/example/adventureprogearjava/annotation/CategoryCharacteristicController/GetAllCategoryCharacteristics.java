package com.example.adventureprogearjava.annotation.CategoryCharacteristicController;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
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
 * Annotation to define a method as a GET endpoint to retrieve all category characteristics.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.GET)
@Operation(
        summary = "Get all category characteristics",
        description = "Retrieves all available category characteristics.",
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation",
                        content = @Content(
                                mediaType = "application/json",
                                schema = @Schema(implementation = CategoryCharacteristicDTO.class)
                        )
                ),
                @ApiResponse(
                        responseCode = "500",
                        description = "Internal server error",
                        content = @Content(
                                mediaType = "application/json"
                        )
                )
        }
)
public @interface GetAllCategoryCharacteristics {
    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
