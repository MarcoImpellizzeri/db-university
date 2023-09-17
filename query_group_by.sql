-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`enrolment_date`) AS `enrolment_year`, COUNT(*) AS `enrolled_students_count`
FROM `students`
GROUP BY `enrolment_year`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(`office_address`) AS 'number_of', `address` 
FROM `teachers` 
GROUP BY `office_address`;

-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT ROUND(AVG(`vote`),2) AS 'mid_vote', `exam_id` 
FROM `exam_student` 
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(*) AS 'department_number', `department_id` 
FROM `degrees` 
GROUP BY `department_id`;