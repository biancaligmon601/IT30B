-- bookL#1 : slect 1  
SELECT * FROM books;

--book SQL#2 : select 2 books in asc order by id;
SELECT * FROM books 
  ORDER BY book_id ASC;

--book SQL#3 : select 3 books in desc order by id;
SELECT * FROM books
  ORDER BY book_id DESC;

--book SQL#4 : select 4 books in asc order by title;
SELECT * FROM books
  ORDER BY book_title ASC;

--book SQL#5 : select 5 books in desc order by title;
SELECT * FROM books
  ORDER BY book_title DESC;

--book SQL#6 : select 6 books in asc order by author; 
SELECT * FROM books
  ORDER BY book_author ASC;

--book SQL#7 : select 7 books in desc order by author;
SELECT * FROM books
  ORDER BY book_author DESC;

--book SQL#8 : select book category in asc order;
SELECT * FROM books 
    ORDER BY book_category ASC;

--book SQL#9 : select book category in desc order;
SELECT * FROM books     
    ORDER BY book_category DESC;

-- you can modify displayed colums by selecting
--specific columns after SELECT command 
-- book SQL#10 display all books title and author in  asc order
SELECT book_title,
       book_author,
       book_category
FROM books
  ORDER BY book_title ASC;

-- book SQL#11 LIMIT - you can change the limit to any numbers

SELECT book_title,
       book_author
       book_category
FROM books
  ORDER BY book_title ASC
LIMIT 1;

-- book SQL#12 - Select a book based on id
SELECT book_title,
       book_author,
       book category,
FROM books
WHERE book_id = 1
LIMIT 1;

-- book SQL#13 - update book information based on id
UPDATE books
SET book_title = 'JURASSIC ME',
    book_author = 'BIANCA',
    book_category = 'COMEDY'
WHERE book_id = 2;