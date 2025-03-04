package com.example.adventureprogearjava.annotation.orderController;

import com.example.adventureprogearjava.dto.OrderDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
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
//@PreAuthorize("hasAuthority('ROLE_ADMIN')")
@Operation(
        summary = "Get order by its own ID. Access for ME and ADMIN.",
        description = "Retrieves order by ID. Access for ME and ADMIN.",
        security = @SecurityRequirement(name = "bearerAuth"),
        parameters = {
                @Parameter(
                        name = "id",
                        description = "ID of the order",
                        required = true
                )
        },
        responses = {
                @ApiResponse(
                        responseCode = "200",
                        description = "Successful operation",
                        content = @Content(schema = @Schema(implementation = OrderDTO.class))
                ),
                @ApiResponse(
                        responseCode = "404",
                        description = "Not Found",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),@ApiResponse(
                        responseCode = "403",
                        description = "You do not have permission to ACCESS for this order.",
                        content = @Content(schema = @Schema(implementation = String.class))
                ),
                @ApiResponse(
                        responseCode = "500",
                        description = "Internal Server Error",
                        content = @Content(schema = @Schema(implementation = String.class))
                )
        }
)
public @interface GetOrderById {
    @AliasFor(annotation = RequestMapping.class, attribute = "path")
    String[] path() default {};
}
