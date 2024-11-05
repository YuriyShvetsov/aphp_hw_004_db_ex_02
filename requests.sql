/* Сумма товаров по заказам */
SELECT order_id, client_id, client.name, shop_id, SUM(price) AS 'Сумма товаров в заказе'
FROM order_product
         INNER JOIN orders ON orders.id = order_product.order_id
         INNER JOIN client ON client.id = orders.client_id
GROUP BY order_id;

/* Сумма покупок клиентов за весь период */
SELECT order_id, client_id, client.name, strftime('%j', date(client.birthday)) AS birthday, SUM(price) AS 'Сумма заказа по клиенту'
FROM order_product
         INNER JOIN orders ON orders.id = order_product.order_id
         INNER JOIN client ON client.id = orders.client_id
GROUP BY client_id;


/* Сумма покупок по клиентам, сделанных в период +- 3 дня от его дня рождения */
SELECT order_id, client_id, client.name, SUM(price) AS 'Сумма заказов по клиентам'
FROM order_product
         INNER JOIN orders ON orders.id = order_product.order_id
         INNER JOIN client ON client.id = orders.client_id
WHERE strftime('%j', date(client.birthday)) <= strftime('%j', date(orders.created_at, '+3 days'))
  AND strftime('%j', date(client.birthday)) >= strftime('%j', date(orders.created_at, '-3 days'))
GROUP BY client_id;

/* Заказы, в которых цена продукта отличается от нынешней в таблице, и их разница */
SELECT orders.id AS 'Номер заказа', client.name AS 'Покупатель', product.name AS 'Наименование товара',
        order_product.price AS 'Стоимость в заказе', product.price AS 'Стоимость в прайсе', product.price - order_product.price AS 'Разница'
FROM order_product
         INNER JOIN orders ON order_product.order_id = orders.id
         INNER JOIN client ON client.id = orders.client_id
         INNER JOIN product ON order_product.product_id = product.id
WHERE order_product.price <> product.price;

/* Сумма заказов по магазинам с сортировкой от наибольшего к меньшему */
SELECT shop_id, shop.name, SUM(price) AS 'Сумма заказов по магазинам'
FROM order_product
         INNER JOIN orders ON orders.id = order_product.order_id
         INNER JOIN shop ON shop.id = orders.shop_id
GROUP BY shop_id
ORDER BY SUM(price) DESC;

/* Количество заказов по магазинам с сортировкой от наибольшего к меньшему */
SELECT shop_id, shop.name, count(order_id) AS 'Количество заказов по магазинам'
FROM order_product
         INNER JOIN orders ON orders.id = order_product.order_id
         INNER JOIN shop ON shop.id = orders.shop_id
GROUP BY shop_id
ORDER BY count(order_id) DESC;
