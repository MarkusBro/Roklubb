/*
EXAMPLE OF SELECT AND JOIN
*/
SELECT roklubb.user.fname, roklubb.user.lname, ex5kmW, ex5kmT, ex2kmW, ex2kmT, ex60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, flexibility
FROM roklubb.testResult
INNER JOIN user ON testResult.user_id = user.id
ORDER BY ex5kmT;