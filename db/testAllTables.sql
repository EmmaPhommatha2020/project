-- add to cart
INSERT INTO cart
(productid, orderid, quantity)
VALUES(1, 1, 1);

-- change status
UPDATE orderTable 
SET status = false
WHERE id = 1 and userId = 1

-- check for user
SELECT  id, username, name FROM users
WHERE username= 'emma123'

-- checking for order
SELECT * FROM orderTable
WHERE userid = 1 and status = true

-- create new order
INSERT INTO orderTable
(userid, status, total) 
VALUES (1, true, 0)
RETURNING *

-- create new user
INSERT INTO users
(username, password, name)
VALUES ('emma123', 'emma123', 'emma123')
RETURNING id, username, name

-- detlete from cart
DELETE FROM cart
WHERE orderid=1 and productid=1

-- get all
SELECT u.id as userId, u.username, u.name, o.orderId as orderId, o.status, o.total, c.quantity, p.id as productId, p.name, p.price, p.picture, p.description, p.size
FROM orderTable o
JOIN users u on u.id = o.userId
JOIN cart c on o.orderId = c.orderId
JOIN products p on p.id = c.productId
WHERE u.username = 'emma' and u.password = 'emma'

-- get cart items
SELECT c.quantity, o.total, p.name, p.price, p.picture, p.id 
FROM cart c
JOIN orderTable o on c.orderid = o.orderId 
JOIN products p on c.productid = p.id
JOIN users u on u.id = o.userid
WHERE u.id = 1 and c.orderid = 1
ORDER BY p.id ASC

-- get dress
SELECT *
FROM products
WHERE type = 'dress'

-- get product
SELECT * FROM products
WHERE id=1

-- get products
SELECT * FROM products

-- get skirt
SELECT *
FROM products
WHERE type = 'skirt'

-- get top
SELECT *
FROM products
WHERE type = 'top'

-- get spring outfit
SELECT * FROM products
WHERE season = 'spring'

-- get user
SELECT name, username, id FROM users
WHERE username = 'emma' and password = 'emma'

-- update cart total 
UPDATE orderTable
SET total = 0
WHERE userId = 1 and status = true

-- update quantity
UPDATE cart
SET quantity = 0
WHERE orderid = 1 and productid = 1
RETURNING *

-- test 
SELECT *
FROM orderTable AS o
JOIN cart AS c ON o.orderid = c.orderid
JOIN products p ON c.productid = p.id








