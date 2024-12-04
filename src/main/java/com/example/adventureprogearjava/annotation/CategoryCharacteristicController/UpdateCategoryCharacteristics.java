package com.example.adventureprogearjava.annotation.CategoryCharacteristicController;

import com.example.adventureprogearjava.dto.CategoryCharacteristicDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
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
 * Annotation for updating existing category characteristics.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.PUT)
@ResponseStatus(HttpStatus.OK)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Update a category characteristic",
        description = "Allows the admin to update an existing category characteristic by ID.",
        security = @SecurityRequirement(name = "bearerAuth"),
        parameters = @Parameter(
                name = "id",
                description = "ID of the category characteristic to be updated",
                required = true,
                in = ParameterIn.PATH,
                schema = @Schema(type = "integer", format = "int64")
        ),
        requestBody = @RequestBody(
                description = "Updated data for the category characteristic",
                required = true,
                content = @Content(
                        mediaType = "application/json",
                        schema = @Schema(implementation = CategoryCharacteristicDTO.class),
                        examples = @ExampleObject(
                                name = "Example request",
                                value = """
                                        {
                                           "name": "Місткість",
                                           "dataType": "NUMBER",
                                           "categoryId": 8
                                        }
                                        """
                        )
                )
        ),
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Category characteristic successfully updated."
                ),
                @ApiResponse(
                        responseCode = "403",
                        description = "Access Denied",
                        content = @Content(schema = @Schema(type = "string"))
                ),
                @ApiResponse(
                        responseCode = "404",
                        description = "Category characteristic not found",
                        content = @Content(schema = @Schema(type = "string"))
                ),
                @ApiResponse(
                        responseCode = "400",
                        description = "Invalid data provided",
                        content = @Content(schema = @Schema(type = "string"))
                )
        }
)
public @interface UpdateCategoryCharacteristics {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
