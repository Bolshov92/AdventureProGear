CREATE
SEQUENCE category_characteristics_seq
    start
1
    increment 1;
WITH category_ids AS (
    SELECT id, category_name_en
    FROM categories
    WHERE category_name_en IN (
                               'Tourism Backpacks', 'Sleeping Bags', 'Cooking Gear', 'Tents', 'Travel Accessories',
                               'Skateboards', 'Mountaineering Gear', 'Climbing Shoes', 'Men Jackets',
                               'Men Headwear', 'Women Headwear', 'Bikes', 'Proteins', 'Beach Accessories'
        )
)
INSERT INTO category_characteristics (id, name, data_type, category_id, category_name)
VALUES
    -- Рюкзаки для туризму
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks'), 'Tourism Backpacks'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks'), 'Tourism Backpacks'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks'), 'Tourism Backpacks'),
    (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks'), 'Tourism Backpacks'),
    (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks'), 'Tourism Backpacks'),

    -- Спальні мішки
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags'), 'Sleeping Bags'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags'), 'Sleeping Bags'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags'), 'Sleeping Bags'),
    (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags'), 'Sleeping Bags'),
    (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags'), 'Sleeping Bags'),

    -- Приготування їжі
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear'), 'Cooking Gear'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear'), 'Cooking Gear'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear'), 'Cooking Gear'),
    (nextval('category_characteristics_seq'), 'Тип використання', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear'), 'Cooking Gear'),

    -- Намети
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tents'), 'Tents'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tents'), 'Tents'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Tents'), 'Tents'),
    (nextval('category_characteristics_seq'), 'Місткість', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Tents'), 'Tents'),
    (nextval('category_characteristics_seq'), 'Сезонність', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Tents'), 'Tents'),

    -- Аксесуари для подорожей
    (nextval('category_characteristics_seq'), 'Тип сумки', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories'), 'Travel Accessories'),
    (nextval('category_characteristics_seq'), 'Об''єм', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories'), 'Travel Accessories'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories'), 'Travel Accessories'),
    (nextval('category_characteristics_seq'), 'Функціональність', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories'), 'Travel Accessories'),
    (nextval('category_characteristics_seq'), 'Колір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories'), 'Travel Accessories'),

    -- Скейтборди
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards'), 'Skateboards'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards'), 'Skateboards'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards'), 'Skateboards'),
    (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards'), 'Skateboards'),

    -- Спорядження для альпінізму
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear'), 'Mountaineering Gear'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear'), 'Mountaineering Gear'),
    (nextval('category_characteristics_seq'), 'Рівень досвіду', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear'), 'Mountaineering Gear'),
    (nextval('category_characteristics_seq'), 'Мінімальна температура', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear'), 'Mountaineering Gear'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear'), 'Mountaineering Gear'),

    -- Взуття для скелелазіння
    (nextval('category_characteristics_seq'), 'Тип спорядження', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes'), 'Climbing Shoes'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes'), 'Climbing Shoes'),
    (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes'), 'Climbing Shoes'),
    (nextval('category_characteristics_seq'), 'Вага', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes'), 'Climbing Shoes'),

    -- Чоловічі куртки
    (nextval('category_characteristics_seq'), 'Тип одягу', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets'), 'Men Jackets'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets'), 'Men Jackets'),
    (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets'), 'Men Jackets'),
    (nextval('category_characteristics_seq'), 'Сезон', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets'), 'Men Jackets'),
    (nextval('category_characteristics_seq'), 'Функціональність', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets'), 'Men Jackets'),

    -- Чоловічі головні убори
    (nextval('category_characteristics_seq'), 'Тип головного убору', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear'), 'Men Headwear'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear'), 'Men Headwear'),
    (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear'), 'Men Headwear'),

    -- Жіночі головні убори
    (nextval('category_characteristics_seq'), 'Тип головного убору', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear'), 'Women Headwear'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear'), 'Women Headwear'),
    (nextval('category_characteristics_seq'), 'Розмір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear'), 'Women Headwear'),

    -- Велосипеди
    (nextval('category_characteristics_seq'), 'Тип велосипеда', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes'), 'Bikes'),
    (nextval('category_characteristics_seq'), 'Розмір колеса', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes'), 'Bikes'),
    (nextval('category_characteristics_seq'), 'Матеріал рами', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes'), 'Bikes'),

    -- Протеїни
    (nextval('category_characteristics_seq'), 'Тип продукту', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins'), 'Proteins'),
    (nextval('category_characteristics_seq'), 'Кількість порцій', 'NUMBER', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins'), 'Proteins'),
    (nextval('category_characteristics_seq'), 'Смак', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins'), 'Proteins'),

    -- Пляжні аксесуари
    (nextval('category_characteristics_seq'), 'Тип аксесуара', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories'), 'Beach Accessories'),
    (nextval('category_characteristics_seq'), 'Матеріал', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories'), 'Beach Accessories'),
    (nextval('category_characteristics_seq'), 'Колір', 'STRING', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories'), 'Beach Accessories');
