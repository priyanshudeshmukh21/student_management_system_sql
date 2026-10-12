USE student_management_db;

SELECT * FROM students;

SELECT * FROM departments;

SELECT * FROM courses;

SELECT s.student_name, d.department_name
FROM students s
JOIN departments d
ON s.department_id = d.department_id;

SELECT s.student_name, c.course_name, e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT MAX(marks) AS highest_marks
FROM enrollments;

SELECT c.course_name, AVG(e.marks) AS average_marks
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;