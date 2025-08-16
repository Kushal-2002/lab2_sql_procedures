# Lab 2 - Stored Procedures and Cursors
Course: CS6.302 - Software System Development

## Setup Instructions
1. Open MySQL Workbench or MySQL CLI.
2. Create the database and load sample tables from the given lab activity PDF.
   Example:
   CREATE DATABASE lab2db;
   USE lab2db;
   (then run CREATE TABLE and INSERT statements provided)

3. Run each .sql file using:
   SOURCE q1.sql;
   SOURCE q2.sql;
   SOURCE q3.sql;
   SOURCE q4.sql;
   SOURCE q5.sql;

## How to Test Procedures
- Q1: CALL ListAllSubscribers();
- Q2: CALL GetWatchHistoryBySubscriber(1);
- Q3: CALL AddSubscriberIfNotExists('New Student');
- Q4: CALL SendWatchTimeReport();
- Q5: CALL LoopAllSubscribersHistory();

## Git Repository
[👉 Paste your GitHub/GitLab repository link here 👈]

---
Note: Each .sql file contains USE lab2db; and DROP PROCEDURE IF EXISTS statements for clean execution.
