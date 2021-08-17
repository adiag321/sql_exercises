/*

Выведи список сотрудников магазина единой строкой для каждого магазина.

В результате отобрази поля

store_id - идентификатор магазина.
list_employees - список из сотрудников, разделенных точкой с запятой и пробелом '; '. По каждому 
сотруднику выведи фамилию и имя, разделив их пробелом. Сотрудников отсортируй сначала по фамилии, затем по имени.
Отсортируй результат по идентификатору магазина
*/


select store_id,

string_agg(  concat( last_name, ' ' , first_name), '; '  order by last_name) as list_employees

from employee
group by store_id
order by store_id