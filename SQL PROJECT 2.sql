-- Display all customer names and email addresses from the customer table.
select first_name, last_name, email
from customer;

-- Show the film titles and their rental rates from the film table.

select title, rental_rate
from film;

-- Display the rental  IDs, rental dates, and return dates from the rental table.
select rental_id, rental_date
from rental;

-- Show the inventory IDs and the corresponding  film  IDs from the inventory table.
select inventory_id, film_id
from inventory;

-- Display the staff IDs, first names, and last names from the staff table.
select staff_id, first_name, last_name
from staff;

-- Show the payment IDs, amount, and payment dates from the payment table.	Display the rental  IDs, customer IDs, and staff IDs from the rental table.
select p.payment_id, p.amount, p.payment_date, r.rental_id, r.customer_id, r.staff_id
from rental as r
join payment as p on r.customer_id = p.customer_id;

-- Show the film  IDs and titles of all films in the film table.
select film_id, title
from film;

-- Display the store  IDs and addresses from the store table.
select store_id, address_id
from store;

-- Show the customer IDs, first names, and last names of all customers in the customer table.
select first_name, last_name
from customer;

-- Show the staff IDs and email addresses from the staff table.
select staff_id, email
from staff;

-- Display the payment IDs, customer IDs, and staff IDs from the payment table.
select payment_id, customer_id, staff_id
from payment;

-- Show the rental  IDs, inventory IDs, and customer IDs from the rental table.
select rental_id, inventory_id, customer_id
from rental;

-- Display the film  IDs, titles, and rental rates of all films in the film table.
select film_id, title, rental_rate
from film;

-- Show the customer IDs, first names, last names, and email addresses from the customer table.
select customer_id, first_name, last_name, email
from customer;

-- Display the rental  IDs,  rental dates, and inventory IDs from the rental table.
select rental_id, rental_date, inventory_id
from rental;

--  Show the staff IDs, first names,  last names, and email addresses from the staff table.
select staff_id, first_name, last_name, email
from staff;

-- Display the payment IDs, amounts, and customer IDs from the payment table.
select payment_id, amount, customer_id
from payment;

-- Show the inventory IDs, film  IDs, and store  IDs from the inventory table.
select inventory_id, film_id, store_id
from inventory;

-- Display the customer IDs, first names, last names, and email addresses of all customers who live in district "California" from the customer table.
select c.customer_id, c.first_name, c.last_name, c.email, co.country
from customer as c
join country as co on c.last_update = co.last_update
where country like '%california' = 0;

-- Show the  rental  IDs,  rental  dates, and return dates of all rentals  made in May 2005 from the rental table.
select rental_id, rental_date, return_date
from rental
where rental_date like '%2005-05-01' = 0;

-- Display the staff IDs, first names,  last names, and email addresses of all staff members who work in store  1  from the staff table.
select staff_id, first_name, last_name, email
from staff
where store_id = 1;


-- Show the payment IDs, amounts, and customer IDs of all payments made on May 14th, 2005 from the payment table.
select payment_id, amount, customer_id
from payment
where payment_date = '2005-05-14';

-- Display the rental  IDs, customer IDs, and staff IDs of all rentals made by customer ID  1   from the rental table.
select rental_id, customer_id, staff_id
from payment
where customer_id = 1;

-- Show the film  IDs, titles, and rental rates of all films with a  rental  rate greater than or equal to 4 from the film table.
select film_id, title,rental_rate
from film
where rental_rate > '4';

-- Display the customer IDs, first names, last names, and email addresses of all customers whose first name starts with "A" from the customer table.
select customer_id, first_name, last_name, email
from customer
where first_name like 'A%';

-- Show the rental  IDs, rental dates, and inventory IDs of all rentals made in store 2 from the rental table.
select r.rental_id, r.rental_date, r.inventory_id, s.store_id
from rental as r
join store as s on r.last_update = s.last_update
where store_id = 2;

-- Display the staff IDs, first names,  last names, and email addresses of all staff members who have a last name
-- starting with "S" from the staff table.
select staff_id, first_name, last_name, email
from staff
where last_name like 'S%';

-- Show the payment IDs, amounts, and customer IDs of all payments made by customer ID 2 from the payment table.
select payment_id, amount, customer_id
from payment
where customer_id = 2;

-- Display the rental  IDs, customer IDs, and staff IDs of all rentals made on May 14th, 2005 from the rental table.
select rental_id, customer_id, staff_id
from rental
where rental_date = '2005-05-14';

-- Show the film  IDs, titles, and rental rates of all films with a  rental  rate less than or equal to 3 from the film table
select film_id, title, rental_rate
from film
where rental_rate = '=<3';

-- filmShow the rental  IDs, rental dates, and return dates of all rentals where the return date is nul I    from the rental table.
select rental_id, rental_date, return_date
from rental
where rental_date = '2005-01-01';

-- Display the staff IDs, first names,  last names, and email addresses of all staff members who work in store 2 from the staff table.
-- Show the  payment IDs, amounts, and customer IDs of all payments made in June 2005 from the payment table.
select sf.staff_id, sf.first_name, sf.last_name, sf.email, p.payment_id, p.amount, p.customer_id, st.store_id
from staff as sf
join payment as p on sf.staff_id = p.staff_id
join store as st on sf.store_id = st.store_id
where sf.store_id = '2'
order by payment_id = '2005-06-01';

-- Display the  rental  IDs, customer IDs, and staff IDs of all rentals where the return date is nul I and 
-- the rental date is before May 30th, 2005 from the rental table.

select rental_id, customer_id, staff_id
from rental
where return_date = '2005-05-01'
order by return_date like '%2005-05-30';

-- categoryShow the film  IDs, titles, and rental rates of all films in the drama category from the film table.
select film_id, title, rental_rate
from film
order by title;
 
-- Display the customer IDs, first names, last names, and email addresses of all customers whose email address contains "gmail.com" from the customer table.
-- Show the rental  IDs, rental dates, and inventory IDs of all rentals made by customer ID 2 in store 2 from the rental table.
select c.customer_id, c.first_name, c.last_name, c.email, r.rental_id, r.rental_date, r.inventory_id
from rental as r
join customer as c on r.customer_id = c.customer_id
where email like '%gmail.com' = 0
having customer_id = '2'
order by store_id like '2%';


-- Display the staff IDs, first names,  last names, and email addresses of all staff members who work in store  1   or 2
-- from the staff table.rentalstaff
select staff_id, first_name, last_name, email
from staff
where store_id = '1' or '2';

-- Show the payment IDs, amounts, and customer IDs of all payments made by customer ID  1   or 2 from the payment table.
select payment_id, amount, customer_id
from payment 
where customer_id = '1' or '2';

-- Display the rental  IDs, customer IDs, and staff IDs of all rentals where the rental date is between  May 1st, 2005 and May 31st, 2005 from the rental table.
-- Show the film  IDs, titles, and rental rates of all films in the comedy or drama category from the film table.

select r.rental_id, r.customer_id, r.staff_id, f.film_id, f.title, f.rental_rate
from film as f
join rental as r on f.last_update = r.last_update
where rental_date between '2005-05-01' and '2005-05-31';

-- Display the customer IDs, first names, last names, and email addresses of all customers who live in city "London"  or "Sydney" from the customer table.
select c.customer_id, c.first_name, c.last_name, c.email, co.country
from customer as c
join country as co on c.last_update = co.last_update
where country like 'London%' or 'sydney';

-- Show the  rental  IDs,  rental  dates, and inventory IDs of all rentals  made by customer ID  1   or 2 in store  1   from the rental table.
select r.rental_id, r.rental_date, r.customer_id, r.inventory_id, s.store_id
from rental as r
join store as s on r.last_update = s.last_update
where store_id = '1'
having customer_id = '1' or '2';

-- Display the staff IDs, first names,  last names, and email addresses of all staff members who work in store  1   and
-- have a last name starting with "B" from the staff table.
select staff_id, first_name, last_name, email
from staff
where last_name like 'B%'
order by store_id = '1'; 

-- Show the payment IDs, amounts, and customer IDs of all payments made between  May 1st, 2005 and May 31st, 2005 from the payment table.
select payment_id, amount, customer_id 
from payment
where payment_date between '2005-05-01' and '2005-05-01';

-- Display the rental  IDs, customer IDs, and staff IDs of all rentals made in store  1   or 2 where the return date is null from the rental table.
select r.rental_id, r.staff_id, r.customer_id, s.store_id
from rental as r
join store as s on r.last_update = s.last_update
where return_date = null
having store_id = '1' or '2';


-- Show the film  IDs, titles, and rental rates of all films in the horror, drama, or action category from the film table.
select film_id, title, rental_rate
from film;