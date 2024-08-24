-- Подключаемся к базе postgres
   \c postgres;

   -- Удаляем базу данных, если она существует
   DROP DATABASE IF EXISTS my_database;

   -- Создаем новую базу данных
   CREATE DATABASE my_database;

   -- Подключаемся к новой базе данных
   \c my_database;

   -- Создаем таблицу при условии, что она не существует
   CREATE TABLE IF NOT EXISTS test_table (
       name VARCHAR(10) CHECK (CHAR_LENGTH(name) BETWEEN 4 AND 10),
       surname VARCHAR(50),
       city VARCHAR(50),
       age INT CHECK (age > 0 AND age <= 150)
   );

   -- Чистим таблицу, если она существует
   TRUNCATE TABLE test_table;

   -- Вставляем данные в таблицу
   INSERT INTO test_table (name, surname, city, age) VALUES
   ('John', 'Doe', 'New York', 25),
   ('Anna', 'Smith', 'Los Angeles', 33),
   ('Janie', 'Roe', 'Chicago', 45),
   ('Thomas', 'Brown', 'Miami', 22),
   ('Evelyn', 'Black', 'Dallas', 37),
   ('David', 'Wilson', 'Seattle', 29),
   ('Paul', 'White', 'Boston', 31),
   ('Sarah', 'Clark', 'San Francisco', 41),
   ('Emma', 'Lewis', 'Denver', 39),
   ('Olivia', 'Young', 'Austin', 28),
   ('Noah', 'Walker', 'Houston', 24),
   ('Liam', 'Hall', 'Atlanta', 30),
   ('Sophia', 'Allen', 'San Diego', 32),
   ('Isabella', 'King', 'Phoenix', 36),
   ('James', 'Scott', 'Orlando', 27),
   ('Lucas', 'Green', 'Philadelphia', 34),
   ('Mason', 'Adams', 'Las Vegas', 40),
   ('Maria', 'Nelson', 'San Jose', 26),
   ('Ethan', 'Baker', 'Detroit', 42),
   ('Avery', 'Mitchell', 'Charlotte', 35);
