--SQL COMMENTS
USE [destiny_ebooks_db]

DROP TABLE IF EXISTS book,author, reviews, users;


CREATE TABLE author(
	author_id INT IDENTITY(1,1) PRIMARY KEY,
	author_name NVARCHAR(100) NOT NULL,
	book_title NVARCHAR(50) NOT NULL,
);

CREATE TABLE book(
	book_id INT IDENTITY(1,1) PRIMARY KEY,
	book_content NVARCHAR(MAX) NOT NULL,
	book_title NVARCHAR(50) NOT NULL,
	book_summary NVARCHAR(MAX)
);


CREATE TABLE reviews(
	review_id INT IDENTITY(1,1) PRIMARY KEY,
	author NVARCHAR(50) NOT NULL,
	book_title NVARCHAR(50) NOT NULL,
	book_review NVARCHAR(MAX)
);


CREATE TABLE users(
	users_id INT IDENTITY(1,1) PRIMARY KEY,
	users_name NVARCHAR(50) NOT NULL,
	book_names NVARCHAR(MAX) NOT NULL,
);