DROP DATABASE IF EXISTS StudentManagement ;
CREATE DATABASE StudentManagement;

USE StudentManagement;

CREATE TABLE student(
	ID_student INT primary key ,
    firstName VARCHAR(20),
	lastName VARCHAR(20),
	dob DATE,
    indexNumber VARCHAR(20)
);



SELECT 