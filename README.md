# 🗄️ Oracle Database Administration Project

![Level](https://img.shields.io/badge/Level-University-blue)
![Course](https://img.shields.io/badge/Course-Database%20Development-orange)
![Software](https://img.shields.io/badge/Software-Oracle%20Database%2021c-red)
![Language](https://img.shields.io/badge/Language-SQL%20%7C%20PL%2FSQL-yellow)
![Status](https://img.shields.io/badge/Status-In%20Progress-green)

## 👨‍🎓 Student Information

**Name:** Uwingeneye Divin
**Student ID:** 20252SEN378

---

## 📌 Assignment Overview

This assignment focuses on Oracle Database administration using **Oracle Database 21c**. It covers creating and managing Pluggable Databases (PDBs), creating and deleting a temporary PDB, and configuring Oracle Enterprise Manager (OEM).

The assignment contains four mandatory tasks:

1. Creation of New Pluggable Database
2. Create and Delete a PDB
3. Oracle Enterprise Manager (OEM) Setup
4. Creation of Tables
5. Documentation & Reporting

---

## 🏗️ Task 1 — Create a New Pluggable Database

### PDB Name

```text
Di_pdb_20252SEN378
```

### Username

```text
divin_plsqlauca_20252sen378
```

### Database System

```text
Oracle Database 21c Enterprise Edition
Version 21.3.0.0.0
```

### Description

A new Pluggable Database was created using the required naming convention. A user account was also created inside the PDB and will be reused for future class work.

The PDB was opened and configured to remain open after database restart.

---

## 🗑️ Task 2 — Create and Delete a PDB

### Temporary PDB Name

```text
Di_to_delete_pdb_20252SEN378
```

### Description

A temporary PDB was created using the required naming convention. It was opened and then deleted completely, including its datafiles.

---

## 🖥️ Task 3 — Oracle Enterprise Manager (OEM)

Oracle Enterprise Manager Express was configured for the Oracle environment.

### OEM Configuration

**PDB:**

```text
Di_pdb_20252SEN378
```

**OEM User:**

```text
divin_plsqlauca_20252sen378
```

**HTTPS Port:**

```text
5501
```

### OEM Access

```text
https://localhost:5501/em/
```

The Oracle listener was verified and the PDB service was registered successfully.

---

## 📸 Evidence and Screenshots

The following screenshots provide evidence of the work completed during the assignment.

| PIC         | Session                                | Evidence                                                                                                                                                   |
| ----------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **PIC 001** | **Session 1 — Main PDB Setup**         | Creation of `Di_pdb_20252SEN378`, creation of `divin_plsqlauca_20252sen378`, successful PDB creation, PDB opened, `SHOW PDBS`, and user privileges granted |
| **PIC 002** | **Session 2 — Temporary PDB Creation** | Creation of `Di_to_delete_pdb_20252SEN378` and successful creation result                                                                                  |
| **PIC 003** | **Session 3 — Temporary PDB Deletion** | Temporary PDB opened successfully and dropped successfully                                                                                                 |
| **PIC 004** | **Session 4 — OEM Connection**         | Connection to Oracle Enterprise Manager Express                                                                                                            |
| **PIC 005** | **Session 5 — OEM Dashboard**          | Oracle Enterprise Manager dashboard showing the Oracle environment and username                                                                            |

 ---

## 🗄️ Task 4 - Database Setup

| Item | Details |
|---|---|
| 🗄️ DBMS | Oracle Database 21c |
| 🔢 Version | 21.3.0.0.0 |
| 📦 PDB | HR_PDB |
| 👤 Schema | HR_ADMIN |
| 💻 Language | SQL / PL/SQL |

---

## 🏗️ Database Structure

The database contains the following tables:

* 🌍 **REGIONS** — Stores geographical regions.
* 🌎 **COUNTRIES** — Stores countries and their associated regions.
* 📍 **LOCATIONS** — Stores workplace/location information.
* 💼 **JOBS** — Stores job titles and salary ranges.
* 🏢 **DEPARTMENTS** — Stores department information and department managers.
* 👨‍💼 **EMPLOYEES** — Stores employee personal, job, salary, and department information.
* 📋 **JOB_HISTORY** — Stores employees' previous job and department information.

---

## 🔗 Relationships

The database uses foreign keys to connect related information.

* 🌍 Regions → Countries
* 🌎 Countries → Locations
* 📍 Locations → Departments
* 💼 Jobs → Employees
* 🏢 Departments → Employees
* 👨‍💼 Employees → Managers
* 📋 Employees → Job History

These relationships help maintain data consistency and represent how an HR system works in a real organization.

---

## 🧠 SQL Concepts Used

* 🔑 Primary Keys
* 🔗 Foreign Keys
* 🛡️ Constraints
* 📊 Data Types
* ➕ INSERT statements
* 🔎 SELECT queries
* 🔄 Table relationships
* 👥 Employee and manager relationships
* 🏢 Department management
* 💼 Job and salary management
* 📋 Job history management

---

## 📦 What's Included

The SQL file contains:

* 🏗️ Database table creation
* 🔑 Primary key definitions
* 🔗 Foreign key relationships
* 🛡️ Table constraints
* 🌍 Region and country data
* 📍 Location data
* 💼 Job data
* 🏢 Department data
* 👨‍💼 Employee data
* 📋 Job history data
* 🔎 SQL queries for working with the database

---

## 🛠️ Technologies Used

* **Oracle Database 21c**
* **SQL*Plus**
* **Oracle Enterprise Manager Express**
* **SQL**
* **Windows**

---

## 🎯 Purpose

The purpose of this assignment is to gain practical experience in Oracle Database administration, particularly with **Pluggable Databases, user management, PDB lifecycle management, and Oracle Enterprise Manager**.

The database environment created in this assignment will also be used for future **PL/SQL class work**.
