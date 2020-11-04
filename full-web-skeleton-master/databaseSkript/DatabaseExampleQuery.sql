/*
    EXAMPLE SELECT STATEMENTS
*/

SELECT *
FROM exercise
INNER JOIN exerciseTime ON exercise.id = exerciseTime.exercise_id;

SELECT *
FROM exercise;

SELECT *
FROM testResult
INNER JOIN exercise ON testResult.id = exercise.testResult_id;


-- LEGG MERKE til "exercise.name exercise" dette gjør at "exercise.name" blir kalt "exercise" i tabellen i stedet.
SELECT userInfo.fname, userInfo.lname, exercise.name exercise, exercise.value, exercise.metric, exerciseTime.time
FROM testResult
INNER JOIN exercise ON testResult.id = exercise.testResult_id
INNER JOIN roklubb.user ON testResult.user_id = roklubb.user.id
INNER JOIN userInfo ON user.userInfo_email = userInfo.email
LEFT JOIN exerciseTime on exercise.id = exerciseTime.exercise_id;