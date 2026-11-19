# Employee Database Management – MySQL

## Project Overview
Created an Employee Management Database using MySQL to practise database creation, table manipulation, constraints, and relationships between tables.

## Tasks Performed

### 1. Database & Table Creation
- Created the `employee` database.
- Created three tables: `Departments`, `Location`, and `Employees`.
- Defined appropriate data types and constraints.

### 2. Constraints & Data Validation
- **PRIMARY KEY:** Ensured unique identification of departments and employees.
- **UNIQUE & NOT NULL:** Prevented duplicate and missing department names and locations.
- **AUTO_INCREMENT:** Generated sequential IDs for locations.
- **ENUM:** Restricted gender values to 'M' or 'F'.
- **CHECK:** Ensured employee age is 18 or above.
- **DEFAULT CURRENT_DATE:** Automatically assigned the current date as the hire date.
- **FOREIGN KEY:** Established relationships between Employees, Departments, and Locations.

### 3. Table Alterations
Used `ALTER TABLE` to:
- Add an email column.
- Modify the designation datatype to support longer values.
- Drop the age column.
- Rename `hire_date` to `date_of_joining`.

### 4. Table Management
Practised:
- `RENAME TABLE` – Renamed Departments and Location tables.
- `TRUNCATE TABLE` – Removed all employee records while retaining the table structure.
- `DROP TABLE` and `DROP DATABASE` – Removed database objects.

## Concepts & SQL Commands Practised
`CREATE` | `ALTER` | `RENAME` | `TRUNCATE` | `DROP` | `PRIMARY KEY` | `FOREIGN KEY` | `UNIQUE` | `NOT NULL` | `CHECK` | `ENUM` | `AUTO_INCREMENT` | `DEFAULT`

## Tools Used
- MySQL
- MySQL Workbench
