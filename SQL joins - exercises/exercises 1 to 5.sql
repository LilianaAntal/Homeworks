--1. From the following tables ("salesman" and "customer") write a SQL query to find the salesperson and customer who reside in the same city. 
--Return Salesman, cust_name and city.
select
	S.name as Salesman,
	C.cust_name,
	C.city
from salesman S
join customer C
	on S.city = C.city
order by Salesman;

--2. From the following tables ("orders" and "customer") write a SQL query to find those orders where the order amount exists between 500 and 2000. 
--Return ord_no, purch_amt, cust_name, city.
select
	O.ord_no,
	O.purch_amt,
	C.cust_name,
	C.city
from customer C
left join orders O
	on C.customer_id = O.customer_id
where O.purch_amt between 500 and 2000;

--3. From the following tables ("customer" and "salesman") write a SQL query to find the salesperson(s) and the customer(s) he represents. 
--Return Customer Name, city, Salesman, commission.
select
	C.cust_name as Customer_Name,
	C.city,
	S.name as Salesman,
	S.comission
from customer C
join salesman S
	on C.salesman_id = S.salesman_id
order by Salesman;

--4.From the following tables ("customer" and "salesman") write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
--Return Customer Name, customer city, Salesman, commission.  
select
	C.cust_name as Customer_Name,
	C.city,
	S.name as Salesman,
	S.comission
from customer C
join salesman S
	on C.salesman_id = S.salesman_id
where S.comission > 0.12
order by Salesman;

--5. From the following tables ("customer" and "salesman") write a SQL query to locate those salespeople who do not live in the same city where 
--their customers live and have received a commission of more than 12% from the company. 
--Return Customer Name, customer city, Salesman, salesman city, commission. 
select
	C.cust_name as Customer_Name,
	C.city as Customer_City,
	S.name as Salesman,
	S.city as Salesman_City,
	S.comission
from salesman S
join customer C
	on S.salesman_id = C.salesman_id
where S.city <> C.city and S.comission > 0.12
order by Salesman;