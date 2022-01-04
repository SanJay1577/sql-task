-- create a table
CREATE TABLE students (
  users text primary key,
  codekata INTEGER NOT NULL,
  attendance INTEGER NOT NULL,
  topics text NOT NULL,
  tasks INTEGER NOT NULL,
  company_drives INTEGER NOT NULL,
  mentors text NOT NULL,
  students_activated_courses text NOT NULL,
  courses text NOT NULL
);
-- insert some values
INSERT INTO students VALUES ('sanjay', '40', '100','javascript','15','3','Raghav','1','fullstackdevelopment');
INSERT INTO students VALUES ('saran', '37', '96','html','13','2','Raghav','1','fullstackdevelopment');
INSERT INTO students VALUES ('suman', '28', '100','css','12','1','lavish','1','fullstackdevelopment');
INSERT INTO students VALUES ('sunder', '29', '95','react','11','5','lavish','1','fullstackdevelopment');
INSERT INTO students VALUES ('suresh', '34', '91','node.js','14','7','Raghav','1','fullstackdevelopment');
-- fetch some values
SELECT sum(codekata) FROM students; 
SELECT users, company_drives FROM students; 
SELECT users, (students_activated_courses+courses) As Course FROM students;
SELECT distinct mentors FROM students;
SELECT distinct mentors, count(*) From students group by mentors; 
