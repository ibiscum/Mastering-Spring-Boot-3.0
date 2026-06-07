CREATE TABLE books (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    isbn varchar(13) NOT NULL UNIQUE,
    title varchar(255) NOT NULL
);

CREATE TABLE publishers (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(255) NOT NULL UNIQUE,
    address varchar(255) NOT NULL
);

ALTER TABLE books ADD COLUMN publisher_id bigint;
ALTER TABLE books
ADD CONSTRAINT fk_books_publishers
FOREIGN KEY (publisher_id)
REFERENCES publishers (id)
ON DELETE SET NULL;

ALTER TABLE books ALTER COLUMN publisher_id SET NOT NULL;

SELECT b.id, b.title, b.isbn, p.name AS publisher
FROM books b
JOIN publishers p ON b.publisher_id = p.id;

-- 1. Tabelle für die Autoren erstellen
CREATE TABLE authors (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(255) NOT NULL UNIQUE,
    biography text
);

-- 2. Zwischentabelle für die m:n-Beziehung erstellen
CREATE TABLE book_authors (
    book_id bigint REFERENCES books(id) ON DELETE CASCADE,
    author_id bigint REFERENCES authors(id) ON DELETE CASCADE,
    PRIMARY KEY (book_id, author_id)
);

SELECT b.title, STRING_AGG(a.name, ', ') AS authors
FROM books b
JOIN book_authors ba ON b.id = ba.book_id
JOIN authors a ON ba.author_id = a.id
GROUP BY b.title
ORDER BY b.title;

