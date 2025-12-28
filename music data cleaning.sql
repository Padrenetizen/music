USE file;

CREATE TABLE my_file_lagging AS
SELECT *
FROM my_file;


SELECT *
FROM my_file_lagging
WHERE Peak = ''
AND all_time_peak = '';

UPDATE my_file_lagging
SET Peak = NULL
WHERE Peak = '';

UPDATE my_file_lagging
SET Peak = NULL
WHERE all_time_peak = '';

SELECT *
FROM my_file_lagging;

SELECT *
FROM my_file_lagging m1
JOIN my_file_lagging m2
USING(Artist)
WHERE (m1.Peak IS NULL OR m1.peak = '')
AND m2.all_time_peak IS NOT NULL;

SELECT *
FROM my_file_lagging
WHERE Peak IS NULL
AND all_time_peak = '';

DELETE
FROM my_file_lagging
WHERE Peak IS NULL
AND all_time_peak = '';