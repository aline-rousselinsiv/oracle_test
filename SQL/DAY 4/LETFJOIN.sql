-- OUTER JOIN
-- LEFT, RIGHT

SELECT *
FROM ENROL;

SELECT *
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO;

-- 각 학생들의 시험을 본 개수 출력
-- 이름, 개수 출력. 단 시험을 하나도 보지 않았스면 개수는 0으로 출력

SELECT S.STU_NO, STU_NAME, COUNT(ENR_GRADE)
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO, STU_NAME;


--------

SELECT * FROM EMP;

-- 각 작원의 부하직원 수를 구하기. 단 없으면 0으로 출력
-- 출력 컬럼 : 사번, 이름, 부하직원 수
SELECT EMPNO, ENAME, NVL(CNT, 0)
FROM EMP E
LEFT JOIN (
    SELECT MGR, COUNT(*) CNT
    FROM EMP
    GROUP BY MGR
) T ON E.EMPNO = T.MGR
ORDER BY CNT;

--

-- 학번, 학생이름, 담당교수 이름 출력
-- 단, 담당교수가 없으면 담당교수 이름을 '담당교수 없음'으로 출력
SELECT * FROM STU;
SELECT * FROM PROFESSOR;

SELECT S.STUNO, S.NAME STUDENT, NVL(P.NAME,'담당교수 없음') PROFESSOR
FROM STU S
LEFT JOIN PROFESSOR P ON S.PROFNO = P.PROFNO
ORDER BY S.STUNO;









