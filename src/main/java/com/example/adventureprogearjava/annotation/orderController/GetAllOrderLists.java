package com.example.adventureprogearjava.annotation.orderController;

import com.example.adventureprogearjava.dto.OrdersListDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.core.annotation.AliasFor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@RequestMapping(method = RequestMethod.GET)
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Get all order lists",
        description = "Retrieves all available order lists. Each order list contains information about the products in the order.",
        security = @SecurityRequirement(name = "bearerAuth"),
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation",
                        content = @Content(schema = @Schema(implementation = OrdersListDTO.class))
                ),
                @ApiResponse(
                        responseCode = "403",
                        description = "Forbidden: Insufficient permissions",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),
                @ApiResponse(
                        responseCode = "500",
                        description = "Internal server error",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface GetAllOrderLists {
    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
