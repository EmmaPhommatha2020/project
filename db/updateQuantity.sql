UPDATE cart
SET quantity = $3
WHERE orderID = $1 and productID = $2
RETURNING *