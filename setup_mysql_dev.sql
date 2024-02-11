-- prepares a MySQL server for the project

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
-- Verify username and password for hbnb_dev

SELECT User, Host, Password FROM mysql.user WHERE User = 'hbnb_dev' AND Host = 'localhost';

-- Verify user permissions for hbnb_dev

SHOW GRANTS FOR 'hbnb_dev'@'localhost';

