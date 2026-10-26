USE library;

INSERT INTO author (name, country) VALUES ('Naguib Mahfouz', 'Egypt');
INSERT INTO author (name, country) VALUES ('Agatha Christie', 'England');
INSERT INTO author (name, country) VALUES ('Paulo Coelho', 'Brazil');

INSERT INTO book (title, price, author_id) VALUES ('The Harafish', 120.00, 1);
INSERT INTO book (title, price, author_id) VALUES ('Midaq Alley', 95.50, 1);
INSERT INTO book (title, price, author_id) VALUES ('Murder on the Orient Express', 150.00, 2);
INSERT INTO book (title, price, author_id) VALUES ('And Then There Were None', 140.00, 2);
INSERT INTO book (title, price, author_id) VALUES ('The Alchemist', 110.00, 3);
INSERT INTO book (title, price, author_id) VALUES ('Veronika Decides to Die', 99.99, 3);
