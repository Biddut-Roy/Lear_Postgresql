SHOW timezone;

SELECT now();

CREATE Table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone);

INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * FROM timez

SELECT CURRENT_DATE

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT to_char(now(), 'MONTH');
SELECT to_char(now(), 'ddd');

SELECT CURRENT_DATE - INTERVAL ' 1 year';

SELECT age(CURRENT_DATE, '1995-08-29');

SELECT extract(month FROM '2024-05-26'::date)