USE sakila;
select * from rental;
select monthname(rental_date) as Month_name, rental_date from rental;

select year(rental_date) as rental_year, count(*) as all_rentals
from rental
group by year(rental_date);

select * from payment;
SELECT rental_date, amount
FROM payment INNER JOIN rental
ON payment.rental_id = rental.rental_id,
(select sum(amount) as Amount_sum from payment) as amt order by year(rental_date); 

SELECT COUNT(DISTINCT staff_id) AS Staff_count
FROM rental;
