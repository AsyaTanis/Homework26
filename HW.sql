CREATE DATABASE skypro;
CREATE TABLE employee (
                          id BIGSERIAL  NOT NULL PRIMARY KEY,
                          first_name VARCHAR(50)  NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          gender VARCHAR(6) NOT NULL,
                          age INT NOT NULL
);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Анатолий', 'Иванов', 'муж', 34);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Сергей', 'Иванов', 'муж', 34);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Геннадий', 'Иванов', 'муж', 34);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Анастасия', last_name = 'Исянова', gender = 'жен', age = 24 WHERE id = 2;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 1;

SELECT * FROM employee;

