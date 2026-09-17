CREATE TABLE books(
    book_id INT PRIMARY KEY AUTHO_INCREMENT,
    book_title VARCHAR(100) NT NULL,
    book_author VARCHAR(100) NT NULL,
    book_category VARCHAR(50) NT NULL,
    boook_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NOT NULL DEFAULT NULL,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);

SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name,' ', s.student_last_name) AS student_name, 
    b.book_title, b.book_author, b.book_category,
    br.borrow_date,br.borrow_return_date
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;


--alter the borrow_date column to allow NULL values and set the default value to NULL
ALTER TABLE borrow
MODIFY borrow_return_date TIMESTAMP NOT NULL DEFAULT NULL;

UPDATE borrow
SET borrow_return_date = NULL
WHERE borrow_return_date = '2026-08-25 12:06:33';

--Return a book updating the borrow_return_date to the current timestamp

UPDATE borrow 
SET borrow_return_date = CURRENT_TIMESTAMP
--change value of barrow_id to the borrow_id of the borrow record that you want to update
WHERE borrow_id = 1 AND borrow_return_date IS NULL; 


SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name,' ', s.student_last_name) AS student_name, 
    b.book_title, b.book_author, b.book_category,
    br.borrow_date,br.borrow_return_date
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
    WHERE br.borrow_return_date IS NOT NULL
ORDER BY br.borrow_date DESC;