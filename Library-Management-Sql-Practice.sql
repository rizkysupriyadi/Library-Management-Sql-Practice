CREATE DATABASE exercise1;

-- Create tables:
-- 1. Table members
-- 2. Table books
-- 3. Table borrowings

---- TABLE MEMBERS
CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address TEXT,
    status VARCHAR(10)
);

INSERT INTO members (member_id, first_name, last_name, address, status)
    VALUES (10001, 'Rizky', 'Supriyadi', 'Jalan Tempe', 'Mahasiswa');
INSERT INTO members (member_id, first_name, last_name, address, status)
    VALUES (10002, 'Adinda', 'Fitria', 'Jalan Bio', 'Mahasiswa');
INSERT INTO members (member_id, first_name, last_name, address, status)
    VALUES (10003, 'Uzumaki', 'Naruto', 'Jalan Konoha', 'Pekerja');
INSERT INTO members (member_id, first_name, last_name, address, status)
    VALUES (10004, 'Uchiha', 'Sasuke', 'Jalan Konoha', 'Buruh');
INSERT INTO members (member_id, first_name, last_name, address, status)
    VALUES (10005, 'Sakura', 'Haruno', 'Jalan Menteng', 'Buruh');

SELECT * FROM members;

DELETE FROM members WHERE member_id = 1002;

---- TABLE BOOKS
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author VARCHAR(50),
    category VARCHAR(30),
    stock INTEGER
);

INSERT INTO books (book_id, title, author, category, stock)
    VALUES (1, 'Atomic Habits', 'James Clear', 'Pengembangan Diri', 8);
INSERT INTO books (book_id, title, author, category, stock)
    VALUES (2, 'Deep Work', 'Cal Newport', 'Pengembangan Karir', 3);
INSERT INTO books (book_id, title, author, category, stock)
    VALUES (3, 'The Psychology of Money', 'Morgan Housel', 'Psikologi Keuangan', 3);
INSERT INTO books (book_id, title, author, category, stock)
    VALUES (4, 'The Design of Everyday Things', 'Don Norman', 'Design Thinking', 8);
INSERT INTO books (book_id, title, author, category, stock)
    VALUES (5, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Sejarah', 2);

SELECT * FROM books;

---- TABLE BORROWINGS
CREATE TABLE borrowings (
    borrow_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    book_id INTEGER,
    borrow_date DATE
);

INSERT INTO borrowings (borrow_id, member_id, book_id, borrow_date)
    VALUES (1, 10001, 1, '2025-01-23');
INSERT INTO borrowings (borrow_id, member_id, book_id, borrow_date)
    VALUES (2, 10002, 2, '2025-04-21');
INSERT INTO borrowings (borrow_id, member_id, book_id, borrow_date)
    VALUES (3, 10003, 3, '2025-07-12');
INSERT INTO borrowings (borrow_id, member_id, book_id, borrow_date)
    VALUES (4, 10004, 4, '2025-09-23');
INSERT INTO borrowings (borrow_id, member_id, book_id, borrow_date)
    VALUES (5, 10005, 5, '2025-04-21');

SELECT * FROM borrowings;

-- Update last name example
UPDATE members SET last_name = 'Updated' WHERE member_id = 10001;
SELECT * FROM members ORDER BY member_id ASC;


-- Delete one specific book record
DELETE FROM books WHERE stock = 2;
SELECT * FROM books;

-- Add new column 'phone_number' to members table
ALTER TABLE members ADD COLUMN phone_number TEXT;
SELECT * FROM members;

-- Rename Column Category to Genre
ALTER TABLE books RENAME COLUMN category TO Genre;
SELECT * FROM books;

-- Change Data Type of Stock to Float
ALTER TABLE books ALTER COLUMN stock TYPE FLOAT;
SELECT * FROM books;

--  Display all members with status active
SELECT members.status FROM members;

-- Display books where stock > 10
SELECT books.stock FROM books WHERE stock > 3;

-- Display members ordered alphabetically by first_name
SELECT members.first_name FROM members ORDER BY first_name ASC;

-- Display borrowings where book_id < 3
SELECT borrowings.book_id FROM borrowings WHERE book_id > 3;