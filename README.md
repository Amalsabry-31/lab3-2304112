# Lab 3: Foreign Keys and Simple SQL

**Student:** Amal Sabry Farid, ID 2304112
**Course:** Introduction to Database Systems, Lab 3 (Fall 2026)

## What is in this repository

- `problem2_DDL.sql`: builds the database `library` with the tables `author` and `book` (foreign key with `ON DELETE CASCADE`).
- `problem2_DML.sql`: seed data (3 authors and 6 books).
- `website/`: my Lab 2 website (Todo Time) with the new Library pages.

## How to run it

1. Install **Python** (tick "Add python.exe to PATH") and **MySQL** with Workbench.
2. Download this repository.
3. In MySQL Workbench run `problem2_DDL.sql`, then `problem2_DML.sql`.
4. Also run the Lab 2 database script so the login tables exist (see below).
5. Inside the `website` folder, copy `.env.example` to a new file named `.env` and write your MySQL password after `DB_PASSWORD=`.
6. Open a terminal inside the `website` folder and run:

```
pip install -r requirements.txt
python app.py
```

7. Open **http://127.0.0.1:5000**, register an account, and click **Enter the Library**.

### Lab 2 database script (login tables)

Run this once in MySQL Workbench:

```sql
DROP DATABASE IF EXISTS registration;
CREATE DATABASE registration;
USE registration;

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id),
    UNIQUE (email)
);

CREATE TABLE todos (
    todo_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    is_done TINYINT(1) NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (todo_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

## Website features (Problem 2)

- **F2.1** Show a table of books (with `author_id`) and a table of authors.
- **F2.2** Add a book and add an author.
- **F2.3** Edit a book and edit an author.
- **F2.4** Remove a book.
- **F2.5** Remove an author (all books of that author are deleted too).
- Extra: dark mode, responsive design, country list for authors.

The library pages are available after logging in, and the library is shared by all logged-in users.
