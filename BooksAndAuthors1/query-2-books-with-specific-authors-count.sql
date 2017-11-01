-- Вывод книг с определенным числом авторов
SELECT
    R.BookID,
    B.Name,
    COUNT(*) as AuthorsCount,
    GROUP_CONCAT(
        DISTINCT A.Name
        ORDER BY R.Priority ASC 
        SEPARATOR ', '
    )
    as AuthorsList
FROM
    R_BooksToAuthors as R
INNER JOIN Books as B
    ON R.BookID = B.ID
INNER JOIN Authors as A
    ON R.AuthorID = A.ID
GROUP BY
    R.BookID
HAVING
    AuthorsCount = 3;


