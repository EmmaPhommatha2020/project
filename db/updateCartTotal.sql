UPDATE orderTable
SET total = $1
WHERE userID = $2 and status = true