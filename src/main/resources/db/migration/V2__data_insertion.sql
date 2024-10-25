CREATE
SEQUENCE user_seq
    start
1
    increment 1;
CREATE
SEQUENCE categories_seq
    start
1
    increment 1;



CREATE
SEQUENCE user_role_seq
    start
1
    increment 1;

CREATE
SEQUENCE product_seq
    start
1
    increment 1;
CREATE
SEQUENCE product_review_seq
START
1
INCREMENT 1;

CREATE
SEQUENCE review_comment_seq
START
1
INCREMENT 1;


CREATE
SEQUENCE product_review_reaction_seq
START
1
INCREMENT 1;

CREATE
SEQUENCE product_attr_seq
    start
1
    increment 1;

CREATE
SEQUENCE product_content_seq
    start
1
    increment 1;

CREATE
SEQUENCE product_categories_seq
    start
1
    increment 1;

CREATE
SEQUENCE order_seq
    start
1
    increment 1;

CREATE
SEQUENCE order_list_seq
    start
1
    increment 1;


CREATE
SEQUENCE sections_seq
    start
1
    increment 1;

CREATE
SEQUENCE post_seq
    START
1
    INCREMENT 1;


INSERT INTO sections (id, sectioncaption_en, sectioncaption_ua, sectionicon)
VALUES
    (nextval('sections_seq'), 'Tourism & Camping', 'Туризм та Кемпінг', 'tourism_icon'),
    (nextval('sections_seq'), 'Travel & City', 'Подорожі та місто', 'travel_icon'),
    (nextval('sections_seq'), 'Climbing & Mountaineering', 'Скелелазіння | Альпінізм', 'climbing_icon'),
    (nextval('sections_seq'), 'Men Gear', 'Чоловікам', 'mens_icon'),
    (nextval('sections_seq'), 'Women Gear', 'Жінкам', 'womens_icon'),
    (nextval('sections_seq'), 'Winter Gear', 'Зимове спорядження', 'winter_icon'),
    (nextval('sections_seq'), 'Fishing', 'Рибальство', 'fishing_icon'),
    (nextval('sections_seq'), 'Cycling', 'Велоспорт', 'cycling_icon'),
    (nextval('sections_seq'), 'Sport Nutrition', 'Спортивне харчування', 'nutrition_icon'),
    (nextval('sections_seq'), 'Swimming & Diving', 'Плавання та Дайвінг', 'swimming_icon');

insert into users (id, name, surname, email, phone_number, password, role)
values (nextval('user_seq'), 'Danylo', 'Berkovskyi', 'serhio3347@gmail.com', '+380980648928', 'Password1@', 'ADMIN');

insert into users (id, name, surname, email, phone_number, password, role)
values (nextval('user_seq'), 'Andrii', 'Len', 'len_andrey@gmail.com', '+380972555455', 'Password2#', 'USER');


WITH section_ids AS (
    SELECT id, sectioncaption_en
    FROM sections
),

-- Категории
     inserted_categories AS (
INSERT INTO categories (id, category_name_ua, category_name_en, parent_category_id, section_id)
    VALUES
        -- Туризм та Кемпінг
        (nextval('categories_seq'), 'Рюкзаки для туризму', 'Tourism Backpacks', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
        (nextval('categories_seq'), 'Спальні мішки', 'Sleeping Bags', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
        (nextval('categories_seq'), 'Приготування їжі', 'Cooking Gear', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
        (nextval('categories_seq'), 'Намети', 'Tents', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),

        -- Подорожі та місто
        (nextval('categories_seq'), 'Аксесуари для подорожей', 'Travel Accessories', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),
        (nextval('categories_seq'), 'Скейтборди', 'Skateboards', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),

        -- Скелелазіння | Альпінізм
        (nextval('categories_seq'), 'Спорядження для альпінізму', 'Mountaineering Gear', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),
        (nextval('categories_seq'), 'Взуття для скелелазіння', 'Climbing Shoes', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),

        -- Чоловікам
        (nextval('categories_seq'), 'Чоловічі куртки', 'Men Jackets', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),
        (nextval('categories_seq'), 'Чоловічі головні убори', 'Men Headwear', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),

        -- Жінкам
        (nextval('categories_seq'), 'Жіночі головні убори', 'Women Headwear', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Women Gear')),

        -- Велоспорт
        (nextval('categories_seq'), 'Велосипеди', 'Bikes', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Cycling')),

        -- Спортивне харчування
        (nextval('categories_seq'), 'Протеїни', 'Proteins', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Sport Nutrition')),

        -- Плавання
        (nextval('categories_seq'), 'Пляжні аксесуари', 'Beach Accessories', NULL, (SELECT id FROM section_ids WHERE sectioncaption_en = 'Swimming & Diving'))
        RETURNING id, category_name_en
),

-- СубКатегории
inserted_subcategories AS (
INSERT INTO categories (id, category_name_ua, category_name_en, parent_category_id, section_id)
VALUES
    -- СубКатегории для Туризм та Кемпінг
    (nextval('categories_seq'), 'Дитячі рюкзаки для туризму', 'Kids Tourism Backpacks', (SELECT id FROM inserted_categories WHERE category_name_en = 'Tourism Backpacks'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Термоси для походів', 'Hiking Thermos', (SELECT id FROM inserted_categories WHERE category_name_en = 'Sleeping Bags'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Кухонне обладнання для кемпінгу', 'Camping Cooking Equipment', (SELECT id FROM inserted_categories WHERE category_name_en = 'Cooking Gear'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Легкі намети', 'Lightweight Tents', (SELECT id FROM inserted_categories WHERE category_name_en = 'Tents'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),

    -- СубКатегории для Подорожі та місто
    (nextval('categories_seq'), 'Ручна поклажа', 'Hand Luggage', (SELECT id FROM inserted_categories WHERE category_name_en = 'Travel Accessories'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),
    (nextval('categories_seq'), 'Аксесуари для скейтбордингу', 'Skateboarding Accessories', (SELECT id FROM inserted_categories WHERE category_name_en = 'Skateboards'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),

    -- СубКатегории для Скелелазіння | Альпінізм
    (nextval('categories_seq'), 'Мотузки', 'Ropes', (SELECT id FROM inserted_categories WHERE category_name_en = 'Mountaineering Gear'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),
    (nextval('categories_seq'), 'Альпіністські аксесуари', 'Mountaineering Accessories', (SELECT id FROM inserted_categories WHERE category_name_en = 'Climbing Shoes'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),

    -- СубКатегории для Чоловікам
    (nextval('categories_seq'), 'Теплі куртки для зимових подорожей', 'Warm Jackets for Winter', (SELECT id FROM inserted_categories WHERE category_name_en = 'Men Jackets'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),
    (nextval('categories_seq'), 'Шапки для чоловіків', 'Men Hats', (SELECT id FROM inserted_categories WHERE category_name_en = 'Men Headwear'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),

    -- СубКатегории для Жінкам
    (nextval('categories_seq'), 'Теплі головні убори', 'Warm Headwear', (SELECT id FROM inserted_categories WHERE category_name_en = 'Women Headwear'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Women Gear')),

    -- СубКатегории для Велоспорт
    (nextval('categories_seq'), 'Аксесуари для велосипедів', 'Bike Accessories', (SELECT id FROM inserted_categories WHERE category_name_en = 'Bikes'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Cycling')),

    -- СубКатегории для Спортивне харчування
    (nextval('categories_seq'), 'Спортивні добавки', 'Sport Supplements', (SELECT id FROM inserted_categories WHERE category_name_en = 'Proteins'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Sport Nutrition')),

    -- СубКатегории для Плавання
    (nextval('categories_seq'), 'Аксесуари для пляжу', 'Beach Accessories Subcategory', (SELECT id FROM inserted_categories WHERE category_name_en = 'Beach Accessories'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Swimming & Diving'))
    RETURNING id, category_name_en
    )

-- СубСуб Категории
INSERT INTO categories (id, category_name_ua, category_name_en, parent_category_id, section_id)
VALUES
    -- Субсубкатегории для Туризм та Кемпінг
    (nextval('categories_seq'), 'Дитячі рюкзаки з термосами', 'Kids Backpacks with Thermos', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Kids Tourism Backpacks'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Міні термоси для походів', 'Mini Hiking Thermos', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Hiking Thermos'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Міні обладнання для кемпінгу', 'Mini Camping Equipment', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Camping Cooking Equipment'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),
    (nextval('categories_seq'), 'Компактні легкі намети', 'Compact Lightweight Tents', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Lightweight Tents'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Tourism & Camping')),

    -- Субсубкатегории для Подорожі та місто
    (nextval('categories_seq'), 'Маленька ручна поклажа', 'Small Hand Luggage', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Hand Luggage'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),
    (nextval('categories_seq'), 'Комплект аксесуарів для скейтбордингу', 'Skateboarding Accessories Set', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Skateboarding Accessories'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Travel & City')),

    -- Субсубкатегории для Скелелазіння | Альпінізм
    (nextval('categories_seq'), 'Міцні мотузки', 'Durable Ropes', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Ropes'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),
    (nextval('categories_seq'), 'Набір альпіністських аксесуарів', 'Mountaineering Accessories Kit', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Mountaineering Accessories'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Climbing & Mountaineering')),

    -- Субсубкатегории для Чоловікам
    (nextval('categories_seq'), 'Утеплені зимові куртки', 'Insulated Winter Jackets', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Warm Jackets for Winter'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),
    (nextval('categories_seq'), 'Шапки з утепленням', 'Insulated Men Hats', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Men Hats'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Men Gear')),

    -- Субсубкатегории для Жінкам
    (nextval('categories_seq'), 'Модні теплі головні убори', 'Stylish Warm Headwear', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Warm Headwear'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Women Gear')),

    -- Субсубкатегории для Велоспорт
    (nextval('categories_seq'), 'Комплект аксесуарів для велосипеда', 'Bike Accessories Kit', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Bike Accessories'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Cycling')),

    -- Субсубкатегории для Спортивне харчування
    (nextval('categories_seq'), 'Набір спортивних добавок', 'Sport Supplements Kit', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Sport Supplements'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Sport Nutrition')),

    -- Субсубкатегории для Плавання
    (nextval('categories_seq'), 'Комплект пляжних аксесуарів', 'Beach Accessories Set', (SELECT id FROM inserted_subcategories WHERE category_name_en = 'Beach Accessories Subcategory'), (SELECT id FROM section_ids WHERE sectioncaption_en = 'Swimming & Diving'));


WITH category_ids AS (
    SELECT id, category_name_en
    FROM categories
)
-- Продукт для категории "Рюкзаки для туризму" (Tourism Backpacks)
INSERT INTO products (id, product_name_en, product_name_ua, description_en, description_ua, base_price, average_rating, gender, category)
VALUES
    (nextval('product_seq'), 'Hiking Backpack 45L', 'Похідний рюкзак 45л', 'Durable 45-liter backpack for long hikes.', 'Міцний рюкзак на 45 літрів для тривалих походів.', 120, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Compact Daypack', 'Компактний рюкзак на день', 'Lightweight daypack ideal for short trips.', 'Легкий рюкзак для коротких поїздок.', 80, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Travel Backpack with USB', 'Туристичний рюкзак з USB', 'Backpack with built-in USB port for charging on the go.', 'Рюкзак з вбудованим USB-портом для зарядки на ходу.', 150, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Waterproof Hiking Backpack', 'Водонепроникний похідний рюкзак', 'Waterproof backpack for all weather conditions.', 'Водонепроникний рюкзак для будь-яких погодних умов.', 130, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Ultralight Backpack', 'Ультралегкий рюкзак', 'Ultralight backpack for long-distance hikers.', 'Ультралегкий рюкзак для туристів на далекі відстані.', 100, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Multi-Compartment Backpack', 'Рюкзак з кількома відділеннями', 'Backpack with multiple compartments for organization.', 'Рюкзак з кількома відділеннями для організації.', 140, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Backpack with Rain Cover', 'Рюкзак з чохлом від дощу', 'Backpack with a built-in rain cover for wet weather.', 'Рюкзак з вбудованим чохлом від дощу для вологих умов.', 110, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Anti-Theft Travel Backpack', 'Рюкзак із захистом від крадіжки', 'Anti-theft backpack with hidden zippers.', 'Рюкзак із захистом від крадіжки з прихованими блискавками.', 135, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Foldable Hiking Backpack', 'Складаний похідний рюкзак', 'Foldable and compact backpack, perfect for travel.', 'Складаний і компактний рюкзак, ідеальний для подорожей.', 95, 4.4, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),
    (nextval('product_seq'), 'Ergonomic Travel Backpack', 'Ергономічний туристичний рюкзак', 'Ergonomic backpack designed for maximum comfort.', 'Ергономічний рюкзак, розроблений для максимального комфорту.', 125, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tourism Backpacks')),

-- Продукт для категории "Спальні мішки" (Sleeping Bags)
    (nextval('product_seq'), 'Summer Sleeping Bag', 'Літній спальний мішок', 'Lightweight sleeping bag for summer camping.', 'Легкий спальний мішок для літнього кемпінгу.', 70, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Winter Sleeping Bag', 'Зимовий спальний мішок', 'Warm and insulated sleeping bag for cold weather.', 'Теплий і утеплений спальний мішок для холодної погоди.', 120, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Compact Sleeping Bag', 'Компактний спальний мішок', 'Compact and easy-to-carry sleeping bag.', 'Компактний і зручний у перенесенні спальний мішок.', 90, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Double Sleeping Bag', 'Подвійний спальний мішок', 'Spacious double sleeping bag for two people.', 'Просторий подвійний спальний мішок для двох людей.', 150, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Mummy Sleeping Bag', 'Спальний мішок "Мумія"', 'Mummy-style sleeping bag for maximum warmth.', 'Спальний мішок у стилі "Мумія" для максимального тепла.', 110, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Waterproof Sleeping Bag', 'Водонепроникний спальний мішок', 'Waterproof sleeping bag for rainy conditions.', 'Водонепроникний спальний мішок для дощової погоди.', 130, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Ultralight Sleeping Bag', 'Ультралегкий спальний мішок', 'Ultralight sleeping bag, perfect for long hikes.', 'Ультралегкий спальний мішок, ідеальний для тривалих походів.', 100, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Insulated Sleeping Bag', 'Утеплений спальний мішок', 'Extra insulated sleeping bag for extreme cold.', 'Додатково утеплений спальний мішок для екстремальних холодів.', 140, 5.0, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), 'Kids Sleeping Bag', 'Дитячий спальний мішок', 'Sleeping bag designed specifically for children.', 'Спальний мішок, спеціально розроблений для дітей.', 85, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),
    (nextval('product_seq'), '3-Season Sleeping Bag', 'Трисезонний спальний мішок', 'Sleeping bag suitable for spring, summer, and fall.', 'Спальний мішок, підходящий для весни, літа та осені.', 110, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Sleeping Bags')),

-- Продукт для категории "Приготування їжі" (Cooking Gear)
    (nextval('product_seq'), 'Camping Stove', 'Кемпінгова плита', 'Portable stove for camping and outdoor cooking.', 'Портативна плита для кемпінгу та приготування їжі на природі.', 50, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Camping Pot Set', 'Набір каструль для кемпінгу', 'Compact set of pots for outdoor cooking.', 'Компактний набір каструль для приготування їжі на природі.', 45, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Foldable Grill', 'Складаний гриль', 'Foldable grill for BBQs during camping.', 'Складаний гриль для барбекю під час кемпінгу.', 70, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Titanium Cutlery Set', 'Набір столових приборів з титану', 'Lightweight titanium cutlery for camping.', 'Легкий титановий набір столових приборів для кемпінгу.', 35, 4.3, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Camping Kettle', 'Кемпінговий чайник', 'Compact and lightweight camping kettle.', 'Компактний і легкий кемпінговий чайник.', 40, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Portable Coffee Maker', 'Портативна кавоварка', 'Portable coffee maker for campers.', 'Портативна кавоварка для кемперів.', 60, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Camping Utensil Kit', 'Набір столових приборів для кемпінгу', 'Complete utensil kit for outdoor cooking.', 'Повний набір столових приборів для приготування їжі на відкритому повітрі.', 30, 4.4, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Camping Skillet', 'Кемпінгова сковорода', 'Durable skillet for frying while camping.', 'Міцна сковорода для смаження під час кемпінгу.', 55, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Cooking Tripod', 'Кулінарний триног', 'Tripod for cooking over an open fire.', 'Тринога для приготування їжі на відкритому вогні.', 65, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Portable Gas Burner', 'Портативний газовий пальник', 'Portable gas burner for outdoor cooking.', 'Портативний газовий пальник для приготування їжі на природі.', 50, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Cooking Gear')),
    (nextval('product_seq'), 'Two-Person Tent', 'Двомісний намет', 'Lightweight two-person tent, easy to set up.', 'Легкий двомісний намет, простий у встановленні.', 200, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Family Camping Tent', 'Сімейний кемпінговий намет', 'Spacious tent for families, accommodates 6 people.', 'Просторий намет для сімей, вміщає 6 людей.', 300, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Backpacking Tent', 'Намет для походів', 'Compact tent ideal for solo backpacking adventures.', 'Компактний намет, ідеальний для соло-походів.', 180, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Pop-Up Tent', 'Намет, що сам розкладається', 'Pop-up tent that sets up in seconds.', 'Намет, що сам розкладається за кілька секунд.', 150, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'All-Weather Tent', 'Намет для всіх погодних умов', 'Durable tent designed for extreme weather.', 'Міцний намет, розроблений для екстремальних погодних умов.', 250, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Hiking Dome Tent', 'Купольний похідний намет', 'Dome tent for hiking and camping.', 'Купольний намет для походів та кемпінгу.', 220, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Waterproof Tent', 'Водонепроникний намет', 'Fully waterproof tent with reinforced seams.', 'Повністю водонепроникний намет з посиленими швами.', 210, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Ultralight Tent', 'Ультралегкий намет', 'Ultralight tent for minimalistic hiking.', 'Ультралегкий намет для мінімалістичних походів.', 170, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Four-Season Tent', 'Чотирисезонний намет', 'Designed for year-round camping, including winter conditions.', 'Розроблений для кемпінгу протягом усього року, включаючи зиму.', 280, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Instant Setup Tent', 'Намет з миттєвим встановленням', 'Tent with instant setup mechanism for quick assembly.', 'Намет з механізмом миттєвого встановлення для швидкої збірки.', 190, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Tents')),
    (nextval('product_seq'), 'Travel Pillow', 'Подорожня подушка', 'Comfortable memory foam travel pillow.', 'Зручна подорожня подушка з піноматеріалу.', 25, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Compression Packing Cubes', 'Компресійні органайзери для пакування', 'Set of compression cubes to save space in your luggage.', 'Набір компресійних органайзерів для економії місця у багажі.', 35, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'RFID Blocking Wallet', 'Гаманець з захистом RFID', 'Wallet with RFID blocking technology to protect your cards.', 'Гаманець з захистом RFID для захисту ваших карток.', 50, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Luggage Locks', 'Замки для багажу', 'Set of TSA-approved luggage locks.', 'Набір замків для багажу, схвалених TSA.', 20, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Travel Organizer Bag', 'Органайзер для подорожей', 'Multi-compartment organizer bag for travel essentials.', 'Органайзер з багатьма відділеннями для подорожніх необхідностей.', 30, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Travel Toiletry Bag', 'Косметичка для подорожей', 'Compact toiletry bag with multiple compartments.', 'Компактна косметичка з кількома відділеннями.', 25, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Universal Travel Adapter', 'Універсальний адаптер для подорожей', 'Universal travel adapter with multiple plug types.', 'Універсальний адаптер для подорожей з різними типами вилок.', 40, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Travel Shoe Bags', 'Чохли для взуття для подорожей', 'Set of travel shoe bags to keep your luggage clean.', 'Набір чохлів для взуття для підтримання чистоти багажу.', 15, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Neck Wallet', 'Гаманець для шиї', 'Hidden neck wallet for secure storage of valuables.', 'Прихований гаманець для шиї для безпечного зберігання цінних речей.', 20, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Travel Blanket', 'Подорожня ковдра', 'Compact and warm travel blanket.', 'Компактна і тепла подорожня ковдра.', 35, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Travel Accessories')),
    (nextval('product_seq'), 'Cruiser Skateboard', 'Круїзерний скейтборд', 'Classic cruiser skateboard for smooth rides.', 'Класичний круїзерний скейтборд для плавної їзди.', 85, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Street Skateboard', 'Скейтборд для вулиці', 'Durable skateboard for street skating.', 'Міцний скейтборд для вуличного катання.', 95, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Longboard', 'Лонгборд', 'Longboard for cruising and downhill racing.', 'Лонгборд для круїзів і даунхілу.', 120, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Mini Cruiser', 'Міні круїзер', 'Compact and portable mini cruiser skateboard.', 'Компактний і портативний міні-круїзер.', 75, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Electric Skateboard', 'Електричний скейтборд', 'Electric skateboard with high speed and range.', 'Електричний скейтборд з високою швидкістю і запасом ходу.', 300, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Freestyle Skateboard', 'Скейтборд для фристайлу', 'Freestyle skateboard for performing tricks.', 'Скейтборд для виконання трюків.', 100, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Downhill Longboard', 'Лонгборд для даунхілу', 'Designed for downhill racing at high speeds.', 'Розроблений для даунхілу на високих швидкостях.', 140, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Kicktail Skateboard', 'Скейтборд з кіктейлом', 'Traditional skateboard with kicktail for tricks.', 'Традиційний скейтборд з кіктейлом для трюків.', 90, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Penny Board', 'Пенні борд', 'Compact penny board for casual riding.', 'Компактний пенні борд для повсякденної їзди.', 60, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Skateboard for Beginners', 'Скейтборд для початківців', 'Durable skateboard perfect for beginners.', 'Міцний скейтборд, ідеальний для початківців.', 70, 4.4, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Skateboards')),
    (nextval('product_seq'), 'Mountaineering Helmet', 'Альпіністський шолом', 'Lightweight helmet for climbing safety.', 'Легкий шолом для безпеки при альпінізмі.', 80, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Harness', 'Альпіністська обвязка', 'Durable and comfortable harness for climbing.', 'Міцна і зручна обвязка для альпінізму.', 100, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Ice Axe', 'Льодоруб', 'Sturdy ice axe for mountain climbing.', 'Міцний льодоруб для сходження на гори.', 120, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Carabiner Set', 'Набір альпіністських карабінів', 'Set of durable carabiners for secure climbing.', 'Набір міцних карабінів для безпечного альпінізму.', 40, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Rope', 'Альпіністська мотузка', 'High-strength rope designed for mountaineering.', 'Міцна мотузка, розроблена для альпінізму.', 150, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Mountaineering Crampons', 'Альпіністські кішки', 'Crampons for safe climbing on ice.', 'Кішки для безпечного сходження на льоду.', 130, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Gloves', 'Альпіністські рукавички', 'Insulated gloves designed for climbing.', 'Утеплені рукавички, розроблені для альпінізму.', 50, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Belay Device', 'Страхувальний пристрій', 'Compact and reliable belay device for safety.', 'Компактний і надійний страхувальний пристрій.', 60, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Chalk Bag', 'Мішечок для магнезії', 'Small bag for carrying climbing chalk.', 'Маленький мішечок для магнезії.', 20, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Mountaineering Backpack', 'Альпіністський рюкзак', 'Large backpack for carrying mountaineering gear.', 'Великий рюкзак для спорядження альпініста.', 180, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Mountaineering Gear')),
    (nextval('product_seq'), 'Climbing Shoes Model A', 'Взуття для скелелазіння модель A', 'Comfortable climbing shoes with great grip.', 'Зручне взуття для скелелазіння з відмінним зчепленням.', 120, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Aggressive Climbing Shoes', 'Агресивні скелелазні черевики', 'Shoes with an aggressive downturn for expert climbers.', 'Черевики з агресивним вигином для досвідчених скелелазів.', 150, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Beginner Climbing Shoes', 'Взуття для початківців', 'Comfortable and durable shoes for new climbers.', 'Зручне і міцне взуття для новачків.', 100, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Velcro Climbing Shoes', 'Взуття для скелелазіння з липучками', 'Easy to wear climbing shoes with velcro straps.', 'Взуття для скелелазіння з липучками для зручності.', 110, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Bouldering Shoes', 'Взуття для боулдерінгу', 'Specialized shoes for bouldering activities.', 'Спеціалізоване взуття для боулдерінгу.', 130, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Performance Climbing Shoes', 'Високопродуктивне взуття для скелелазіння', 'High-performance shoes for technical climbing.', 'Високопродуктивне взуття для технічного скелелазіння.', 160, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'All-Day Comfort Shoes', 'Взуття для скелелазіння на цілий день', 'Shoes designed for long climbing sessions.', 'Взуття, призначене для тривалих сесій скелелазіння.', 140, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Lace-Up Climbing Shoes', 'Взуття для скелелазіння зі шнурівкою', 'Shoes with laces for a customized fit.', 'Взуття зі шнурівкою для індивідуальної посадки.', 125, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Wide-Fit Climbing Shoes', 'Взуття для скелелазіння для широкої стопи', 'Climbing shoes designed for wider feet.', 'Взуття для скелелазіння, розроблене для широкої стопи.', 135, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Synthetic Climbing Shoes', 'Синтетичне взуття для скелелазіння', 'Durable synthetic climbing shoes.', 'Міцне синтетичне взуття для скелелазіння.', 115, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Climbing Shoes')),
    (nextval('product_seq'), 'Men Winter Jacket', 'Чоловіча зимова куртка', 'Insulated winter jacket for cold weather.', 'Утеплена зимова куртка для холодної погоди.', 220, 4.8, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Waterproof Jacket', 'Чоловіча водонепроникна куртка', 'Lightweight waterproof jacket for rainy days.', 'Легка водонепроникна куртка для дощових днів.', 180, 4.7, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Windbreaker', 'Чоловічий вітрозахисний куртка', 'Windbreaker jacket for outdoor sports.', 'Вітрозахисна куртка для активного відпочинку на свіжому повітрі.', 140, 4.5, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Puffer Jacket', 'Чоловіча пухова куртка', 'Warm puffer jacket for winter activities.', 'Тепла пухова куртка для зимових активностей.', 200, 4.8, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Hiking Jacket', 'Чоловіча куртка для походів', 'Breathable hiking jacket for all-weather use.', 'Дихаюча куртка для походів, підходить для будь-якої погоди.', 160, 4.6, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Softshell Jacket', 'Чоловіча софтшелл куртка', 'Softshell jacket for moderate weather conditions.', 'Софтшелл куртка для помірних погодних умов.', 150, 4.7, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Down Jacket', 'Чоловіча пухова куртка', 'Down jacket with great insulation for winter.', 'Пухова куртка з відмінною ізоляцією для зими.', 240, 4.9, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Parka', 'Чоловіча парка', 'Stylish parka with fur hood for cold climates.', 'Стильна парка з хутряним капюшоном для холодного клімату.', 260, 4.8, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Fleece Jacket', 'Чоловіча флісова куртка', 'Fleece jacket for layering in cold weather.', 'Флісова куртка для утеплення в холодну погоду.', 130, 4.6, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Leather Jacket', 'Чоловіча шкіряна куртка', 'Classic leather jacket with modern design.', 'Класична шкіряна куртка з сучасним дизайном.', 300, 4.9, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Jackets')),
    (nextval('product_seq'), 'Men Wool Beanie', 'Чоловіча вовняна шапка', 'Warm wool beanie for winter.', 'Тепла вовняна шапка для зими.', 30, 4.7, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Baseball Cap', 'Чоловіча бейсболка', 'Classic cotton baseball cap for outdoor activities.', 'Класична бавовняна бейсболка для активного відпочинку.', 20, 4.5, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Trucker Hat', 'Чоловіча кепка-тракер', 'Stylish trucker hat with mesh back for breathability.', 'Стильна кепка-тракер з сітчастою спинкою для вентиляції.', 25, 4.6, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Flat Cap', 'Чоловіча плоска кепка', 'Vintage style flat cap for casual wear.', 'Вінтажна плоска кепка для повсякденного носіння.', 35, 4.8, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Bucket Hat', 'Чоловічий панамка', 'Lightweight bucket hat for sun protection.', 'Легка панама для захисту від сонця.', 22, 4.4, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Knit Hat', 'Чоловіча вязана шапка', 'Knit hat for extra warmth during cold days.', 'Вязана шапка для додаткового тепла в холодні дні.', 28, 4.7, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Snapback Cap', 'Чоловіча кепка снэпбек', 'Snapback cap with adjustable fit.', 'Кепка снэпбек з регулюванням розміру.', 27, 4.5, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Fedora Hat', 'Чоловічий капелюх федора', 'Classic fedora hat for stylish outings.', 'Класичний капелюх федора для стильних виходів.', 50, 4.9, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Sun Hat', 'Чоловічий капелюх від сонця', 'Wide-brimmed sun hat for UV protection.', 'Широкополий капелюх для захисту від ультрафіолету.', 40, 4.8, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Men Winter Hat', 'Чоловіча зимова шапка', 'Insulated winter hat for outdoor activities.', 'Утеплена зимова шапка для активностей на свіжому повітрі.', 35, 4.7, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Men Headwear')),
    (nextval('product_seq'), 'Women Knit Beanie', 'Жіноча вязана шапка', 'Cozy knit beanie for casual winter wear.', 'Затишна вязана шапка для повсякденного зимового носіння.', 30, 4.7, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Sun Hat', 'Жіночий капелюх від сонця', 'Wide-brimmed sun hat for summer days.', 'Широкополий капелюх для літніх днів.', 45, 4.8, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Bucket Hat', 'Жіночий панамка', 'Stylish bucket hat for sunny weather.', 'Стильна панамка для сонячної погоди.', 25, 4.6, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Baseball Cap', 'Жіноча бейсболка', 'Classic baseball cap for active lifestyles.', 'Класична бейсболка для активного способу життя.', 20, 4.5, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Fedora Hat', 'Жіночий капелюх федора', 'Chic fedora hat for outdoor events.', 'Шикарний капелюх федора для заходів на свіжому повітрі.', 55, 4.9, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Straw Hat', 'Жіночий соломяний капелюх', 'Lightweight straw hat for summer trips.', 'Легкий соломяний капелюх для літніх поїздок.', 35, 4.7, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Floppy Hat', 'Жіночий капелюх із широкими полями', 'Elegant floppy hat for beach outings.', 'Елегантний капелюх із широкими полями для виходів на пляж.', 60, 4.8, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Knit Headband', 'Жіноча вязана повязка на голову', 'Warm knit headband for cold weather.', 'Тепла вязана повязка на голову для холодної погоди.', 18, 4.6, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Trucker Hat', 'Жіноча кепка-тракер', 'Trucker hat with mesh for breathability.', 'Кепка-тракер із сіткою для вентиляції.', 27, 4.5, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Women Winter Hat', 'Жіноча зимова шапка', 'Insulated winter hat for outdoor activities.', 'Утеплена зимова шапка для активного відпочинку на свіжому повітрі.', 32, 4.7, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Women Headwear')),
    (nextval('product_seq'), 'Mountain Bike Pro', 'Гірський велосипед Pro', 'High-performance mountain bike for rugged trails.', 'Високопродуктивний гірський велосипед для складних маршрутів.', 1500, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Road Bike Ultra', 'Шосейний велосипед Ultra', 'Lightweight road bike for speed and efficiency.', 'Легкий шосейний велосипед для швидкості та ефективності.', 1800, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Hybrid Bike', 'Гібридний велосипед', 'Versatile hybrid bike for city and trail use.', 'Універсальний гібридний велосипед для міста та стежок.', 1200, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Electric Mountain Bike', 'Електричний гірський велосипед', 'Electric-assisted mountain bike for easy climbs.', 'Електричний гірський велосипед з підсилювачем для легкого підйому.', 2500, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Folding City Bike', 'Складаний міський велосипед', 'Compact folding bike for urban commuting.', 'Компактний складаний велосипед для міських поїздок.', 900, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Gravel Bike', 'Гравійний велосипед', 'Gravel bike designed for rough terrain.', 'Гравійний велосипед, призначений для їзди по нерівній місцевості.', 1400, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Womens Road Bike', 'Жіночий шосейний велосипед', 'Lightweight road bike designed specifically for women.', 'Легкий шосейний велосипед, розроблений спеціально для жінок.', 1600, 4.7, 'FEMALE', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Kids Mountain Bike', 'Дитячий гірський велосипед', 'Durable mountain bike designed for kids.', 'Міцний гірський велосипед, розроблений для дітей.', 500, 4.6, 'MALE', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'BMX Bike', 'BMX велосипед', 'Sturdy BMX bike for tricks and jumps.', 'Міцний велосипед BMX для трюків і стрибків.', 800, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Touring Bike', 'Туристичний велосипед', 'Touring bike for long-distance cycling.', 'Туристичний велосипед для велопоходів на довгі дистанції.', 1700, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Bikes')),
    (nextval('product_seq'), 'Whey Protein Isolate', 'Сироватковий ізолят протеїну', 'High-quality whey protein isolate for muscle growth.', 'Високоякісний ізолят сироваткового протеїну для зростання мязів.', 50, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Casein Protein', 'Казеїновий протеїн', 'Slow-digesting casein protein for nighttime recovery.', 'Казеїновий протеїн з повільним засвоєнням для відновлення вночі.', 55, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Plant-Based Protein', 'Рослинний протеїн', 'Vegan-friendly plant-based protein blend.', 'Веганська суміш рослинних білків.', 60, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Whey Protein Concentrate', 'Сироватковий концентрат протеїну', 'Affordable whey protein concentrate for muscle support.', 'Доступний сироватковий протеїн для підтримки мязів.', 40, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Hydrolyzed Whey Protein', 'Гідролізований сироватковий протеїн', 'Fast-absorbing hydrolyzed whey protein for rapid recovery.', 'Швидко засвоюваний гідролізований сироватковий протеїн для швидкого відновлення.', 70, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Egg White Protein', 'Протеїн з яєчного білка', 'Pure egg white protein for lean muscle building.', 'Чистий протеїн з яєчного білка для нарощування мязів.', 45, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Collagen Protein', 'Колагеновий протеїн', 'Supports joint health and skin elasticity.', 'Підтримує здоровя суглобів і еластичність шкіри.', 50, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Pea Protein Isolate', 'Ізолят горохового протеїну', 'Vegan protein made from pure pea isolate.', 'Веганський протеїн з чистого горохового ізоляту.', 45, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Soy Protein Isolate', 'Ізолят соєвого протеїну', 'Soy protein for muscle recovery and growth.', 'Соєвий протеїн для відновлення і росту мязів.', 50, 4.4, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Brown Rice Protein', 'Протеїн з коричневого рису', 'Clean and easily digestible brown rice protein.', 'Чистий і легко засвоюваний протеїн з коричневого рису.', 48, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Proteins')),
    (nextval('product_seq'), 'Beach Towel', 'Пляжний рушник', 'Large, absorbent beach towel for summer days.', 'Великий абсорбуючий пляжний рушник для літніх днів.', 20, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Umbrella', 'Пляжна парасолька', 'UV-protective beach umbrella for sunny days.', 'Пляжна парасолька з захистом від ультрафіолету для сонячних днів.', 35, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Cooler Bag', 'Пляжна сумка-холодильник', 'Insulated cooler bag to keep your drinks cold.', 'Ізольована сумка-холодильник для збереження прохолодних напоїв.', 30, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Mat', 'Пляжний килимок', 'Comfortable and sand-resistant beach mat.', 'Зручний килимок, що не пропускає пісок.', 18, 4.5, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Snorkeling Set', 'Набір для підводного плавання', 'Complete snorkeling set for underwater adventures.', 'Повний набір для підводного плавання для підводних пригод.', 45, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Waterproof Phone Case', 'Водонепроникний чохол для телефону', 'Protective waterproof case for your smartphone.', 'Захисний водонепроникний чохол для вашого смартфона.', 12, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Chair', 'Пляжний стілець', 'Portable and foldable beach chair for relaxation.', 'Портативний складаний стілець для відпочинку на пляжі.', 40, 4.8, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Ball', 'Пляжний мяч', 'Inflatable beach ball for beach games.', 'Надувний мяч для ігор на пляжі.', 10, 4.6, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Tent', 'Пляжний намет', 'Compact beach tent for sun and wind protection.', 'Компактний пляжний намет для захисту від сонця та вітру.', 55, 4.9, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories')),
    (nextval('product_seq'), 'Beach Sunglasses', 'Пляжні сонцезахисні окуляри', 'Stylish sunglasses with UV protection.', 'Стильні сонцезахисні окуляри з захистом від ультрафіолету.', 25, 4.7, 'UNISEX', (SELECT id FROM category_ids WHERE category_name_en = 'Beach Accessories'));

insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 1, 'img1_1');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 1, 'img1_2');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 2, 'img2_1');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 2, 'img2_2');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 3, 'img3');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 4, 'img4');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 5, 'img5_1');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 5, 'img5_2');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 5, 'img5_3');
insert into product_content (id, product_id, source)
values (nextval('product_content_seq'), 5, 'img5_4');

WITH product_ids AS (
    SELECT id, product_name_en
    FROM products
)
INSERT INTO product_attributes (id, product_id, size, color, additional, price_deviation, quantity, label, picture_url)
VALUES
-- Атрибуты для "Hiking Backpack 45L"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Hiking Backpack 45L'), 'L', 'Black', 'Waterproof', 10, 100, 'Large Size', 'https://example.com/hiking_backpack_45L_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Compact Daypack'), 'M', 'Blue', 'Lightweight', 15, 50, 'Medium Size', 'https://example.com/compact_daypack_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Backpack with USB'), 'S', 'Gray', 'USB port for charging', 20, 70, 'Small Size', 'https://example.com/travel_backpack_usb_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Waterproof Hiking Backpack'), 'XL', 'Green', 'Waterproof', 18, 80, 'Extra Large Size', 'https://example.com/waterproof_hiking_backpack_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ultralight Backpack'), 'M', 'Orange', 'Ultra-lightweight', 12, 90, 'Medium Size', 'https://example.com/ultralight_backpack_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Multi-Compartment Backpack'), 'L', 'Red', 'Multiple compartments', 15, 60, 'Large Size', 'https://example.com/multi_compartment_backpack_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Backpack with Rain Cover'), 'L', 'Gray', 'Rain cover included', 10, 100, 'Large Size', 'https://example.com/backpack_with_rain_cover_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Anti-Theft Travel Backpack'), 'M', 'Black', 'Anti-theft design', 20, 80, 'Medium Size', 'https://example.com/anti_theft_travel_backpack_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Foldable Hiking Backpack'), 'S', 'Green', 'Foldable', 15, 70, 'Small Size', 'https://example.com/foldable_hiking_backpack_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ergonomic Travel Backpack'), 'L', 'Blue', 'Ergonomic design', 12, 90, 'Large Size', 'https://example.com/ergonomic_travel_backpack_blue.jpg'),

-- Атрибуты для "Sleeping Bags"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Summer Sleeping Bag'), 'Regular', 'Blue', 'Lightweight', 12, 150, 'Standard', 'https://example.com/summer_sleeping_bag_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Winter Sleeping Bag'), 'Long', 'Gray', 'Warm', 15, 120, 'Long Size', 'https://example.com/winter_sleeping_bag_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Compact Sleeping Bag'), 'Short', 'Green', 'Compact', 10, 180, 'Short Size', 'https://example.com/compact_sleeping_bag_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Double Sleeping Bag'), 'Double', 'Red', 'For two people', 20, 100, 'Double Size', 'https://example.com/double_sleeping_bag_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mummy Sleeping Bag'), 'Mummy', 'Black', 'Mummy shape', 10, 150, 'Mummy Size', 'https://example.com/mummy_sleeping_bag_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Waterproof Sleeping Bag'), 'Regular', 'Gray', 'Waterproof', 18, 110, 'Standard', 'https://example.com/waterproof_sleeping_bag_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ultralight Sleeping Bag'), 'Small', 'Blue', 'Ultra-lightweight', 15, 130, 'Small Size', 'https://example.com/ultralight_sleeping_bag_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Insulated Sleeping Bag'), 'Regular', 'Green', 'Insulated', 10, 120, 'Standard', 'https://example.com/insulated_sleeping_bag_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Kids Sleeping Bag'), 'Kids', 'Pink', 'For children', 8, 200, 'Kids Size', 'https://example.com/kids_sleeping_bag_pink.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = '3-Season Sleeping Bag'), 'Regular', 'Orange', '3-season use', 15, 140, 'Standard', 'https://example.com/3-season_sleeping_bag_orange.jpg'),

-- Атрибуты для "Camping Gear"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Camping Stove'), 'Standard', 'Silver', 'Portable', 10, 200, 'Stainless Steel', 'https://example.com/camping_stove_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Camping Pot Set'), 'Set', 'Black', 'Non-stick', 5, 100, 'Set of 2', 'https://example.com/camping_pot_set_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Foldable Grill'), 'Standard', 'Red', 'Foldable', 8, 150, 'Standard', 'https://example.com/foldable_grill_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Titanium Cutlery Set'), 'Set', 'Gray', 'Titanium', 12, 50, 'Set of 3', 'https://example.com/titanium_cutlery_set_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Camping Kettle'), '1L', 'Silver', 'Stainless Steel', 7, 75, 'Standard', 'https://example.com/camping_kettle_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Portable Coffee Maker'), 'Standard', 'Black', 'Portable', 15, 60, 'Single Serve', 'https://example.com/portable_coffee_maker_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Camping Utensil Kit'), 'Set', 'Green', 'All-in-one kit', 10, 80, 'Set of 5', 'https://example.com/camping_utensil_kit_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Camping Skillet'), 'Standard', 'Gray', 'Non-stick', 5, 120, 'Standard', 'https://example.com/camping_skillet_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Cooking Tripod'), 'Standard', 'Black', 'Adjustable', 10, 90, 'Standard', 'https://example.com/cooking_tripod_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Portable Gas Burner'), 'Single', 'Silver', 'Compact', 8, 110, 'Single Burner', 'https://example.com/portable_gas_burner_silver.jpg'),

-- Атрибуты для "Tents"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Two-Person Tent'), '2-Person', 'Green', 'Waterproof', 20, 50, 'Medium Tent', 'https://example.com/two_person_tent_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Family Camping Tent'), '4-Person', 'Blue', 'UV-resistant', 25, 40, 'Large Tent', 'https://example.com/family_camping_tent_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Backpacking Tent'), '1-Person', 'Yellow', 'Compact', 15, 80, 'Backpacking Size', 'https://example.com/backpacking_tent_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Pop-Up Tent'), '2-Person', 'Orange', 'Instant setup', 10, 60, 'Quick Setup', 'https://example.com/pop_up_tent_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'All-Weather Tent'), '4-Person', 'Black', 'All-season', 20, 100, 'Heavy Duty', 'https://example.com/all_weather_tent_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Hiking Dome Tent'), '2-Person', 'Red', 'Dome shape', 12, 50, 'Compact Tent', 'https://example.com/hiking_dome_tent_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Waterproof Tent'), '3-Person', 'Gray', 'Waterproof', 15, 70, 'Standard', 'https://example.com/waterproof_tent_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ultralight Tent'), '1-Person', 'White', 'Ultralight', 5, 40, 'Lightweight', 'https://example.com/ultralight_tent_white.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Four-Season Tent'), '4-Person', 'Black', 'Snow-resistant', 25, 60, 'All-season', 'https://example.com/four_season_tent_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Instant Setup Tent'), '2-Person', 'Yellow', 'Quick setup', 18, 80, 'Easy Setup', 'https://example.com/instant_setup_tent_yellow.jpg'),

-- Атрибуты для "Travel Accessories"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Travel Pillow'), 'Standard', 'Gray', 'Memory foam', 5, 300, 'Comfort', 'https://example.com/travel_pillow_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Compression Packing Cubes'), 'Set', 'Black', 'Multiple sizes', 10, 150, 'Set of 3', 'https://example.com/compression_packing_cubes_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'RFID Blocking Wallet'), 'Standard', 'Brown', 'RFID protection', 15, 80, 'Anti-theft', 'https://example.com/rfid_blocking_wallet_brown.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Luggage Locks'), 'Set', 'Silver', 'Keyed', 10, 100, 'Set of 2', 'https://example.com/luggage_locks_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Cruiser Skateboard'), 'Standard', 'Red', 'Lightweight', 20, 100, 'Standard Size', 'https://example.com/cruiser_skateboard_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Street Skateboard'), 'Standard', 'Black', 'Street ready', 15, 80, 'Standard Size', 'https://example.com/street_skateboard_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Longboard'), 'Long', 'Blue', 'Stable', 25, 90, 'Long Size', 'https://example.com/longboard_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mini Cruiser'), 'Mini', 'Orange', 'Portable', 18, 70, 'Mini Size', 'https://example.com/mini_cruiser_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Electric Skateboard'), 'Standard', 'Black', 'Electric powered', 45, 50, 'Standard Size', 'https://example.com/electric_skateboard_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Freestyle Skateboard'), 'Standard', 'Green', 'Trick-ready', 10, 60, 'Standard Size', 'https://example.com/freestyle_skateboard_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Downhill Longboard'), 'Long', 'Purple', 'Stable for downhill', 30, 40, 'Long Size', 'https://example.com/downhill_longboard_purple.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Kicktail Skateboard'), 'Standard', 'Yellow', 'Kicktail design', 20, 100, 'Standard Size', 'https://example.com/kicktail_skateboard_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Penny Board'), 'Mini', 'Pink', 'Compact', 15, 50, 'Mini Size', 'https://example.com/penny_board_pink.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Skateboard for Beginners'), 'Standard', 'Blue', 'For beginners', 10, 70, 'Standard Size', 'https://example.com/skateboard_for_beginners_blue.jpg'),

-- Атрибуты для "Climbing Equipment"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Helmet'), 'Standard', 'White', 'Protective', 25, 30, 'Standard Size', 'https://example.com/mountaineering_helmet_white.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Harness'), 'Standard', 'Red', 'Adjustable', 10, 60, 'Standard Size', 'https://example.com/climbing_harness_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ice Axe'), 'Standard', 'Silver', 'Ice-resistant', 20, 40, 'Standard Size', 'https://example.com/ice_axe_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Carabiner Set'), 'Set', 'Black', 'Strong', 15, 50, 'Set of 5', 'https://example.com/climbing_carabiner_set_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Rope'), '50m', 'Blue', 'Durable', 30, 70, 'Standard Length', 'https://example.com/climbing_rope_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Crampons'), 'Set', 'Gray', 'Steel', 35, 40, 'Set of 2', 'https://example.com/mountaineering_crampons_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Gloves'), 'Medium', 'Black', 'Durable', 12, 80, 'Medium Size', 'https://example.com/climbing_gloves_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Belay Device'), 'Standard', 'Silver', 'Safety', 10, 90, 'Standard Size', 'https://example.com/belay_device_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Chalk Bag'), 'Standard', 'Red', 'Chalk included', 8, 120, 'Standard Size', 'https://example.com/climbing_chalk_bag_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Backpack'), 'Large', 'Green', 'Water-resistant', 20, 100, 'Large Size', 'https://example.com/mountaineering_backpack_green.jpg'),

-- Атрибуты для "Climbing Shoes"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Shoes Model A'), 'Medium', 'Gray', 'Comfortable', 15, 50, 'Standard Size', 'https://example.com/climbing_shoes_model_a_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Aggressive Climbing Shoes'), 'Large', 'Red', 'Aggressive fit', 10, 80, 'Large Size', 'https://example.com/aggressive_climbing_shoes_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beginner Climbing Shoes'), 'Small', 'Black', 'Easy to wear', 12, 90, 'Small Size', 'https://example.com/beginner_climbing_shoes_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Velcro Climbing Shoes'), 'Medium', 'Blue', 'Velcro straps', 20, 70, 'Medium Size', 'https://example.com/velcro_climbing_shoes_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Bouldering Shoes'), 'Large', 'Green', 'For bouldering', 15, 100, 'Large Size', 'https://example.com/bouldering_shoes_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Performance Climbing Shoes'), 'Small', 'Yellow', 'High-performance', 18, 80, 'Small Size', 'https://example.com/performance_climbing_shoes_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'All-Day Comfort Shoes'), 'Medium', 'Pink', 'Comfortable', 12, 70, 'Medium Size', 'https://example.com/all_day_comfort_shoes_pink.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Lace-Up Climbing Shoes'), 'Large', 'Purple', 'Lace-up design', 15, 60, 'Large Size', 'https://example.com/lace_up_climbing_shoes_purple.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Wide-Fit Climbing Shoes'), 'Wide', 'Orange', 'Wide fit', 20, 50, 'Wide Size', 'https://example.com/wide_fit_climbing_shoes_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Synthetic Climbing Shoes'), 'Medium', 'Black', 'Synthetic material', 15, 80, 'Medium Size', 'https://example.com/synthetic_climbing_shoes_black.jpg'),

-- Атрибуты для "Outerwear"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Winter Jacket'), 'L', 'Black', 'Insulated', 10, 60, 'Large Size', 'https://example.com/men_winter_jacket_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Waterproof Jacket'), 'M', 'Blue', 'Waterproof', 15, 70, 'Medium Size', 'https://example.com/men_waterproof_jacket_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Windbreaker'), 'L', 'Red', 'Windproof', 12, 50, 'Large Size', 'https://example.com/men_windbreaker_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Puffer Jacket'), 'XL', 'Gray', 'Insulated', 20, 80, 'Extra Large Size', 'https://example.com/men_puffer_jacket_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountain Bike Pro'), 'Large', 'Black', 'Durable', 15, 120, 'Large Size', 'https://example.com/mountain_bike_pro_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Road Bike Ultra'), 'Medium', 'Red', 'Fast', 12, 90, 'Medium Size', 'https://example.com/road_bike_ultra_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Hybrid Bike'), 'Medium', 'Green', 'Versatile', 18, 80, 'Medium Size', 'https://example.com/hybrid_bike_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Electric Mountain Bike'), 'Large', 'Blue', 'Electric', 25, 70, 'Large Size', 'https://example.com/electric_mountain_bike_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Folding City Bike'), 'Small', 'Yellow', 'Folding', 20, 60, 'Small Size', 'https://example.com/folding_city_bike_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Gravel Bike'), 'Medium', 'Gray', 'Durable', 22, 85, 'Medium Size', 'https://example.com/gravel_bike_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Womens Road Bike'), 'Medium', 'Pink', 'Speed', 18, 75, 'Medium Size', 'https://example.com/womens_road_bike_pink.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Kids Mountain Bike'), 'Small', 'Purple', 'Durable', 15, 50, 'Small Size', 'https://example.com/kids_mountain_bike_purple.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'BMX Bike'), 'Small', 'Red', 'Tricks', 10, 40, 'Small Size', 'https://example.com/bmx_bike_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Touring Bike'), 'Large', 'Black', 'Touring', 30, 95, 'Large Size', 'https://example.com/touring_bike_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Whey Protein Isolate'), '500g', 'Chocolate', 'High-protein', 25, 95, '500g Size', 'https://example.com/whey_protein_isolate_chocolate.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Casein Protein'), '750g', 'Vanilla', 'Slow-release', 20, 80, '750g Size', 'https://example.com/casein_protein_vanilla.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Plant-Based Protein'), '1kg', 'Strawberry', 'Vegan', 15, 70, '1kg Size', 'https://example.com/plant_based_protein_strawberry.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Whey Protein Concentrate'), '1kg', 'Vanilla', 'Fast-digesting', 25, 90, '1kg Size', 'https://example.com/whey_protein_concentrate_vanilla.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Hydrolyzed Whey Protein'), '500g', 'Chocolate', 'Hydrolyzed', 30, 85, '500g Size', 'https://example.com/hydrolyzed_whey_protein_chocolate.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Egg White Protein'), '500g', 'Natural', 'Low-fat', 18, 75, '500g Size', 'https://example.com/egg_white_protein_natural.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Collagen Protein'), '300g', 'Peach', 'Joint support', 20, 60, '300g Size', 'https://example.com/collagen_protein_peach.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Pea Protein Isolate'), '1kg', 'Chocolate', 'Plant-based', 15, 85, '1kg Size', 'https://example.com/pea_protein_isolate_chocolate.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Soy Protein Isolate'), '500g', 'Vanilla', 'Vegan', 18, 75, '500g Size', 'https://example.com/soy_protein_isolate_vanilla.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Brown Rice Protein'), '750g', 'Natural', 'Hypoallergenic', 10, 65, '750g Size', 'https://example.com/brown_rice_protein_natural.jpg'),
-- Атрибуты для "Beach Products"
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Towel'), 'Standard', 'Blue', 'Quick-dry', 5, 50, 'Standard Size', 'https://example.com/beach_towel_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Umbrella'), 'Large', 'Yellow', 'UV Protection', 15, 70, 'Large Size', 'https://example.com/beach_umbrella_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Cooler Bag'), 'Standard', 'Red', 'Insulated', 10, 60, 'Standard Size', 'https://example.com/beach_cooler_bag_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Mat'), 'Standard', 'Green', 'Water-resistant', 8, 55, 'Standard Size', 'https://example.com/beach_mat_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Snorkeling Set'), 'Set', 'Blue', 'Full-face mask', 12, 80, 'Set of 2', 'https://example.com/snorkeling_set_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Waterproof Phone Case'), 'Standard', 'Black', 'Waterproof', 5, 40, 'Standard Size', 'https://example.com/waterproof_phone_case_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Chair'), 'Standard', 'Orange', 'Foldable', 20, 50, 'Standard Size', 'https://example.com/beach_chair_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Ball'), 'Standard', 'White', 'Durable', 2, 30, 'Standard Size', 'https://example.com/beach_ball_white.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Tent'), 'Large', 'Blue', 'UV Protection', 25, 100, 'Large Size', 'https://example.com/beach_tent_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Beach Sunglasses'), 'Standard', 'Black', 'UV Protection', 10, 45, 'Standard Size', 'https://example.com/beach_sunglasses_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Helmet'), 'Medium', 'Gray', 'Durable', 7, 60, 'Medium Size', 'https://example.com/mountaineering_helmet_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Harness'), 'One Size', 'Red', 'Adjustable', 5, 50, 'One Size', 'https://example.com/climbing_harness_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Ice Axe'), 'One Size', 'Silver', 'Strong', 3, 55, 'One Size', 'https://example.com/ice_axe_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Carabiner Set'), 'Set', 'Black', 'Durable', 6, 40, 'Set of 5', 'https://example.com/climbing_carabiner_set_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Rope'), '60m', 'Red', 'Strong', 7, 65, '60m Length', 'https://example.com/climbing_rope_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Crampons'), 'One Size', 'Silver', 'Steel', 5, 70, 'One Size', 'https://example.com/mountaineering_crampons_silver.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Gloves'), 'Medium', 'Black', 'Durable', 4, 45, 'Medium Size', 'https://example.com/climbing_gloves_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Belay Device'), 'One Size', 'Blue', 'Lightweight', 3, 35, 'One Size', 'https://example.com/belay_device_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Climbing Chalk Bag'), 'Standard', 'Red', 'Compact', 2, 20, 'Standard Size', 'https://example.com/climbing_chalk_bag_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mountaineering Backpack'), 'Large', 'Green', 'Waterproof', 10, 80, 'Large Size', 'https://example.com/mountaineering_backpack_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Winter Jacket'), 'Large', 'Black', 'Insulated', 10, 120, 'Large Size', 'https://example.com/men_winter_jacket_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Waterproof Jacket'), 'Medium', 'Blue', 'Waterproof', 8, 100, 'Medium Size', 'https://example.com/men_waterproof_jacket_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Windbreaker'), 'Large', 'Red', 'Lightweight', 5, 75, 'Large Size', 'https://example.com/men_windbreaker_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Puffer Jacket'), 'Medium', 'Gray', 'Warm', 7, 110, 'Medium Size', 'https://example.com/men_puffer_jacket_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Hiking Jacket'), 'Large', 'Green', 'Breathable', 9, 115, 'Large Size', 'https://example.com/men_hiking_jacket_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Softshell Jacket'), 'Medium', 'Orange', 'Water-resistant', 6, 80, 'Medium Size', 'https://example.com/men_softshell_jacket_orange.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Down Jacket'), 'Large', 'Black', 'Lightweight', 11, 130, 'Large Size', 'https://example.com/men_down_jacket_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Parka'), 'Large', 'Dark Brown', 'Warm', 13, 140, 'Large Size', 'https://example.com/men_parka_brown.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Fleece Jacket'), 'Medium', 'Light Blue', 'Comfortable', 5, 60, 'Medium Size', 'https://example.com/men_fleece_jacket_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Leather Jacket'), 'Large', 'Black', 'Stylish', 10, 200, 'Large Size', 'https://example.com/men_leather_jacket_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Men Wool Beanie'), 'One Size', 'Gray', 'Warm', 2, 30, 'One Size', 'https://example.com/men_wool_beanie_gray.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Cruiser Skateboard'), 'Standard', 'Black', 'Durable', 6, 45, 'Standard Size', 'https://example.com/cruiser_skateboard_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Street Skateboard'), 'Standard', 'Red', 'Durable', 5, 50, 'Standard Size', 'https://example.com/street_skateboard_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Longboard'), 'Large', 'Blue', 'Speed', 8, 55, 'Large Size', 'https://example.com/longboard_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Mini Cruiser'), 'Small', 'Purple', 'Portable', 3, 40, 'Small Size', 'https://example.com/mini_cruiser_purple.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Electric Skateboard'), 'Standard', 'Black', 'Electric', 10, 70, 'Standard Size', 'https://example.com/electric_skateboard_black.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Freestyle Skateboard'), 'Standard', 'Green', 'Flexible', 7, 55, 'Standard Size', 'https://example.com/freestyle_skateboard_green.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Downhill Longboard'), 'Large', 'Red', 'Speed', 8, 60, 'Large Size', 'https://example.com/downhill_longboard_red.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Kicktail Skateboard'), 'Standard', 'Yellow', 'Durable', 5, 45, 'Standard Size', 'https://example.com/kicktail_skateboard_yellow.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Penny Board'), 'Small', 'Blue', 'Portable', 3, 35, 'Small Size', 'https://example.com/penny_board_blue.jpg'),
(nextval('product_attr_seq'), (SELECT id FROM product_ids WHERE product_name_en = 'Skateboard for Beginners'), 'Medium', 'Gray', 'Beginner-friendly', 5, 50, 'Medium Size', 'https://example.com/skateboard_for_beginners_gray.jpg');

WITH product_ids AS (
    SELECT id FROM public.products LIMIT 2
)
INSERT INTO public.products_review (id, user_name, rating, comment, review_date, product_id, user_id, likes, dislikes)
VALUES
    (nextval('product_review_seq'), 'Danylo Berkovskyi', 4.5, 'Excellent backpack, very durable for hiking.', CURRENT_DATE, (SELECT id FROM product_ids LIMIT 1), 1, 1, 0),
    (nextval('product_review_seq'), 'Andrii Len', 3.0, 'Decent, but not very comfortable for long walks.', CURRENT_DATE, (SELECT id FROM product_ids LIMIT 1 OFFSET 1), 2, 1, 0);


WITH review_ids AS (
    SELECT id FROM public.products_review LIMIT 2
)
INSERT INTO public.review_comments (id, review_id, user_id, comment_text, comment_date)
VALUES
    (nextval('review_comment_seq'), (SELECT id FROM review_ids LIMIT 1), 1, 'I agree with this review, very solid backpack.', CURRENT_TIMESTAMP),
    (nextval('review_comment_seq'), (SELECT id FROM review_ids LIMIT 1 OFFSET 1), 2, 'It’s alright, could use better cushioning.', CURRENT_TIMESTAMP);

WITH review_ids AS (
    SELECT id FROM public.products_review LIMIT 2
)
INSERT INTO public.review_reactions (id, user_id, review_id, reaction_type)
VALUES
    (nextval('product_review_reaction_seq'), 1, (SELECT id FROM review_ids LIMIT 1), 'LIKE'),
    (nextval('product_review_reaction_seq'), 2, (SELECT id FROM review_ids LIMIT 1 OFFSET 1), 'DISLIKE');

INSERT INTO public.post (id, user_id, title, content, image)
VALUES (nextval('post_seq'), 1, 'First Post', 'This is the content of the first post.',
        'https://example.com/image1.jpg'),
       (nextval('post_seq'), 2, 'Second Post', 'This is the content of the second post.',
        'https://example.com/image2.jpg');

INSERT INTO public.reactions (id, type, post_id, user_id)
VALUES (nextval('reaction_seq'), 'LIKE', 1, 1),
       (nextval('reaction_seq'), 'DISLIKE', 1, 2),
       (nextval('reaction_seq'), 'LAUGH', 2, 1),
       (nextval('reaction_seq'), 'SAD', 2, 2);