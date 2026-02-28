
-- Use the `ref` function to select from other models-

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    data_tech_prac_raw.Orders o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    data_tech_prac_raw.Products p ON o.Product_ID = p.Product_ID