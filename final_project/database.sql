DROP TABLE users;

CREATE TABLE users (
	user_id serial PRIMARY KEY,
	firstName VARCHAR (50) NOT NULL,
	lastName VARCHAR (50) NOT NULL,
	phoneNumber VARCHAR (50),
	jobRole VARCHAR (50),
	workLocation VARCHAR (50),
	salary INT,
	managerID INT,
	levelOfAccess INT
);

INSERT INTO "users"
           ("firstname", "lastname", "phonenumber", "jobrole", "worklocation", "salary",  "managerid", "levelofaccess") 
VALUES
('Kas',   'Eam',      '7632108275', 'TLDP',     'St. Paul', 84000,    2, 0),
('Mark',  'Schwartz', '1231231234', 'LOB',      'Hartford', 250000,   4, 1)
RETURNING 
"user_id", "firstname", "lastname", "phonenumber", "jobrole", "worklocation", "salary", "managerid", "levelofaccess";

CREATE TABLE users (
	user_id serial PRIMARY KEY,
	firstName VARCHAR (50) NOT NULL,
	lastName VARCHAR (50) NOT NULL,
	phoneNumber VARCHAR (50),
	jobRole VARCHAR (50),
	workLocation VARCHAR (50),
	salary INT,
	managerID INT,
	levelOfAccess INT
);

INSERT INTO "users"
           ("firstname",  "lastname", "phonenumber", "jobrole", "worklocation",  "salary", "managerid", "levelofaccess") 
VALUES
           ('Carey',      'S.',       '1231231234',  'HR',       'St. Paul',     90000,        null,           2),
           ('Bob',        'W.',       '1231231234',  'big boss', 'Hartford',     4000000,      null,           1),
           ('Bryan',      'E.',       '1231231234',  'LOB',      'Hartford',     250000,          2,           0)
RETURNING 
"user_id",  "firstname",  "lastname", "phonenumber", "jobrole",  "worklocation", "salary", "managerid", "levelofaccess";

