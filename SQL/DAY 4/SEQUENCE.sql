INSERT INTO BOARD VALUES(1, '첫번째게시글', '내용111', 'test');


CREATE SEQUENCE BOARD_SEQ
    INCREMENT BY 1 -- 증가 수
    START WITH 1; -- 시작숫자
    
-- OPTIONS    
    -- MINVALUE 1 -- 시퀀스의 최소 값
    -- MAXVALUE 9999 -- 최대 값
    -- NOCYCLE; -- 반복여부

SELECT BOARD_SEQ.NEXTVAL
FROM DUAL;

INSERT INTO BOARD 
VALUES(BOARD_SEQ.NEXTVAL, '첫번째게시글', '내용111', 'test');

SELECT * FROM BOARD;
COMMIT;