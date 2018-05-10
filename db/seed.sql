CREATE TABLE products ( 
    id SERIAL PRIMARY KEY,
    type TEXT,
    season TEXT, 
    name TEXT,
    price REAL,
    picture TEXT,
    description TEXT,
    size TEXT
);

CREATE TABLE users ( 
    id SERIAL PRIMARY KEY, 
    username TEXT,
    password TEXT,
    name TEXT
);

CREATE TABLE orderTable ( 
    orderID SERIAL PRIMARY KEY,
    userID INT REFERENCES users(id),
    status BOOLEAN,
    total REAL
);

CREATE TABLE cart ( 
    orderID INT REFERENCES orderTable(orderID),
    productID INT REFERENCES products(id),
    quantity int
);

INSERT INTO products
(type, season, name, price, picture, description, size)
VALUES ('costume', 'fall', 'Laos costume', 100.00, 'https://i.pinimg.com/originals/15/dd/fb/15ddfb6140d794e4dcedba88ea0ce905.jpg','Beautiful Laos costume', 'S');  

INSERT INTO users
(username, password, name)
VALUES ('emma', 'emma', 'emma');

INSERT INTO ordertable
(userid, status, total)
VALUES(1, true, 100);

INSERT INTO cart
(productid, orderid, quantity)
VALUES(1, 1, 2);





SELECT u.id as userId, u.username, u.name, o.orderId as orderId, o.status, o.total, c.quantity, 
p.id as productId, p.name, p.price, p.picture, p.description, p.size
FROM orderTable o
JOIN users u on u.id = o.userId
JOIN cart c on o.orderId = c.orderId
JOIN products p on p.id = c.productId
WHERE u.username = 'emma123' and u.password = 'ep'   