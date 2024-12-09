CREATE
SEQUENCE product_characteristics_seq
    start
1
    increment 1;


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Рюкзак для походів',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),


       (nextval('product_characteristics_seq'), 'Поліестер 600D',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tourism Backpacks')),


       (nextval('product_characteristics_seq'), '1.2 кг',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tourism Backpacks')),


       (nextval('product_characteristics_seq'), '45 літрів',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tourism Backpacks')),


       (nextval('product_characteristics_seq'), 'Універсальний (всі сезони)',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Backpack 45L'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tourism Backpacks'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Денний рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Compact Daypack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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
VALUES (nextval('product_characteristics_seq'), 'Туристичний рюкзак з USB',
        (SELECT id FROM products WHERE product_name_en = 'Travel Backpack with USB'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Водонепроникний туристичний рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Hiking Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Надлегкий туристичний рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Рюкзак з кількома відділеннями',
        (SELECT id FROM products WHERE product_name_en = 'Multi-Compartment Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Рюкзак з чохлом від дощу',
        (SELECT id FROM products WHERE product_name_en = 'Backpack with Rain Cover'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Рюкзак із захистом від крадіжки',
        (SELECT id FROM products WHERE product_name_en = 'Anti-Theft Travel Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Складаний похідний рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Foldable Hiking Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ергономічний туристичний рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Ergonomic Travel Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Tourism Backpacks')),

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

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Літній',
        (SELECT id FROM products WHERE product_name_en = 'Summer Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Summer Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '0.9',
        (SELECT id FROM products WHERE product_name_en = 'Summer Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Summer Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Літо',
        (SELECT id FROM products WHERE product_name_en = 'Summer Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Зимовий',
        (SELECT id FROM products WHERE product_name_en = 'Winter Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Нейлон з утепленням',
        (SELECT id FROM products WHERE product_name_en = 'Winter Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '2.5',
        (SELECT id FROM products WHERE product_name_en = 'Winter Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Winter Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Winter Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Компактний',
        (SELECT id FROM products WHERE product_name_en = 'Compact Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Compact Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1.1',
        (SELECT id FROM products WHERE product_name_en = 'Compact Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Compact Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Універсальний',
        (SELECT id FROM products WHERE product_name_en = 'Compact Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Подвійний',
        (SELECT id FROM products WHERE product_name_en = 'Double Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Поліестер + утеплювач',
        (SELECT id FROM products WHERE product_name_en = 'Double Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '3.0',
        (SELECT id FROM products WHERE product_name_en = 'Double Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '2',
        (SELECT id FROM products WHERE product_name_en = 'Double Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Літо',
        (SELECT id FROM products WHERE product_name_en = 'Double Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Мумія',
        (SELECT id FROM products WHERE product_name_en = 'Mummy Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Нейлон з утепленням',
        (SELECT id FROM products WHERE product_name_en = 'Mummy Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1.8',
        (SELECT id FROM products WHERE product_name_en = 'Mummy Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Mummy Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Mummy Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Водонепроникний',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Нейлон з водовідштовхувальним покриттям',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '2.2',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Дощова погода',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ультралегкий',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '0.6',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Універсальний',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Утеплений',
        (SELECT id FROM products WHERE product_name_en = 'Insulated Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Нейлон + утеплювач',
        (SELECT id FROM products WHERE product_name_en = 'Insulated Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '2.8',
        (SELECT id FROM products WHERE product_name_en = 'Insulated Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Insulated Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Insulated Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Дитячий',
        (SELECT id FROM products WHERE product_name_en = 'Kids Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Kids Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1.2',
        (SELECT id FROM products WHERE product_name_en = 'Kids Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Kids Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Весна/літо',
        (SELECT id FROM products WHERE product_name_en = 'Kids Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Трисезонний',
        (SELECT id FROM products WHERE product_name_en = '3-Season Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Поліестер + утеплювач',
        (SELECT id FROM products WHERE product_name_en = '3-Season Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1.5',
        (SELECT id FROM products WHERE product_name_en = '3-Season Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = '3-Season Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Sleeping Bags')),

       (nextval('product_characteristics_seq'), 'Весна/літо/осінь',
        (SELECT id FROM products WHERE product_name_en = '3-Season Sleeping Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Sleeping Bags'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Портативне спорядження',
        (SELECT id FROM products WHERE product_name_en = 'Camping Stove'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Нержавіюча сталь',
        (SELECT id FROM products WHERE product_name_en = 'Camping Stove'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '2.5',
        (SELECT id FROM products WHERE product_name_en = 'Camping Stove'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Приготування їжі',
        (SELECT id FROM products WHERE product_name_en = 'Camping Stove'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Набір посуду',
        (SELECT id FROM products WHERE product_name_en = 'Camping Pot Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Camping Pot Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '1.8',
        (SELECT id FROM products WHERE product_name_en = 'Camping Pot Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Приготування їжі',
        (SELECT id FROM products WHERE product_name_en = 'Camping Pot Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Складаний гриль',
        (SELECT id FROM products WHERE product_name_en = 'Foldable Grill'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Чавун',
        (SELECT id FROM products WHERE product_name_en = 'Foldable Grill'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '3.5',
        (SELECT id FROM products WHERE product_name_en = 'Foldable Grill'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Барбекю',
        (SELECT id FROM products WHERE product_name_en = 'Foldable Grill'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Набір столових приборів',
        (SELECT id FROM products WHERE product_name_en = 'Titanium Cutlery Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Титан',
        (SELECT id FROM products WHERE product_name_en = 'Titanium Cutlery Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '0.3',
        (SELECT id FROM products WHERE product_name_en = 'Titanium Cutlery Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Прийом їжі',
        (SELECT id FROM products WHERE product_name_en = 'Titanium Cutlery Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чайник',
        (SELECT id FROM products WHERE product_name_en = 'Camping Kettle'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Camping Kettle'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '0.7',
        (SELECT id FROM products WHERE product_name_en = 'Camping Kettle'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Нагрівання води',
        (SELECT id FROM products WHERE product_name_en = 'Camping Kettle'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Кавоварка',
        (SELECT id FROM products WHERE product_name_en = 'Portable Coffee Maker'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Пластик і нержавіюча сталь',
        (SELECT id FROM products WHERE product_name_en = 'Portable Coffee Maker'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '1.2',
        (SELECT id FROM products WHERE product_name_en = 'Portable Coffee Maker'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Приготування кави',
        (SELECT id FROM products WHERE product_name_en = 'Portable Coffee Maker'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Набір столових приборів',
        (SELECT id FROM products WHERE product_name_en = 'Camping Utensil Kit'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Нержавіюча сталь і пластик',
        (SELECT id FROM products WHERE product_name_en = 'Camping Utensil Kit'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '0.9',
        (SELECT id FROM products WHERE product_name_en = 'Camping Utensil Kit'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Приготування їжі',
        (SELECT id FROM products WHERE product_name_en = 'Camping Utensil Kit'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Сковорода',
        (SELECT id FROM products WHERE product_name_en = 'Camping Skillet'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Чавун',
        (SELECT id FROM products WHERE product_name_en = 'Camping Skillet'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '2.3',
        (SELECT id FROM products WHERE product_name_en = 'Camping Skillet'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Смаження',
        (SELECT id FROM products WHERE product_name_en = 'Camping Skillet'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Кулінарний триног',
        (SELECT id FROM products WHERE product_name_en = 'Cooking Tripod'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Сталь',
        (SELECT id FROM products WHERE product_name_en = 'Cooking Tripod'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '3.0',
        (SELECT id FROM products WHERE product_name_en = 'Cooking Tripod'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Готування на відкритому вогні',
        (SELECT id FROM products WHERE product_name_en = 'Cooking Tripod'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Газовий пальник',
        (SELECT id FROM products WHERE product_name_en = 'Portable Gas Burner'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Алюміній і сталь',
        (SELECT id FROM products WHERE product_name_en = 'Portable Gas Burner'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), '1.5',
        (SELECT id FROM products WHERE product_name_en = 'Portable Gas Burner'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Cooking Gear')),

       (nextval('product_characteristics_seq'), 'Приготування їжі',
        (SELECT id FROM products WHERE product_name_en = 'Portable Gas Burner'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип використання' AND category_name = 'Cooking Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Двомісний намет',
        (SELECT id FROM products WHERE product_name_en = 'Two-Person Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер і нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Two-Person Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '2.5',
        (SELECT id FROM products WHERE product_name_en = 'Two-Person Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '2',
        (SELECT id FROM products WHERE product_name_en = 'Two-Person Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Літній',
        (SELECT id FROM products WHERE product_name_en = 'Two-Person Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Сімейний намет',
        (SELECT id FROM products WHERE product_name_en = 'Family Camping Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Family Camping Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '7.8',
        (SELECT id FROM products WHERE product_name_en = 'Family Camping Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '6',
        (SELECT id FROM products WHERE product_name_en = 'Family Camping Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Універсальний',
        (SELECT id FROM products WHERE product_name_en = 'Family Camping Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Походний намет',
        (SELECT id FROM products WHERE product_name_en = 'Backpacking Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Backpacking Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '1.8',
        (SELECT id FROM products WHERE product_name_en = 'Backpacking Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Backpacking Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Весна/Літо',
        (SELECT id FROM products WHERE product_name_en = 'Backpacking Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Швидке встановлення',
        (SELECT id FROM products WHERE product_name_en = 'Pop-Up Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Pop-Up Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '3.1',
        (SELECT id FROM products WHERE product_name_en = 'Pop-Up Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4',
        (SELECT id FROM products WHERE product_name_en = 'Pop-Up Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Літній',
        (SELECT id FROM products WHERE product_name_en = 'Pop-Up Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Всі погодні умови',
        (SELECT id FROM products WHERE product_name_en = 'All-Weather Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Ріпстоп нейлон',
        (SELECT id FROM products WHERE product_name_en = 'All-Weather Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4.5',
        (SELECT id FROM products WHERE product_name_en = 'All-Weather Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4',
        (SELECT id FROM products WHERE product_name_en = 'All-Weather Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Чотирисезонний',
        (SELECT id FROM products WHERE product_name_en = 'All-Weather Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Купольний намет',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Dome Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер і скловолокно',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Dome Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '3.8',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Dome Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '3',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Dome Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Трьохсезонний',
        (SELECT id FROM products WHERE product_name_en = 'Hiking Dome Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Водонепроникний намет',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер з водонепроникним покриттям',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4.2',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Чотирисезонний',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ультралегкий намет',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Нейлон Ripstop',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '1.2',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '1',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Трисезонний',
        (SELECT id FROM products WHERE product_name_en = 'Ultralight Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чотирисезонний намет',
        (SELECT id FROM products WHERE product_name_en = 'Four-Season Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер Ripstop з утеплювачем',
        (SELECT id FROM products WHERE product_name_en = 'Four-Season Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '6.5',
        (SELECT id FROM products WHERE product_name_en = 'Four-Season Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '3',
        (SELECT id FROM products WHERE product_name_en = 'Four-Season Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Чотирисезонний',
        (SELECT id FROM products WHERE product_name_en = 'Four-Season Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Швидке встановлення',
        (SELECT id FROM products WHERE product_name_en = 'Instant Setup Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Instant Setup Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '3.0',
        (SELECT id FROM products WHERE product_name_en = 'Instant Setup Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), '4',
        (SELECT id FROM products WHERE product_name_en = 'Instant Setup Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Місткість' AND category_name = 'Tents')),

       (nextval('product_characteristics_seq'), 'Трисезонний',
        (SELECT id FROM products WHERE product_name_en = 'Instant Setup Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезонність' AND category_name = 'Tents'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Подушка',
        (SELECT id FROM products WHERE product_name_en = 'Travel Pillow'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '25',
        (SELECT id FROM products WHERE product_name_en = 'Travel Pillow'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Піноматеріал з пам''яттю',
        (SELECT id FROM products WHERE product_name_en = 'Travel Pillow'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Підтримка голови та шиї',
        (SELECT id FROM products WHERE product_name_en = 'Travel Pillow'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Синій',
        (SELECT id FROM products WHERE product_name_en = 'Travel Pillow'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Органайзери',
        (SELECT id FROM products WHERE product_name_en = 'Compression Packing Cubes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '35',
        (SELECT id FROM products WHERE product_name_en = 'Compression Packing Cubes'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Compression Packing Cubes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Економія місця у багажі',
        (SELECT id FROM products WHERE product_name_en = 'Compression Packing Cubes'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Compression Packing Cubes'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гаманець',
        (SELECT id FROM products WHERE product_name_en = 'RFID Blocking Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '15',
        (SELECT id FROM products WHERE product_name_en = 'RFID Blocking Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Шкіра з RFID-блокуванням',
        (SELECT id FROM products WHERE product_name_en = 'RFID Blocking Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Захист карток',
        (SELECT id FROM products WHERE product_name_en = 'RFID Blocking Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Коричневий',
        (SELECT id FROM products WHERE product_name_en = 'RFID Blocking Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Замки',
        (SELECT id FROM products WHERE product_name_en = 'Luggage Locks'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '2',
        (SELECT id FROM products WHERE product_name_en = 'Luggage Locks'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Метал',
        (SELECT id FROM products WHERE product_name_en = 'Luggage Locks'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Захист багажу',
        (SELECT id FROM products WHERE product_name_en = 'Luggage Locks'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Сріблястий',
        (SELECT id FROM products WHERE product_name_en = 'Luggage Locks'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Органайзер',
        (SELECT id FROM products WHERE product_name_en = 'Travel Organizer Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '30',
        (SELECT id FROM products WHERE product_name_en = 'Travel Organizer Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Travel Organizer Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Відділення для аксесуарів',
        (SELECT id FROM products WHERE product_name_en = 'Travel Organizer Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Сірий',
        (SELECT id FROM products WHERE product_name_en = 'Travel Organizer Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Косметичка',
        (SELECT id FROM products WHERE product_name_en = 'Travel Toiletry Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '25',
        (SELECT id FROM products WHERE product_name_en = 'Travel Toiletry Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Travel Toiletry Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Організація туалетного приладдя',
        (SELECT id FROM products WHERE product_name_en = 'Travel Toiletry Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Travel Toiletry Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Адаптер',
        (SELECT id FROM products WHERE product_name_en = 'Universal Travel Adapter'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '40',
        (SELECT id FROM products WHERE product_name_en = 'Universal Travel Adapter'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Пластик, метал',
        (SELECT id FROM products WHERE product_name_en = 'Universal Travel Adapter'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Перехідники для різних типів розеток',
        (SELECT id FROM products WHERE product_name_en = 'Universal Travel Adapter'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Universal Travel Adapter'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чохли',
        (SELECT id FROM products WHERE product_name_en = 'Travel Shoe Bags'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '15',
        (SELECT id FROM products WHERE product_name_en = 'Travel Shoe Bags'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Travel Shoe Bags'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Збереження чистоти багажу',
        (SELECT id FROM products WHERE product_name_en = 'Travel Shoe Bags'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Сірий',
        (SELECT id FROM products WHERE product_name_en = 'Travel Shoe Bags'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гаманець для шиї',
        (SELECT id FROM products WHERE product_name_en = 'Neck Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '20',
        (SELECT id FROM products WHERE product_name_en = 'Neck Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Neck Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Безпечне зберігання цінних речей',
        (SELECT id FROM products WHERE product_name_en = 'Neck Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Neck Wallet'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ковдра',
        (SELECT id FROM products WHERE product_name_en = 'Travel Blanket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип сумки' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), '35',
        (SELECT id FROM products WHERE product_name_en = 'Travel Blanket'),
        (SELECT id FROM category_characteristics WHERE name = 'Об''єм' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер, фліс',
        (SELECT id FROM products WHERE product_name_en = 'Travel Blanket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Теплота та компактність',
        (SELECT id FROM products WHERE product_name_en = 'Travel Blanket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Travel Accessories')),

       (nextval('product_characteristics_seq'), 'Червоний',
        (SELECT id FROM products WHERE product_name_en = 'Travel Blanket'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Travel Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Круїзерний скейтборд',
        (SELECT id FROM products WHERE product_name_en = 'Cruiser Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево',
        (SELECT id FROM products WHERE product_name_en = 'Cruiser Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '85',
        (SELECT id FROM products WHERE product_name_en = 'Cruiser Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Cruiser Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Скейтборд для вулиці',
        (SELECT id FROM products WHERE product_name_en = 'Street Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево, метал',
        (SELECT id FROM products WHERE product_name_en = 'Street Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '95',
        (SELECT id FROM products WHERE product_name_en = 'Street Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Street Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Лонгборд',
        (SELECT id FROM products WHERE product_name_en = 'Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево',
        (SELECT id FROM products WHERE product_name_en = 'Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '120',
        (SELECT id FROM products WHERE product_name_en = 'Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Довгий',
        (SELECT id FROM products WHERE product_name_en = 'Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Міні круїзер',
        (SELECT id FROM products WHERE product_name_en = 'Mini Cruiser'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево',
        (SELECT id FROM products WHERE product_name_en = 'Mini Cruiser'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '75',
        (SELECT id FROM products WHERE product_name_en = 'Mini Cruiser'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Компактний',
        (SELECT id FROM products WHERE product_name_en = 'Mini Cruiser'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Електричний скейтборд',
        (SELECT id FROM products WHERE product_name_en = 'Electric Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Метал, пластик',
        (SELECT id FROM products WHERE product_name_en = 'Electric Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '300',
        (SELECT id FROM products WHERE product_name_en = 'Electric Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Electric Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Скейтборд для фристайлу',
        (SELECT id FROM products WHERE product_name_en = 'Freestyle Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево, метал',
        (SELECT id FROM products WHERE product_name_en = 'Freestyle Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '100',
        (SELECT id FROM products WHERE product_name_en = 'Freestyle Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Freestyle Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Лонгборд для даунхілу',
        (SELECT id FROM products WHERE product_name_en = 'Downhill Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево',
        (SELECT id FROM products WHERE product_name_en = 'Downhill Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '140',
        (SELECT id FROM products WHERE product_name_en = 'Downhill Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Довгий',
        (SELECT id FROM products WHERE product_name_en = 'Downhill Longboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Скейтборд з кіктейлом',
        (SELECT id FROM products WHERE product_name_en = 'Kicktail Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево',
        (SELECT id FROM products WHERE product_name_en = 'Kicktail Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '90',
        (SELECT id FROM products WHERE product_name_en = 'Kicktail Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Kicktail Skateboard'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пенні борд',
        (SELECT id FROM products WHERE product_name_en = 'Penny Board'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Пластик',
        (SELECT id FROM products WHERE product_name_en = 'Penny Board'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '60',
        (SELECT id FROM products WHERE product_name_en = 'Penny Board'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Малий',
        (SELECT id FROM products WHERE product_name_en = 'Penny Board'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Скейтборд для початківців',
        (SELECT id FROM products WHERE product_name_en = 'Skateboard for Beginners'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Дерево, метал',
        (SELECT id FROM products WHERE product_name_en = 'Skateboard for Beginners'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), '70',
        (SELECT id FROM products WHERE product_name_en = 'Skateboard for Beginners'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Skateboards')),

       (nextval('product_characteristics_seq'), 'Стандартний',
        (SELECT id FROM products WHERE product_name_en = 'Skateboard for Beginners'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Skateboards'));


INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністський шолом',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Helmet'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Пластик, метал',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Helmet'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Новачок',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Helmet'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 20',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Helmet'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '80',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Helmet'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністська обвязка',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Harness'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Нейлон, метал',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Harness'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Середній',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Harness'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 25',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Harness'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '100',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Harness'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Льодоруб',
        (SELECT id FROM products WHERE product_name_en = 'Ice Axe'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Сталь, алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Ice Axe'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Досвідчений',
        (SELECT id FROM products WHERE product_name_en = 'Ice Axe'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 30',
        (SELECT id FROM products WHERE product_name_en = 'Ice Axe'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '120',
        (SELECT id FROM products WHERE product_name_en = 'Ice Axe'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Набір альпіністських карабінів',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Carabiner Set'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Метал',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Carabiner Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Новачок',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Carabiner Set'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 20',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Carabiner Set'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '40',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Carabiner Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністська мотузка',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Rope'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Rope'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Досвідчений',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Rope'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 35',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Rope'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '150',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Rope'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністські кішки',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Crampons'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Метал',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Crampons'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Новачок',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Crampons'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 40',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Crampons'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '130',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Crampons'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністські рукавички',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Gloves'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Тканина, гума',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Gloves'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Новачок',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Gloves'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 20',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Gloves'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '50',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Gloves'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Страхувальний пристрій',
        (SELECT id FROM products WHERE product_name_en = 'Belay Device'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Метал, пластик',
        (SELECT id FROM products WHERE product_name_en = 'Belay Device'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Досвідчений',
        (SELECT id FROM products WHERE product_name_en = 'Belay Device'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 30',
        (SELECT id FROM products WHERE product_name_en = 'Belay Device'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '60',
        (SELECT id FROM products WHERE product_name_en = 'Belay Device'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Мішечок для магнезії',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Chalk Bag'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Тканина',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Chalk Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Новачок',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Chalk Bag'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 15',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Chalk Bag'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '20',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Chalk Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Альпіністський рюкзак',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип спорядження' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Нейлон, пластик',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Backpack'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Середній',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Рівень досвіду' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), 'Минус 25',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Backpack'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Мінімальна температура' AND category_name = 'Mountaineering Gear')),

       (nextval('product_characteristics_seq'), '180',
        (SELECT id FROM products WHERE product_name_en = 'Mountaineering Backpack'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Mountaineering Gear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для скелелазіння модель A',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Shoes Model A'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Shoes Model A'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Shoes Model A'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '120',
        (SELECT id FROM products WHERE product_name_en = 'Climbing Shoes Model A'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Агресивні скелелазні черевики',
        (SELECT id FROM products WHERE product_name_en = 'Aggressive Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Aggressive Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '40, 41, 42, 43, 44',
        (SELECT id FROM products WHERE product_name_en = 'Aggressive Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '150',
        (SELECT id FROM products WHERE product_name_en = 'Aggressive Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для початківців',
        (SELECT id FROM products WHERE product_name_en = 'Beginner Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Тканина, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Beginner Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '38, 39, 40, 41, 42',
        (SELECT id FROM products WHERE product_name_en = 'Beginner Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '100',
        (SELECT id FROM products WHERE product_name_en = 'Beginner Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для скелелазіння з липучками',
        (SELECT id FROM products WHERE product_name_en = 'Velcro Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, липучки, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Velcro Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'Velcro Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '110',
        (SELECT id FROM products WHERE product_name_en = 'Velcro Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для боулдерінгу',
        (SELECT id FROM products WHERE product_name_en = 'Bouldering Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Bouldering Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'Bouldering Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '130',
        (SELECT id FROM products WHERE product_name_en = 'Bouldering Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Високопродуктивне взуття для скелелазіння',
        (SELECT id FROM products WHERE product_name_en = 'Performance Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Performance Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43, 44',
        (SELECT id FROM products WHERE product_name_en = 'Performance Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '160',
        (SELECT id FROM products WHERE product_name_en = 'Performance Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для скелелазіння на цілий день',
        (SELECT id FROM products WHERE product_name_en = 'All-Day Comfort Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'All-Day Comfort Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'All-Day Comfort Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '140',
        (SELECT id FROM products WHERE product_name_en = 'All-Day Comfort Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для скелелазіння зі шнурівкою',
        (SELECT id FROM products WHERE product_name_en = 'Lace-Up Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Lace-Up Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'Lace-Up Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '125',
        (SELECT id FROM products WHERE product_name_en = 'Lace-Up Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Взуття для скелелазіння для широкої стопи',
        (SELECT id FROM products WHERE product_name_en = 'Wide-Fit Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Кожа, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Wide-Fit Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '40, 41, 42, 43, 44',
        (SELECT id FROM products WHERE product_name_en = 'Wide-Fit Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '135',
        (SELECT id FROM products WHERE product_name_en = 'Wide-Fit Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Синтетичне взуття для скелелазіння',
        (SELECT id FROM products WHERE product_name_en = 'Synthetic Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип спорядження' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), 'Синтетичний матеріал, гумова підошва',
        (SELECT id FROM products WHERE product_name_en = 'Synthetic Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '39, 40, 41, 42, 43',
        (SELECT id FROM products WHERE product_name_en = 'Synthetic Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Climbing Shoes')),

       (nextval('product_characteristics_seq'), '115',
        (SELECT id FROM products WHERE product_name_en = 'Synthetic Climbing Shoes'),
        (SELECT id FROM category_characteristics WHERE name = 'Вага' AND category_name = 'Climbing Shoes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча зимова куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Нейлон, синтетичний утеплювач',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Утеплення для холодної погоди',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча водонепроникна куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Waterproof Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Нейлон, водонепроникне покриття',
        (SELECT id FROM products WHERE product_name_en = 'Men Waterproof Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Waterproof Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Дощ',
        (SELECT id FROM products WHERE product_name_en = 'Men Waterproof Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Захист від дощу',
        (SELECT id FROM products WHERE product_name_en = 'Men Waterproof Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловічий вітрозахисний куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Windbreaker'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Поліестер, вітрозахисне покриття',
        (SELECT id FROM products WHERE product_name_en = 'Men Windbreaker'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL',
        (SELECT id FROM products WHERE product_name_en = 'Men Windbreaker'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Весна, осінь',
        (SELECT id FROM products WHERE product_name_en = 'Men Windbreaker'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Захист від вітру',
        (SELECT id FROM products WHERE product_name_en = 'Men Windbreaker'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча пухова куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Puffer Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Пух, нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Men Puffer Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Puffer Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Men Puffer Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Тепла пухова куртка для зимових активностей',
        (SELECT id FROM products WHERE product_name_en = 'Men Puffer Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча куртка для походів',
        (SELECT id FROM products WHERE product_name_en = 'Men Hiking Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Поліестер, водовідштовхувальний матеріал',
        (SELECT id FROM products WHERE product_name_en = 'Men Hiking Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Hiking Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Універсальний для будь-якої погоди',
        (SELECT id FROM products WHERE product_name_en = 'Men Hiking Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Дихаюча куртка для походів',
        (SELECT id FROM products WHERE product_name_en = 'Men Hiking Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча софтшелл куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Softshell Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Софтшелл матеріал',
        (SELECT id FROM products WHERE product_name_en = 'Men Softshell Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL',
        (SELECT id FROM products WHERE product_name_en = 'Men Softshell Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Весна, осінь',
        (SELECT id FROM products WHERE product_name_en = 'Men Softshell Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Для помірних погодних умов',
        (SELECT id FROM products WHERE product_name_en = 'Men Softshell Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча пухова куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Down Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Пух, нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Men Down Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Down Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Men Down Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Відмінна ізоляція для зими',
        (SELECT id FROM products WHERE product_name_en = 'Men Down Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча парка',
        (SELECT id FROM products WHERE product_name_en = 'Men Parka'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Поліестер, хутро',
        (SELECT id FROM products WHERE product_name_en = 'Men Parka'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Parka'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Зима',
        (SELECT id FROM products WHERE product_name_en = 'Men Parka'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Стильна парка з хутряним капюшоном для холодного клімату',
        (SELECT id FROM products WHERE product_name_en = 'Men Parka'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча флісова куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Fleece Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Фліс',
        (SELECT id FROM products WHERE product_name_en = 'Men Fleece Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL',
        (SELECT id FROM products WHERE product_name_en = 'Men Fleece Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Осінь, зима',
        (SELECT id FROM products WHERE product_name_en = 'Men Fleece Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Флісова куртка для утеплення в холодну погоду',
        (SELECT id FROM products WHERE product_name_en = 'Men Fleece Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча шкіряна куртка',
        (SELECT id FROM products WHERE product_name_en = 'Men Leather Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип одягу' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Шкіра',
        (SELECT id FROM products WHERE product_name_en = 'Men Leather Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'S, M, L, XL, XXL',
        (SELECT id FROM products WHERE product_name_en = 'Men Leather Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Осінь, весна',
        (SELECT id FROM products WHERE product_name_en = 'Men Leather Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Сезон' AND category_name = 'Men Jackets')),

       (nextval('product_characteristics_seq'), 'Класична шкіряна куртка з сучасним дизайном',
        (SELECT id FROM products WHERE product_name_en = 'Men Leather Jacket'),
        (SELECT id FROM category_characteristics WHERE name = 'Функціональність' AND category_name = 'Men Jackets'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча вовняна шапка',
        (SELECT id FROM products WHERE product_name_en = 'Men Wool Beanie'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Wool Beanie'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Wool Beanie'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча бейсболка',
        (SELECT id FROM products WHERE product_name_en = 'Men Baseball Cap'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Baseball Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Baseball Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча кепка-тракер',
        (SELECT id FROM products WHERE product_name_en = 'Men Trucker Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна, сітка',
        (SELECT id FROM products WHERE product_name_en = 'Men Trucker Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Trucker Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча плоска кепка',
        (SELECT id FROM products WHERE product_name_en = 'Men Flat Cap'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Flat Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Flat Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловічий панамка',
        (SELECT id FROM products WHERE product_name_en = 'Men Bucket Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Bucket Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Bucket Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча вязана шапка',
        (SELECT id FROM products WHERE product_name_en = 'Men Knit Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Knit Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Knit Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча кепка снэпбек',
        (SELECT id FROM products WHERE product_name_en = 'Men Snapback Cap'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Snapback Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Snapback Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловічий капелюх федора',
        (SELECT id FROM products WHERE product_name_en = 'Men Fedora Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Fedora Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Fedora Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловічий капелюх від сонця',
        (SELECT id FROM products WHERE product_name_en = 'Men Sun Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Men Sun Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Sun Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Чоловіча зимова шапка',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'Синтетичний матеріал',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Men Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Men Winter Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Men Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіноча вязана шапка',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Beanie'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Beanie'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Beanie'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіночий капелюх від сонця',
        (SELECT id FROM products WHERE product_name_en = 'Women Sun Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Sun Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Sun Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіночий панамка',
        (SELECT id FROM products WHERE product_name_en = 'Women Bucket Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Bucket Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Bucket Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіноча бейсболка',
        (SELECT id FROM products WHERE product_name_en = 'Women Baseball Cap'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Baseball Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Baseball Cap'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіночий капелюх федора',
        (SELECT id FROM products WHERE product_name_en = 'Women Fedora Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Fedora Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Fedora Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіночий соломяний капелюх',
        (SELECT id FROM products WHERE product_name_en = 'Women Straw Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Солома',
        (SELECT id FROM products WHERE product_name_en = 'Women Straw Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Straw Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіночий капелюх із широкими полями',
        (SELECT id FROM products WHERE product_name_en = 'Women Floppy Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Солома',
        (SELECT id FROM products WHERE product_name_en = 'Women Floppy Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Floppy Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіноча вязана повязка на голову',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Headband'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Вовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Headband'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Knit Headband'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіноча кепка-тракер',
        (SELECT id FROM products WHERE product_name_en = 'Women Trucker Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Women Trucker Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Trucker Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Жіноча зимова шапка',
        (SELECT id FROM products WHERE product_name_en = 'Women Winter Hat'),
        (SELECT id
         FROM category_characteristics
         WHERE name = 'Тип головного убору' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Women Winter Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Women Headwear')),

       (nextval('product_characteristics_seq'), 'One size',
        (SELECT id FROM products WHERE product_name_en = 'Women Winter Hat'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір' AND category_name = 'Women Headwear'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гірський велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Mountain Bike Pro'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '27.5"',
        (SELECT id FROM products WHERE product_name_en = 'Mountain Bike Pro'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Mountain Bike Pro'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Шосейний велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Road Bike Ultra'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '28"',
        (SELECT id FROM products WHERE product_name_en = 'Road Bike Ultra'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Карбон',
        (SELECT id FROM products WHERE product_name_en = 'Road Bike Ultra'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гібридний велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Hybrid Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '26"',
        (SELECT id FROM products WHERE product_name_en = 'Hybrid Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Hybrid Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Електричний гірський велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Electric Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '27.5"',
        (SELECT id FROM products WHERE product_name_en = 'Electric Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Electric Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Складаний міський велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Folding City Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '20"',
        (SELECT id FROM products WHERE product_name_en = 'Folding City Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Сталь',
        (SELECT id FROM products WHERE product_name_en = 'Folding City Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гравійний велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Gravel Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '27.5"',
        (SELECT id FROM products WHERE product_name_en = 'Gravel Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Gravel Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Шосейний велосипед для жінок',
        (SELECT id FROM products WHERE product_name_en = 'Womens Road Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '28"',
        (SELECT id FROM products WHERE product_name_en = 'Womens Road Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Womens Road Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гірський велосипед для дітей',
        (SELECT id FROM products WHERE product_name_en = 'Kids Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '24"',
        (SELECT id FROM products WHERE product_name_en = 'Kids Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Сталь',
        (SELECT id FROM products WHERE product_name_en = 'Kids Mountain Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'BMX велосипед',
        (SELECT id FROM products WHERE product_name_en = 'BMX Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '20"',
        (SELECT id FROM products WHERE product_name_en = 'BMX Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Сталь',
        (SELECT id FROM products WHERE product_name_en = 'BMX Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Туристичний велосипед',
        (SELECT id FROM products WHERE product_name_en = 'Touring Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип велосипеда' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), '28"',
        (SELECT id FROM products WHERE product_name_en = 'Touring Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Розмір колеса' AND category_name = 'Bikes')),

       (nextval('product_characteristics_seq'), 'Алюміній',
        (SELECT id FROM products WHERE product_name_en = 'Touring Bike'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал рами' AND category_name = 'Bikes'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Сироватковий ізолят протеїну',
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 50,
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Шоколад',
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Казеїновий протеїн',
        (SELECT id FROM products WHERE product_name_en = 'Casein Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 55,
        (SELECT id FROM products WHERE product_name_en = 'Casein Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Ваніль',
        (SELECT id FROM products WHERE product_name_en = 'Casein Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Рослинний протеїн',
        (SELECT id FROM products WHERE product_name_en = 'Plant-Based Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 60,
        (SELECT id FROM products WHERE product_name_en = 'Plant-Based Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Ягоди',
        (SELECT id FROM products WHERE product_name_en = 'Plant-Based Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Сироватковий концентрат протеїну',
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Concentrate'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 40,
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Concentrate'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Шоколад',
        (SELECT id FROM products WHERE product_name_en = 'Whey Protein Concentrate'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Гідролізований сироватковий протеїн',
        (SELECT id FROM products WHERE product_name_en = 'Hydrolyzed Whey Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 70,
        (SELECT id FROM products WHERE product_name_en = 'Hydrolyzed Whey Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Тростниковий цукор',
        (SELECT id FROM products WHERE product_name_en = 'Hydrolyzed Whey Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Протеїн з яєчного білка',
        (SELECT id FROM products WHERE product_name_en = 'Egg White Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 45,
        (SELECT id FROM products WHERE product_name_en = 'Egg White Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Без смаку',
        (SELECT id FROM products WHERE product_name_en = 'Egg White Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Колагеновий протеїн',
        (SELECT id FROM products WHERE product_name_en = 'Collagen Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 50,
        (SELECT id FROM products WHERE product_name_en = 'Collagen Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Натуральний',
        (SELECT id FROM products WHERE product_name_en = 'Collagen Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ізолят горохового протеїну',
        (SELECT id FROM products WHERE product_name_en = 'Pea Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 45,
        (SELECT id FROM products WHERE product_name_en = 'Pea Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Тропічний фрукт',
        (SELECT id FROM products WHERE product_name_en = 'Pea Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Ізолят соєвого протеїну',
        (SELECT id FROM products WHERE product_name_en = 'Soy Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 50,
        (SELECT id FROM products WHERE product_name_en = 'Soy Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Шоколад',
        (SELECT id FROM products WHERE product_name_en = 'Soy Protein Isolate'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Протеїн з коричневого рису',
        (SELECT id FROM products WHERE product_name_en = 'Brown Rice Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип продукту' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 48,
        (SELECT id FROM products WHERE product_name_en = 'Brown Rice Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Кількість порцій' AND category_name = 'Proteins')),

       (nextval('product_characteristics_seq'), 'Ваніль',
        (SELECT id FROM products WHERE product_name_en = 'Brown Rice Protein'),
        (SELECT id FROM category_characteristics WHERE name = 'Смак' AND category_name = 'Proteins'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжний рушник',
        (SELECT id FROM products WHERE product_name_en = 'Beach Towel'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Бавовна',
        (SELECT id FROM products WHERE product_name_en = 'Beach Towel'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Синій',
        (SELECT id FROM products WHERE product_name_en = 'Beach Towel'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжна парасолька',
        (SELECT id FROM products WHERE product_name_en = 'Beach Umbrella'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Beach Umbrella'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Червоний',
        (SELECT id FROM products WHERE product_name_en = 'Beach Umbrella'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжна сумка-холодильник',
        (SELECT id FROM products WHERE product_name_en = 'Beach Cooler Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Beach Cooler Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Сірий',
        (SELECT id FROM products WHERE product_name_en = 'Beach Cooler Bag'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжний килимок',
        (SELECT id FROM products WHERE product_name_en = 'Beach Mat'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Beach Mat'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Зелений',
        (SELECT id FROM products WHERE product_name_en = 'Beach Mat'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Набір для підводного плавання',
        (SELECT id FROM products WHERE product_name_en = 'Snorkeling Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Силікон',
        (SELECT id FROM products WHERE product_name_en = 'Snorkeling Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Snorkeling Set'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Водонепроникний чохол для телефону',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Phone Case'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Пластик',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Phone Case'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Прозорий',
        (SELECT id FROM products WHERE product_name_en = 'Waterproof Phone Case'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжний стілець',
        (SELECT id FROM products WHERE product_name_en = 'Beach Chair'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Нейлон',
        (SELECT id FROM products WHERE product_name_en = 'Beach Chair'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Синій',
        (SELECT id FROM products WHERE product_name_en = 'Beach Chair'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжний мяч',
        (SELECT id FROM products WHERE product_name_en = 'Beach Ball'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'ПВХ',
        (SELECT id FROM products WHERE product_name_en = 'Beach Ball'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Червоний',
        (SELECT id FROM products WHERE product_name_en = 'Beach Ball'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжний намет',
        (SELECT id FROM products WHERE product_name_en = 'Beach Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Поліестер',
        (SELECT id FROM products WHERE product_name_en = 'Beach Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Блакитний',
        (SELECT id FROM products WHERE product_name_en = 'Beach Tent'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));

INSERT INTO product_characteristics (id, value, product_id, category_characteristic_id)
VALUES (nextval('product_characteristics_seq'), 'Пляжні сонцезахисні окуляри',
        (SELECT id FROM products WHERE product_name_en = 'Beach Sunglasses'),
        (SELECT id FROM category_characteristics WHERE name = 'Тип аксесуара' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Пластик',
        (SELECT id FROM products WHERE product_name_en = 'Beach Sunglasses'),
        (SELECT id FROM category_characteristics WHERE name = 'Матеріал' AND category_name = 'Beach Accessories')),

       (nextval('product_characteristics_seq'), 'Чорний',
        (SELECT id FROM products WHERE product_name_en = 'Beach Sunglasses'),
        (SELECT id FROM category_characteristics WHERE name = 'Колір' AND category_name = 'Beach Accessories'));


