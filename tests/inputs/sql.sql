SET 
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET 
  AUTOCOMMIT = 0;
START TRANSACTION;
SET 
  time_zone = "+00:00";
CREATE TABLE dept_emp (
  emp_no INT NOT NULL, 
  dept_no CHAR(4) NOT NULL, 
  from_date DATE NOT NULL, 
  to_date DATE NOT NULL, 
  KEY (emp_no), 
  KEY (dept_no), 
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE, 
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE, 
  PRIMARY KEY (emp_no, dept_no)
);
INSERT INTO `USER` (
  `ID`, `USUARIO`, `PASSWORD`, `SALDO`, 
  `RATE`, `BLOQUEADO`, `IP`
) 
VALUES 
  (
    1, 'dd77b701661c5b55', '12358132134', 
    '0.0000', 1, 0, '190.207.11.113'
  ), 
  (
    2, 'b54d66a5fd158d3f', '12358132134', 
    '0.0000', 1, 0, '186.94.247.219'
  );

-- This is a single line comment.

ALTER TABLE 
  `USER` 
ADD 
  PRIMARY KEY (`ID`);
ALTER TABLE 
  `USER` MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, 
  AUTO_INCREMENT = 3;
COMMIT;

/*This is a Multiline
comment */

SELECT 
  REPLACE("SQL Tutorial", "SQL", "HTML");
SELECT 
  ProductName, 
  Price, 
  ROUND(Sell, 1) AS RoundedPrice 
FROM 
  Products;
SELECT 
  TIME_FORMAT("19:30:10", "%H %i %s");