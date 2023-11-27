**1.** From the following tables ("salesman" and "customer") write a SQL query to find the salesperson and customer who reside in the same city. 
Return Salesman, cust_name and city.
- Solution:
  ```
  select
	S.name as Salesman,
	C.cust_name,
	C.city
  from salesman S
  join customer C
	on S.city = C.city
  order by Salesman;```
  
**Sample output**:

| Salesman  | cust_name  | city | 
|-----------|------------|----------|
| James Hoog| Nick Rimando |	New York |
|James Hoog	| Brad Davis 	| New York |
|Mc Lyon 	| Fabian Johnson | Paris |
|Nail Knite	| Fabian Johnson |	Paris |
|Pit Alex	| Brad Guzan |	London |
|Pit Alex	| Julian Green |	London |

**2.** From the following tables ("orders" and "customer") write a SQL query to find those orders where the order amount exists between 500 and 2000. 
Return ord_no, purch_amt, cust_name, city.
- Solution:
  ```
select
	O.ord_no,
	O.purch_amt,
	C.cust_name,
	C.city
from customer C
left join orders O
	on C.customer_id = O.customer_id
where O.purch_amt between 500 and 2000;	```

**Sample output**:
| ord_no  | purch_amt | cust_name | city |
|-----------|------------|----------|----------|
| 70007	| 948.50 |	Graham Zusi	| California |
| 70010	| 1983.43|	Fabian Johnson	| Paris |

**3.** From the following tables ("customer" and "salesman") write a SQL query to find the salesperson(s) and the customer(s) he represents. 
Return Customer Name, city, Salesman, commission.

**4.** From the following tables ("customer" and "salesman") write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission.  

**5.** From the following tables ("customer" and "salesman") write a SQL query to locate those salespeople who do not live in the same city where 
--their customers live and have received a commission of more than 12% from the company. 
Return Customer Name, customer city, Salesman, salesman city, commission. 
