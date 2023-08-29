-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DxheCI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int  NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float  NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(100)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "currency" varchar(100)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "cat_id" varchar(100)   NOT NULL,
    "subcategory_id" varchar(100)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int  NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "cat_id" varchar(100)   NOT NULL,
    "category" varchar(100)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "cat_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(100)   NOT NULL,
    "subcategory" varchar(100)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cat_id" FOREIGN KEY("cat_id")
REFERENCES "Category" ("cat_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");