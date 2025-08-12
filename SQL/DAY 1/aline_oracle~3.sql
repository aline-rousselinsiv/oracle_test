-- 3. INSERT 
SELECT * FROM STUDENT;
-- (1) 특정 컬럼에만 데이터를 넣는 경우
INSERT INTO STUDENT(STU_NO, STU_NAME, STU_DEPT)
VALUES('12341234','홍길동','기계과');

INSERT INTO STUDENT(STU_NO, STU_NAME, STU_DEPT)
VALUES('12341234','김철수','컴퓨터정부'); -- STU_NO는 PK이므로 동일한 값 삽입 불가능

INSERT INTO STUDENT(STU_NO, STU_NAME)
VALUES('12341234','김철수'); -- STU_DEPT가 'NOT NULL'로 필수로 STU_DEPT를 넣어줘야함

-- (2) 모든 컬럼에 데이터를 넣는 경우
--     컬럼명 생랙 가능 (값을 넣을 때 순서를 잘 지켜야 한다)
INSERT INTO STUDENT
VALUES('12341235', '김철수', '전기건자', 2, 'A', 'M', 175, 70);
COMMIT;