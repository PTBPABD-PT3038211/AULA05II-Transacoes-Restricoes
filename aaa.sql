-- Questão 1

CREATE SCHEMA aula05

-- Questão 2

CREATE TABLE company
(
    company_name VARCHAR(50) PRIMARY KEY NOT NULL,
    city VARCHAR(50)
);

-- Questão 3

CREATE TABLE employee
(
    person_name VARCHAR(50) PRIMARY KEY NOT NULL,
    street VARCHAR(50),
    city VARCHAR(50)
);

-- Questão 4

CREATE TABLE manages
(
    person_name VARCHAR(50) PRIMARY KEY NOT NULL,
    manager_name VARCHAR(50)
);

-- Questão 5

CREATE TABLE works
(
    person_name VARCHAR(50) PRIMARY KEY NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2)
);

-- Questão 6

ALTER TABLE works
ADD CONSTRAINT fk_works_employee
FOREIGN KEY (person_name) REFERENCES employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- Questão 7

ALTER TABLE works
ADD CONSTRAINT fk_works_company
FOREIGN KEY (company_name) REFERENCES company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- Questão 8

ALTER TABLE manages
ADD CONSTRAINT fk_manages_employee
FOREIGN KEY (person_name) REFERENCES employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
