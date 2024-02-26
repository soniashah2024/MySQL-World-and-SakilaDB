/* 1) Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address` */

select First_name,Last_name,address from sakila.staff s inner join sakila.address a on s.address_id = a.Address_id;
  
/* 2) Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. Use tables `staff` and `payment`. */
select payment.staff_id, sum(amount) from payment
inner join sakila.staff
on sakila.payment.staff_id = sakila.staff.staff_id
where sakila.payment_date like "2005-08-%"
group by payment.staff_id;

select a.first_name,a.last_name,
         sum(b.amount) as tot_amount
from sakila.staff as a
     inner join
     sakila.payment as b
     on a.staff_id = b.staff_id
where month(payment_date) = 8 and year(payment_date) = 2005
group by a.first_name, a.last_nam
SELECT s.staff_id,s.first_name,sum(p.amount)

FROM payment AS p

JOIN staff AS s

ON p.staff_id = s.staff_id

WHERE payment_date LIKE"2005-08-%"

GROUP BY p.staff_id;


SELECT First_name,last_name, sum(amount) from staff s inner join payment p on s.staff_id = p.staff_id where p.payment_date between "2005-08-01 " and " 2005-08-31 23:59"
group by first_name,last_name

/* 3) Write a query  to find the employee_id,name(last_name) along with their manager_id and name(last_name).*/
 
select  s.staff_id,s.Last_name,ss.manager_staff_id from sakila.staff s inner join sakila.store ss on s.staff_id = ss.manager_staff_id;
 

/* 4) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join. */
select film.title, count(actor_id) as no_of_actors
from film
join film_actor
on  film.film_id = film_actor.film_id
group by film.film_id
order by count(actor_id) desc
limit 1;
SELECT count(actor_id) as Number_of_Actor,title FROM sakila.film f inner join sakila.film_actor a on f.film_id = a.film_id group by title

/* 5) Write a query to get the department name and number of employees in the department. */



/* 6) How many copies of the film `Hunchback Impossible` exist in the inventory system? */

select  title,count(i.store_id) from sakila.film f inner join sakila.inventory i on f.film_id = i.film_id where f.title = 'Hunchback Impossible'  group by  i.film_id;


/* 7) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. List the customers
 alphabetically by last name: */
select c.first_name,c.last_name,sum(p.amount) from sakila.customer c inner join sakila.payment p on c.customer_id = p.customer_id  group by  c.first_name,c.last_name order by c.last_name;
select sum(amount) as total_paid, customer.last_name, customer.first_name
from payment
inner join customer
on customer.customer_id = payment.customer_id
group by customer.Customer_id
order by customer.last_name;


/* 8) Which actor has appeared in the most films? */
select f.title,aa.first_name,aa.last_name,f.film_id
from sakila.film f  inner join sakila.film_actor a on f.film_id = a.film_id 
inner join  sakila.actor aa
on a.actor_id = aa.actor_id 
group by aa.first_name, aa.last_name order by count(f.film_id) desc limit 1;


select last_name,first_name, count(film_id) from actor 
join film_actor on actor.actor_id=film_actor.actor_id 
group by last_name, first_name order by count(film_id) desc limit 1;