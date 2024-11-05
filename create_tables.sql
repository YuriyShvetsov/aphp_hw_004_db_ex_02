CREATE TABLE shop (
  id id INTEGER PRIMARY KEY autoincrement,
  name VARCHAR(255) NOT NULL,
  adress VARCHAR(255) NOT NULL
);
CREATE TABLE product (
  id INTEGER PRIMARY KEY autoincrement,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  count INT NOT NULL,
  shop_id_product INT NOT NULL,
  FOREIGN KEY (shop_id_product) REFERENCES shop(id)
);
CREATE TABLE orders (
  id INTEGER PRIMARY KEY autoincrement,
  created_at TEXT NOT NULL,
  shop_id INT NOT NULL,
  client_id INT NOT NULL,
  FOREIGN KEY (shop_id) REFERENCES shop(id),
  FOREIGN KEY (client_id) REFERENCES client(id)
);
CREATE TABLE client (
  id INTEGER PRIMARY KEY autoincrement,
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  adress VARCHAR(255) NOT NULL,
  birthday TEXT NOT NULL
);
CREATE TABLE order_product (
  id INTEGER PRIMARY KEY autoincrement,
  product_id INT NOT NULL,
  order_id INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (order_id) REFERENCES orders(id)
);

