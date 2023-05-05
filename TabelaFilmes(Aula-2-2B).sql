// 1-Apresente uma consulta que exiba os títulos de filmes de comédia

Select *
	from film f1
	inner join film_category fc1 on fc1.film_id = f1.film_id
	inner join category c1 on c1.category_id = fc1.category_id
	where c1.category_id = 5;
	
// 2-Quantos filmes de ação existem?	

Select count (*)
	from film_category
	where category_id = 1;

// 3-Quanto a cliente Sarah Lewis já gastou com locações?

select sum(p1.amount)
	from customer c1
	inner join payment p1 on c1.customer_id = p1.customer_id where c1.customer_id = 23;
  
OU
  
select sum(amount) from payment where customer_id = 23;

// 4-Quantos filmes existem de cada ator?

select fa1.actor_id, a1.first_name ||' '|| a1.last_name, count(*)
	from film_actor fa1
	inner join actor a1 on a1.actor_id = fa1.actor_id
	group by fa1.actor_id, a1.first_name ||' '|| a1.last_name;

// 5-Quantas locações cada funcionário realizou?

select r1.staff_id, s1.first_name ||' '|| s1.last_name, count(*)
	from rental r1
	inner join staff s1 on r1.staff_id = s1.staff_id
	group by r1.staff_id, s1.first_name ||' '|| s1.last_name;

// 6-Qual o valor que cada funcionário já alugou?

select p1.staff_id, s1.first_name ||' '|| s1.last_name, sum(p1.amount)
	from payment p1
	inner join staff s1 on p1.staff_id = s1.staff_id
	group by p1.staff_id, s1.first_name ||' '|| s1.last_name;

// 7-Quantos filmes existem no estoque de cada loja?

select * from inventory;

select store_id, count(i1.film_id)
	from inventory i1
	group by store_id;
	