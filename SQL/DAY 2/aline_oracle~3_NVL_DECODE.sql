-- 오라큰에서 조건 처리
-- 페이+보너스의 합이 300이상인 사람을 구하세요

SELECT NAME, PAY, BONUS, PAY+BONUS
FROM PROFESSOR;

-- NVL
SELECT NAME, NVL(BONUS, 0)
FROM PROFESSOR;

-- 페이+보너스의 합이 300이상인 사람을 구하세요
SELECT *
FROM PROFESSOR
WHERE PAY+NVL(BONUS,0) >=3000;

-- NVL2
SELECT BONUS, NVL2(BONUS, 1000, 0)
FROM PROFESSOR;

-- DECODE - 자바의 조건문(IF)
-- DECODE(컬럼, '조건값', '값이 컬럼값이랑 동일할 때 출력 할 값', '조건 만족 안 했을때 출력 할 값'
SELECT ENAME, DECODE(JOB, 'MANAGER', '매니저!', '그외') FROM EMP;

SELECT 
    NAME, 
    DECODE(SUBSTR(JUMIN, 7, 1), 1, '남자', '여자') AS 성별
FROM STU;

-- if - else if - else
SELECT 
    ENAME,
    JOB,
    DECODE (JOB, 'MANAGER', '매니저!', 'SALESMAN', '세일즈맨!', '그외')
FROM EMP;

-- 주민번호 7번째가 1, 3 이면 '남자', 2, 4면 '여자'
SELECT NAME, JUMIN FROM STU;
SELECT 
    NAME, 
    DECODE(SUBSTR(JUMIN, 7, 1), 1, '남자', 3, '남자', '여자') AS 성별
FROM STU;




