SELECT o.*
FROM `post` o
         LEFT JOIN `post` b
         ON date_format(o.date, "%Y-%m") = date_format(b.date, "%Y-%m") AND o.count_like < b.count_like
WHERE b.count_like is NULL AND o.date > '2019-10-01 10:10:09';