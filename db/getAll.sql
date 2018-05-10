SELECT u.id as userId, u.username, u.name, o.orderId as orderId, o.status, o.total, c.quantity, p.id as productId, p.name, p.price, p.picture, p.description, p.size
FROM orderTable o
JOIN users u on u.id = o.userId
JOIN cart c on o.orderId = c.orderId
JOIN products p on p.id = c.productId
WHERE u.username = $1 and u.password = $2