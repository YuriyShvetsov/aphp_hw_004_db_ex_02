INSERT INTO shop (name, adress) VALUES ('Битрикс Shop', 'Москва, ул. Попова, 12');
INSERT INTO shop (name, adress) VALUES ('Аквалига', 'Самара, ул. Василевского, 65');
INSERT INTO shop (name, adress) VALUES ('Электроника', 'Нижний Новгород, ул. Горького, 4');
INSERT INTO shop (name, adress) VALUES ('Бижу Арт', 'Москва, ул. Ленина, 48');
INSERT INTO shop (name, adress) VALUES ('Фламинго', 'Санкт-Петербург, Лиговский проспект, 36');

INSERT INTO client (name, phone, email, adress) VALUES ('Петров Сергей', '8-965-656-6565', 'client_1@mail.ru', 'Воронеж, Высокий проезд, д. 18, кв. 54', '2002-11-02');
INSERT INTO client (name, phone, email, adress) VALUES ('Козлов Павел', '8-989-989-9898', 'client_2@mail.ru', 'Сочи, ул. Красивая, д. 48а, кв. 198', '1978-06-05');
INSERT INTO client (name, phone, email, adress) VALUES ('Воронцов Игорь', '8-903-099-1111', 'client_3@mail.ru', 'Нижний Новгород, проспект Ильича, д. 125, кв. 258', '2008-10-28');
INSERT INTO client (name, phone, email, adress) VALUES ('Троицкий Алексей', '8-911-125-4578', 'client_4@mail.ru', 'Москва, ул. Адмирала Красина, д. 16, кв. 54', '2000-04-11');
INSERT INTO client (name, phone, email, adress) VALUES ('Королев Михаил', '8-925-754-8962', 'client_5@mail.ru', 'Краснодар, ул. Владимирского, д. 12, кв. 84', '2003-11-07');
INSERT INTO client (name, phone, email, adress) VALUES ('Плеханов Алексей', '8-916-852-3546', 'client_6@mail.ru', 'Казань, ул. Вавилова, д. 18', '1986-01-05');

INSERT INTO product (name, price, count, shop_id_product) VALUES ('Телевизор SONY', 25860, 10, 3);
INSERT INTO product (name, price, count, shop_id_product) VALUES ('Стиральная машина LG', 18900, 2, 3);
INSERT INTO product (name, price, count, shop_id_product) VALUES ('Смеситель для раковины Ledemer', 2900, 5, 2);
INSERT INTO product (name, price, count, shop_id_product) VALUES ('Ванна угловая AquaBath', 56000, 1, 2);
INSERT INTO product (name, price, count, shop_id_product) VALUES ('Ваза напольная', 7000, 1, 5);
INSERT INTO product (name, price, count, shop_id_product) VALUES ('Кольцо с фианитом 19', 10250, 3, 4);

INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-11-10 12:25', 3, 2);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-11-01 14:55', 5, 1);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-10-25 10:00', 2, 6);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-10-27 12:01', 2, 1);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-10-27 18:43', 2, 4);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-11-02 13:16', 3, 5);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-11-02 00:14', 5, 3);
INSERT INTO orders (created_at, shop_id, client_id) VALUES ('2024-11-03 08:52', 4, 2);

INSERT INTO order_product (product_id, order_id, price) VALUES (1, 1, 24000);
INSERT INTO order_product (product_id, order_id, price) VALUES (5, 2, 7000);
INSERT INTO order_product (product_id, order_id, price) VALUES (3, 3, 2900);
INSERT INTO order_product (product_id, order_id, price) VALUES (4, 3, 54000);
INSERT INTO order_product (product_id, order_id, price) VALUES (3, 4, 2900);
INSERT INTO order_product (product_id, order_id, price) VALUES (4, 5, 56000);
INSERT INTO order_product (product_id, order_id, price) VALUES (2, 6, 18900);
INSERT INTO order_product (product_id, order_id, price) VALUES (5, 7, 7000);
INSERT INTO order_product (product_id, order_id, price) VALUES (6, 8, 10250);