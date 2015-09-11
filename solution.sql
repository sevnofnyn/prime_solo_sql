

-- Which authors are represented in our store?
SELECT * FROM authors

1111;"Denham";"Ariel"
1212;"Worsley";"John"
15990;"Bourgeois";"Paulette"
25041;"Bianco";"Margery Williams"
16;"Alcott";"Louisa May"
4156;"King";"Stephen"
1866;"Herbert";"Frank"
1644;"Hogarth";"Burne"
2031;"Brown";"Margaret Wise"
115;"Poe";"Edgar Allen"
7805;"Lutz";"Mark"
7806;"Christiansen";"Tom"
1533;"Brautigan";"Richard"
1717;"Brite";"Poppy Z."
2112;"Gorey";"Edward"
2001;"Clarke";"Arthur C."
1213;"Brookins";"Andrew"
25043;"Simon";"Neil"
1809;"Geisel";"Theodor Seuss"


--Which authors are also distinguished authors?

SELECT * FROM distinguished_authors

25043;"Simon";"Neil";"Pulitzer Prize"
1809;"Geisel";"Theodor Seuss";"Pulitzer Prize"



--Which authors are not distinguished authors?

SELECT authors.last_name 
FROM authors
LEFT JOIN distinguished_authors ON authors.id = distinguished_authors.id
WHERE distinguished_authors IS NULL
"Denham"
"Worsley"
"Bourgeois"
"Bianco"
"Alcott"
"King"
"Herbert"
"Hogarth"
"Brown"
"Poe"
"Lutz"
"Christiansen"
"Brautigan"
"Brite"
"Gorey"
"Clarke"
"Brookins"


--How many authors are represented in our store?

SELECT COUNT(*) FROM authors;
19


--Who are the favorite authors of the employee with the first name of Michael?
SELECT authors_and_titles
FROM favorite_authors
JOIN employees
ON first_name='Michael'

"{{"J.R.R. Tolkien","The Silmarillion"},
{"Charles Dickens","Great Expectations"},
{"Ariel Denham","Attic Lives"}}"

--What are the titles of all the books that are in stock today?
SELECT title
FROM books
INNER JOIN daily_inventory
ON is_stocked

"The Shining"
"Dune"
"2001: A Space Odyssey"
"The Cat in the Hat"
"Bartholomew and the Oobleck"
"Franklin in the Dark"
"Goodnight Moon"
"Little Women"
"The Velveteen Rabbit"
"Dynamic Anatomy"
"The Tell-Tale Heart"
"Programming Python"
"Learning Python"
"Perl Cookbook"
"Practical PostgreSQL"


-- Insert one of your favorite books into the database. Hint: You’ll want to
-- create data into at least 2 other tables to completely create this book.
INSERT INTO authors (id, last_name,first_name)
VALUES(87, 'Martin', 'George R.R');

INSERT INTO books (id, title, author_id, subject_id)
VALUES(24, 'A Game of Thrones', 92, 27)

--What authors have books that are not in stock? 

I can only figure out ISBN here, how do I connect to title
SELECT isbn
FROM daily_inventory
WHERE is_stocked= 'false'
JOIN stock
"0451198492"
"0394900014"
"0451160916"



--What is the title of the book that has the most stock?

SELECT title 
FROM books
JOIN editions
ON editions.book_id = books.id
JOIN stock
ON editions.isbn =stock.isbn
ORDER BY stock.stock DESC
LIMIT 1

"Dune"
