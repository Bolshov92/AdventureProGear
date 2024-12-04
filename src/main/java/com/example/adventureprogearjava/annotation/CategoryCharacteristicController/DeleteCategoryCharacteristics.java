package com.example.adventureprogearjava.annotation.CategoryCharacteristicController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
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
 * Annotation for deleting a category characteristic by its ID.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.DELETE)
@ResponseStatus(HttpStatus.OK)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Delete a category characteristic by ID",
        description = "Deletes a category characteristic identified by its ID. Requires admin access.",
        security = @SecurityRequirement(name = "bearerAuth"),
        parameters = @Parameter(
                name = "id",
                description = "ID of the category characteristic to delete",
                required = true,
                in = ParameterIn.PATH,
                schema = @Schema(type = "integer", format = "int64")
        ),
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation. Category characteristic deleted."
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
                )
        }
)
public @interface DeleteCategoryCharacteristics {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
