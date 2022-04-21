-- 카테고리
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('100', '999', '회원관리');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('100', '100', '소비자');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('100', '200', '판매자');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('100', '300', '관리자');

insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('200', '999', '상품 카테고리');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '101', '홈리빙', 'homeLiving.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '102', '푸드', 'food.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '103', '패션잡화', 'fashion.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '104', '테크가전', 'tech.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '105', '캐릭터굿즈', 'charGoods.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '106', '여행스포츠', 'tripSport.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '107', '뷰티', 'beauty.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '108', '베이비키즈', 'babyKids.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '109', '반려동물', 'pet.jpg');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT, C_IMAGE) values ('200', '110', '게임취미', 'game.jpg');

insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('300', '999', '게시판 분류');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('300', '100', '공지사항');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('300', '200', '문의사항');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('300', '300', '1:1문의');
insert into CAT (MAIN_CAT, MINI_CAT, C_CONTENT) values ('300', '400', '리뷰');

commit;



-- member table
-- 소비자
insert into MEMBER values ('hong001', '100', '100', 'hong001', '소비자1', '01012345678', 'ahj941@naver.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong002', '100', '100', 'hong002', '소비자2', '01012345678', 'thgus0426@naver.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong003', '100', '100', 'hong003', '소비자3', '01012345678', 'seller003@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong004', '100', '100', 'hong004', '소비자4', '01012345678', 'seller004@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong005', '100', '100', 'hong005', '소비자5', '01012345678', 'seller005@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong006', '100', '100', 'hong006', '소비자6', '01012345678', 'seller006@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong007', '100', '100', 'hong007', '소비자7', '01012345678', 'seller007@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong008', '100', '100', 'hong008', '소비자8', '01012345678', 'seller008@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong009', '100', '100', 'hong009', '소비자9', '01012345678', 'seller009@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong010', '100', '100', 'hong010', '소비자0', '01012345678', 'seller010@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong011', '100', '100', 'hong011', '소비자', '01012345678', 'seller011@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong012', '100', '100', 'hong012', '소비자', '01012345678', 'seller012@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('hong013', '100', '100', 'hong013', '소비자', '01012345678', 'seller013@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '0');
insert into MEMBER values ('hong014', '100', '100', 'hong014', '소비자', '01012345678', 'seller014@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '0');

-- 판매자
insert into MEMBER values ('seller001', '100', '200', 'seller001', '판매자1', '01012345678', 'seller001@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller002', '100', '200', 'seller002', '판매자2', '01012345678', 'seller002@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller003', '100', '200', 'seller003', '판매자3', '01012345678', 'seller003@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller004', '100', '200', 'seller004', '판매자4', '01012345678', 'seller004@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller005', '100', '200', 'seller005', '판매자5', '01012345678', 'seller005@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller006', '100', '200', 'seller006', '판매자6', '01012345678', 'seller006@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller007', '100', '200', 'seller007', '판매자7', '01012345678', 'seller007@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller008', '100', '200', 'seller008', '판매자8', '01012345678', 'seller008@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller009', '100', '200', 'seller009', '판매자9', '01012345678', 'seller009@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller010', '100', '200', 'seller010', '판매자0', '01012345678', 'seller010@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller011', '100', '200', 'seller011', '판매자', '01012345678', 'seller011@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller012', '100', '200', 'seller012', '판매자', '01012345678', 'seller012@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');
insert into MEMBER values ('seller013', '100', '200', 'seller013', '판매자', '01012345678', 'seller013@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '0');
insert into MEMBER values ('seller014', '100', '200', 'seller014', '판매자', '01012345678', 'seller014@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '0');

-- 관리자
insert into MEMBER values ('admin', '100', '300', 'admin123', '관리자', '01012345678', 'admin@gmail.com', '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', '1');

commit;

-- product
set define off;
insert into product values (product_seq.nextval,'seller001','200','101','베이직 KIT','탄산수?! 이제 사 먹지 마세요. 필립스 소다메이커만 있으면 취향껏, 마음껏, 이태리 탄산수를 집에서 내려 마실 수 있어요!!','2022-02-07','2022-03-04','12:00',1490000,1000000,'homeLiving001-1.png','homeLiving001-2.png','2',149000,'store001');
insert into product values (product_seq.nextval,'seller002','200','101','큐몽 베개','[의료기 인증] 큐몽은 목디스크(추간판탈출증), 일자목, 거북목 등의 치료에 도움을 주는 모션 베개입니다. 마사지 기능과 목 견인으로 치료목적의 의료기기를 직접 경험해보세요!','2022-02-10','2022-03-04','12:00',473000,500000,'homeLiving002-1.png','homeLiving002-2.png','2',43000,'store002');
insert into product values (product_seq.nextval,'seller003','200','101','황금 횃불화로','프리미엄 만능 콘크리트 소형화로 "황금 횃불화로" 에탄올, 스텐장작, 리얼 우드 까지 이제 집에서도 리얼 리얼 불멍을~~! 조용하게 또는 화려하게 불멍을 즐기세요.','2022-03-03','2022-03-17','12:00',0,500000,'homeLiving003-1.png','homeLiving003-2.png','1',89000,'store003');
insert into product values (product_seq.nextval,'seller004','200','101','DLP 미니 스마트 빔프로젝터','#한번사면 오래 써야 할 빔프로젝터 #고급사양의 DLP 미니 스마트 빔프로젝터를 만나보세요! #오토포커스 #무선 미러링은 기본 #겨울캠핑 차박에 딱!','2022-03-10','2022-03-18','12:00',0,1000000,'homeLiving004-1.png','homeLiving004-2.png','1',549000,'store004');
insert into product values (product_seq.nextval,'seller005','200','101','소프롱 괴물샤워기','괴물샤워기를 들어보셨나요? 소프롱이 2012년에 출시하여 기능성 수압 샤워기의 대명사가 되었습니다. 괴물샤워기의 업그레이드 신버전을 출시하면서 와디즈 펀딩으로 선공개 합니다.','2022-01-03','2022-02-04','12:00',657000,500000,'homeLiving005-1.png','homeLiving005-2.png','3',21900,'store005');
insert into product values (product_seq.nextval,'seller006','200','101','핸드메이드 핑크라군 고래 무드등','N사 평점 4.9 세상의 순간을 나무에 담는 핸드메이드 & 각인 핑크라군 고래 무드등 & 세계여행 힐링 인센스 홀더','2021-12-29','2022-01-21','12:00',1425000,1000000,'homeLiving006-1.png','homeLiving006-2.png','3',95000,'store006');
insert into product values (product_seq.nextval,'seller007','200','101','모슈 라떼 스트로우 텀블러','오프너블 스트로우가 포함된, 새지않는 보온보냉 빨대컵! 2년만에 출시되는 모슈의 신규 라인업인 스트로우 텀블러를 만나보세요!','2021-05-28','2021-06-26','12:00',1475000,1000000,'homeLiving007-1.png','homeLiving007-2.png','3',29500,'store007');
insert into product values (product_seq.nextval,'seller008','200','101','프레임 의자','당신은 어떤 의자에서 어떤 하루를 보내고 계시나요? 우리에게 제2의 주거공간이기도 한 의자. 어떤 움직임에도 허리를 지지해 주고 오랜 사용에도 편안함을 느껴볼 수 있는 D3','2022-02-28','2022-03-22','12:00',0,3000000,'homeLiving008-1.png','homeLiving008-2.png','1',239000,'store008');
insert into product values (product_seq.nextval,'seller009','200','101','블링2치약','치아구성성분 하이드록시 아파타이트 넣은 블링2치약으로 치아 깎지 말고 채워 하얀치아 쭉 유지하세요!!','2020-11-23','2020-12-21','12:00',0,500000,'homeLiving009-1.png','homeLiving009-2.png','3',19800,'store009');
insert into product values (product_seq.nextval,'seller010','200','101','달인 파워툴','글로벌 세계시장에서 당당히 도전 합니다. 서포터 여러분의 큰 사랑에 꼭 보답 드리겟습니다 ! 달인파워툴 2020뉴 에디션 !!','2020-10-22','2020-11-02','12:00',0,500000,'homeLiving010-1.png','homeLiving010-2.png','3',148000,'store010');
insert into product values (product_seq.nextval,'seller011','200','101','멀티 클리너 샤다즐','부엌도, 화장실도, 가죽과 자동차 휠까지도! 찌든 때를 시~원하게 벗겨주는 이 멀티 클리너, 샤다즐! 프랑스에서 천연 성분으로만 이루어진 강력한 직수입 세제!','2020-03-03','2020-03-22','12:00',1980000,500000,'homeLiving011-1.png','homeLiving011-2.png','3',19800,'store011');
insert into product values (product_seq.nextval,'seller012','200','101','펠리칸스탠드','트랜스포머 펠리칸스탠드가 진화하여 마지막 앵콜로 돌아왔습니다! 여러분의 소중한 목건강! 펠리칸스탠드가 지켜드립니다!','2021-08-24','2021-09-06','12:00',0,500000,'homeLiving012-1.png','homeLiving012-2.png','3',48600,'store012');
insert into product values (product_seq.nextval,'seller013','200','102','40년 장인 비법 샤인머스켓','유기물이 풍부한 토양, 건강하고 안전한 먹거리, 품질을 먼저 생각합니다. 고품질 샤인머스켓','2022-02-28','2022-05-01','12:00',0,1000000,'food001-1.jpg','food001-2.jpg','1',50000,'store097');
insert into product values (product_seq.nextval,'seller014','200','102','상상 이상! 고품격 제주 흑돼지','소고기보다 맛있는 돼지고기가 여기 있다? 상상 그 이상의 고품격 제주 흑돼지를 만나보세요!','2022-02-24','2022-04-15','12:00',250000,500000,'food002-1.jpg','food002-2.jpg','2',25000,'store098');
insert into product values (product_seq.nextval,'seller001','200','102','가래떡에 진심인 사람 나야나!','치즈보다 잘 늘어나는 냉동 가래떡을 먹어본 적 있나요? 전 가래떡에 진심인 사람입니다.','2022-02-12','2022-03-01','12:00',0,500000,'food003-1.jpg','food003-2.jpg','1',11800,'store099');
insert into product values (product_seq.nextval,'seller002','200','102','건강한 주스, 다이어트 주스, 클렌즈 주스','설탕이 들어가지 않아도 달달한 주스~ 디톡스 주스로 건강과 다이어트를 한 번에 잡으세요~','2022-02-24','2022-03-05','12:00',0,500000,'food004-1.jpg','food004-2.jpg','2',8000,'store100');
insert into product values (product_seq.nextval,'seller003','200','102','유자 80시간 숙성 노르웨이 연어','유럽식 숙성방법을 사용해 80시간동안 담금질 한 연어! 필요없는 부위는 과감히 제거했습니다.','2022-02-24','2022-03-24','12:00',860000,500000,'food005-1.jpg','food005-2.jpg','2',43000,'store101');
insert into product values (product_seq.nextval,'seller004','200','102','프랑스 거장의 수제 초콜릿','스페셜한 발렌타인, 사랑하는 사람과 스몰 럭셔리함을 즐겨보세요','2022-03-02','2022-03-15','12:00',0,500000,'food006-1.jpg','food006-2.jpg','1',48000,'store102');
insert into product values (product_seq.nextval,'seller005','200','102','저염식 영광 보리굴비','순수 천일염을 사용한 저염식 영광 보리굴비! 고급 굴비세트로 따뜻한 감사인사를 전해보세요','2022-01-01','2022-02-01','12:00',1100000,1000000,'food007-1.jpg','food007-2.jpg','3',55000,'store103');
insert into product values (product_seq.nextval,'seller006','200','102','스테비아 그릭요거트','몸에 흡수되지 않는 건강한 단맛! 설탕보다 300배 이상 단 스테비아와 건강하고 꾸덕한 그릭요거트의 만남!','2022-03-05','2022-03-15','12:00',0,500000,'food008-1.jpg','food008-2.jpg','1',19000,'store104');
insert into product values (product_seq.nextval,'seller007','200','102','홍차브루커피','숙성 홍차와 커피를 블랜딩해서 콜드브루 방식으로 추출한 커피! 홈카페의 시작은 여기부터','2022-01-01','2022-01-15','12:00',0,500000,'food009-1.jpg','food009-2.jpg','3',16500,'store105');
insert into product values (product_seq.nextval,'seller008','200','102','인생 종합 비타민','월 8천원대로 만나는 가성비 종합 비타민! 가격 거품은 덜어내고 품질은 올렸습니다!','2022-01-09','2022-01-24','12:00',0,500000,'food010-1.jpg','food010-2.jpg','3',8800,'store106');
insert into product values (product_seq.nextval,'seller009','200','102','한방 풍천 장어','머리와 뼈가 손질된 무게가 650g! 두툼한 고단백 고영양 한방 장어로 원기회복 하세요!','2022-01-05','2022-01-31','12:00',0,1000000,'food011-1.jpg','food011-2.jpg','3',55000,'store107');
insert into product values (product_seq.nextval,'seller010','200','102','마법의 딸기','딸기과육 무려 77% 함량! 딸기라떼,딸기에이드,딸기요거트 등 다양한 딸기파티를 즐기세요','2022-02-24','2022-04-16','12:00',0,1000000,'food012-1.jpg','food012-2.jpg','2',22000,'store108');
insert into product values (product_seq.nextval,'seller011','200','102','미니파인애플','일반 파인애플의 당도 2배, 부드러운 심지까지 다 먹을 수 있는 미니 파인애플!','2022-02-16','2022-03-06','12:00',0,500000,'food013-1.jpg','food013-2.jpg','1',15900,'store109');
insert into product values (product_seq.nextval,'seller012','200','102','신라왕실 프리미엄 천명차','티 소믈리에가 현대적으로 재해석한 신라왕실 프리미엄 천명차','2022-02-25','2022-03-28','12:00',0,500000,'food014-1.jpg','food014-2.jpg','1',23800,'store110');
insert into product values (product_seq.nextval,'seller013','200','102','교동 온쫄면, 냉쫄면','24년 노하우를 가득 담은 국물쫄면! 시원하게, 따뜻하게 즐기세요','2022-03-09','2022-03-22','12:00',0,500000,'food015-1.jpg','food015-2.jpg','1',13000,'store111');
insert into product values (product_seq.nextval,'seller014','200','103','당신의 일상이 가벼운 데일리백','넉넉한 수납공간, 생활방수, 휴대폰보다 가벼운, 당신의 일상을 가볍게 만들어 줄 데일리 미니백','2022-01-15','2022-01-24','12:00',0,500000,'fashion001-1.jpg','fashion001-2.jpg','3',29000,'store112');
insert into product values (product_seq.nextval,'seller001','200','103','2 in 1 페트드라이코트','버려진 페트병으로 섬유를 만들어 제작한 코트! 환경보호와 따뜻함을 동시에 가져가세요','2022-01-07','2022-01-24','12:00',1340000,500000,'fashion002-1.jpg','fashion002-2.jpg','3',268000,'store113');
insert into product values (product_seq.nextval,'seller002','200','103','자크 드 마누어 시계','역사와 노하우를 가진 스위스 시계, 새로운 컬렉션, 여성용 시계','2022-02-14','2022-02-24','12:00',0,1000000,'fashion003-1.jpg','fashion003-2.jpg','1',198000,'store114');
insert into product values (product_seq.nextval,'seller003','200','103','헤리티지 벤루카스 안경','안경은 매일 나와 함께하는 일상이기에 우리는 만들어야 했습니다. 일상 속의 편안함 11g 헤리티지 벤루카스','2022-01-04','2022-01-31','12:00',73000,500000,'fashion004-1.jpg','fashion004-2.jpg','3',73000,'store115');
insert into product values (product_seq.nextval,'seller004','200','103','리틀 블랙 원피스','심플하면서도 우아하고 편안한 자리, 격식있는 자리 등 구분없이 입을 수 있는 블랙 원피스','2022-01-25','2022-03-28','12:00',1432000,1000000,'fashion005-1.jpg','fashion005-2.jpg','2',179000,'store116');
insert into product values (product_seq.nextval,'seller005','200','103','천연 송아지 가죽 스니커즈','이태리산 송아지 가죽으로 만든 명품 스니커즈. 197g으로 운동화보다 더~ 편안합니다','2022-02-28','2022-04-07','12:00',0,1000000,'fashion006-1.jpg','fashion006-2.jpg','1',139000,'store117');
insert into product values (product_seq.nextval,'seller006','200','103','독도 맨투맨, 독도 반팔','독도는 우리땅! 독도에 대해서 세계에 알리기 위해 제작한 맨투맨, 반팔! 수익은 독도 홍보를 위해 사용됩니다','2022-01-07','2022-01-24','12:00',0,500000,'fashion007-1.jpg','fashion007-2.jpg','3',42800,'store118');
insert into product values (product_seq.nextval,'seller007','200','103','모란잉어도 폰케이스','민화의 재해석! 모란도와 잉어는 부귀영화를 불러요! 새해엔 부귀영화를 선물하세요','2022-01-02','2022-01-28','12:00',0,500000,'fashion008-1.jpg','fashion008-2.jpg','3',44800,'store119');
insert into product values (product_seq.nextval,'seller008','200','103','클래식 삭스','가벼운 피팅, 착 붙는 착용감, 원단의 퀄리티, 어느 것 하나 빠지지 않는 클래식 삭스를 만나보세요','2021-12-28','2022-01-14','12:00',0,500000,'fashion009-1.jpg','fashion009-2.jpg','3',19000,'store120');
insert into product values (product_seq.nextval,'seller009','200','103','9색 9기능 세상 편한 후드티','9가지 컬러, 9가지 기능을 넣은 세상 가볍고 편한 후드티. 매일 다른 컬러로 편안함을 찾아가세요','2022-02-25','2022-04-21','12:00',0,500000,'fashion010-1.jpg','fashion010-2.jpg','1',52500,'store121');
insert into product values (product_seq.nextval,'seller010','200','103','비교를 거부하는 명품 슬랙스','유럽 수입, 구김없는 원단으로 타사제품 30~50만원, 자사제품 4만원대! 어디서도 만날 수 없는 가격!','2022-04-28','2022-05-17','12:00',0,500000,'fashion011-1.jpg','fashion011-2.jpg','1',45000,'store122');
insert into product values (product_seq.nextval,'seller011','200','103','하이테크 마스크','매일 착용하는 마스크, 이제는 옷 입는 것처럼 사용하세요','2022-05-28','2022-06-15','12:00',0,1000000,'fashion012-1.jpg','fashion012-2.jpg','1',21000,'store123');
insert into product values (product_seq.nextval,'seller012','200','103','커스텀 각인 리얼 다이아 팔찌','티파니 출신이 만든 커스텀 각인 X 리얼 다이아몬드 브레이슬릿! 지금 구매시 평생 A/S','2022-02-28','2022-03-23','12:00',0,500000,'fashion013-1.jpg','fashion013-2.jpg','1',89000,'store124');
insert into product values (product_seq.nextval,'seller013','200','103','라운지웨어 한복','고구려의 정신과 문화가 담긴 라운지웨어 한복 탄생. 미친 편안함과 아름다움을 누리세요','2022-03-12','2022-03-26','12:00',0,1000000,'fashion014-1.jpg','fashion014-2.jpg','1',119000,'store125');
insert into product values (product_seq.nextval,'seller014','200','103','마성의 쿠션 운동화','매트리스 위를 걷는 듯한 건강하고 편안한 발걸음을 선물합니다','2022-01-08','2022-01-22','12:00',0,3000000,'fashion015-1.jpg','fashion015-2.jpg','3',140000,'store126');
insert into product values (product_seq.nextval,'seller001','200','104','유메이트 무선믹서기','2만원대 가심비 무선믹서기! 강력한 6중 칼날에 2단계 속도조절까지!','2022-03-01','2022-04-01','12:00',0,1000000,'tech001-1.jpg','tech001-2.jpg','1',50000,'store073');
insert into product values (product_seq.nextval,'seller002','200','104','AIR75 기계식 키보드','AIR75 기계식 키보드 론칭! 84키 디자인 슬림형 기계식 키보드! 블루투스, 무선, 유선 모든 연결 방식 지원! 노트북 위에 거치 & 케이스와 함께 여러 디바이스 거치 가능!','2022-02-25','2022-05-13','12:00',0,2000000,'tech002-1.jpg','tech002-2.jpg','1',75000,'store074');
insert into product values (product_seq.nextval,'seller003','200','104','HP 핸드프린터','언제나 어디서나 내가 원하는 곳에 마음대로 인쇄를 할 수 있는 핸드프린터. 수천 개의 다양한 이미지를 어플리케이션에 연동해 다양한 소재에 나만의 개성을 살려 인쇄할 수 있습니다','2022-04-11','2022-06-11','12:00',0,500000,'tech003-1.jpg','tech003-2.jpg','1',22000,'store075');
insert into product values (product_seq.nextval,'seller004','200','104','멀티허브','[1만원대 멀티허브] C타입+A타입+젠더로~모든 PC 노트북 맥북 호환','2022-02-16','2022-04-13','12:00',0,500000,'tech004-1.jpg','tech004-2.jpg','1',17000,'store076');
insert into product values (product_seq.nextval,'seller005','200','104','손목보호마우스','[ANKER] 앤커 인체공학 무선 버티컬 손목보호 마우스','2022-04-05','2022-06-18','12:00',0,880000,'tech005-1.jpg','tech005-2.jpg','1',20000,'store077');
insert into product values (product_seq.nextval,'seller006','200','104','갓심비 주방기구','[주방가전 끝판왕등장] 8만원대- 갓심비,10가지 주방기구를 하나로','2022-02-11','2022-04-26','12:00',0,4000000,'tech006-1.jpg','tech006-2.jpg','1',15000,'store078');
insert into product values (product_seq.nextval,'seller007','200','104','웨어러블 케이블 "NILS 2.0"','초고속 충전기능에 패션을 더하다! 웨어러블 케이블 "NILS 2.0"','2022-03-22','2022-04-28','12:00',0,550000,'tech007-1.jpg','tech007-2.jpg','1',9000,'store079');
insert into product values (product_seq.nextval,'seller008','200','104','무선 핸디형 진공 청소기','[ANKER] 앤커 유피 홈백 H11 무선 핸디형 진공 청소기','2022-04-10','2022-05-10','12:00',0,3000000,'tech008-1.jpg','tech008-2.jpg','1',250000,'store080');
insert into product values (product_seq.nextval,'seller009','200','104','수아드 스마트 모니터 받침대','수아드 스마트 모니터 받침대 블루투스 스피커 무선충전 UV살균 USB','2022-02-25','2022-04-25','12:00',0,1000000,'tech009-1.jpg','tech009-2.jpg','1',30000,'store081');
insert into product values (product_seq.nextval,'seller010','200','104','찐 보풀제거기','니트/코트의 계절이 왔다ㅣ세탁소에서도 인정한 성능부터 다른 찐 보풀제거기','2022-06-10','2022-07-30','12:00',0,500000,'tech010-1.jpg','tech010-2.jpg','1',8000,'store082');
insert into product values (product_seq.nextval,'seller011','200','104','일루미노 면도기 살균 케이스','더러운 면도기, 빈틈없이 99.9% 살균 [일루미노 면도기 살균 케이스]','2022-03-20','2022-04-20','12:00',0,700000,'tech011-1.jpg','tech011-2.jpg','1',42000,'store083');
insert into product values (product_seq.nextval,'seller012','200','104','시리어스 근적외선','[글로벌 6억 앵콜] 뻐근한 내 몸을 위한 전신관리, 시리어스 근적외선','2022-05-18','2022-07-25','12:00',0,900000,'tech012-1.jpg','tech012-2.jpg','1',130000,'store084');
insert into product values (product_seq.nextval,'seller013','200','105','[잔망루피]잔망루피 피크닉 오르골 스노우볼','벚꽃과 함께 내 방으로 찾아온 잔.망.루.피! 이렇게 봄이 아름다웠나..? 잔망루피와 함께해 더 즐거운 피크닉! 오르골 스노우볼로 다가오는 봄을 준비해 보세요.','2022-02-26','2022-04-24','12:00',850000,500000,'charGoods001-1.png','charGoods001-2.png','1',85000,'store061');
insert into product values (product_seq.nextval,'seller014','200','105','SBS 드라마 홍천기 굿즈3종','한폭의 그림같은 판타지 로맨스 <홍천기>를 보낼 준비가 안된 우리에게 아쉬움을 가득 채워줄 종영 기념 굿즈! 아름다운 순간을 담은 신년맞이 다이어리, 달력, 배지를 준비했습니다.','2022-02-26','2022-04-22','12:00',0,500000,'charGoods002-1.png','charGoods002-2.png','1',48900,'store062');
insert into product values (product_seq.nextval,'seller001','200','105','[마인어스 무브먼트] 한정판 캐릭터 털털이를 만나보세요!','픽셀 만화를 그리는 ooo작가와 티셔츠 프로젝트를 진행하는 비토우가 "마인어스 무브먼트" 캠페인을 알리기 위해 새로운 캐릭터를 만들었습니다.','2022-02-27','2022-04-25','12:00',0,500000,'charGoods003-1.png','charGoods003-2.png','1',79000,'store063');
insert into product values (product_seq.nextval,'seller002','200','105','2022 청화백자 까치 얹은 호랑이오브제','유니크한 매력을 담은 청화백자 반려도자기, 호랑이 오브제. 호랑이해를 맞아, 나쁜 기운을 막아주고 좋은 소식을 가져다줄 호랑이 한 마리 입양하세요!','2022-01-23','2022-02-24','12:00',1100000,500000,'charGoods004-1.png','charGoods004-2.png','2',55000,'store064');
insert into product values (product_seq.nextval,'seller003','200','105','[이루마] 정품 악보집 | 악보 저작권을 보호해주세요!','[정품] 이루마 악보집 출간 프로젝트 - 대한민국에 건강한 저작권 문화가 형성될 수 있도록 동참해주세요!','2022-01-26','2022-03-20','12:00',210000,3000000,'charGoods005-1.png','charGoods005-2.png','2',70000,'store065');
insert into product values (product_seq.nextval,'seller004','200','105','에버랜드 판다 "푸바오" 포토 다이어리 북 <오늘도, 푸바오>','푸바오의 오늘과 여러분의 오늘이 만나서 한 권의 이야기가 되는 다이어리 북입니다. 어느새 훌쩍 자란 푸바오의 일상 속 모습을 만나보세요. " 오늘도, 푸바오"','2022-01-20','2022-02-28','12:00',0,2022000,'charGoods006-1.png','charGoods006-2.png','3',31800,'store066');
insert into product values (product_seq.nextval,'seller005','200','105','엄마 판다의 사랑<아이바오&푸바오 껌딱지 말랑쿠션>','에버랜드 동물원의 엄마 판다 "아이바오"와 이제 막 한 살이 되는 아기 판다 "푸바오"의 감동 케미가 가득한 껌딱지 말랑쿠션을 만나보세요.','2022-01-02','2022-02-27','12:00',0,7200000,'charGoods007-1.png','charGoods007-2.png','2',75000,'store067');
insert into product values (product_seq.nextval,'seller006','200','105','시계에 담은 한국의 미, 오조룡/천상열차분야지도 회중시계','한국의 미를 담은 특별한 회중시계. 노리개를 모티브로, 일월오봉도, 오조룡보, 천상열차분야지도의 아름다움을 담았습니다. 우리의 역사와 미를 일상에서 만나보세요.','2022-01-28','2022-02-26','12:00',0,1000000,'charGoods008-1.png','charGoods008-2.png','2',44900,'store068');
insert into product values (product_seq.nextval,'seller007','200','105','PET병 뚜껑을 녹여 만든 바다거북 키링 <와우거북>','[와우띵]이 만드는 멸종위기 동물 시리즈 [와우거북] 입니다. 분리배출해도 재활용되기 힘든 PET병 뚜껑만을 녹인 리사이클 재료로 만든, 보기만 해도 힐링되는 세젤귀 키링 입니다.','2021-11-03','2021-11-18','12:00',0,1000000,'charGoods009-1.png','charGoods009-2.png','3',4750,'store069');
insert into product values (product_seq.nextval,'seller008','200','105','[꿈돌이] 국민 캐릭터 꿈돌이 공식 굿즈 7종','1993년부터 국민 캐릭터의 자리를 지켜온 노란색 우주 아기 요정! 꿈돌이의 첫 공식 굿즈 7종을 최초공개합니다.','2021-12-02','2021-12-13','12:00',105600,3000000,'charGoods010-1.png','charGoods010-2.png','3',35200,'store070');
insert into product values (product_seq.nextval,'seller009','200','105','[한국 공식 굿즈] 귀멸의 칼날 엽서북 컬렉션','<귀멸의 칼날> TVs 1~6화 명장면들을 담은 ★ 한정판 엽서북 컬렉션 대공개 ★ 애절한 오누이의 이야기가 지금부터 시작됩니다.','2022-03-21','2022-04-20','12:00',0,5000000,'charGoods011-1.png','charGoods011-2.png','1',70000,'store071');
insert into product values (product_seq.nextval,'seller010','200','105','[한정판] 펭수와 함께 눈.치.정.복','펭수 N.C.C.G 프로젝트 2탄! 펭수와 함께 눈치정복할 준비되셨습니까?','2022-03-16','2022-04-29','12:00',0,8080000,'charGoods012-1.png','charGoods012-2.png','1',63000,'store072');
insert into product values (product_seq.nextval,'seller011','200','106','스키 & 보드 헬멧','겨울철 국민 스포츠가 된 스키 & 보드 헬멧 필수입니다','2022-02-28','2022-03-29','12:00',0,1500000,'tripSport001-1.jpg','tripSport001-2.jpg','1',85000,'store049');
insert into product values (product_seq.nextval,'seller012','200','106','무릎 보호대','운동중일때 무릎에 문제가 생기면 걸을때도 불편합니다 그래서 무릎 보호대를 통해 무릎을 보호하고 부상의 위험을 줄일수 있습니다','2022-02-24','2022-04-10','12:00',592000,500000,'tripSport002-1.jpg','tripSport002-2.jpg','2',29600,'store050');
insert into product values (product_seq.nextval,'seller013','200','106','캠핑 쉐프백','캠핑 요리를 위한 소도구들 이제는 캠핑 쉐프백으로 한번에 담을수있습니다','2022-02-25','2022-05-14','12:00',0,500000,'tripSport003-1.jpg','tripSport003-2.jpg','1',19900,'store051');
insert into product values (product_seq.nextval,'seller014','200','106','룸바냅 허리스트레칭 기구','장소에 구애받지 않고 손쉽게 허리와 골반을 스트레칭 할수 있습니다','2022-02-21','2022-04-11','12:00',210000,1000000,'tripSport004-1.jpg','tripSport004-2.jpg','2',42000,'store052');
insert into product values (product_seq.nextval,'seller001','200','106','손목 보호대','손목을 자주 사용하는 사람들을 위한 상품','2022-01-25','2022-03-01','12:00',0,500000,'tripSport005-1.jpg','tripSport005-2.jpg','2',26500,'store053');
insert into product values (product_seq.nextval,'seller002','200','106','에이든 캠핑 지도','캠핑장 찾기가 어렵고 인터넷 검색이 어려운 분들을 위한 상품','2022-01-18','2022-02-01','12:00',0,500000,'tripSport006-1.jpg','tripSport006-2.jpg','3',12800,'store054');
insert into product values (product_seq.nextval,'seller003','200','106','고글 선글라스','야외 운동시에 자외선 차단을 해주는 제품','2022-01-18','2022-03-11','12:00',0,500000,'tripSport007-1.jpg','tripSport007-2.jpg','2',29600,'store055');
insert into product values (product_seq.nextval,'seller004','200','106','쿠셔닝 운동화','서있는 일을 하거나 조깅을 위한 운동화','2022-02-25','2022-03-18','12:00',0,1500000,'tripSport008-1.jpg','tripSport008-2.jpg','1',142000,'store056');
insert into product values (product_seq.nextval,'seller005','200','106','엔진 코팅제(PROREX21)','엔진 오일 없이 차를 달리게 할 수 있는 제품','2022-02-17','2022-03-03','12:00',0,500000,'tripSport009-1.jpg','tripSport009-2.jpg','1',28000,'store057');
insert into product values (product_seq.nextval,'seller006','200','106','웜 시트커버','의자커버,담요,케이프,베개 1개로 4가지의 활용을 할 수 있는 캠핑용품','2022-01-24','2022-03-11','12:00',0,500000,'tripSport010-1.jpg','tripSport010-2.jpg','2',45000,'store058');
insert into product values (product_seq.nextval,'seller007','200','106','유리 코팅제(G-Spray)','뿌리고 닦기만 하면 유리가 코팅되어 물방울이 깔끔하게 흘러내립니다','2022-01-21','2022-02-01','12:00',36000,500000,'tripSport011-1.jpg','tripSport011-2.jpg','3',18000,'store059');
insert into product values (product_seq.nextval,'seller008','200','106','아고지 저항팬츠','운동이 귀찮거나 힘든분들을 위해 일상을 운동으로 바꿔줄 제품','2022-01-24','2022-03-17','12:00',0,2000000,'tripSport012-1.jpg','tripSport012-2.jpg','2',159000,'store060');
insert into product values (product_seq.nextval,'seller009','200','107','핑크효소 세안팩','[4.9앵콜]모공,블랙헤드! 임상입증 핑크효소 세안팩으로 확실히 없애세요','2022-02-12','2022-04-12','12:00',0,700000,'beauty001-1.jpg','beauty001-2.jpg','1',12000,'store085');
insert into product values (product_seq.nextval,'seller010','200','107','세포라 브러쉬','[세포라 상위] 5분만에 풀메이크업 완성ㅣ미친 피부결 #마약브러쉬','2022-03-14','2022-04-14','12:00',0,650000,'beauty002-1.jpg','beauty002-2.jpg','1',14000,'store086');
insert into product values (product_seq.nextval,'seller011','200','107','유황바디바','[10842%앵콜]온천 다녀온듯 매끈촉촉한 피부의 비결l 정답은 "유황"','2022-03-25','2022-04-25','12:00',0,600000,'beauty003-1.jpg','beauty003-2.jpg','1',13000,'store087');
insert into product values (product_seq.nextval,'seller012','200','107','피에르떼 주름개선','[12,541%앵콜]1회 사용 후 보이는 주름개선효과! 국제임상 완료!','2022-02-06','2022-03-06','12:00',0,800000,'beauty004-1.jpg','beauty004-2.jpg','2',15000,'store088');
insert into product values (product_seq.nextval,'seller013','200','107','메이베나 효소바디','[각질OUT] 각질, 이제 힘들게 벗겨내지 마세요. 가볍게 효소바디하세요','2022-02-09','2022-03-09','12:00',200000,880000,'beauty005-1.jpg','beauty005-2.jpg','2',8000,'store089');
insert into product values (product_seq.nextval,'seller014','200','107','숯콜마 바디스크럽워시','[6억메이커] 광채나는 연예인 바디 결? 이젠 숯콜마로 바디까지 완벽하게','2022-04-12','2022-05-24','12:00',0,500000,'beauty006-1.jpg','beauty006-2.jpg','1',9000,'store090');
insert into product values (product_seq.nextval,'seller001','200','107','피플라이 토잉패치','구두나 하이힐로 고생하고 있다면 주목! 특허받은 수축패치, 토잉패치','2022-04-16','2022-05-16','12:00',0,1000000,'beauty007-1.jpg','beauty007-2.jpg','1',6500,'store091');
insert into product values (product_seq.nextval,'seller002','200','107','그린토마토 패드','[8364% 앵콜]꽉 막힌 모공 피지 청소! 더 좋아진 그린토마토 패드','2022-04-20','2022-05-30','12:00',0,500000,'beauty008-1.jpg','beauty008-2.jpg','1',22000,'store092');
insert into product values (product_seq.nextval,'seller003','200','107','비앤힐 미백','[임상완료] 딱 2주면 해결되는 색소침착. 기미 완화! l 2주 미백','2022-02-05','2022-03-15','12:00',0,550000,'beauty009-1.jpg','beauty009-2.jpg','2',11000,'store093');
insert into product values (product_seq.nextval,'seller004','200','107','일라이트 풋비누','[5.0 앵콜]샤워 한 번에 발각질 끝! 발각질 끝장템 일라이트 풋비누','2022-02-10','2022-05-20','12:00',0,500000,'beauty010-1.jpg','beauty010-2.jpg','2',12500,'store094');
insert into product values (product_seq.nextval,'seller005','200','107','곰푸샴푸','[5.0 앵콜] 서포터들도 인정한 확실한 탈모완화효과 #곰푸샴푸','2022-01-13','2022-03-27','12:00',0,770000,'beauty011-1.jpg','beauty011-2.jpg','2',7700,'store095');
insert into product values (product_seq.nextval,'seller006','200','107','콜라겐크림','앵콜요청쇄도! 잡티는 가려도 결은 가려지지 않아요, 91%결 콜라겐 크림','2022-02-20','2022-03-30','12:00',0,990000,'beauty012-1.jpg','beauty012-2.jpg','1',5500,'store096');
insert into product values (product_seq.nextval,'seller007','200','108','3 in 1 아기 모듈컵','아기의 성장 주기에 맞춰 준비해야 하는 컵, 매번 새로 사지 마세요. 꼭 필요한 3가지 컵을 뚜껑만 바꿔가며 쓰는 3 in 1 모듈컵, 국민템 만드는 브릭오가 소개합니다.','2022-02-16','2022-03-24','12:00',0,500000,'babyKids001-1.png','babyKids001-2.png','2',44550,'store013');
insert into product values (product_seq.nextval,'seller008','200','108','울트라 얼리버드 스파이더맨 침대','이런건 처음이지? LED 마블 스파이더맨 캐릭터 침대','2022-02-10','2022-03-17','12:00',0,2000000,'babyKids002-1.png','babyKids002-2.png','2',750000,'store014');
insert into product values (product_seq.nextval,'seller009','200','108','스퀘어판다 알파벳 놀이','우리 아이 영어 첫단추, 놀이를 통한 흥미유발, 자꾸만 손이가는 영어놀이 "알파벳부터 파닉스까지 이것 하나면!! OK" 이제 주입하지마시고 자연스럽게 영어를 시작해주세요.','2022-01-29','2022-03-18','12:00',0,1000000,'babyKids003-1.png','babyKids003-2.png','2',84000,'store015');
insert into product values (product_seq.nextval,'seller010','200','108','썬데이허그 링고 유모차','세상 모든 "가족"들을 위하여 좋은 제품을 합리적으로 만들어 갑니다. - 기내반입 가능 안전한 유모차 / 99% 만족도 후기 유모차 / 한손으로 1초폴딩이 가능한 유모차','2022-02-17','2022-03-13','12:00',0,1000000,'babyKids004-1.png','babyKids004-2.png','2',208000,'store016');
insert into product values (product_seq.nextval,'seller011','200','108','라라아이','라라아이의 "라라"는 "흥겹고 즐거운 삶을 살길"의 순 우리말입니다. 우리 아이들에게 정말 좋은 영향을 주는 놀잇감을 선물할 수 있도록 최선을 다하겠습니다.','2022-02-28','2022-04-20','12:00',0,500000,'babyKids005-1.png','babyKids005-2.png','1',478000,'store017');
insert into product values (product_seq.nextval,'seller012','200','108','아빠놀이 백과사전','아빠놀이 백과사전은 매일 아빠와 아이가 함께 할 수 있는 간단한 놀이를 소개합니다. 하루 1분! 간단한 아빠놀이로 아이에게 아빠를 선물하세요.','2022-08-03','2022-08-31','12:00',0,1000000,'babyKids006-1.png','babyKids006-2.png','1',12000,'store018');
insert into product values (product_seq.nextval,'seller013','200','108','클레온 핑크퐁 아기상어','이제 외출할때도 핑크퐁 아기상어로 안심 살균하세요. 핑크퐁 아기상어 쪽쪽이 살균기는 우리아기 입에 직접 닿는 쪽쪽이의 세균을 듀얼 입체살균 기술을 통해 99.9% 살균해줍니다.','2021-10-05','2021-10-25','12:00',2250000,1000000,'babyKids007-1.png','babyKids007-2.png','3',45000,'store019');
insert into product values (product_seq.nextval,'seller014','200','108','뽀로로 별자리볼','야외 활동이 어려운 요즘, 아이들의 실내 놀이를 위해 개발했습니다. 실내에서도 다양한 공놀이로 활발하게 즐기고! 밤에는 반짝반짝, 별자리 이야기로 상상력과 감수성을 키워주세요.','2022-06-23','2022-07-20','12:00',0,1000000,'babyKids008-1.png','babyKids008-2.png','1',17500,'store020');
insert into product values (product_seq.nextval,'seller001','200','108','스마트스케처','상상력과 꿈을 실현시켜 줄 [스마트한 빔프로젝터] "스마트스케처" 아이들에게 올 겨울 잊지 못할 추억을 만들어 주세요!','2020-12-02','2020-12-15','12:00',74900,1000000,'babyKids009-1.png','babyKids009-2.png','3',74900,'store021');
insert into product values (product_seq.nextval,'seller002','200','108','땅콩카드','작은 손에 쥐어주는 한 줌짜리 알록달록 땅콩카드. 우리 아이가 만나는 다른 세상을 "외우기 보다는 이해하길 바라는" 마음에서 만들었습니다.','2019-05-09','2019-05-26','12:00',0,500000,'babyKids010-1.png','babyKids010-2.png','3',28000,'store022');
insert into product values (product_seq.nextval,'seller003','200','108','키즈 런치박스','집에서는 식판, 밖에서는 도시락! 고무패킹 없이도 칸마다 밀폐가 가능하고, 다양한 액세서리로 아이의 취향을 듬뿍 담아 꾸밀 수 있는 플렉스앤락 키즈 실리콘 런치박스','2021-06-14','2021-06-25','12:00',0,500000,'babyKids011-1.png','babyKids011-2.png','3',32800,'store023');
insert into product values (product_seq.nextval,'seller004','200','108','브릭오 과즙망','아기의 건강을 세심하게 배려하면서 엄마의 감성까지 챙긴 브릭오의 첫 감성육아템! 3가지 사이즈의 과즙망 파우치를 아이의 성장시기에 맞춰 사용하실 수 있어요~','2021-05-09','2021-05-31','12:00',0,2000000,'babyKids012-1.png','babyKids012-2.png','3',27000,'store024');
insert into product values (product_seq.nextval,'seller005','200','109','세상에 없던 하네스','리드줄과 하네스를 합쳐 좀더 편하게 산책할수있는 제품','2022-03-12','2022-03-25','12:00',0,1000000,'pet001-1.jpg','pet001-2.jpg','1',76000,'store037');
insert into product values (product_seq.nextval,'seller006','200','109','고양이 모래','먼지가 날리지 않고 냄새를 잘잡아주는 제품','2022-02-24','2022-03-10','12:00',0,500000,'pet002-1.jpg','pet002-2.jpg','1',30900,'store038');
insert into product values (product_seq.nextval,'seller007','200','109','워드어스 파티션 캣타워','파티션 형식의 캣타워','2022-02-24','2022-05-10','12:00',0,2000000,'pet003-1.jpg','pet003-2.jpg','2',397000,'store039');
insert into product values (product_seq.nextval,'seller008','200','109','반려 동물 유모차','편안한 산책을 위한 제품','2022-04-11','2022-05-02','12:00',0,1500000,'pet004-1.jpg','pet004-2.jpg','1',349000,'store040');
insert into product values (product_seq.nextval,'seller009','200','109','반려 동물 전용 빗(The Comma)','목욕과 그루밍을 동시에 할 수 있는 제품','2022-03-10','2022-03-31','12:00',0,500000,'pet005-1.jpg','pet005-2.jpg','1',22000,'store041');
insert into product values (product_seq.nextval,'seller010','200','109','반려 동물 미용기계(Love My Pet)','미용 과 발관리 청소를 동시에할수있는 제품','2022-02-23','2022-03-23','12:00',0,2000000,'pet006-1.jpg','pet006-2.jpg','2',764000,'store042');
insert into product values (product_seq.nextval,'seller011','200','109','반려동물 영양제(별자리 스틱)','반려동물을 키우면서 건강관리를 하기위한 영양제','2022-03-01','2022-03-22','12:00',0,500000,'pet007-1.jpg','pet007-2.jpg','1',21000,'store043');
insert into product values (product_seq.nextval,'seller012','200','109','강아지 치아관리 껌(덴탈껌)','강아지 치아관리를 위한 식품','2022-02-28','2022-04-15','12:00',0,500000,'pet008-1.jpg','pet008-2.jpg','1',30000,'store044');
insert into product values (product_seq.nextval,'seller013','200','109','올인원 텀블러','물/간식/배변봉투를 한번에 해결하는 제품','2022-03-03','2022-03-24','12:00',0,500000,'pet009-1.jpg','pet009-2.jpg','1',32900,'store045');
insert into product values (product_seq.nextval,'seller014','200','109','UFO장난감','혼자있는 강아지를 위한 장난감','2022-04-14','2022-04-28','12:00',0,500000,'pet010-1.jpg','pet010-2.jpg','1',19800,'store046');
insert into product values (product_seq.nextval,'seller001','200','109','반려동물 털 건조기','반려 동물 목욕후 털을 말리는 제품','2022-02-01','2022-03-31','12:00',0,1000000,'pet011-1.jpg','pet011-2.jpg','2',198000,'store047');
insert into product values (product_seq.nextval,'seller002','200','109','노즈 워크 볼','반려동물이 오랫동안 놀수있는 제품','2022-02-14','2022-03-10','12:00',0,500000,'pet012-1.jpg','pet012-2.jpg','1',19900,'store048');
insert into product values (product_seq.nextval,'seller003','200','110','스마트 드럼 라이트, 게임하듯 따라하면 나도 드럼고수!','모플레이 스마트 드럼이 더 가볍게 돌아왔습니다! 소음 걱정 없이 집에서 드럼 연주하세요! 신나게 두드리면 스트레스 No! 운동효과 Up! 가요, 팝송에 맞춰 합주하듯 연주하세요!','2022-01-09','2022-02-07','12:00',0,1000000,'game001-1.png','game001-2.png','3',418000,'store025');
insert into product values (product_seq.nextval,'seller004','200','110','우리의 관계를 더욱 깊게 열어줄 열쇠 <대화트럼프카드>','우리의 관계를 더욱 깊게 열어줄 열쇠 <대화트럼프카드>. 트럼프카드에 "대화"라는 키워드를 더 해 더욱 재밌게 관계에 관한 질문들을 게임으로 담아 보았습니다.','2022-01-03','2022-01-31','12:00',0,2000000,'game002-1.png','game002-2.png','3',20000,'store026');
insert into product values (product_seq.nextval,'seller005','200','110','코딩멘토와 같이 만드는 자율주행자동차','혼자 동작시켜보기 어려운 자율주행차! 자율주행차의 과외선생님을 만나 보세요. 코딩멘토가 바로 옆에서 자율주행차를 동작시키도록 도와 드립니다.','2022-01-07','2022-01-31','12:00',0,1000000,'game003-1.png','game003-2.png','3',170000,'store027');
insert into product values (product_seq.nextval,'seller006','200','110','마작의 손맛과 포커의 재미? 꿀잼 보드게임 <렉시오 플러스>','배우는 데 2분, 한번 빠지면 큰일난다는 바로 그 게임! 2005년 첫 출시 이후 국산게임으로는 거의 유일하게 상위에 랭크되고 있는 ‘렉시오(LEXIO)"의 업그레이드 버전입니다.','2022-01-23','2022-02-28','12:00',0,1500000,'game004-1.png','game004-2.png','2',45000,'store028');
insert into product values (product_seq.nextval,'seller007','200','110','PC, 닌텐도, 스마트폰까지 9가지 호환 조이스틱','오락실의 조이스틱만 쏙 빼 왔어요. 오락실의 치열함과 재미를 언제 어디서나 사용할 수 있도록 무려 9가지 기기에서 호환 가능한, 더 재미있는 게임 라이프 <조이트론 E1>','2022-01-26','2022-02-25','12:00',49800,2000000,'game005-1.png','game005-2.png','2',49800,'store029');
insert into product values (product_seq.nextval,'seller008','200','110','더지니어스 흑과백, 보드게임! 쉽고 빠른 구룡투','일대일 진검 승부를 위해 태어났다, 구룡투! "더 지니어스"의 데스매치 "흑과 백"을 재해석해 만들어낸, 세상에서 가장 쉽게 배우고 강렬하게 즐기는 보드게임!','2022-02-20','2022-03-12','12:00',0,2000000,'game006-1.png','game006-2.png','2',31800,'store030');
insert into product values (product_seq.nextval,'seller009','200','110','당신의 추리 본능을 깨울 보드게임 <서스펙트 게임>','의문의 살인사건, 4명의 용의자, 한 명의 범인! 진실을 두고 펼쳐지는 용의자들의 숨막히는 추리 대결! 범인은 반드시 이 안에 있다. 정통 클로즈드 서클 미스터리 <서스펙트 게임>','2022-01-02','2022-01-31','12:00',0,2000000,'game007-1.png','game007-2.png','3',42000,'store031');
insert into product values (product_seq.nextval,'seller010','200','110','게임기보다 더 재밌는 내 스마트폰! [조이트론 게임패드]','가뜩이나 재밌는 폰게임에, 아찔한 손맛을 더해보세요! 수천가지가 넘는 게임, 안드로이도&아이폰 모두 호환! 게임용품 외길인생 16년 조이트론의 신작 게임패드','2019-09-19','2019-10-03','12:00',392000,2000000,'game008-1.png','game008-2.png','3',39200,'store032');
insert into product values (product_seq.nextval,'seller011','200','110','야마하 포터블키보드 EZ-300','악보는 몰라도 연주가 가능하다?! | 200대 한정으로 진행되는 야마하의 신형 라이팅 키보드를 만나보세요 !','2021-07-07','2021-07-26','12:00',0,1000000,'game009-1.png','game009-2.png','3',480000,'store033');
insert into product values (product_seq.nextval,'seller012','200','110','맥스틸 | 하이브리드 무선게이밍마우스 탄생','모든 게이밍 기어의 무선화, 우리는 할 수 있습니다. 늘 그래왔듯이. 한국 브랜드 단독 첫 출시! 빠르고 정확하게, 그리고 편안함을 위해 준비했습니다.','2020-11-17','2020-11-23','12:00',0,1000000,'game010-1.png','game010-2.png','3',135000,'store034');
insert into product values (product_seq.nextval,'seller013','200','110','마리오카트와 슈퍼카로 즐기는 360도 스피드레이싱','내 마음 한구석에 남아있는 질주 본능을 깨워보세요. 액션이 필요하시다면 이 놀이터를 소개합니다.','2022-03-23','2022-04-11','12:00',0,1000000,'game011-1.png','game011-2.png','1',99000,'store035');
insert into product values (product_seq.nextval,'seller014','200','110','TV게임기+조이스틱, 네오지오 아케이드 스틱 프로!','[ TV 게임기 + PC 조이스틱 ] 전설의 오락실 게임들을 집에서 즐겨 보세요! 네오지오 아케이드 스틱 프로! 드디어 정식 발매! 매니아 라면 반드시 콜렉션 하세요.','2022-03-16','2022-04-02','12:00',0,3000000,'game012-1.png','game012-2.png','1',189000,'store036');



-- ORDERS TABLE
/*
 * select * from MEMBER;
 * select * from PRODUCT where P_CONDITION = 2;
 */

insert into ORDERS values ('hong001', '1', ORDERS_SEQ.nextval, 1, 149000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '2', ORDERS_SEQ.nextval, 2, 86000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '17', ORDERS_SEQ.nextval, 5, 115000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '55', ORDERS_SEQ.nextval, 1, 85000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '58', ORDERS_SEQ.nextval, 10, 550000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '59', ORDERS_SEQ.nextval, 1, 70000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '68', ORDERS_SEQ.nextval, 10, 296000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '5', ORDERS_SEQ.nextval, 2, 43800, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '6', ORDERS_SEQ.nextval, 5, 475000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '19', ORDERS_SEQ.nextval, 10, 550000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '29', ORDERS_SEQ.nextval, 1, 268000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '31', ORDERS_SEQ.nextval, 1, 73000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong001', '97', ORDERS_SEQ.nextval, 10, 450000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');


insert into ORDERS values ('hong002', '1', ORDERS_SEQ.nextval, 1, 149000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '2', ORDERS_SEQ.nextval, 2, 86000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '17', ORDERS_SEQ.nextval, 5, 115000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '32', ORDERS_SEQ.nextval, 2, 358000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '55', ORDERS_SEQ.nextval, 9, 765000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '58', ORDERS_SEQ.nextval, 10, 550000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '59', ORDERS_SEQ.nextval, 1, 70000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '68', ORDERS_SEQ.nextval, 10, 296000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '70', ORDERS_SEQ.nextval, 1, 42000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '83', ORDERS_SEQ.nextval, 10, 80000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '5', ORDERS_SEQ.nextval, 2, 43800, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '6', ORDERS_SEQ.nextval, 5, 475000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '19', ORDERS_SEQ.nextval, 10, 550000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '29', ORDERS_SEQ.nextval, 1, 268000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong002', '97', ORDERS_SEQ.nextval, 10, 450000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');



insert into ORDERS values ('hong003', '1', ORDERS_SEQ.nextval, 1, 149000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '2', ORDERS_SEQ.nextval, 2, 86000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '17', ORDERS_SEQ.nextval, 5, 115000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '32', ORDERS_SEQ.nextval, 1, 179000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '59', ORDERS_SEQ.nextval, 1, 70000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '70', ORDERS_SEQ.nextval, 1, 42000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '83', ORDERS_SEQ.nextval, 3, 40000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '126', ORDERS_SEQ.nextval, 1, 189000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '5', ORDERS_SEQ.nextval, 2, 43800, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '6', ORDERS_SEQ.nextval, 5, 475000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '29', ORDERS_SEQ.nextval, 1, 268000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong003', '97', ORDERS_SEQ.nextval, 10, 450000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');




insert into ORDERS values ('hong004', '1', ORDERS_SEQ.nextval, 2, 298000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '2', ORDERS_SEQ.nextval, 2, 86000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '32', ORDERS_SEQ.nextval, 1, 179000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '70', ORDERS_SEQ.nextval, 1, 42000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '5', ORDERS_SEQ.nextval, 2, 43800, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '7', ORDERS_SEQ.nextval, 10, 295000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '29', ORDERS_SEQ.nextval, 1, 268000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '97', ORDERS_SEQ.nextval, 10, 450000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong004', '122', ORDERS_SEQ.nextval, 2, 78400, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');




insert into ORDERS values ('hong005', '1', ORDERS_SEQ.nextval, 1, 149000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '2', ORDERS_SEQ.nextval, 2, 86000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '32', ORDERS_SEQ.nextval, 1, 179000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '70', ORDERS_SEQ.nextval, 1, 42000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '5', ORDERS_SEQ.nextval, 2, 43800, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '7', ORDERS_SEQ.nextval, 10, 295000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '29', ORDERS_SEQ.nextval, 1, 268000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '97', ORDERS_SEQ.nextval, 10, 450000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '99', ORDERS_SEQ.nextval, 1, 74900, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong005', '122', ORDERS_SEQ.nextval, 2, 78400, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');



insert into ORDERS values ('hong006', '1', ORDERS_SEQ.nextval, 2, 298000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '2', ORDERS_SEQ.nextval, 1, 43000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '32', ORDERS_SEQ.nextval, 3, 537000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '5', ORDERS_SEQ.nextval, 5, 109500, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '7', ORDERS_SEQ.nextval, 10, 295000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '11', ORDERS_SEQ.nextval, 10, 198000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong006', '122', ORDERS_SEQ.nextval, 2, 78400, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');



insert into ORDERS values ('hong007', '1', ORDERS_SEQ.nextval, 2, 298000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '17', ORDERS_SEQ.nextval, 5, 115000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '5', ORDERS_SEQ.nextval, 5, 109500, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '7', ORDERS_SEQ.nextval, 10, 295000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '11', ORDERS_SEQ.nextval, 20, 396000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '64', ORDERS_SEQ.nextval, 1, 35200, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '77', ORDERS_SEQ.nextval, 1, 18000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong007', '122', ORDERS_SEQ.nextval, 2, 78400, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');

insert into ORDERS values ('hong008', '5', ORDERS_SEQ.nextval, 5, 109500, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong008', '7', ORDERS_SEQ.nextval, 10, 295000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong008', '11', ORDERS_SEQ.nextval, 20, 396000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong008', '64', ORDERS_SEQ.nextval, 1, 35200, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong008', '122', ORDERS_SEQ.nextval, 2, 78400, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');

insert into ORDERS values ('hong009', '5', ORDERS_SEQ.nextval, 5, 109500, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong009', '64', ORDERS_SEQ.nextval, 1, 35200, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');
insert into ORDERS values ('hong009', '77', ORDERS_SEQ.nextval, 1, 18000, 01012345678, '06134', '서울 강남구 테헤란로7길 7', '중앙정보처리학원', sysdate, '상품준비중');

commit;


-- DIBS TABLE

/*
 * select * from DIBS;
 * select * from PRODUCT where P_CONDITION = 2;
 */

insert into DIBS values ('1', 'hong001');
insert into DIBS values ('2', 'hong001');
insert into DIBS values ('5', 'hong001');
insert into DIBS values ('14', 'hong001');
insert into DIBS values ('15', 'hong001');
insert into DIBS values ('16', 'hong001');

insert into DIBS values ('15', 'hong002');
insert into DIBS values ('17', 'hong002');
insert into DIBS values ('55', 'hong002');
insert into DIBS values ('56', 'hong002');
insert into DIBS values ('58', 'hong002');

insert into DIBS values ('59', 'hong003');
insert into DIBS values ('60', 'hong003');
insert into DIBS values ('61', 'hong003');
insert into DIBS values ('70', 'hong003');
insert into DIBS values ('71', 'hong003');

insert into DIBS values ('2', 'hong004');
insert into DIBS values ('5', 'hong004');
insert into DIBS values ('61', 'hong004');
insert into DIBS values ('70', 'hong004');
insert into DIBS values ('71', 'hong004');

insert into DIBS values ('15', 'hong005');
insert into DIBS values ('17', 'hong005');
insert into DIBS values ('55', 'hong005');
insert into DIBS values ('71', 'hong005');
insert into DIBS values ('16', 'hong005');

commit;


-- BOARD TABLE
/*
 * 1:1문의
 * select * from PRODUCT where P_CONDITION = 2;
 * 1, 2, 5, 15, 16, 17
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 1);
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 1);
 */
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 2);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 15);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 16);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 16);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 17);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 17);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 17);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'hong001', '1:1문의입니다.', '1:1문의입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 17);

insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'seller003', '1:1문의 답변입니다.', '1:1문의 답변입니다.', sysdate, 0, 32, 1, 1, 17);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'seller003', '1:1문의 답변입니다.', '1:1문의 답변입니다.', sysdate, 0, 31, 1, 1, 17);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '300', 'seller003', '1:1문의 답변입니다.', '1:1문의 답변입니다.', sysdate, 0, 30, 1, 1, 17);


/*
 * 리뷰
 * select * from PRODUCT where P_CONDITION = 3;
 * 38, 39, 53, 54 번 게시글
 * insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 38);
 */

insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 11);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 11);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 11);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 11);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 97);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 97);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 97);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 5);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 29);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 29);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 29);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 19);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 19);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 19);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 7);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 7);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 7);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 7);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 6);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 6);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 6);
insert into BOARD(B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, P_NUM) values (BOARD_SEQ.nextval, '300', '400', 'hong001', '리뷰입니다.', '리뷰입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 6);



/*
 * 공지사항
 *
 * 글번호, 대분류, 중분류, 작성자아이디, 글제목, 글내용, 글작성일, 이미지
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE) values (BOARD_SEQ.nextval, '300', '100', 'admin', '첫번째 공지사항입니다.', '첫번째 공지사항입니다.', sysdate, 0, 'imgURL');
 * 글번호, 대분류, 중분류, 작성자아이디, 글제목, 글내용, 글작성일
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE) values (BOARD_SEQ.nextval, '300', '100', 'admin', '첫번째 공지사항입니다.', '첫번째 공지사항입니다.', sysdate);
 */

insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '첫번째 공지사항입니다.', '첫번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '두번째 공지사항입니다.', '두번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '세번째 공지사항입니다.', '세번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '네번째 공지사항입니다.', '네번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '다섯번째 공지사항입니다.', '다섯번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '여섯번째 공지사항입니다.', '여섯번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '일곱번째 공지사항입니다.', '일곱번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '여덟번째 공지사항입니다.', '여덟번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '아홉번째 공지사항입니다.', '아홉번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열번째 공지사항입니다.', '열번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열한번째 공지사항입니다.', '열한번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열두번째 공지사항입니다.', '열두번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열세번째 공지사항입니다.', '열세번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열네번째 공지사항입니다.', '열네번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열다섯번째 공지사항입니다.', '열다섯번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열여섯번째 공지사항입니다.', '열여섯번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열일곱번째 공지사항입니다.', '열일곱번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열여덟번째 공지사항입니다.', '열여덟번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '열아홉번째 공지사항입니다.', '열아홉번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스무번째 공지사항입니다.', '스무번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물한번째 공지사항입니다.', '스물한번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물두번째 공지사항입니다.', '스물두번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물세번째 공지사항입니다.', '스물세번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물네번째 공지사항입니다.', '스물네번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물다섯번째 공지사항입니다.', '스물다섯번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물여섯번째 공지사항입니다.', '스물여섯번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물일곱번째 공지사항입니다.', '스물일곱번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물여덟번째 공지사항입니다.', '스물여덟번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '스물아홉번째 공지사항입니다.', '스물아홉번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '서른번째 공지사항입니다.', '서른번째 공지사항입니다.', sysdate, BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '서른한번째 공지사항입니다.', '서른한번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP) values (BOARD_SEQ.nextval, '300', '100', 'admin', '서른두번째 공지사항입니다.', '서른두번째 공지사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval);

/*
 * Q&A (문의사항)
 *
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_PASSWORD, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, 'q1w2e3r4', '상품문의');
 * insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_PASSWORD, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, 'q1w2e3r4', '상품문의');
 */
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong004', 'hong004 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong004', 'hong004 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong005', 'hong005 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong005', 'hong005 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong006', 'hong006 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong006', 'hong006 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong004', 'hong004 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong005', 'hong005 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong007', 'hong007 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong009', 'hong009 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong008', 'hong008 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong001', 'hong001 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong002', 'hong002 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong007', 'hong007 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong009', 'hong009 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '상품문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong005', 'hong005 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong008', 'hong008 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_IMAGE, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong003', 'hong003 문의사항입니다.', '문의사항입니다.', sysdate, 0, 'imgURL', BOARD_SEQ.currval, 0, 0, '펀딩문의');
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL, B_CATEGORY) values (BOARD_SEQ.nextval, '300', '200', 'hong007', 'hong007 문의사항입니다.', '문의사항입니다.', sysdate, 0, BOARD_SEQ.currval, 0, 0, '펀딩문의');

insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL) values (BOARD_SEQ.nextval, '300', '200', 'admin', '문의사항 답변입니다.', '문의사항 답변입니다.', sysdate, 0, 121, 1, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL) values (BOARD_SEQ.nextval, '300', '200', 'admin', '문의사항 답변입니다.', '문의사항 답변입니다.', sysdate, 0, 111, 1, 1);
insert into BOARD (B_NUM, MAIN_CAT, MINI_CAT, ID, B_TITLE, B_CONTENT, B_DATE, B_HIT, B_GROUP, B_STEP, B_LEVEL) values (BOARD_SEQ.nextval, '300', '200', 'admin', '문의사항 답변입니다.', '문의사항 답변입니다.', sysdate, 0, 96, 1, 1);

commit ;
