CREATE DATABASE hdxw
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
USE hdxw;
CREATE TABLE news (
  url VARCHAR(100) PRIMARY KEY,
  title VARCHAR(200)
  );