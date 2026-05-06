SELECT "city", COUNT(*) AS "Public Schools" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING "Public Schools" <= 3
ORDER BY "Public Schools" DESC, "city" ASC;
