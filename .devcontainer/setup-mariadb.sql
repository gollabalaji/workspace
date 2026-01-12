-- Using the root user, grant access to the mariadb user.
GRANT ALL PRIVILEGES ON *.* TO 'mariadb'@'%' IDENTIFIED BY 'mariadb';

GRANT CREATE ON *.* TO 'mariadb'@'%';

FLUSH PRIVILEGES;

-- Create a table in the database
USE mariadb;
CREATE TABLE test_table (
  ID INTEGER NOT NULL AUTO_INCREMENT,
  Item VARCHAR(255),
  PRIMARY KEY (ID)
);

-- Populate the table
INSERT INTO test_table (Item) VALUES ('One'), ('Two'), ('Three');