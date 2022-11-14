CREATE DATABASE sae_incidense;
USE sae_incidense;
CREATE TABLE employee(
		id INT NOT NULL,
		full_name VARCHAR(60) NULL,
		username VARCHAR(60) NULL,
		address VARCHAR(60) NULL,
		telephone VARCHAR(20) NULL,
		email VARCHAR(255) NULL,
		password VARCHAR(255),
		created DATETIME NULL,
		updated DATETIME NULL,
		roluser VARCHAR(60) NULL,
		PRIMARY KEY(id)
);
CREATE TABLE student(
		id INT NOT NULL,
		full_name VARCHAR(60) NULL,
		username VARCHAR(45) NULL,
		password VARCHAR(255) NULL,
		email VARCHAR(255) NULL,
		telephone VARCHAR(20) NULL,
		carrera_Universitaria VARCHAR(255) NULL,
		PRIMARY KEY(id)
);
CREATE TABLE incidense(
		id INT NOT NULL AUTO_INCREMENT,
		description VARCHAR(600) NULL,
		created DATETIME NULL,
		student_id INT NULL,
		status VARCHAR(20) NULL,
		PRIMARY KEY(id)
);
CREATE TABLE incidense_details(
		id INT NOT NULL AUTO_INCREMENT,
		employee_id INT NULL,
		incidense_id INT NULL,
		PRIMARY KEY(id)
);

ALTER TABLE incidense ADD CONSTRAINT FK_STUDENT_ID FOREIGN KEY(student_id) REFERENCES student(id);
ALTER TABLE incidense_details ADD CONSTRAINT FK_EMPLOYEE_ID FOREIGN KEY(employee_id) REFERENCES employee(id);
ALTER TABLE incidense_details ADD CONSTRAINT FK_INCIDENSE_ID FOREIGN KEY(incidense_id) REFERENCES incidense(id);

