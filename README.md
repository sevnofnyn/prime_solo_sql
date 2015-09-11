# prime_solo_sql

SQL Syntax Solo Challenge
In this challenge, we’re going to practice performing SQL queries. This should help better solidify some concepts that were covered during lecture.
Assumptions
We assume the following about your Postgres setup:
It was installed via Homebrew.
You have a database named “postgres”.
You do not have a “postgres” role.
Setup
Follow the instructions below before continuing with this challenge.
psql
Before we begin we need to create a database that has the same name as our computer’s username. This will allow us to take advantage of psql -- a command line tool for Postgres.
Open a terminal window (and make sure postgres is running already).
Type createdb and press enter key to create a Postgres database with your username. (This will allow you to use psql as an alternative to using a GUI if you ever choose to do so.)
Type /usr/local/Cellar/postgresql/9.4.4/bin/createuser -s postgres to create the postgres role.
booktown.sql
Download the booktown.sql file. [1]
Type psql -U postgres -f booktown.sql template1 to create database and populate it with sample data. NOTE: This will likely run with errors because it was created for an older version of Postgres, but it will still create tables and data we can work with. (You have to CD into the directory you downloaded this in) 
Open your pgAdmin3 GUI, do a refresh if necessary, and you should be able to see your new booktown database!
GitHub repo
Create a GitHub repo named “prime_solo_sql”. 
Create a file called “solution.sql”. You will store your responses to the exercise questions here. NOTE: This is merely a text file with a .sql extension.
Exercise
For each of the following questions
Write a comment that specifies which question you are answering.
Write the SQL query below that comment.

TIP: Use pgAdmin3 to test your queries.
Overview
For this challenge, we are going to try to answer some questions about the Booktown bookstore. Each question will vary in difficulty. 
Tips
You’ll need to use the database schema and examine many of the table’s records to determine how to answer each question.
You’ll need to use some SQL functions that we have not covered, but which should be easily discoverable via http://www.postgresql.org/docs/9.3/static/sql.html or a Google search.

Try to complete as many as you can.
Questions
Which authors are represented in our store?
Which authors are also distinguished authors?
Which authors are not distinguished authors?
How many authors are represented in our store?
Who are the favorite authors of the employee with the first name of Michael?
What are the titles of all the books that are in stock today?
Insert one of your favorite books into the database. Hint: You’ll want to create data in at least 2 other tables to completely create this book.
What authors have books that are not in stock?
What is the title of the book that has the most stock?


Exercise - Hard Mode
Store the answers for this in the same repo, but in a file named “hard_mode.sql”.
Design a database that tracks customers and their orders. 

This database should, at a minimum, have tables for customers, orders, and products. However, you may need more tables to achieve 3rd-normal form.
The following are the minimums for records in each table.
At least 5 customer records.
At least 10 orders.
At least 5 products.
Products should have a price.
Customers can order more than one of a product within a given order.
Exercise - Pro Mode
Create an HTML UI that displays invoices for each customer. Each invoice should have line items that include a quantity, unit price, and total line item price. Each invoice should have a total price.
References
http://www.barik.net/archive/2006/03/28/195425/
