select customer_id, sales_date, payed,
row_number () over (partition by customer_id order by sales_date) as purchase_number
from "Sales"