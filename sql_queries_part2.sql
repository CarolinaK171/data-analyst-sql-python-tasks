1. Посчитайте количество уникальных категорий в таблице Sales

select count(distinct category)
from "Sales"

2. Посчитайте сумму всех продаж в разрезе категорий из таблицы Sales

select category,
       sum(payed)
from "Sales"
group by category

3. Для каждого дня найдите максимальную, минимальную и среднюю цену продажи (отсортируйте по возрастанию даты)

select sales_date,
       min (payed),
       max (payed),
       avg (payed)
from "Sales"
group by sales_date
order by sales_date

4. Для каждого покупателя выведите имя покупателя и сумму и количество покупок (подсказка: количество покупок - количество операций в таблице Sales, вам поможет count(*) ), отсортируйте по имени по убыванию

select c.customer_id,
       c.name,
       c.last_name,
       sum(s.payed),
       count(s.*)
from "Customers" as c
left join "Sales" as s on c.customer_id = s.customer_id
group by c.customer_id
order by c.name

5. Найдите количество покупок в разрезе день продажи - категория подсказка (group by можно писать по нескольким полям, в данном случае по двум: категория и день продажи)

select sales_date,
       category,
       sum (quantity)
from "Sales"
group by sales_date, category
order by sales_date
        
6. Достаньте имена покупателей, которые купили в сумме больше 3 товаров (столбец quantity) и которые зарегистрировались после 1 января 2025 года включительно 

select s.customer_id,
       c.name,
       c.last_name,
       c.created_at,
       sum(s.quantity)
from "Sales" as s
join "Customers" as c on s.customer_id = c.customer_id
where c.created_at >= '2025-01-01'
group by s.customer_id, c.name, c.last_name, c.created_at
having sum(s.quantity) > 3

7. Для каждого дня найдите количество проданных товаров со всех категорий

select sales_date,
       sum(quantity)
from "Sales"
group by sales_date
order by sales_date
