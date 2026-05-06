CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("availabilities"."id") AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE "available" = 'TRUE'
AND "date" >= '2023-06-01'
AND "date" <= '2023-06-30'
GROUP BY "listings"."id";
