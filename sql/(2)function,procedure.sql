create or replace FUNCTION chk_reply3(v_b_group in number, v_mini_cat in VARCHAR)
    RETURN VARCHAR
    IS
    v_count number;
    v_chk   VARCHAR2(1);
BEGIN
    select  count(*)
    into    v_count
    from    board
    WHERE  mini_cat=v_mini_cat  -- 1:1 게시판  --> 300
      AND    b_group=v_b_group
    group by b_group;

    If v_count > 1 then
        v_chk := 'Y';
    Else
        v_chk := 'N';
    End if;

    RETURN v_chk;
END;
/

-- 상품 상태 업데이트 프로시저
create or replace procedure P_UPDATE_PRODUCT
    is
begin
   -- 펀딩 종료 기간 지난 상품 펀딩종료로 갱신
update PRODUCT
set P_CONDITION = 3
where P_NUM in (select P_NUM
                from PRODUCT
                where P_END < to_char(sysdate, 'yyyy-MM-dd'));
end;
/
-- 상품 상태 업데이트 프로시저
create or replace procedure P_UPDATE_PRODUCT2
    is
begin
   -- 펀딩예정 상품 펀딩 중으로
    update PRODUCT
    set P_CONDITION = 2
    where P_NUM in (select P_NUM
                    from PRODUCT
                    where P_START <= to_char(sysdate, 'yyyy-MM-dd')
                      and P_END > to_char(sysdate, 'yyyy-MM-dd'));
end;
/

-- 스케쥴(JOB) 생성
BEGIN
    DBMS_SCHEDULER.CREATE_JOB
(
            JOB_NAME => 'UPDATE_PRODUCT_JOB', -- JOB 이름
            JOB_TYPE => 'STORED_PROCEDURE', -- 프로시저 형태로 실행
            JOB_ACTION => 'P_UPDATE_PRODUCT', -- 프로시저명
            START_DATE => TRUNC(SYSDATE+1)+0/24 + INTERVAL '0 0:0:1' DAY TO SECOND, -- 다음날 자정에 시작
            REPEAT_INTERVAL => 'FREQ=DAILY; INTERVAL = 1', -- 하루 주기
            COMMENTS => '상품 상태 하루 주기 갱신'
        );
END;

BEGIN
    DBMS_SCHEDULER.CREATE_JOB
(
            JOB_NAME => 'UPDATE_PRODUCT_JOB2', -- JOB 이름
            JOB_TYPE => 'STORED_PROCEDURE', -- 프로시저 형태로 실행
            JOB_ACTION => 'P_UPDATE_PRODUCT2', -- 프로시저명
            START_DATE => TRUNC(SYSDATE+1)+0/24 + INTERVAL '0 0:0:1' DAY TO SECOND, -- 다음날 자정에 시작
            REPEAT_INTERVAL => 'FREQ=DAILY; INTERVAL = 1', -- 하루 주기
            COMMENTS => '상품 상태 하루 주기 갱신'
        );
END;

-- 스케쥴 활성화
BEGIN
    DBMS_SCHEDULER.ENABLE('UPDATE_PRODUCT_JOB');
END;

BEGIN
    DBMS_SCHEDULER.ENABLE('UPDATE_PRODUCT_JOB2');
END;

commit;


execute DBMS_SCHEDULER.run_job('UPDATE_PRODUCT_JOB');
execute DBMS_SCHEDULER.run_job('UPDATE_PRODUCT_JOB2');

commit;
