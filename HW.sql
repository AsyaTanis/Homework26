/* Из ррошлого дз */
CREATE DATABASE skypro;
CREATE TABLE employee (
                          id BIGSERIAL  NOT NULL PRIMARY KEY,
                          first_name VARCHAR(50)  NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          gender VARCHAR(6) NOT NULL,
                          age INT NOT NULL
);

/*Задание 1*/
CREATE TABLE city (
                      city_id INT PRIMARY KEY,
                      city_name VARCHAR(50) NOT NULL
);

SELECT * FROM city;
SELECT * FROM employee;

ALTER TABLE employee
    ADD city_id INT,
    ADD FOREIGN KEY (city_id)  REFERENCES city (city_id);

INSERT INTO city (city_id, city_name) VALUES
                                          (1, 'Москва'),
                                          (2, 'Сочи'),
                                          (3, 'Рязань');

UPDATE employee SET city_id = 1 WHERE id = 4;
UPDATE employee SET city_id = 3 WHERE id = 2;
UPDATE employee SET city_id = 2 WHERE id = 3;
UPDATE employee SET city_id = 2 WHERE id = 6;
UPDATE employee SET city_id = 1 WHERE id = 5;


/*Задание 2*/
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Анатолий', 'Иванов', 'муж', 34);

INSERT INTO city (city_id, city_name) VALUES (4, 'Минск');

SELECT employee.first_name AS Имя, employee.last_name AS Фамилия, city.city_name AS Город
FROM employee
INNER  JOIN city
ON employee.city_id = city.city_id;

SELECT city.city_name AS Город,
       employee.first_name AS Имя,
       employee.last_name AS Фамилия
FROM city
LEFT JOIN employee
ON city.city_id = employee.city_id;

SELECT employee.first_name AS Имя,
       employee.last_name AS Фамилия,
       city.city_name AS Город
FROM employee
FULL OUTER JOIN city
ON employee.city_id = city.city_id;

SELECT employee.first_name AS Имя,
       employee.last_name AS Фамилия,
       city.city_name AS Город
FROM employee
CROSS JOIN city;

SELECT city.city_name AS Город
FROM city
LEFT JOIN employee
ON city.city_id = employee.city_id
WHERE employee.city_id IS NULL;