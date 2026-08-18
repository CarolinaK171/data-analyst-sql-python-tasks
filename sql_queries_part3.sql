1. Выведите таблицу Sales полностью, добавив столбец с общей суммой продаж за этот день, и столбец, где будет отображен процент текущей выручки от выручки за этот день (напоминаю, что в sql в select можно указывать простые арифметические операции: сложение, вычитание, умножение и деление)

select *,
sum(payed) over (partition by sales_date order by sales_date),
payed*100/sum(payed) over (partition by sales_date order by sales_date) as payed_percentage
from "Sales"

2. Для таблицы player_activities выведите id игрока, дату события, его счет в этот день и средний счет игрока за весь период

select player_id, event_date, score,
avg(score) over (partition by player_id) as average_score
from player_activities

3. Для таблицы player_activities выведите id игрока, дату события, длину сессии, а так же среднюю длину сессии этого игрока за последние два дня (в оконной функции необходимо будет указать order by и rows between), и сравните текущее значение сессии со средней за два последних дня

select player_id, event_date, session_duration,
avg(session_duration) over (partition by player_id order by event_date rows between 1 preceding and current row) as avg_session_duration_last_2_days
from player_activities

4. Напишите запрос, который для каждой продажи показывает:
sales_date
category
paid

Ранжирование продаж по убыванию суммы paid в рамках каждой категории (используйте RANK и DENSE_RANK в одном запросе, чтобы увидеть разницу)

select sales_date, category, payed,
rank () over (partition by category order by payed desc),
dense_rank () over (partition by category order by payed desc)
from "Sales"
   
5. Выведите топ-3 самые дорогие продажи в каждой категории. Используйте ROW_NUMBER или RANK

select *
from (select sales_date, category, payed,
rank () over (partition by category order by payed desc) as top3
from "Sales")
where top3 <=3

6. Для каждого клиента пронумеруйте его покупки по дате. Выведите customer_id, sales_date, paid и номер покупки по порядку

select customer_id, sales_date, payed,
row_number () over (partition by customer_id order by sales_date) as purchase_number
from "Sales"
