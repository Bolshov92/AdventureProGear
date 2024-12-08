CREATE
SEQUENCE category_characteristics_seq
    start
1
    increment 1;

-- Вставка для 'Tourism Backpacks'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Tourism Backpacks')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Tourism Backpacks'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids),
        'Tourism Backpacks'),


       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Tourism Backpacks'),
       (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids),
        'Tourism Backpacks'),
       (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids),
        'Tourism Backpacks');

-- Вставка для 'Sleeping Bags'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Sleeping Bags')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Sleeping Bags'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Sleeping Bags'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Sleeping Bags'),
       (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids), 'Sleeping Bags'),
       (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids),
        'Sleeping Bags');

-- Вставка для 'Cooking Gear'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Cooking Gear')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Cooking Gear'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Cooking Gear'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Cooking Gear'),
       (nextval('category_characteristics_seq'), 'Тип використання', 'STRING', (SELECT id FROM category_ids),
        'Cooking Gear');

-- Вставка для 'Tents'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Tents')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids), 'Tents'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Tents'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Tents'),
       (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids), 'Tents'),
       (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids), 'Tents');

-- Вставка для 'Travel Accessories'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Travel Accessories')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип сумки', 'STRING', (SELECT id FROM category_ids),
        'Travel Accessories'),
       (nextval('category_characteristics_seq'), 'Об''єм', 'NUMBER', (SELECT id FROM category_ids),
        'Travel Accessories'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids),
        'Travel Accessories'),
       (nextval('category_characteristics_seq'), 'Функціональність', 'STRING', (SELECT id FROM category_ids),
        'Travel Accessories'),
       (nextval('category_characteristics_seq'), 'Колір', 'STRING', (SELECT id FROM category_ids),
        'Travel Accessories');

-- Вставка для 'Skateboards'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Skateboards')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Skateboards'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Skateboards'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Skateboards'),
       (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids), 'Skateboards');

-- Вставка для 'Mountaineering Gear'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Mountaineering Gear')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Mountaineering Gear'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids),
        'Mountaineering Gear'),
       (nextval('category_characteristics_seq'), 'Рівень досвіду', 'STRING', (SELECT id FROM category_ids),
        'Mountaineering Gear'),
       (nextval('category_characteristics_seq'), 'Мінімальна температура', 'NUMBER', (SELECT id FROM category_ids),
        'Mountaineering Gear'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids),
        'Mountaineering Gear');

-- Вставка для 'Climbing Shoes'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Climbing Shoes')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids),
        'Climbing Shoes'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Climbing Shoes'),
       (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids), 'Climbing Shoes'),
       (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids), 'Climbing Shoes');

-- Вставка для 'Men Jackets'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Men Jackets')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип одягу', 'STRING', (SELECT id FROM category_ids), 'Men Jackets'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Men Jackets'),
       (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids), 'Men Jackets'),
       (nextval('category_characteristics_seq'), 'Сезон', 'STRING', (SELECT id FROM category_ids), 'Men Jackets'),
       (nextval('category_characteristics_seq'), 'Функціональність', 'STRING', (SELECT id FROM category_ids),
        'Men Jackets');

-- Вставка для 'Men Headwear'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Men Headwear')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип головного убору', 'STRING', (SELECT id FROM category_ids),
        'Men Headwear'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Men Headwear'),
       (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids), 'Men Headwear');

-- Вставка для 'Women Headwear'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Women Headwear')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип головного убору', 'STRING', (SELECT id FROM category_ids),
        'Women Headwear'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids), 'Women Headwear'),
       (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids), 'Women Headwear');

-- Вставка для 'Bikes'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Bikes')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип велосипеда', 'STRING', (SELECT id FROM category_ids), 'Bikes'),
       (nextval('category_characteristics_seq'), 'Розмір колеса', 'STRING', (SELECT id FROM category_ids), 'Bikes'),
       (nextval('category_characteristics_seq'), 'Матеріал рами', 'STRING', (SELECT id FROM category_ids), 'Bikes');

-- Вставка для 'Proteins'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Proteins')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип продукту', 'STRING', (SELECT id FROM category_ids), 'Proteins'),
       (nextval('category_characteristics_seq'), 'Кількість порцій', 'NUMBER', (SELECT id FROM category_ids),
        'Proteins'),
       (nextval('category_characteristics_seq'), 'Смак', 'STRING', (SELECT id FROM category_ids), 'Proteins');

-- Вставка для 'Beach Accessories'
WITH category_ids AS (SELECT id
                      FROM categories
                      WHERE category_name_en = 'Beach Accessories')
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES (nextval('category_characteristics_seq'), 'Тип аксесуара', 'STRING', (SELECT id FROM category_ids),
        'Beach Accessories'),
       (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids),
        'Beach Accessories'),
       (nextval('category_characteristics_seq'), 'Колір', 'STRING', (SELECT id FROM category_ids), 'Beach Accessories');
