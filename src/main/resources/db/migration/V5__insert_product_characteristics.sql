CREATE
SEQUENCE product_characteristics_seq
    start
1
    increment 1;

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    -- Тип спорядження: Рюкзак для походов
    (nextval('product_characteristics_seq'), 'Рюкзак для походів',
     (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    -- Матеріал: Поліестер 600D
    (nextval('product_characteristics_seq'), 'Поліестер 600D',
     (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    -- Вага: 1.2 кг
    (nextval('product_characteristics_seq'), '1.2 кг',
     (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    -- Місткість: 45 літрів
    (nextval('product_characteristics_seq'), '45 літрів',
     (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    -- Сезонність: Універсальний (всі сезони)
    (nextval('product_characteristics_seq'), 'Універсальний (всі сезони)',
     (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Денний рюкзак',
     (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Нейлон',
     (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '0.5',
     (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '20',
     (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Туристичний рюкзак з USB',
     (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Поліестер',
     (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.2',
     (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '35',
     (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Waterproof Hiking Backpack
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Водонепроникний туристичний рюкзак',
     (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Нейлон',
     (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.5',
     (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '40',
     (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Ultralight Backpack
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Надлегкий туристичний рюкзак',
     (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Поліестер',
     (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '0.8',
     (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '25',
     (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Для "Multi-Compartment Backpack"
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Рюкзак з кількома відділеннями',
     (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Поліестер',
     (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.2',
     (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '30',
     (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Для "Backpack with Rain Cover"
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Рюкзак з чохлом від дощу',
     (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Нейлон',
     (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.0',
     (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '25',
     (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Для "Anti-Theft Travel Backpack"
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Рюкзак із захистом від крадіжки',
     (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Тканина з водовідштовхувальним покриттям',
     (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.5',
     (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '40',
     (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Для "Foldable Hiking Backpack"
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Складаний похідний рюкзак',
     (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Нейлон',
     (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '0.8',
     (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '25',
     (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Літній',
     (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

-- Для "Ergonomic Travel Backpack"
INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES
    (nextval('product_characteristics_seq'), 'Ергономічний туристичний рюкзак',
     (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Оксфорд',
     (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '1.3',
     (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), '35',
     (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),

    (nextval('product_characteristics_seq'), 'Універсальний',
     (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
     (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));


