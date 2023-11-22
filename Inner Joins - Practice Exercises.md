## Inner Joins in T-SQL: Practical Exercises on AdventureWorks2012

### Exercise 01: Retrieve All Orders for Individual Customers

**Objective**: Retrieve all orders and their corresponding customer names, specifically for individuals.

**Database**: AdventureWorks2012

**Requirements**:
- Retrieve only the rows where the `PersonType` column in the `Person.Person` table has the value 'IN' (Individual consumers).
- Include the following columns in your results:
  - `FirstName`, `MiddleName`, `LastName` from the `Person.Person` table.
  - `OrderDate`, `TotalDue` from the `Sales.SalesOrderHeader` table.

**Hints**: 
- You need to use the `Sales.Customer` table.
- Not always foreign key columns have the same name as the referred column.

**Sample output**:

| FirstName | MiddleName | LastName | PersonType | OrderDate                  | TotalDue    |
|-----------|------------|----------|------------|----------------------------|-------------|
| Takiko    | J.         | Collins  | SC         | 2011-05-31 00:00:00.000    | 1457.3288   |
| Jauna     | E.         | Elson    | SC         | 2011-05-31 00:00:00.000    | 36865.8012  |
| ...       | ...        | ...      | ...        | ...                        | ...         |

``` (31465 rows affected) ```

### Exercise 02: Retrieve the product names and corresponding categories

**Objective**: Retrieve the product names and corresponding categories from the Products table and the ProductCategory table.

**Database**: AdventureWorks2012

**Requirements**:
- Include the following columns in your results:
  - `Name` (use alias `ProductName`) from the `Production.Product` table.
  - `Name` (use alias `CategoryName`) from the `Production.ProductCategory` table.

**Hints**: 
- You need to use the `ProductSubcategory` table.

**Sample output**:

| ProductName                 | CategoryName |
|-----------------------------|--------------|
| HL Road Frame - Black, 58   | Components   |
| HL Road Frame - Red, 58     | Components   |
| ...                         | ...          |

``` (295 rows affected) ```

### Exercise 03: Retrieve a specific product

**Objective**: Retrieve a specific product using its location

**Database**: AdventureWorks2012

**Requirements**:
- Retrieve the product name for the product stored in `Subassembly` location, Shelf `W` and Bin `9`.
- Include the following columns in your results:
  - `Name` (use alias `ProductName`) from the `Production.Product` table.
  - `Quantity` from the `Production.ProductInventory` table.

**Hints**: 
- You need to use the `Production.Location` table.
- You need a `WHERE` clause.

**Output**:

| ProductName	   | Quantity |
|------------------|----------|
|HL Mountain Pedal |	153   |

``` (1 row affected) ```
