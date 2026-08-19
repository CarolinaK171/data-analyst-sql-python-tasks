1. Выведите все данные из таблицы

select * from "Sales"

2. Выведите только название категорий и количество проданных товаров (столбец quantity переименуйте в amount)

select category, quantity as amount
from "Sales"

3. Выведите ТОП-5 продаж, отсортированных по убыванию по количеству проданных товаров

select * from "Sales"
order by quantity desc
limit 5

4. Выведите уникальные названия категорий

select distinct category
from "Sales"

5. Выведите все продажи, в категории которых в середине которых есть буква "O"

select * from "Sales"
where category like '%o%'

6. Выведите продажи, совершенные после 1 февраля 2026 года (включительно), где цена была больше 410 (не включая)

select * from "Sales"
where sales_date >= '2026-02-01' and payed > '410'
