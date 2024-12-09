package com.example.adventureprogearjava.annotation.CategoryCharacteristicController;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
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
 * Annotation for creating new category characteristics.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.POST)
@ResponseStatus(HttpStatus.CREATED)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Create a new category characteristic",
        description = "Allows the admin to create a new category characteristic.",
        security = @SecurityRequirement(name = "bearerAuth"),
        requestBody = @RequestBody(
                description = "Data for the new category characteristic",
                required = true,
                content = @Content(
                        mediaType = "application/json",
                        schema = @Schema(implementation = CategoryCharacteristicDTO.class),
                        examples = {
                                @ExampleObject(
                                        name = "Example request",
                                        value = """
                                                {
                                                   "name": "Color",
                                                   "dataType": "STRING",
                                                   "categoryId": 3
                                                }
                                                """
                                )
                        }
                )
        ),
        responses = {
                @ApiResponse(
                        responseCode = "201",
                        description = "Category characteristic successfully created.",
                        content = @Content(schema = @Schema(implementation = CategoryCharacteristicDTO.class))
                ),
                @ApiResponse(
                        responseCode = "403",
                        description = "Access Denied",
                        content = @Content(schema = @Schema(type = "string"))
                ),
                @ApiResponse(
                        responseCode = "400",
                        description = "Invalid data provided",
                        content = @Content(schema = @Schema(type = "string"))
                )
        }
)
public @interface CreateCategoryCharacteristics {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
