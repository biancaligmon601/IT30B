CREATE TABLE books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(255) NOT NULL,
    book_category VARCHAR(100) NOT NULL,
    book_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_borrow_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);

SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name,
    b.book_id, b.book_title, b.book_author, b.book_category,
    br.borrow_date,br.borrow_return_date
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NOT NULL
ORDER BY br.borrow_date DESC;

--ALTER TABLE borrow_return
ALTER TABLE borrow
MODIFY borrow_return_date TIMESTAMP NULL DEFAULT NULL;

UPDATE borrow
SET borrow_return_date = NULL
WHERE borrow_return_date = '2026-08-25 12:31:29';

--Return a book by updating the borrow_retrurn_date to the current timestamp

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 1 AND borrow_return_date IS NULL;
ORDER BY borrow_date DESC;

