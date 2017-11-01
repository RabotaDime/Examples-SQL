-- Книги
CREATE TABLE Books
(
    ID int unsigned NOT NULL AUTO_INCREMENT,
    Name varchar(191) NOT NULL,

    PRIMARY KEY (ID)
)
    DEFAULT CHARSET=utf8;
    
INSERT INTO Books (ID, Name) VALUES
    ('10', 'Fahrenheit 451'),
    ('20', 'Definitely Maybe'),
    ('30', 'Aschenputtel'),
    ('40', 'Buy This Book: Studies in Advertising and Consumption')
;


-- Авторы
CREATE TABLE Authors
(
    ID int unsigned NOT NULL AUTO_INCREMENT,
    Name varchar(191) NOT NULL,

    PRIMARY KEY (ID)
)
    DEFAULT CHARSET=utf8;

INSERT INTO Authors (Name) VALUES
    ('Ray Bradbury'),
    ('Arkady Strugatsky'),
    ('Boris Strugatsky'),
    ('Charles Perrault'),
    ('Jacob Grimm'),
    ('Wilhelm Grimm'),
    ('Mica Nava'),
    ('Andrew Blake'),
    ('Iain MacRury'),
    ('Barry Richards')
;


-- Связи между книгами и авторами 
CREATE TABLE R_BooksToAuthors
(
    ID int unsigned NOT NULL AUTO_INCREMENT,
    BookID int unsigned NOT NULL,
    AuthorID int unsigned NOT NULL,
	Priority int unsigned NOT NULL,

    PRIMARY KEY (ID),
    FOREIGN KEY (BookID) REFERENCES Books(ID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(ID)
);

INSERT INTO R_BooksToAuthors (BookID, AuthorID, Priority) VALUES
    (10, 1, 0),
    (20, 2, 1),
    (20, 3, 2),
    (30, 4, 1),
    (30, 5, 0),
    (30, 6, 0),
    (40, 7, 1),
    (40, 8, 2),
    (40, 9, 3),
    (40, 10, 4)
;

