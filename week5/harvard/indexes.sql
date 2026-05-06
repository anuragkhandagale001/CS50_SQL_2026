CREATE INDEX "course_search" ON "courses" ("department", "number", "semester");

CREATE INDEX "course_title_search" ON "courses" ("title");

CREATE INDEX "enrollment_student_id" ON "enrollments" ("student_id");

CREATE INDEX "enrollment_course_id" ON "enrollments" ("course_id");

CREATE INDEX "satisfies_course_id" ON "satisfies" ("course_id");
