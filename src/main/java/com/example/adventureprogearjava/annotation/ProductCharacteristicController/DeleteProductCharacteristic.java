package com.example.adventureprogearjava.annotation.ProductCharacteristicController;

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
 * Annotation for deleting a product characteristic by its id.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.DELETE)
@ResponseStatus(HttpStatus.NO_CONTENT)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Delete a product characteristic",
        description = "Deletes a product characteristic identified by its ID.",
        security = @SecurityRequirement(name = "bearerAuth"),
        parameters = @Parameter(
                name = "id",
                description = "ID of the product characteristic to be deleted",
                required = true,
                in = ParameterIn.PATH,
                schema = @Schema(type = "integer", format = "int64")
        ),
        responses = {
                @ApiResponse(
                        responseCode = "204",
                        description = "Successfully deleted."
                ),
                @ApiResponse(
                        responseCode = "403",
                        description = "Access Denied",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),
                @ApiResponse(
                        responseCode = "404",
                        description = "Product characteristic not found",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface DeleteProductCharacteristic {

    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
