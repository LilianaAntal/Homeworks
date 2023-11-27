**1.** From the following tables ("salesman" and "customer") write a SQL query to find the salesperson and customer who reside in the same city. 
Return Salesman, cust_name and city.
- Solution:
  select
  	S.name as Salesman,
  	C.cust_name,
  	C.city
  from salesman S
  join customer C
  	on S.city = C.city
  order by Salesman;

**Sample output**:

| Salesmna  | cust_name  | city | 
|-----------|------------|----------|
| James Hoog| Nick Rimando |	New York |
|James Hoog	| Brad Davis 	| New York |
|Mc Lyon 	| Fabian Johnson | Paris |
|Nail Knite	| Fabian Johnson |	Paris |
|Pit Alex	| Brad Guzan |	London |
|Pit Alex	| Julian Green |	London |
