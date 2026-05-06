SELECT "first_name", "last_name" FROM "players"
WHERE "id" IN (
    SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001 AND "H" > 0
    ORDER BY ("salary" / "H") ASC LIMIT 10
)
AND "id" IN (
    SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001 AND "RBI" > 0
    ORDER BY ("salary" / "RBI") ASC LIMIT 10
)
ORDER BY "id" ASC;
