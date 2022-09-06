USE sakila;

select * from actor;

/* adddate adiciona ou remove uma quantidade de horas, dias, meses, anos de uma data */
select last_update, adddate(last_update, "5 days") as cinco_dias,
adddate(last_update, interval 2 month) as dois_meses,
adddate(last_update, interval 2 year) as dois_anos from actor;

/* datediff calcular a fdiferença entre duas datas */
select datediff(adddate(last_update, interval 4 month),last_update) from actor;
select datediff(adddate(last_update, interval -2 year),last_update) from actor;

/* ADDTIME adiciona ou remove um tempo a uma data */
select *, addtime(last_update, "5 04:00:00") from actor
where first_name like "A%";

select *, addtime(last_update, "100 02:00:55") from actor
where actor_id > 50;

/* DATEFORMAT formta uma data com um padrão informado */
select *, date_format(last_update, "%Y") as ano,
 date_format(last_update, "%d/%m/%Y") as data_formatada from actor;
 
 /* DAY Retorna  dia de uma data */
 select *, day(last_update), day(addtime(last_update, "5 08:00:00"))
 from actor
 where actor_id > 100;
 
 /*  DAYOFWEEK Retorna o dia da semana em numero */
 select *, dayofweek(last_update) as dia_Semana,
 dayofweek(adddate(last_update, "3 days")) as adicionado3dias from actor;
 
 /* DAYOFYEAR  Retorna o dia do ano */
 select *, dayofyear(last_update) as dia_doano,
 dayofyear(adddate(last_update, "113 days")) as adicionado_dias,
 dayofweek(adddate(last_update, "113 days")) as dia_semana from actor;
 
 /* WEEKOFYEAR  Retorna a semana do ano de uma data */
 select *, weekofyear(last_update) from actor;
 
 select *,weekofyear(last_update) as semana, 
 weekofyear(adddate(last_update, interval 5 month))  as semana from actor;
 
 /* MONTH Retorna o mês do ano */
 select *, month(last_update),
 month(adddate(last_update, interval 9 month))
 from actor;

/* YEAR Retorna o Ano */
select *, YEAR(last_update), 
YEAR(adddate(last_update, interval 20 year))
from actor
