SELECT "schools"."name", "districts"."name", "expenditures"."per_pupil_expenditure"
FROM "schools"
JOIN "districts" ON "schools"."district_id" = "districts"."id"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "per_pupil_expenditure" > 20000;
