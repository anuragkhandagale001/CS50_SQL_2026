SELECT "city", COUNT(*) AS "Public Schools" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY "Public Schools" DESC, "city" ASC
LIMIT 10;
