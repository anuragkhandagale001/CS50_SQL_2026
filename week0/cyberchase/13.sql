SELECT "title", "season", "topic"
FROM "episodes"
WHERE ("season" <= 3)
AND ("topic" LIKE '%measurement%' OR "topic" LIKE '%fractions%');
