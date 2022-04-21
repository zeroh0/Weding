drop sequence product_seq;
drop sequence board_seq;
drop sequence orders_seq;
drop table alarm;
drop table board;
drop table dibs;
drop table orders;
drop table product;
drop table member;
drop table cat;

-- 회원정보
CREATE TABLE MEMBER (
                        id VARCHAR2(40) NOT NULL,
                        main_cat VARCHAR2(3) NOT NULL,
                        mini_cat VARCHAR2(3) NOT NULL,
                        password VARCHAR2(50) NOT NULL,
                        name VARCHAR2(30) NOT NULL,
                        phone VARCHAR2(20) NOT NULL,
                        email VARCHAR2(50) NOT NULL,
                        zipcode VARCHAR2(50) NULL,
                        roadaddress VARCHAR2(100) NULL,
                        detailaddress VARCHAR2(100) NULL,
                        m_status VARCHAR2(1) NULL
);

-- 회원정보
ALTER TABLE MEMBER
    ADD CONSTRAINT PK_MEMBER -- 회원정보 기본키
        PRIMARY KEY (
                     id -- 아이디
            );

-- 분류
CREATE TABLE CAT (
                     main_cat VARCHAR2(3) NOT NULL,
                     mini_cat VARCHAR2(3) NOT NULL,
                     c_content VARCHAR2(20) NOT NULL,
                     c_image VARCHAR2(1000) NULL
);

-- 분류
ALTER TABLE CAT
    ADD CONSTRAINT PK_CAT -- 분류 기본키
        PRIMARY KEY (
                     main_cat, -- 대분류
                     mini_cat  -- 중분류
            );

-- 게시판
CREATE TABLE BOARD (
                       b_num NUMBER(8) NOT NULL,
                       main_cat VARCHAR2(3) NOT NULL,
                       mini_cat VARCHAR2(3) NOT NULL,
                       id VARCHAR2(40) NULL,
                       b_title VARCHAR2(255) NOT NULL,
                       b_content VARCHAR2(1000) NOT NULL,
                       b_date VARCHAR2(10) NULL,
                       b_hit number(8) NULL,
                       b_image VARCHAR2(1000) NULL,
                       b_group NUMBER(8) NULL,
                       b_step NUMBER(8) NULL,
                       b_level NUMBER(8) NULL,
                       b_category VARCHAR2(80) NULL,
                       p_num VARCHAR2(50) NULL
);

-- 게시판
ALTER TABLE BOARD
    ADD CONSTRAINT PK_BOARD -- 게시판 기본키
        PRIMARY KEY (
                     b_num -- 글번호
            );

-- 펀딩상품
CREATE TABLE PRODUCT (
                         p_num VARCHAR2(50) NOT NULL,
                         id VARCHAR2(40) NOT NULL,
                         main_cat VARCHAR2(3) NOT NULL,
                         mini_cat VARCHAR2(3) NOT NULL,
                         p_name VARCHAR2(255) NOT NULL,
                         p_description VARCHAR2(1000) NULL,
                         p_start VARCHAR2(10) NOT NULL,
                         p_end VARCHAR2(10) NOT NULL,
                         p_time VARCHAR2(10) NULL,
                         p_currentprice NUMBER(10) NULL,
                         p_goalprice NUMBER(10) NOT NULL,
                         p_image1 VARCHAR2(1000) NOT NULL,
                         p_image2 VARCHAR2(1000) NULL,
                         p_condition VARCHAR2(1) NOT NULL,
                         p_price NUMBER(10) NOT NULL,
                         p_store VARCHAR2(50) NOT NULL
);

-- 펀딩상품
ALTER TABLE PRODUCT
    ADD CONSTRAINT PK_PRODUCT -- 펀딩상품 기본키
        PRIMARY KEY (
                     p_num -- 상품번호
            );
-- 현재달성금액 기본값 0
ALTER TABLE PRODUCT MODIFY P_CURRENTPRICE DEFAULT 0;

-- 찜하기
CREATE TABLE DIBS (
                      p_num VARCHAR2(50) NOT NULL,
                      id VARCHAR2(40) NOT NULL
);

-- 찜하기
ALTER TABLE DIBS
    ADD CONSTRAINT PK_DIBS -- 찜하기 기본키
        PRIMARY KEY (
                     p_num, -- 상품번호
                     id     -- 소비자아이디
            );

-- 알림
CREATE TABLE ALARM (
                       p_num VARCHAR2(50) NOT NULL,
                       id VARCHAR2(40) NOT NULL,
                       a_date VARCHAR2(10) NULL,
                       a_time VARCHAR2(8) NULL
);

-- 알림
ALTER TABLE ALARM
    ADD CONSTRAINT PK_ALARM -- 알림 기본키
        PRIMARY KEY (
                     p_num, -- 상품번호
                     id     -- 소비자아이디
            );

-- 펀딩상품참여자
CREATE TABLE ORDERS (
                        id VARCHAR2(20) NOT NULL,
                        p_num VARCHAR2(50) NOT NULL,
                        o_num VARCHAR2(50) NOT NULL,
                        o_qty NUMBER(8) NOT NULL,
                        o_sum NUMBER(8) NOT NULL,
                        o_phone VARCHAR2(20) NOT NULL,
                        o_zipcode VARCHAR2(50) NOT NULL,
                        o_roadaddress VARCHAR2(100) NOT NULL,
                        o_detailaddress VARCHAR2(100) NULL,
                        o_payday VARCHAR2(10) NULL,
                        o_shipstatus VARCHAR2(20) NULL
);

-- 펀딩상품참여자
ALTER TABLE ORDERS
    ADD CONSTRAINT PK_ORDERS -- 펀딩상품참여자 기본키
        PRIMARY KEY (
                     id,    -- 구매자아이디
                     p_num  -- 상품번호
            );

-- 회원정보
ALTER TABLE MEMBER
    ADD CONSTRAINT FK_CAT_TO_MEMBER -- 분류 -> 회원정보
        FOREIGN KEY (
                     main_cat, -- 대분류
                     mini_cat  -- 중분류
            )
            REFERENCES CAT ( -- 분류
                            main_cat, -- 대분류
                            mini_cat  -- 중분류
                );

-- 게시판
ALTER TABLE BOARD
    ADD CONSTRAINT FK_CAT_TO_BOARD -- 분류 -> 게시판
        FOREIGN KEY (
                     main_cat, -- 대분류
                     mini_cat  -- 중분류
            )
            REFERENCES CAT ( -- 분류
                            main_cat, -- 대분류
                            mini_cat  -- 중분류
                );

-- 게시판
ALTER TABLE BOARD
    ADD CONSTRAINT FK_PRODUCT_TO_BOARD -- 펀딩상품 -> 게시판
        FOREIGN KEY (
                     p_num -- 상품번호
            )
            REFERENCES PRODUCT ( -- 펀딩상품
                                p_num -- 상품번호
                );

-- 펀딩상품
ALTER TABLE PRODUCT
    ADD CONSTRAINT FK_CAT_TO_PRODUCT -- 분류 -> 펀딩상품
        FOREIGN KEY (
                     main_cat, -- 대분류
                     mini_cat  -- 중분류
            )
            REFERENCES CAT ( -- 분류
                            main_cat, -- 대분류
                            mini_cat  -- 중분류
                );

-- 펀딩상품
ALTER TABLE PRODUCT
    ADD CONSTRAINT FK_MEMBER_TO_PRODUCT -- 회원정보 -> 펀딩상품
        FOREIGN KEY (
                     id -- 판매자아이디
            )
            REFERENCES MEMBER ( -- 회원정보
                               id -- 아이디
                );

-- 찜하기
ALTER TABLE DIBS
    ADD CONSTRAINT FK_PRODUCT_TO_DIBS -- 펀딩상품 -> 찜하기
        FOREIGN KEY (
                     p_num -- 상품번호
            )
            REFERENCES PRODUCT ( -- 펀딩상품
                                p_num -- 상품번호
                );

-- 알림
ALTER TABLE ALARM
    ADD CONSTRAINT FK_PRODUCT_TO_ALARM -- 펀딩상품 -> 알림
        FOREIGN KEY (
                     p_num -- 상품번호
            )
            REFERENCES PRODUCT ( -- 펀딩상품
                                p_num -- 상품번호
                );

-- 펀딩상품참여자
ALTER TABLE ORDERS
    ADD CONSTRAINT FK_PRODUCT_TO_ORDERS -- 펀딩상품 -> 펀딩상품참여자
        FOREIGN KEY (
                     p_num -- 상품번호
            )
            REFERENCES PRODUCT ( -- 펀딩상품
                                p_num -- 상품번호
                );
                

create sequence product_seq increment by 1;
create sequence board_seq increment by 1;
create sequence orders_seq increment by 1;