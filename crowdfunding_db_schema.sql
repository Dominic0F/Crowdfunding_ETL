-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaigns" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" object   NOT NULL,
    "description" varchar(255)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" object   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" object   NOT NULL,
    "currency" object   NOT NULL,
    "launch_date" int   NOT NULL,
    "end_date" int   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Campaigns" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" object   NOT NULL,
    "last_name" object   NOT NULL,
    "email" object   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Categories" (
    "category_id" int   NOT NULL,
    "category_name" object   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Sub-Categories" (
    "subcategory_id" int   NOT NULL,
    "subcategory_name" object   NOT NULL,
    CONSTRAINT "pk_Sub-Categories" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Categories" ADD CONSTRAINT "fk_Categories_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaigns" ("category_id");

ALTER TABLE "Sub-Categories" ADD CONSTRAINT "fk_Sub-Categories_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaigns" ("subcategory_id");

