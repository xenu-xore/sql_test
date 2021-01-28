CREATE TABLE "Users" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"post_id"	INTEGER,
	PRIMARY KEY("id")
);

INSERT INTO
	Users (name,post_id)
VALUES
	("Аня",1),
	("Таня",1),
	("Саша",2),
	("Дима",3),
	("Вова",4);


CREATE TABLE "Positions"(
	"id" INTEGER,
	"name" TEXT,
	PRIMARY KEY("id")
	);

INSERT INTO
	Positions (name)
VALUES
	("Дизайнер"),
	("Программист"),
	("Копирайтер"),
	("Администратор");


CREATE TABLE "Payments" (
	"id" INTEGER,
	"user" INTEGER,
	"status" INTEGER,
	PRIMARY KEY("id")
	);

INSERT INTO
	Payments (user, status)
VALUES
	(5,1),
	(3,1),
	(4,2),
	(2,1),
	(1,1);

CREATE TABLE "Pay"(
	"id" INTEGER,
	"value" TEXT,
	PRIMARY KEY("id")
	);

INSERT INTO
	Pay ("value")
	VALUES
		("Yes"),
		("No");


-- Для 2-х таблиц INNER JOIN
-- SELECT
	-- Person.id,
	-- Person.name,
	-- Positions.name AS post_id
-- FROM
	-- Person
	-- JOIN Positions
	-- ON Person.post_id = Positions.id


-- ALTER TABLE Payments RENAME COLUMN Person TO User;

-- Для 3-х таблиц INNER JOIN
SELECT
	Payments.id,
	Users.name AS Имя,
	Positions.name AS Департамент,
	Pay.value AS Статус

FROM
	Payments

	JOIN Pay
	  ON Payments.status = Pay.id
	JOIN Positions
	  ON Payments.status = Positions.id
	JOIN Users
	  ON Payments.user = Users.id