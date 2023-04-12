/* Прошлое дз */
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

/* Задание 1 */

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Иван', 'Иванов', 'муж', 34);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Екатерина', 'Иванова', 'жен', 30);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Андрей', 'Иванов', 'муж', 34);

SELECT first_name AS Имя, last_name AS Фамилия
FROM employee;

SELECT * FROM employee
WHERE age < 30 OR age > 50;

SELECT * FROM employee
WHERE age BETWEEN 30 AND 50;

SELECT first_name AS Имя, last_name AS Фамилия
FROM employee
ORDER BY last_name ASC;

SELECT first_name AS Имя, last_name AS Фамилия
FROM employee
WHERE first_name LIKE '%_____%';

/* Задание 2 */

UPDATE employee SET first_name = 'Андрей', last_name = 'Петров', gender = 'муж', age = 31 WHERE id = 4;
UPDATE employee SET first_name = 'Анастасия', last_name = 'Иванова', gender = 'жен', age = 24 WHERE id = 3;

SELECT first_name AS Имя,
       SUM(age) AS Суммарный_возраст
FROM employee
GROUP BY first_name;

SELECT first_name,
       MIN (age) AS Min_возраст
FROM employee
GROUP BY first_name;

SELECT first_name,
       MAX(age) AS Max_возраст
FROM employee
GROUP BY first_name HAVING COUNT(*)>1
ORDER BY MAX(age)