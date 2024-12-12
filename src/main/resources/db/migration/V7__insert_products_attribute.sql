WITH product_ids AS (
    SELECT id, product_name_en
    FROM products
)
INSERT INTO product_attributes (
    id, product_id, size, color, additional, price_deviation, quantity, label, picture_url
)
VALUES
    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Organizer Bag'),
     'Standard', 'Black', 'Multi-compartment organizer', 5, 100, 'Organizer', 'https://example.com/travel_organizer_bag.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Toiletry Bag'),
     'Compact', 'Blue', 'Multiple compartments', 3, 200, 'Toiletry Bag', 'https://example.com/travel_toiletry_bag.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Universal Travel Adapter'),
     'Standard', 'White', 'Multiple plug types', 10, 150, 'Travel Adapter', 'https://example.com/universal_travel_adapter.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Shoe Bags'),
     'Set', 'Gray', 'Set of travel shoe bags', 2, 300, 'Shoe Bags', 'https://example.com/travel_shoe_bags.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Neck Wallet'),
     'Standard', 'Beige', 'Hidden neck wallet', 3, 50, 'Wallet', 'https://example.com/neck_wallet.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Blanket'),
     'Compact', 'Gray', 'Warm travel blanket', 7, 100, 'Travel Blanket', 'https://example.com/travel_blanket.jpg');

WITH product_ids AS (
    SELECT id, product_name_en
    FROM products
)
INSERT INTO product_attributes (
    id, product_id, size, color, additional, price_deviation, quantity, label, picture_url
)
VALUES
    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Baseball Cap'),
     'Standard', 'Black', 'Classic cotton cap', 5, 150, 'Baseball Cap', 'https://example.com/men_baseball_cap.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Trucker Hat'),
     'Adjustable', 'Navy', 'Mesh back for breathability', 7, 120, 'Trucker Hat', 'https://example.com/men_trucker_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Flat Cap'),
     'Vintage', 'Gray', 'Casual wear flat cap', 10, 80, 'Flat Cap', 'https://example.com/men_flat_cap.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Bucket Hat'),
     'Standard', 'Khaki', 'Lightweight for sun protection', 4, 100, 'Bucket Hat', 'https://example.com/men_bucket_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Knit Hat'),
     'Warm', 'Black', 'Extra warmth for cold days', 6, 70, 'Knit Hat', 'https://example.com/men_knit_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Snapback Cap'),
     'Adjustable', 'Red', 'Snapback with adjustable fit', 7, 90, 'Snapback Cap', 'https://example.com/men_snapback_cap.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Fedora Hat'),
     'Classic', 'Brown', 'Stylish fedora hat', 12, 50, 'Fedora Hat', 'https://example.com/men_fedora_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Sun Hat'),
     'Wide-brim', 'Beige', 'UV protection hat', 8, 75, 'Sun Hat', 'https://example.com/men_sun_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Winter Hat'),
     'Insulated', 'Gray', 'Warm hat for outdoor activities', 9, 60, 'Winter Hat', 'https://example.com/men_winter_hat.jpg');

WITH product_ids AS (
    SELECT id, product_name_en
    FROM products
)
INSERT INTO product_attributes (
    id, product_id, size, color, additional, price_deviation, quantity, label, picture_url
)
VALUES
    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Knit Beanie'),
     'Standard', 'Gray', 'Cozy knit beanie', 7, 80, 'Knit Beanie', 'https://example.com/women_knit_beanie.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Sun Hat'),
     'Wide-brim', 'Beige', 'Sun hat for summer days', 10, 50, 'Sun Hat', 'https://example.com/women_sun_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Bucket Hat'),
     'Stylish', 'Khaki', 'Bucket hat for sunny weather', 5, 100, 'Bucket Hat', 'https://example.com/women_bucket_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Baseball Cap'),
     'Standard', 'Black', 'Classic baseball cap', 4, 150, 'Baseball Cap', 'https://example.com/women_baseball_cap.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Fedora Hat'),
     'Chic', 'Brown', 'Stylish fedora hat', 12, 60, 'Fedora Hat', 'https://example.com/women_fedora_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Straw Hat'),
     'Lightweight', 'Natural', 'Straw hat for summer trips', 8, 70, 'Straw Hat', 'https://example.com/women_straw_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Floppy Hat'),
     'Elegant', 'White', 'Floppy hat for beach outings', 15, 40, 'Floppy Hat', 'https://example.com/women_floppy_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Knit Headband'),
     'Warm', 'Red', 'Knit headband for cold weather', 3, 200, 'Knit Headband', 'https://example.com/women_knit_headband.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Trucker Hat'),
     'Adjustable', 'Pink', 'Mesh for breathability', 7, 90, 'Trucker Hat', 'https://example.com/women_trucker_hat.jpg'),

    (nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Women Winter Hat'),
     'Insulated', 'Gray', 'Warm hat for outdoor activities', 9, 60, 'Winter Hat', 'https://example.com/women_winter_hat.jpg');
