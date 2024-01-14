-- Adds two numeric values together.
SELECT column1 + column2 AS sum_result FROM your_table;

-- Subtracts the right-hand operand from the left-hand operand.
SELECT column1 - column2 AS difference_result FROM your_table;

-- Multiplies two numeric values.
SELECT column1 * column2 AS product_result FROM your_table;

-- Divides the left-hand operand by the right-hand operand. Be cautious of division by zero.
SELECT column1 / column2 AS quotient_result FROM your_table;

-- Returns the remainder of the division of the left-hand operand by the right-hand operand.
SELECT column1 % column2 AS modulus_result FROM your_table;

-- Represents a positive number. It doesn't change the sign of the operand.
SELECT +column1 AS positive_result FROM your_table;

-- Represents a negative number. Changes the sign of the operand.
SELECT -column1 AS negative_result FROM your_table;


/* In SQL, the AS keyword is used to alias a column or a table in the result set of a query. 
Aliasing involves giving a table or column a temporary name that can be used in the output. 
This is particularly useful for making the output more readable or for assigning more meaningful names to the result set. */