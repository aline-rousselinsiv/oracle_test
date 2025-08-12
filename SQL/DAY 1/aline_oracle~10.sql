-- 날짜 함수
-- 1) SYSDATE  - 현재 시간 가져오기
-- 2) TO_CHAR - 날짜를 포멧으로, TO_DATE 문자를 날짜 포멧으로
SELECT 
    SYSDATE,
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS'),
    TO_CHAR(SYSDATE, 'HH24:MI:SS'),
    TO_DATE('2025-10-15', 'YYYY-MM-DD')
FROM DUAL;