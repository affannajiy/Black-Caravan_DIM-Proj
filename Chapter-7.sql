--Table Level Privileges
--Create a view
CREATE VIEW Emp_Project AS
SELECT e.EMPNO, e.ENAME, d.DEPTNO, d.DNAME, d.LOC
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO;

CREATE VIEW Students AS
SELECT *
FROM STUDENT;

--Drop a view
DROP VIEW Emp_Project;
DROP VIEW Students;

--Modify a view
CREATE OR REPLACE VIEW Emp_Project AS
SELECT e.EMPNO, d.DEPTNO, d.DNAME
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO;

--Account Level Privileges
--Grant
GRANT INSERT, DELETE ON Employee
TO Michael WITH GRANT OPTION; --GRANT OPTION is used to allow a user to grant privileges to other users

--Revoke
REVOKE INSERT, DELETE ON Employee
FROM Michael;

--Grant and Revoke
GRANT SELECT ON Students
TO Michael WITH GRANT OPTION; --Done by Joe

GRANT SELECT ON Students
TO Jane WITH GRANT OPTION; --Done by Michael

REVOKE SELECT ON Students
FROM Michael CASCADE; --Done by Joe