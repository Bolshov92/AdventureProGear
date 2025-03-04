ALTER TABLE products
    ALTER COLUMN gender TYPE VARCHAR(255)
        USING (gender::VARCHAR);