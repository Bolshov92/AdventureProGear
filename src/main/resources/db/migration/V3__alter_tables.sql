CREATE TABLE IF NOT EXISTS public.category_characteristics
(
    id              BIGINT PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    data_type       VARCHAR(50) NOT NULL CHECK (data_type IN ('STRING', 'NUMBER', 'BOOLEAN')),
    category_id     BIGINT NOT NULL
        CONSTRAINT fk_category
        REFERENCES public.categories (id) ON DELETE CASCADE,
    category_name   VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS public.product_characteristics
(
    id                     BIGINT PRIMARY KEY,
    value                  VARCHAR(255) NOT NULL,
    product_id             BIGINT NOT NULL
        CONSTRAINT fk_product
        REFERENCES public.products (id) ON DELETE CASCADE,
    category_characteristic_id BIGINT NOT NULL
        CONSTRAINT fk_category_characteristic
        REFERENCES public.category_characteristics (id) ON DELETE CASCADE
);