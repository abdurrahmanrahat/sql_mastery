-- Active: 1756994699068@@127.0.0.1@5432@ph
SELECT * FROM person;

ALTER TABLE person
    ADD COLUMN address VARCHAR(100) DEFAULT 'default' NOT NULL;

ALTER TABLE person
    DROP COLUMN address;

INSERT INTO person VALUES(4, 'sifat', 34, 'sifat@gamil.com')

ALTER TABLE person
    RENAME COLUMN age to user_age;RENAME COLUMN age to user_age;

ALTER Table person
    alter COLUMN user_name type VARCHAR(50);

ALTER Table person
    alter COLUMN user_age set NOT NULL;


ALTER Table person
    alter COLUMN user_age DROP NOT NULL;

ALTER Table person
    ADD constraint unique_person_user_age UNIQUE(user_age);

ALTER Table person
    DROP constraint unique_person_user_age;

DROP TABLE person;

TRUNCATE TABLE person;