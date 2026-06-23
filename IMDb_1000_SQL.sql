SELECT * from imdb_top_1000 ;

### TOTAL SERİES COUNT

SELECT COUNT("Series_Title") AS total_series
from imdb_top_1000; 

### AVERAGE IMDB RATİNG

SELECT AVG(IMDB_Rating) AS average_series
from imdb_top_1000;

### AVERAGE RUNTİME

SELECT AVG(Runtime) AS average_runtime
from imdb_top_1000;

### TOTAL GENRE

SELECT COUNT(DISTINCT Genre) AS total_genre
from imdb_top_1000;

### NUMBER OF FILMS BY YEAR

SELECT Released_Year , COUNT(Series_Title) AS total_series
from imdb_top_1000
GROUP BY Released_Year
ORDER BY Released_Year;

### NUMBER OF FILMS BY GENRE

SELECT COUNT(Series_Title) AS total_series , Genre
FROM imdb_top_1000
GROUP BY Genre
ORDER BY total_series DESC;

### AVERAGE IMDB RATİNG BY GENRE

SELECT AVG(IMDB_Rating) AS average_ımdb_rating , Genre
FROM imdb_top_1000
GROUP BY Genre
ORDER BY average_ımdb_rating DESC;

### Top 10 Highest Rated Series

SELECT IMDB_Rating , Series_Title
FROM imdb_top_1000
ORDER BY IMDB_Rating DESC
LIMIT 10;

### Top 10 Most Voted Series

SELECT Series_Title , No_of_Votes
FROM imdb_top_1000
ORDER BY No_of_Votes DESC
LIMIT 10;

### Director Performance Analysis(Directors With At Least 3 Series)

SELECT COUNT(Series_Title) as total_series , AVG(IMDB_Rating) AS average_ımdb_rating, Director
FROM imdb_top_1000
GROUP BY Director
HAVING COUNT(Series_Title) >= 3
ORDER BY average_ımdb_rating DESC;

### 10 Most Prolific Directors

SELECT COUNT(Series_Title) AS total_series,Director
FROM imdb_top_1000
GROUP BY Director
ORDER BY total_series DESC
LIMIT 10;

### Top 10 Highest Grossing Series

SELECT Gross,Series_Title
FROM imdb_top_1000
ORDER BY Gross DESC
LIMIT 10;

### Average Gross by Genre

SELECT AVG(Gross) AS average_gross,Genre
FROM imdb_top_1000
GROUP BY Genre
ORDER BY average_gross DESC;










