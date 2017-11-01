-- Массив цифр, в котором необходимо найти последовательности 

CREATE TABLE T (
  ID INT NOT NULL PRIMARY KEY
);

INSERT INTO T (ID) VALUES (1), (2), (3), (6), (8), (9), (12);


-- Выборка последовательностей

SET @RowIndex = 0;

SELECT
    ArrayValue as RangeStart,
    ArrayValue + COUNT(ArrayDifference) - 1 as RangeEnd,
    COUNT(ArrayDifference) as RangeSize
FROM
(
    SELECT
        @RowIndex := @RowIndex + 1 as ArrayIndex,
        T.ID as ArrayValue,
        T.ID - @RowIndex as ArrayDifference
    FROM
        T
)
as Q1
GROUP BY
    ArrayDifference;

