SELECT c.quantity, o.total, p.name, p.price, p.picture, p.id 
FROM cart c
JOIN orderTable o on c.orderID = o.orderID
JOIN products p on c.productID = p.id
JOIN users u on u.id = o.userID
WHERE u.id = $1 and c.orderID = $2
ORDER BY p.id ASC 