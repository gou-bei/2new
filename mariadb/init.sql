GRANT INSERT, UPDATE, CREATE, SELECT
ON *.*
TO 'py'@'%'
IDENTIFIED BY 'P@ssw0rd';

GRANT SELECT
ON *.*
TO 'web'@'%'
IDENTIFIED BY 'P@ssw0rd';

flush privileges;

CREATE DATABASE hdxw
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
USE hdxw;
CREATE TABLE news(
  url VARCHAR(100) PRIMARY KEY,
  title VARCHAR(200)
  );