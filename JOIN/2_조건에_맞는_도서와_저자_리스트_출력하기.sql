SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK as b
LEFT JOIN AUTHOR as a
ON b.AUTHOR_ID = a.AUTHOR_ID
WHERE b.CATEGORY = "경제"
ORDER BY b.PUBLISHED_DATE