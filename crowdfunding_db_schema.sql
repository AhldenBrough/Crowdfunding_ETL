-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS "Campaign";
DROP TABLE IF EXISTS "Category";
DROP TABLE IF EXISTS "Subcategory";
DROP TABLE IF EXISTS "Contacts";


CREATE TABLE "Category" (
    "category_id" VARCHAR(4) PRIMARY KEY NOT NULL,
    "category" VARCHAR(12) 																																											NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(8) PRIMARY KEY NOT NULL,
    "subcategory" VARCHAR(17) NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" INT PRIMARY KEY NOT NULL,
    "first_name" VARCHAR(15) NOT NULL,
    "last_name" VARCHAR(15) NOT NULL,
    "email" VARCHAR(60) NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" INT PRIMARY KEY NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(40) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(10) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(4) NOT NULL,
    "subcategory_id" VARCHAR(8) NOT NULL,
	foreign key (contact_id) references "Contacts" (contact_id),
	foreign key (category_id) references "Category" (category_id),
	foreign key (subcategory_id) references "Subcategory" (subcategory_id)
);


SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Contacts";
SELECT * FROM "Campaign";