CREATE INDEX IF NOT EXISTS idx_product_gender_price ON products(gender, base_price);

ANALYZE products;